# !/usr/bin/env python3

from setuptools import setup, find_packages
with open("requirements.txt") as f:
    REQUIREMENTS = f.read().splitlines()

setup(
    name='application',
    version='v1.0.0',
    description="An simple packaged application to print hello world",
    author='Oscar Ligthart',
    author_email='oscarligthart@gmail.com',
    include_package_data=True,
    install_requires=REQUIREMENTS,
    packages=find_packages(include=['application', 'application.*']),
)
