<?php

namespace App\Repository;

use App\Entity\Article;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Article>
 *
 * @method Article|null find($id, $lockMode = null, $lockVersion = null)
 * @method Article|null findOneBy(array $criteria, array $orderBy = null)
 * @method Article[]    findAll()
 * @method Article[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticleRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Article::class);
    }

    public function save(Article $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Article $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function getNextArticle($currentId): array
    {
        return $this->createQueryBuilder('a')
            ->where('a.id > :id')
            ->setParameter('id', $currentId)
            ->getQuery()
            ->getResult();
    }

    public function getPrevArticle($currentId): array
    {
        return $this->createQueryBuilder('b')
            ->where('b.id < :id')
            ->setParameter('id', $currentId)
            ->orderBy('b.id','DESC')
            ->getQuery()
            ->getResult();

    }

//https://blog.lesjeudis.com/pagination-sql

}
