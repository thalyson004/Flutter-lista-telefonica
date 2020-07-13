import os
import glob

#https://product.hubspot.com/blog/git-and-github-tutorial-for-beginners

#Inicialização do repositório
#os.system('git init')
#os.system('git remote add origin https://github.com/thalyson004/Flutter-lista-telefonica.git')

def add_files(path):
	if os.path.isdir(path):
		print('Entrou em', path)
		for file in os.listdir(path):
			if file.endswith('git') or file.endswith('.py'):
				continue
			cPath = path+'/'+file
			if os.path.isfile(cPath):
				#print('git add ' + cPath)
				os.system('git add ' + cPath)
				
			else:
				add_files(cPath)

#Sincronize the history
os.system('git pull origin master --allow-unrelated-histories')
#add_files( 'lib' )
#add_files('images')
#os.system('git add pubspec.yaml')

add_files(os.getcwd())


commit = input('Commit mesage:')
os.system('git commit -m ' + commit)
os.system('git push -u origin master')
