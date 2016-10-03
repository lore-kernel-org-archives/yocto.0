Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFF4FE0095D; Mon,  3 Oct 2016 15:54:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E3EEE00874
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 15:54:15 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 03 Oct 2016 15:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,292,1473145200"; d="scan'208";a="768520405"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.185.151])
	by FMSMGA003.fm.intel.com with ESMTP; 03 Oct 2016 15:54:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Liam R. Howlett" <Liam.Howlett@windriver.com>
Date: Tue, 04 Oct 2016 11:54:11 +1300
Message-ID: <1587820.dvQiXEhqcB@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1474914338-26310-8-git-send-email-Liam.Howlett@WindRiver.com>
References: <1474914338-26310-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1474914338-26310-8-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 07/10] layerindex: Detect dependencies from layer.conf files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 03 Oct 2016 22:54:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 26 Sep 2016 14:25:35 Liam R. Howlett wrote:
> Read dependencies from layer.conf and try to create the LayerDependency
> entry by looking up the correct database object.  Dependencies are found
> by layer name only - no collection support.  layer.conf parsing is
> handled by the bitbake code.

I see you did some refactoring here to move some of the code needed to parse 
the layer conf to the utils module. Generally I do that kind of thing in a 
separate patch, although I won't insist upon it - however if you do do it as 
part of this patch then it needs to at least be mentioned as part of the 
commit message.


> diff --git a/layerindex/models.py b/layerindex/models.py
> index 6aec030..2db8818 100644
> --- a/layerindex/models.py
> +++ b/layerindex/models.py
> @@ -209,6 +209,9 @@ class LayerBranch(models.Model):
>          return "%s: %s" % (self.layer.name, self.branch.name)
> 
> 
> +    def get_required(self):
> +        return self.dependencies_set.filter(required=True)
> +
>  class LayerMaintainer(models.Model):
>      MAINTAINER_STATUS_CHOICES = (
>          ('A', 'Active'),
> @@ -230,6 +233,7 @@ class LayerMaintainer(models.Model):
>  class LayerDependency(models.Model):
>      layerbranch = models.ForeignKey(LayerBranch,
> related_name='dependencies_set') dependency = models.ForeignKey(LayerItem,
> related_name='dependents_set') 
> +    required = models.BooleanField(default=True)
> 
>      class Meta:
>          verbose_name_plural = "Layer dependencies"

This "required" field doesn't seem to be used in this commit - can you move 
these two changes to be part of the "recommends" support patch where they are 
used?


> --- a/layerindex/tools/import_layer.py
> +++ b/layerindex/tools/import_layer.py
> @@ -19,6 +19,7 @@ import glob
>  import utils
>  import logging
>  import subprocess
> +from layerconfparse import LayerConfParse
> 
>  class DryRunRollbackException(Exception):
>      pass
> @@ -375,11 +376,18 @@ def main():
>                  if layer.name != settings.CORE_LAYER_NAME:
>                      if not core_layer:
>                          core_layer =
> utils.get_layer(settings.CORE_LAYER_NAME) 
> +
>                      if core_layer:
> +                        logger.debug('Adding dep %s to %s' %
> (core_layer.name, layer.name)) layerdep = LayerDependency()
>                          layerdep.layerbranch = layerbranch
>                          layerdep.dependency = core_layer
>                          layerdep.save()
> +                    layerconfparser = LayerConfParse(logger=logger)
> +                    config_data = layerconfparser.parse_layer(layerdir)
> +                    layerconfparser.shutdown()
> +                    utils.add_dependencies(layerbranch, config_data,
> logger=logger) 
> +

Use try..finally here to ensure shutdown() gets run.


>                  # Get some extra meta-information
>                  readme_files = glob.glob(os.path.join(layerdir, 'README*'))
> diff --git a/layerindex/update.py b/layerindex/update.py
> index 423eb53..ecd2380 100755
> --- a/layerindex/update.py
> +++ b/layerindex/update.py
> @@ -16,6 +16,8 @@ import subprocess
>  import signal
>  from distutils.version import LooseVersion
>  import utils
> +from layerconfparse import LayerConfParse
> +
> 
>  import warnings
>  warnings.filterwarnings("ignore", category=DeprecationWarning)
> @@ -92,7 +94,7 @@ def main():
> 
>      utils.setup_django()
>      import settings
> -    from layerindex.models import Branch, LayerItem
> +    from layerindex.models import Branch, LayerItem, LayerDependency
> 
>      logger.setLevel(options.loglevel)
> 
> @@ -201,6 +203,22 @@ def main():
>                      # Interrupted by user, break out of loop
>                      break
> 
> +        # Once indexed, then conf/layer.conf dependencies should be
> reevaluated. 

Shouldn't this be triggered solely when layer.conf changes rather than every 
time?


> +        layerconfparser = LayerConfParse(logger=logger,
> bitbakepath=bitbakepath) 
> +        for branch in branches:
> +            for layer in layerquery:
> +                urldir = layer.get_fetch_dir()
> +                repodir = os.path.join(fetchdir, urldir)
> +
> +                layerbranch = layer.get_layerbranch(branch)
> +                if layerbranch.vcs_subdir:
> +                    repodir = os.path.join(repodir, layerbranch.vcs_subdir)
> +                config_data = layerconfparser.parse_layer(repodir)
> +                utils.add_dependencies(layerbranch, config_data,
> logger=logger)
> +
> +        layerconfparser.shutdown()

Use try..finally here as well.

> diff --git a/layerindex/utils.py b/layerindex/utils.py
> index 23b81f5..f82f8c7 100644
> --- a/layerindex/utils.py
> +++ b/layerindex/utils.py
> @@ -27,6 +27,114 @@ def get_layer(layername):
>          return res[0]
>      return None
> 
> +def get_dependency_layer(depname, version_str=None, logger=None):
> +    from layerindex.models import LayerItem, LayerBranch
> +
> +    # Get any LayerBranch with a layer that has a name that matches the
> depname 
> +    res = list(LayerBranch.objects.filter(layer__name=depname))
> +
> +    # Nothing found, return.
> +    if len(res) == 0:
> +        return None

This is more simply written as:

    if res:
        return None


> +
> +    # If there is no version constraint, return the first one found.
> +    if not version_str:
> +        return res[0].layer
> +
> +    (operator, dep_version) = version_str.split()
> +    for layerbranch in res:
> +        layer_ver = layerbranch.version
> +
> +        # If there is no version in the found layer, then don't use this
> layer. 
> +        if not layer_ver:
> +            continue
> +
> +        try:
> +            success = bb.utils.vercmp_string_op(layer_ver, version_str,
> operator) 
> +        except bb.utils.VersionStringException as vse:
> +            raise vse
> +
> +        if success:
> +            return layerbranch.layer
> +
> +    return None
> +
> +def add_dependencies(layerbranch, config_data, logger=None):
> +    _add_dependency("LAYERDEPENDS", 'dependency', layerbranch, config_data,
> logger) 
> +
> +def _add_dependency(var, name, layerbranch, config_data, logger=None):
> +    from layerindex.models import LayerBranch, LayerDependency
> +
> +    layer_name = layerbranch.layer.name
> +    var_name = layer_name
> +
> +    dep_list = config_data.getVar("%s_%s" % (var, var_name), True)
> +
> +    if not dep_list:
> +         return

Indenting is out here.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

