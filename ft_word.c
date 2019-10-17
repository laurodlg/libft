/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_word.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lde-la-g <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/14 17:24:46 by lde-la-g          #+#    #+#             */
/*   Updated: 2019/10/14 17:47:40 by lde-la-g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_word(char const *s, char c, int w)
{
	int	len;
	int	i;
	int	cnt;

	len = 0;
	i = 0;
	cnt = 0;
	while (s[i])
	{
		if (s[i] != c)
		{
			while (s[i] && s[i] != c)
			{
				if (w == cnt)
					len++;
				i++;
			}
			cnt++;
		}
		i++;
	}
	return (len);
}
