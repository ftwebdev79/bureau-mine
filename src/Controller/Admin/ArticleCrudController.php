<?php

namespace App\Controller\Admin;

use App\Entity\Article;

use App\Entity\Image;
use App\Form\AttachmentType;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\QueryBuilder;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\ImageField;

use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Form\Type\FileUploadType;
use Vich\UploaderBundle\Form\Type\VichImageType;

class ArticleCrudController extends AbstractCrudController
{

    public static function getEntityFqcn(): string
    {
        return Article::class;
    }

    public function configureFields(string $pageName): iterable
    {
        yield IdField::new('id')
            ->hideOnForm()
            ->hideOnDetail();

        yield TextField::new('title', 'Nom')
            ->hideOnDetail();

        yield TextField::new('client', 'Client');
        yield TextEditorField::new('description', 'Description');

//        yield BooleanField::new('active');
        yield DateField::new('dateProjet', 'Date de création du projet')
            ->setFormat('dd MMMM yyyy ', 'none');

        yield AssociationField::new('categories', 'Catégories')
            ->setTemplatePath('admin/field/show-category.html.twig')
            ->setFormTypeOptions([
                'by_reference' => false,
            ]);

        yield CollectionField::new('attachments', 'Nombre d images')
            ->setEntryType(AttachmentType::class)
            ->setFormTypeOption('by_reference', false)
            ->onlyOnForms();

        yield CollectionField::new('attachments')
            ->setTemplatePath('images.html.twig')
            ->onlyOnDetail();

        yield DateTimeField::new('createdAt', 'Créé le')
            ->hideOnForm()
            ->setFormat('dd MMMM yyyy ', 'none');

    }

    public function configureActions(Actions $actions): Actions
    {
        $actions->add(crud::PAGE_INDEX, 'detail');
        return parent::configureActions($actions);
    }

    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if (!$entityInstance instanceof Article) return;

        $entityInstance->setCreatedAt(new \DateTimeImmutable);

        parent::persistEntity($entityManager, $entityInstance);
    }
}
