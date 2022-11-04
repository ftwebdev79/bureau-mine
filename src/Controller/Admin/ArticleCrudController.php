<?php

namespace App\Controller\Admin;

use App\Entity\Article;

use App\Entity\Image;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\QueryBuilder;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;

use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Form\Type\FileUploadType;

class ArticleCrudController extends AbstractCrudController
{
//    public const PRODUCT_BASE_PATH = 'build/images';
//    public const PRODUCT_UPLOAD_DIR = 'public/build/images';

    public static function getEntityFqcn(): string
    {
        return Article::class;
    }

    public function configureFields(string $pageName): iterable
    {
        yield IdField::new('id')->hideOnForm();
        yield TextField::new('title', 'Nom');
        yield TextField::new('description', 'Description');
        yield BooleanField::new('active');
        yield AssociationField::new('categories', 'Catégories')
            ->setTemplatePath('admin/field/show-category.html.twig')
            ->setFormTypeOptions([
                'by_reference' => false,
            ]);

        yield ImageField::new('image')
            ->setBasePath('build/images')
            ->setUploadDir('public/build/images');

        yield CollectionField::new('image')
//            ->setEntryType()
            ->onlyOnForms();

//        yield DateTimeField::new('updatedAt')->hideOnForm();
        yield DateTimeField::new('createdAt', 'Créé le')
            ->hideOnForm()
            ->setFormat('dd MMMM yyyy ', 'none');
    }

    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof Article) return;

        $entityInstance->setCreatedAt(new \DateTimeImmutable);

        parent::persistEntity($entityManager, $entityInstance);

    }

}
