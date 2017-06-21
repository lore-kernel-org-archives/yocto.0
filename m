Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F706E00B83; Wed, 21 Jun 2017 07:21:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6491CE00B19
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:21:22 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Jun 2017 07:21:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,369,1493708400"; d="scan'208";a="870290698"
Received: from pkoeberl-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.42.40])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Jun 2017 07:21:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Wed, 21 Jun 2017 16:21:19 +0200
Message-ID: <2010745.Jk45bzNWZ4@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <a3470785147e280b6a618e30ac594e38d53a24f7.1497320961.git.liezhi.yang@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<a3470785147e280b6a618e30ac594e38d53a24f7.1497320961.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 06/10] update.py: update layers orderly
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
X-List-Received-Date: Wed, 21 Jun 2017 14:21:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

Thanks for solving this long-standing bug! Just a few notes below.

On Tuesday, 13 June 2017 4:36:47 AM CEST Robert Yang wrote:
> --- a/layerindex/update_layer.py
> +++ b/layerindex/update_layer.py
> @@ -188,6 +188,9 @@ def main():
>      parser.add_option("", "--nocheckout",
>              help = "Don't check out branches",
>              action="store_true", dest="nocheckout")
> +    parser.add_option("-i", "--initial",
> +            help = "Print initial layer value",

Can we change the help text to:

"Print initial values parsed from layer.conf only"


> +            action="store_true")
>      parser.add_option("-d", "--debug",
>              help = "Enable debug output",
>              action="store_const", const=logging.DEBUG, dest="loglevel", default=logging.INFO)
> @@ -336,7 +339,7 @@ def main():
>              layerdistros = Distro.objects.filter(layerbranch=layerbranch)
>              layerappends = BBAppend.objects.filter(layerbranch=layerbranch)
>              layerclasses = BBClass.objects.filter(layerbranch=layerbranch)
> -            if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload:
> +            if layerbranch.vcs_last_rev != topcommit.hexsha or options.reload or options.initial:
>                  # Check out appropriate branch
>                  if not options.nocheckout:
>                      utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
> @@ -361,6 +364,14 @@ def main():
>                      layerconfparser.shutdown()
>                      sys.exit(1)
>                  utils.set_layerbranch_collection_version(layerbranch, layer_config_data, logger=logger)
> +                if options.initial:
> +                    # Use print() rather than logger.info() since "-q" makes it print nothing.
> +                    print('Initial layer values: %s,%s,%s,%s' % (
> +                        utils.get_layer_var(layer_config_data, 'BBFILE_COLLECTIONS'), \
> +                        utils.get_layer_var(layer_config_data, 'LAYERVERSION'), \
> +                        utils.get_layer_var(layer_config_data, 'LAYERDEPENDS'), \
> +                        utils.get_layer_var(layer_config_data, 'LAYERRECOMMENDS')))
> +                    sys.exit(0)

This isn't meant to be human-readable, it's for update.py. Therefore I'd suggest a plain
VARIABLENAME = "value" with one variable/value pair per line, and then these can be
read by variable name rather than by index.


>                  utils.add_dependencies(layerbranch, layer_config_data, logger=logger)
>                  utils.add_recommends(layerbranch, layer_config_data, logger=logger)
>                  layerbranch.save()
> @@ -716,8 +727,7 @@ def main():
>          import traceback
>          traceback.print_exc()
>      finally:
> -        if LooseVersion(bb.__version__) > LooseVersion("1.27"):
> -            tinfoil.shutdown()
> +        utils.shutdown_tinfoil(tinfoil)

This change is not mentioned in the commit message and if you look at
19a559cfa665b1add51fad41b7db88237fa82a09 you'll see I check the version
intentionally because fido has a broken shutdown() function.


>      shutil.rmtree(tempdir)
>      sys.exit(0)
> diff --git a/layerindex/utils.py b/layerindex/utils.py
> index b7165d0..01a6200 100644
> --- a/layerindex/utils.py
> +++ b/layerindex/utils.py
> @@ -27,6 +27,33 @@ def get_layer(layername):
>          return res[0]
>      return None
>  
> +def get_layer_var(config_data, var):
> +    collection = config_data.getVar('BBFILE_COLLECTIONS', True)

This makes the assumption that the layer.conf only adds one collection
to BBFILE_COLLECTIONS. Probably a valid assumption 99.9% of the time these
days, but it is worth noting.


> +    if collection:
> +        collection = collection.strip()
> +    value = config_data.getVar('%s_%s' % (var, collection), True)
> +    if not value:
> +        value = config_data.getVar(var, True)
> +    return value or ''
> +
> +def is_deps_satisfied(req_col, req_ver, collections):
> +    """ Check whether required collection and version are in collections"""
> +    for existed_col, existed_ver in collections:
> +        if req_col == existed_col:
> +            # If there is no version constraint, return True when collection matches
> +            if not req_ver:
> +                return True
> +            else:
> +                # If there is no version in the found layer, then don't use this layer.
> +                if not existed_ver:
> +                    continue
> +                (op, dep_version) = req_ver.split()
> +                success = bb.utils.vercmp_string_op(existed_ver, dep_version, op)
> +                if success:
> +                    return True
> +    # Return False when not found
> +    return False
> +
>  def get_dependency_layer(depname, version_str=None, logger=None):
>      from layerindex.models import LayerItem, LayerBranch
>  
> @@ -156,6 +183,17 @@ def setup_tinfoil(bitbakepath, enable_tracking):
>  
>      return tinfoil
>  
> +def shutdown_tinfoil(tinfoil):
> +    if tinfoil and hasattr(tinfoil, 'shutdown'):
> +        tinfoil.shutdown()

See above.


> +def explode_dep_versions2(bitbakepath, deps):
> +    bblib = bitbakepath + '/lib'
> +    if not bblib in sys.path:
> +        sys.path.insert(0, bblib)
> +    import bb.utils
> +    return bb.utils.explode_dep_versions2(deps)

I'm not particularly happy with this (the wrapper nor calling bitbake code
from update.py) but I suppose it's marginally better than duplicating
explode_dep_versions2().

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

