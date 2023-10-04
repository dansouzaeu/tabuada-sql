declare @n int = 1 /* define qual tabuada voc� quer */

declare @x int = 1 /* define o primeiro operador logico, ou seja,
					o primeiro mutiplicador que ser� utilizado,
					geralmente n�o alteramos esse valor */

declare @resultado varchar(20) /* define uma vari�vel para que seja exibido o resultado de forma visual */

while (@n <= 10 ) /* cria uma condi��o para que a vai�vel @n seja incrementada, logo teremos tabuadas do 1,2,3 e etc. */
	begin
		while (@x <= 10) /* define a condi��o desse la�o de repeti��o
							nesse caso a condi��o � que o "x" seja menor ou igual a 10 */
		
			begin /* define o ponto inicial da repeti��o */
		
				set @resultado = (
				select concat(@n,' x ',@x,' = ', sum(@n * @x)) AS tabuada
				) /* define que a vari�vel @resultado
					ser� igual aos valores de @n, @x concatenados a eles mesmos
					em soma, no final � definido um
					ALIAS para esse campo (opcional) */
													
					set @x += 1 /* define o incremente a vari�vel @x,
								ou seja, ela inicialmente valia 1 e vai se auto-incrementando enquanto
								a condi��o do loop (WHILE) for atendida.
								Ser� incrementado at� @x valer 10 */
		
		 		print @resultado /* faz a "impress�o" de cada uma das vezes que o loop correspondeu a condi��o WHILE */
		
			end /* define o ponto final da repeti��o */

		set @n += 1 /* incrementa o @n para "mudar de tabuada */
		set @x = 1 /* reseta o @x para come�ar a proxima tabuada a partir do primeiro multiplicador */
	end