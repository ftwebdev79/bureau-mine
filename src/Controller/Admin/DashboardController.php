<?php

namespace App\Controller\Admin;

use App\Entity\Article;
use App\Entity\Category;
use App\Entity\Info;
use EasyCorp\Bundle\EasyAdminBundle\Config\Assets;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{

    public function __construct(private AdminUrlGenerator $adminUrlGenerator)
    {
    }

    #[isGranted('ROLE_ADMIN')]
    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {

        $url = $this->adminUrlGenerator
            ->setController(ArticleCrudController::class)
            ->generateUrl();

        return $this->redirect($url);

    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('<h2 class="mt-3 fw-bold text-white">BUREAU MINE</h2>')
//            ->setTitle('<img src="public/build/images/LogoIntro.png" alt="test" class="img-fluid d-block mx-auto" style="max-width:100px; width:100%;">
//                        <h2 class="mt-3 fw-bold text-white text-center">MonBlog</h2>')
            ->renderContentMaximized();
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::section('DashBoard', 'fa fa-home');

        yield MenuItem::subMenu('Articles', 'fa-solid fa-newspaper')->setSubItems([
            MenuItem::linkToCrud('Créer article', 'fas fa-plus', Article::class)
                ->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Voir les articles', 'fas fa-eye', Article::class),
        ]);

        yield MenuItem::subMenu('Catégories', 'fa-solid fa-newspaper')->setSubItems([
            MenuItem::linkToCrud('Créer catégories', 'fas fa-plus', Category::class)
                ->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Voir les catégories', 'fas fa-eye', Category::class),
        ]);

        yield MenuItem::subMenu('Infos', 'fa-solid fa-newspaper')->setSubItems([
            MenuItem::linkToCrud('Créer une info', 'fas fa-plus', Info::class)
                ->setAction(Crud::PAGE_NEW),
            MenuItem::linkToCrud('Voir les infos', 'fas fa-eye', Info::class),
        ]);

    }

    public function configureAssets(): Assets
    {
        return parent::configureAssets()
            ->addWebpackEncoreEntry('admin');

    }

//    public function configureCrud(): Crud
//    {
//        return Crud::new()
//            // ...
//
//            // the first argument is the "template name", which is the same as the
//            // Twig path but without the `@EasyAdmin/` prefix
//            ->overrideTemplate('label/null', 'admin/labels/my_null_label.html.twig')
//
//            ->overrideTemplates([
//                'crud/index' => 'admin/pages/detailCat.html.twig',
//                'crud/field/textarea' => 'admin/fields/dynamic_textarea.html.twig',
//            ])
//            ;
//    }


}
