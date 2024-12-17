import { Component, inject } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrl: './register.component.scss'
})
export class RegisterComponent {

  //variables de servicio
  private authService=inject(AuthService);
  private router = inject(Router);
  
  registerForm=new FormGroup({
    name:new FormControl("",[Validators.required]),
    mail:new FormControl("", [Validators.email, Validators.required]),
    password:new FormControl("", Validators.required),
  })
  funResgitrar(){
    const formValue = this.registerForm.value;
    console.log(formValue);
  this.authService.registroConNest(formValue).subscribe(
    data =>{
      if (data){
        alert('Se ha registrado correctamente!')
        this.router.navigate(['/auth/login']);
      }
      else{
        alert('No se ha podido registrar, intente nuevamente!')
      }
    }
  );
  }

}
