<?php

namespace App\Controller;

use App\Repository\CategoryRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CategoryController extends AbstractController
{
    #[Route('category/{id}/details', name: 'app_category_detail')]
    public function detailCat( CategoryRepository $categoryRepository, string $id): Response
    {
        $category =$categoryRepository->find($id);


        return $this->render('category/detailCat.html.twig', [
            'category' => $category,
        ]);
    }
}
