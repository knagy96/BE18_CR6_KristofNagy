<?php

namespace App\Form;

use App\Entity\CR;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CRType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, array("attr"=>["class"=>"form-control mb-2 myinput", "placeholder"=>"Please type the name"]))
            ->add('description', TextareaType::class, array("attr"=>["class"=>"form-control mb-2 myinput", "placeholder"=>"Please type the description"]))
            ->add('type', ChoiceType::class , 
                ['choices' =>[
                    'Rock' => "Rock",
                    'Techno' => "Techno",
                    'Pop' => "Pop",
                ],"attr"=>["class"=>"form-control"]] )
            ->add('date', DateTimeType::class,["attr"=>["form-control mb-2 myinput"]])
        
            ->add('image', null, array("attr"=>["class"=>"form-control mb-2 myinput","placeholder"=>"Please give ur images url"]))
            ->add('capacity', null, array("attr"=>["class"=>"form-control mb-2 myinput", "placeholder"=>"Please type the capacity"]))
            ->add('contact', null, array("attr"=>["class"=>"form-control mb-2 myinput", "placeholder"=>"Please type your email"]))
            ->add('phone_number', null, array("attr"=>["class"=>"form-control mb-2 myinput","placeholder"=>"Please type your phone number"]))
            ->add('address', null, array("attr"=>["class"=>"form-control mb-2 myinput","placeholder"=>"Please type the address"]))
            ->add('URL', null, array("attr"=>["class"=>"form-control mb-2 myinput","placeholder"=>"Please give your pages url"]))
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => CR::class,
        ]);
    }
}
