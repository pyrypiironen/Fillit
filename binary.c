/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   binary.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mjokela <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/21 15:30:43 by mjokela           #+#    #+#             */
/*   Updated: 2021/12/21 15:30:46 by mjokela          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fillit.h"

int	convert_to_binary(char ***arr, int **bin_arr, int piece_count)
{
	int		i;

	i = 0;
	while (i < piece_count)
	{
		bin_arr[i] = (int *)ft_memalloc(sizeof(int *) * 24);
		if (bin_arr[i] == NULL)
			exit(-1);
		fill_bin_arr(arr, bin_arr, i, 0);
		i++;
	}
	free_char_arr(arr, piece_count);
	bin_arr[0][24] = piece_count;
	piece_row_count(bin_arr, piece_count);
	return (i);
}

void	fill_bin_arr(char ***arr, int **bin_arr, int i, int j)
{
	int	bin;

	while (j < 4)
	{
		bin = 0;
		if (arr[i][j][0] != '.')
			bin += 1;
		if (arr[i][j][1] != '.')
			bin += 2;
		if (arr[i][j][2] != '.')
			bin += 4;
		if (arr[i][j][3] != '.')
			bin += 8;
		bin_arr[i][j] = bin;
		bin_arr[i][j + 20] = bin;
		j++;
	}
}

void	piece_row_count(int **bin_arr, int piece_count)
{
	int	i;
	int	j;

	i = 0;
	while (i < piece_count)
	{
		j = 0;
		while (j < 4)
		{
			if (bin_arr[i][j] != 0)
				bin_arr[i][18]++;
			j++;
		}
		i++;
	}
}

void	free_char_arr(char ***arr, int piece_count)
{
	int	i;
	int	j;

	i = 0;
	while (i < piece_count)
	{
		j = 0;
		while (j < 5)
		{
			free(arr[i][j]);
			j++;
		}
		free(arr[i]);
		i++;
	}
	free(arr);
}
