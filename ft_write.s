;/* ************************************************************************** */
;/*                                                                            */
;/*                                                        :::      ::::::::   */
;/*   ft_write.s                                         :+:      :+:    :+:   */
;/*                                                    +:+ +:+         +:+     */
;/*   By: iadrien <marvin@42.fr>                     +#+  +:+       +#+        */
;/*                                                +#+#+#+#+#+   +#+           */
;/*   Created: 2020/08/16 10:56:14 by iadrien           #+#    #+#             */
;/*   Updated: 2020/10/13 16:31:53 by iadrien          ###   ########.fr       */
;/*                                                                            */
;/* ************************************************************************** */

GLOBAL _ft_write

extern ___error

_ft_write:	
	mov 	rax, 0x2000004
	syscall
    jc 		_error
	ret

_error:
	push	rax
    call 	___error
    pop		rcx
    mov 	[rax], rcx
    mov 	rax, -1
    ret