<?php

namespace App\Controller\Admin;

use App\Entity\Article;
use App\Entity\Category;
use Doctrine\ORM\EntityManagerInterface;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ColorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class CategoryCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Category::class;
    }

    public function configureFields(string $pageName): iterable
    {
        yield IdField::new('id')->hideOnForm();
        yield TextField::new('name');
        yield ColorField::new('color');
        yield AssociationField::new('articles', 'Articles associés')
            ->setFormTypeOptions([
                'by_reference' => true,
            ]);
//        yield DateTimeField::new('updatedAt')->hideOnForm();
        yield DateTimeField::new('createdAt', 'Créé le')
            ->setFormat('dd MMMM yyyy ', 'none')
            ->hideOnForm();
    }

    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof Category) return;

        $entityInstance->setCreatedAt(new \DateTime);

        parent::persistEntity($entityManager, $entityInstance);

    }


}
