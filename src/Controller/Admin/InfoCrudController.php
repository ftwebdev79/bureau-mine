<?php

namespace App\Controller\Admin;

use App\Entity\Info;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextareaField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class InfoCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Info::class;
    }

    public function configureFields(string $pageName): iterable
    {
        yield IdField::new('id')->hideOnForm();
        yield DateTimeField::new('updatedAt')->hideOnForm();

        yield TextField::new('title');
        yield TextareaField::new('description');
        yield DateField::new('createdAt', 'Créé le')
            ->setFormat('dd MMMM yyyy ', 'none');
        yield DateField::new('infoDate')
            ->setFormat('dd MMMM yyyy ', 'none');
    }
}
