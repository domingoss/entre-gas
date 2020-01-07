import { Component, OnInit } from '@angular/core';
import {NgForm} from '@angular/form'
@Component({
  selector: 'app-registar',
  templateUrl: './registar.page.html',
  styleUrls: ['./registar.page.scss'],
})
export class RegistarPage implements OnInit {

  constructor() { }

  onRegister(form: NgForm){
    
    const nome = formulario.value.nome;
    const email = formulario.value.email;
    const senha = formulario.value.senha;
    const confirma = formulario.value.confirmar;
    const endereco = formualrio.value.endereco;
    const contacto = formulario.value.contacto;
  }
  ngOnInit() {
  }

}
