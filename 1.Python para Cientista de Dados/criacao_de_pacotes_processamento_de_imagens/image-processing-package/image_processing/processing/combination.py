# Aqui é onde é feito a combinação das imagens.

from locale import normalize
import numpy as np
from skimage.color import rgb2gray
from skimage.exposure import match_histograms
from skimage.metrics import structural_similarity

def find_difference(image1, image2):
    """ Essa função returna a diferença normalizada entre as imagens"""
    assert imagem1.shape == imagem2.shape, "Specify 2 images with de same shape."  # verifica se os shapes são iguais, se não for manda uma msg.
    gray_image1 = rgb2gray(image1)  # convertendo a imagem para tons de cinza
    gray_image2 = rgb2gray(image2)
    (score, difference_image) = structural_similarity(gray_image1, gray_image2, full=True)  # O score é de 0 á 1, indica o quanto as imagens são similares
    print("Similarity of the image: ", score)
    normalized_difference_image = (difference_image-np.min(difference_image))/(np.max(difference_image)-np.min(difference_image))  # Aqui normaliza a difference_image para para ficar mais facil de identificar na hora de plotar
    return normalized_difference_image


def transfer_histogram(image1, image2):
    "Essa função returna o matched_image das duas imagens "
    matched_image = match_histograms(image1, image2, multichannel=True)
    return matched_image

