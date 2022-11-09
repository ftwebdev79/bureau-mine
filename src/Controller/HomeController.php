<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use phpDocumentor\Reflection\Types\Boolean;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(ArticleRepository $articleRepository): Response
    {

        return $this->render('home/index.html.twig', [
            'articles' => $articleRepository->findAll(),

        ]);
    }

    #[Route('/{id}/details', name: 'app_home_details')]
    public function details(ArticleRepository $articleRepository, string $id): Response
    {


        $test= $articleRepository->getNextArticle($id);


        return $this->render('home/details.html.twig', [
            'article' => $articleRepository->find($id),
            'test'=> $test,
        ]);
    }



}
