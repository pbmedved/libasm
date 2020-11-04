;/* ************************************************************************** */
;/*                                                                            */
;/*                                                        :::      ::::::::   */
;/*   ft_strdub.s                                        :+:      :+:    :+:   */
;/*                                                    +:+ +:+         +:+     */
;/*   By: iadrien <marvin@42.fr>                     +#+  +:+       +#+        */
;/*                                                +#+#+#+#+#+   +#+           */
;/*   Created: 2020/08/16 10:56:14 by iadrien           #+#    #+#             */
;/*   Updated: 2020/10/13 16:31:53 by iadrien          ###   ########.fr       */
;/*                                                                            */
;/* ************************************************************************** */


GLOBAL _ft_strdup

EXTERN _ft_strlen

EXTERN _ft_strcpy

EXTERN _malloc

_ft_strdup:
	push rdi
	call _ft_strlen
	inc rax
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je _exit
	pop rsi
	mov rdi, rax
	call _ft_strcpy
	mov rax, rdi
_exit:
	ret