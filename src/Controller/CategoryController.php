<?php

namespace App\Controller;

use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategoryController extends AbstractController
{
    #[Route('category/{id}/details', name: 'app_category_detail')]
    public function detailCat(CategoryRepository $categoryRepository, string $id, Request $request): Response
    {
        $category =$categoryRepository->find($id);


        if ($request->isXmlHttpRequest()) {
            return $this->render('home/article.html.twig', ['articles' => $category->getArticles()]);
        }

        return $this->render('category/detailCat.html.twig', [
            'category' => $category,
        ]);
    }
}
