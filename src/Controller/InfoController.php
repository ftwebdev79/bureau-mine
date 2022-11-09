<?php

namespace App\Controller;

use App\Repository\ArticleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class InfoController extends AbstractController
{
    #[Route('/info', name: 'app_info')]
    public function info(ArticleRepository $articleRepository): Response
    {
        return $this->render('info/index.html.twig', [
            'articles' => $articleRepository->findAll(),
        ]);
    }
}
