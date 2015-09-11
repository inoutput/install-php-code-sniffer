#!/bin/bash
#Created by ~*~_ChRiS_Th3_L33t_h4x0r_~*~
curl https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar > phpcs
chmod a+x phpcs
mv phpcs /usr/local/bin

curl https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar > phpcbf
chmod a+x phpcbf
mv phpcbf /usr/local/bin

curl http://static.phpmd.org/php/latest/phpmd.phar > phpmd
chmod a+x phpmd
mv phpmd /usr/local/bin

curl http://get.sensiolabs.org/php-cs-fixer.phar > php-cs-fixer
chmod a+x php-cs-fixer
mv php-cs-fixer /usr/local/bin

php_path="$(which php)"
phpcs_path="$(which phpcs)"
phpcbf_path="$(which phpcbf)"
phpmd_path="$(which phpmd)"
phpcs_fixer_path="$(which php-cs-fixer)"

echo "Rad.. now throw this in phpcs.sublime-settings file"
echo ""
echo "{"
echo "  \"phpcs_php_path\": \"${php_path}\"",
echo "  \"phpcs_executable_path\": \"${phpcs_path}\"",
echo "  \"phpcbf_executable_path\": \"${phpcbf_path}\"",
echo "  \"phpmd_executable_path\": \"${phpmd_path}\"",
echo "  \"php_cs_fixer_executable_path\": \"${phpcs_fixer_path}\""
echo "}"