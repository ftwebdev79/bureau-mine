<?php

namespace App\Controller\Admin;

use App\Entity\Article;
use App\Entity\Category;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{

    public function __construct(private AdminUrlGenerator $adminUrlGenerator)
    {
    }

    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {

        $url =$this->adminUrlGenerator
            ->setController(ArticleCrudController::class)
            ->generateUrl();

        return $this->redirect($url);

    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('BureauMine');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::section('DashBoard', 'fa fa-home');

        yield MenuItem::subMenu('Products', 'fa-solid fa-newspaper')->setSubItems([
            MenuItem::linkToCrud('Create artricle', 'fas fa-plus', Article::class)
                ->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Show artricle', 'fas fa-eye', Article::class),
        ]);

        yield MenuItem::subMenu('Categories', 'fa-solid fa-newspaper')->setSubItems([
            MenuItem::linkToCrud('Create categories', 'fas fa-plus', Category::class)
                ->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Show categories', 'fas fa-eye', Category::class),
        ]);

    }
}
