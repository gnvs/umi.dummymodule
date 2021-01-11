<?php
	/**
	 * Установщик модуля
	 */

	/**
	 * @var array $INFO реестр модуля
	 */
	$INFO = [
		'name' => 'dummy',
		'config' => '1',
		'default_method' => 'page',
		'default_method_admin' => 'pages',
		'func_perms' => 'Группы прав на функционал модуля',
		'func_perms/guest' => 'Гостевые права',
		'paging/' => 'Настройки постраничного вывода',
		'paging/pages' => 25,
		'paging/objects' => 25,
	];

	/**
	 * @var array $COMPONENTS файлы модуля
	 */
	$COMPONENTS = [
		'./classes/components/dummy/admin.php',
		'./classes/components/dummy/class.php',
		'./classes/components/dummy/customAdmin.php',
		'./classes/components/dummy/customMacros.php',
		'./classes/components/dummy/i18n.php',
		'./classes/components/dummy/install.php',
		'./classes/components/dummy/lang.php',
		'./classes/components/dummy/macros.php',
		'./classes/components/dummy/permissions.php',
	];
?>
