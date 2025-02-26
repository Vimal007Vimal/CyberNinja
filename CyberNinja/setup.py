from setuptools import setup, find_packages

setup(
    name="cyberninja",
    version="1",
    description="A tool for hunting down social media accounts by username across networks.",
    author="Vimal",
    author_email="2004.vimald@gmail.com",
    url="https://github.com/yourusername/cyberninja",
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires='>=3.6',
    install_requires=[
        'beautifulsoup4',
        'bs4',
        'certifi',
        'colorama',
        'lxml',
        'PySocks',
        'requests',
        'requests-futures',
        'soupsieve',
        'stem',
        'torrequest'
    ],
    entry_points={
        'console_scripts': [
            'cyberninja=cyberninja.main:main',  # Adjust this line according to your package structure
        ],
    },
)
