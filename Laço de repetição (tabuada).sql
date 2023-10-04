declare @n int = 1 /* define qual tabuada você quer */

declare @x int = 1 /* define o primeiro operador logico, ou seja,
					o primeiro mutiplicador que será utilizado,
					geralmente não alteramos esse valor */

declare @resultado varchar(20) /* define uma variável para que seja exibido o resultado de forma visual */

while (@n <= 10 ) /* cria uma condição para que a vaiável @n seja incrementada, logo teremos tabuadas do 1,2,3 e etc. */
	begin
		while (@x <= 10) /* define a condição desse laço de repetição
							nesse caso a condição é que o "x" seja menor ou igual a 10 */
		
			begin /* define o ponto inicial da repetição */
		
				set @resultado = (
				select concat(@n,' x ',@x,' = ', sum(@n * @x)) AS tabuada
				) /* define que a variável @resultado
					será igual aos valores de @n, @x concatenados a eles mesmos
					em soma, no final é definido um
					ALIAS para esse campo (opcional) */
													
					set @x += 1 /* define o incremente a variável @x,
								ou seja, ela inicialmente valia 1 e vai se auto-incrementando enquanto
								a condição do loop (WHILE) for atendida.
								Será incrementado até @x valer 10 */
		
		 		print @resultado /* faz a "impressão" de cada uma das vezes que o loop correspondeu a condição WHILE */
		
			end /* define o ponto final da repetição */

		set @n += 1 /* incrementa o @n para "mudar de tabuada */
		set @x = 1 /* reseta o @x para começar a proxima tabuada a partir do primeiro multiplicador */
	end