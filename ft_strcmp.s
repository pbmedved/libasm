;/* ************************************************************************** */
;/*                                                                            */
;/*                                                        :::      ::::::::   */
;/*   ft_strcmp.s                                        :+:      :+:    :+:   */
;/*                                                    +:+ +:+         +:+     */
;/*   By: iadrien <marvin@42.fr>                     +#+  +:+       +#+        */
;/*                                                +#+#+#+#+#+   +#+           */
;/*   Created: 2020/08/16 10:56:14 by iadrien           #+#    #+#             */
;/*   Updated: 2020/10/13 16:31:53 by iadrien          ###   ########.fr       */
;/*                                                                            */
;/* ************************************************************************** */

GLOBAL _ft_strcmp
_ft_strcmp:
	mov		rcx,0
_while:
	movzx	eax, BYTE[rsi + rcx]
	movzx	edx, BYTE[rdi + rcx]
	cmp		eax, 0
	je		_end
	cmp		edx, 0
	je		_end
	inc		rcx
	cmp		eax,edx
	jne		_end
	jmp		_while
_end:
	cmp		eax,edx
	je		_equal
	jg		_minus
	jl		_plus
_minus:
	mov 	rax, 1
	neg 	rax
	ret
_plus:
	mov 	rax, 1
	ret
_equal:
	mov		rax, 0
	ret