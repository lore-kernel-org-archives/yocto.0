Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6C64E00BC2; Wed, 21 Jun 2017 02:06:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4172E00B2E
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 02:06:48 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Jun 2017 02:06:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,368,1493708400"; d="scan'208";a="983427554"
Received: from pkoeberl-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.42.40])
	by orsmga003.jf.intel.com with ESMTP; 21 Jun 2017 02:06:42 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Wed, 21 Jun 2017 11:06:41 +0200
Message-ID: <27239647.GeoKIh8NCA@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <d29ba1f3abdcaad87fa53853261af4d98228c519.1497320961.git.liezhi.yang@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<d29ba1f3abdcaad87fa53853261af4d98228c519.1497320961.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 03/10] utils.py: remove obsolete dependencies
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
X-List-Received-Date: Wed, 21 Jun 2017 09:06:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, 13 June 2017 4:36:44 AM CEST Robert Yang wrote:
> Fixed:
>   - set LAYERDEPENDS_openembedded-layer = "core"
>   - $ "update.py -l meta-oe -b master"
>     Check from web, its dependency is "openembedded-core"
>   - Change LAYERDEPENDS_openembedded-layer = "foo"
>   - Run "update.py -l meta-oe -b master"
>     Check from web, its dependency is "openembedded-core and foo", this is
>     wrong, it should be "foo" only, this patch can fix the problem.
> 
> And also the existing checking should filter(required=required),
> otherwise it can't work well when a layer is in both depends and
> recommends, this can't happen in a normal case, but it would surprise the
> user when this happens.
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  layerindex/utils.py | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/layerindex/utils.py b/layerindex/utils.py
> index 442b121..b7165d0 100644
> --- a/layerindex/utils.py
> +++ b/layerindex/utils.py
> @@ -88,6 +88,7 @@ def _add_dependency(var, name, layerbranch, config_data, 
logger=None, required=T
>          logger.debug('Error parsing %s_%s for %s\n%s' % (var, var_name, 
layer_name, str(vse)))
>          return
>  
> +    need_delete = None
>      for dep, ver_list in list(dep_dict.items()):
>          ver_str = None
>          if ver_list:
> @@ -106,8 +107,14 @@ def _add_dependency(var, name, layerbranch, 
config_data, logger=None, required=T
>                  logger.error('Cannot resolve %s %s (version %s) for %s' % 
(name, dep, ver_str, layer_name))
>                  continue
>  
> +        # Preparing to remove obsolete ones
> +        if not need_delete:
> +            need_delete = 
LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).exclude(dependency=dep_layer)
> +        else:
> +            need_delete = need_delete.exclude(dependency=dep_layer)
> +
>          # Skip existing entries.
> -        existing = 
list(LayerDependency.objects.filter(layerbranch=layerbranch).filter(dependency=dep_layer))
> +        existing = 
list(LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).filter(dependency=dep_layer))
>          if existing:
>              logger.debug('Skipping %s - already a dependency for %s' % 
(dep, layer_name))
>              continue
> @@ -121,6 +128,10 @@ def _add_dependency(var, name, layerbranch, 
config_data, logger=None, required=T
>          layerdep.required = required
>          layerdep.save()
>  
> +    if need_delete:
> +        logger.debug("Removing obsolete dependencies: %s" % need_delete)
> +        need_delete.delete()
> +
>  def set_layerbranch_collection_version(layerbranch, config_data, 
logger=None):
>      layerbranch.collection = config_data.getVar('BBFILE_COLLECTIONS', True)
>      ver_str = "LAYERVERSION_"

So I do see the need to clear out old dependency values when your list of
dependencies is coming entirely from LAYERDEPENDS, however if you have only
manually added dependencies and LAYERDEPENDS is not complete (as is often the
case in the OE layer index), will this automatically remove those? If so I
think we're going to have to come up with some mechanism to avoid that.
Probably the easiest one would be to avoid touching the dependencies unless
LAYERDEPENDS actually changes. Of course if that means we're going to store 
the previous LAYERDEPENDS value somewhere to compare to, we'd need to avoid it 
triggering initially when none of those values are set.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

