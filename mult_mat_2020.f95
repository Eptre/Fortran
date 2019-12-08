PROGRAM mult_mat_2020

INTEGER :: memoria(24),f,g,h,p
memoria(1:16) = 2
memoria(17:24) = 0

WRITE(*,*)
WRITE(*,*)"Entrada:"
WRITE(*,*)
WRITE(*,*) "Memoria: "
DO K = 1,24
WRITE(*,*) "Dirección: ",k, "Elemento: ", memoria(k)
END DO

WRITE(*,*)
WRITE(*,*) "Matríz A: "
DO K = 1,8
WRITE(*,*)memoria(k)
END DO

WRITE(*,*) "Matríz B: "
DO f = 9,16
WRITE(*,*)memoria(f)
END DO

DO K = 1,2
  DO j = 1,2
    DO i = 1,2
      DO l = 1,2
    memoria(17+(2*2*(k-1))+2*(j-1)+(i-1))=memoria(17+(2*2*(k-1)) + 2*(j-1)+(i-1))+memoria(8+(2*2*(k-1))+2*(l-1)+(i-1)) &
    * (memoria(1+(2*2*(k-1))+2*(j-1)+(l-1)))
      END DO
    END DO
  END DO
END DO

WRITE(*,*) "Salidas: "
WRITE(*,*)
WRITE(*,*) "Matríz C: "
DO g = 17,24
WRITE(*,*)memoria(g)
END DO

WRITE(*,*) "Planos A:"

PRINT *,(memoria(h),h=1,2)
PRINT *,(memoria(h),h=3,4)
WRITE(*,*)
PRINT *,(memoria(h),h=5,6)
PRINT *,(memoria(h),h=7,8)

WRITE(*,*) "Planos B:"

PRINT *,(memoria(p),p=9,10)
PRINT *,(memoria(p),p=11,12)
WRITE(*,*)
PRINT *,(memoria(p),p=13,14)
PRINT *,(memoria(p),p=15,16)

END PROGRAM mult_mat_2020
