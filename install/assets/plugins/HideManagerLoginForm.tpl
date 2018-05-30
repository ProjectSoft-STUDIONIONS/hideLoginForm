//<?php
/**
 * HideManagerLoginForm
 *
 * Прячем вход в админку
 *
 * @category    plugin
 * @version     1.0.0
 * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @package     evo
 * @internal    @events OnManagerLoginFormPrerender
 * @internal    @modx_category Manager and Admin
 * @internal    @installset base
 * @internal    @properties &tplLogin=Шаблон формы входа в админку;text;assets/templates/hidelogin/login.tpl &tplHideLogin=Шаблон без формы входа в админку;text;assets/templates/hidelogin/hide.tpl &getCommand=GET параметр разблокировки;text;managerenabled
 * @reportissues https://github.com/ProjectSoft-STUDIONIONS/hideManagerLoginEvo/issues
 * @documentation https://github.com/ProjectSoft-STUDIONIONS/hideManagerLoginEvo
 * @author      ProjectSoft from https://github.com/ProjectSoft-STUDIONIONS/
 * @lastupdate  30-05-2018
 */

global $modx;

$event = $modx->event;
switch($event->name){
	case 'OnManagerLoginFormPrerender':
		if(!isset($_GET[$getCommand])):
			$modx->config['manager_login_tpl'] = $tplHideLogin;
		else:
			$modx->config['manager_login_tpl'] = $tplLogin;
		endif;
		break;
}