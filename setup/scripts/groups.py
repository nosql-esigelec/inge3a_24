import random

def create_random_groups(number_of_students, group_size):
    """
    Crée des groupes aléatoires d'étudiants.

    Args:
        number_of_students (int): Nombre total d'étudiants.
        group_size (int): Taille souhaitée pour chaque groupe.

    Returns:
        list: Liste de groupes d'étudiants.
    """
    # Crée une liste d'étudiants sous forme d'entiers pour simplicité
    students = list(range(1, number_of_students + 1))
    
    # Mélange la liste des étudiants de manière aléatoire
    random.shuffle(students)
    
    # Divise la liste d'étudiants en groupes de taille spécifiée
    groups = [students[i:i + group_size] for i in range(0, len(students), group_size)]
    
    return groups

# Entrée utilisateur
number_of_students = int(input("Entrez le nombre total d'étudiants : "))
group_size = int(input("Entrez la taille souhaitée pour chaque groupe : "))

# Création et affichage des groupes
groups = create_random_groups(number_of_students, group_size)
for index, group in enumerate(groups, start=1):
    print(f"Groupe {index}: {group}")
