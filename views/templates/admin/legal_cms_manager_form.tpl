{*
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2014 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<form id="legalCMSManager" class="defaultForm form-horizontal" action="{$form_action}" method="POST" enctype="multipart/form-data" novalidate>
    <input type="hidden" name="AEUC_legalContentManager" value="1">
    <div class="panel">
        <div class="panel-heading">
            <i class="icon-cogs"></i>
            {l s='Legal content management' mod='advancedeucompliance'}
        </div>
        <p>
            {l s='Your country\'s legislation may require some specific legal information from you. For each of the topics below, indicate which of your CMS page contains the matching information:' mod='advancedeucompliance'}
        </p>
        <br/>
        <div class="form-wrapper">
                {foreach from=$cms_roles_assoc key=id_cms_role item=cms_role_assoc}
                    <div class="form-group">
                        <label class="control-label col-lg-3">
                            {$cms_role_assoc['role_title']}
                        </label>

                        <div class="col-lg-9">
                            <select class="form-control fixed-width-xxl" name="CMSROLE_{$id_cms_role}" id="CMSROLE_{$id_cms_role}">
                            {foreach from=$cms_pages item=cms_page}
                                <option value="{$cms_page->id}" {if $cms_role_assoc['id_cms'] == $cms_page->id}selected{/if}>{$cms_page->meta_title}</option>
                            {/foreach}
                            </select>
                        </div>
                    </div>
                {/foreach}
        </div>
        <div class="panel-footer">
            <button type="submit" class="btn btn-default pull-right">
                <i class="process-icon-save"></i>  {l s='Save' mod='advancedeucompliance'}
            </button>
            <a href="{$add_cms_link|escape:'html':'UTF-8'}" class="btn btn-default">
                <i class="process-icon-plus"></i> {l s='Add new CMS Page' mod='advancedeucompliance'}
            </a>
        </div>

    </div>


</form>
