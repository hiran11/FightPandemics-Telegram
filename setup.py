from setuptools import setup, find_packages

with open('README.md') as _f:
    _README_MD = _f.read()

_VERSION = '0.1'

setup(
    name='project', # TODO: rename.
    version=_VERSION,
    description='An empty project base.',
    long_description=_README_MD,
    classifiers=[
        # TODO: typing.
        "Typing :: Typed"
    ],
    url='https://github.com/FightPandemics/FightPandemics-Telegram/',
    #download_url='https://github.com/FightPandemics/FightPandemics-Telegram//tarball/{}'.format(_VERSION),
    author='FightPandemics',
    author_email='contact@fightpandemics.com',
    packages=find_packages(include=['project*']),
    test_suite="testing",
    setup_requires=["pytest-runner"],
    tests_require=["pytest", "pytest-cov"],
    install_requires=["neuraxle"],
    include_package_data=True,
    license='MIT',
    keywords='FightPandemics-Telegram'
)