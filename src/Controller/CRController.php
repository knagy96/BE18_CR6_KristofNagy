<?php

namespace App\Controller;

use App\Entity\CR;
use App\Form\CRType;
use App\Repository\CRRepository;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Contracts\EventDispatcher\Event;

#[Route('/c/r')]
class CRController extends AbstractController
{
    #[Route('/', name: 'app_c_r_index', methods: ['GET'])]
    public function index(CRRepository $cRRepository): Response
    {
        return $this->render('cr/index.html.twig', [
            'c_rs' => $cRRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_c_r_new', methods: ['GET', 'POST'])]
    public function new(Request $request, CRRepository $cRRepository): Response
    {
        $cR = new CR();
        $form = $this->createForm(CRType::class, $cR);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $cRRepository->save($cR, true);

            return $this->redirectToRoute('app_c_r_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('cr/new.html.twig', [
            'c_r' => $cR,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_c_r_show', methods: ['GET'])]
    public function show(CR $cR): Response
    {
        return $this->render('cr/show.html.twig', [
            'c_r' => $cR,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_c_r_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, CR $cR, CRRepository $cRRepository): Response
    {
        $form = $this->createForm(CRType::class, $cR);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $cRRepository->save($cR, true);

            return $this->redirectToRoute('app_c_r_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('cr/edit.html.twig', [
            'c_r' => $cR,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_c_r_delete', methods: ['POST'])]
    public function delete(Request $request, CR $cR, CRRepository $cRRepository): Response
    {
        if ($this->isCsrfTokenValid('delete'.$cR->getId(), $request->request->get('_token'))) {
            $cRRepository->remove($cR, true);
        }

        return $this->redirectToRoute('app_c_r_index', [], Response::HTTP_SEE_OTHER);
    }





    //extra point//



    #[Route('/techno', name: 'event-techno')]
    public function technoF(ManagerRegistry $doctrine): Response
{

    $events = $doctrine->getRepository(Event::class)->findBy(['type' => 'Techno']);

    return $this->render("cr/techno.html.twig",["events" => $events]);
}


    #[Route('/rock', name: 'event-rock')]
    public function rockF(ManagerRegistry $doctrine): Response
    {

    $events = $doctrine->getRepository(Event::class)->findBy(['type' => 'Rock']);

    return $this->render("cr/rock.html.twig",["events" => $events]);
    }

    #[Route('/pop', name: 'event-pop')]
    public function popF(ManagerRegistry $doctrine): Response
    {

    $events = $doctrine->getRepository(Event::class)->findBy(['type' => 'Pop']);

    return $this->render("cr/pop.html.twig",["events" => $events]);
    }
}



