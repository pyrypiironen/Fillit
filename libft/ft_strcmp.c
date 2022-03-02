/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mjokela <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/08 12:13:05 by mjokela           #+#    #+#             */
/*   Updated: 2021/11/08 12:13:21 by mjokela          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_strcmp(char const *s1, char const *s2)
{
	int	i;

	i = -1;
	while (s1[++i] != '\0')
	{
		if (s1[i] != s2[i])
			break ;
	}
	return ((unsigned char)s1[i] - (unsigned char)s2[i]);
}