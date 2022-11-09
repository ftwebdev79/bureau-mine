<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(ArticleRepository $articleRepository, Request $request): Response
    {

        $articles = $articleRepository->findAll();




        if ($request->isXmlHttpRequest()) {
            return new JsonResponse([
                'content' => $this->renderView('home/article.html.twig', ['articles' => $articles])
            ]);

        }

        return $this->render('home/index.html.twig', [
            'articles' => $articles,

        ]);
    }


    #[Route('/{id}/details', name: 'app_home_details')]
    public function details(ArticleRepository $articleRepository, string $id): Response
    {

        $test= $articleRepository->findAll();


        return $this->render('home/details.html.twig', [
            'article' => $articleRepository->find($id),
            'test'=> $test,
        ]);
    }


}
