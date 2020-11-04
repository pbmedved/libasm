; /* ************************************************************************** */
; /*                                                                            */
; /*                                                        :::      ::::::::   */
; /*   ft_strcpy.s                                        :+:      :+:    :+:   */
; /*                                                    +:+ +:+         +:+     */
; /*   By: iadrien <marvin@42.fr>                     +#+  +:+       +#+        */
; /*                                                +#+#+#+#+#+   +#+           */
; /*   Created: 2020/08/16 10:56:14 by iadrien           #+#    #+#             */
; /*   Updated: 2020/10/13 16:31:53 by iadrien          ###   ########.fr       */
; /*                                                                            */
; /* ************************************************************************** */

GLOBAL _ft_strcpy

_ft_strcpy:
	mov		rcx,0
	cmp		BYTE[rsi + rcx],0
	jg		_while
	jmp		_end	
_while:
	mov		al, BYTE[rsi + rcx]
	mov		BYTE[rdi + rcx], al
	inc		rcx
	cmp		BYTE[rsi + rcx],0
	jg		_while
	jmp		_end
_end:
	mov		BYTE[rdi + rcx], 0
	mov		rax, rdi
	ret