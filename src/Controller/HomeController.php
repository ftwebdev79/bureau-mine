<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(ArticleRepository $articleRepository, CategoryRepository $categoryRepository, Request $request): Response
    {

        $articles = $articleRepository->findAll();
        $categories = $categoryRepository->findAll();




        return $this->render('home/index.html.twig', [
            'articles' => $articles,
            'categories' => $categories,
                    ]);
    }


    #[Route('/{id}/details', name: 'app_home_details')]
    public function details(ArticleRepository $articleRepository, string $id): Response
    {

        $article = $articleRepository->find($id);
        $nextProject = $articleRepository->getNextArticle($id);
        $previousProject = $articleRepository->getPrevArticle($id);

        return $this->render('home/details.html.twig', [
            'article' => $article,
            'next' => $nextProject,
            'previous' => $previousProject,
        ]);
    }


}
