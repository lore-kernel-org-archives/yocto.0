Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF259E00BC2; Wed, 21 Jun 2017 02:01:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A09E0E00B2E
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 02:01:20 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Jun 2017 02:01:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,368,1493708400"; d="scan'208";a="870205301"
Received: from pkoeberl-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.42.40])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Jun 2017 02:01:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Wed, 21 Jun 2017 11:01:12 +0200
Message-ID: <1814038.FNi6Ofsz57@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <6b4222d19233693a64f354f37c79bb66a18d2277.1497320961.git.liezhi.yang@windriver.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<6b4222d19233693a64f354f37c79bb66a18d2277.1497320961.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 01/10] update.py: update actual branch for layer and bitbake
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
X-List-Received-Date: Wed, 21 Jun 2017 09:01:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

Apologies for the delay on reviewing these patches. Some comments below.

On Tuesday, 13 June 2017 4:36:42 AM CEST Robert Yang wrote:
> Add an option "-a" to update actual branch for layer and bitbake, it is
> useful when there are many layers and need update actual branches
> frequantly. We only can update them via website without this patch,
> which is not funny and easy to make mistakes.

frequantly -> frequently
funny -> fun


> * It works with "-l", and "-l bitbake" means update bitbake branch.
> * It requires "-b" to work, and only one branch is supported in a run.
> 
> For example:
> $ update.py -b master -a branch_20170526
> All the layers which have branch master and actual_branch branch_20170526
> will be updated to branch_20170526.
> 
> $ update.py -b master -l meta-oe -a branch_20170526
> Only meta-oe layer will be updated.
> 
> $ update.py -b master -l bitbake -a branch_20170526
> The bitbake's bitbake_branch will be updated.
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  layerindex/update.py | 81 ++++++++++++++++++++++++++++++++++++++++++++++------
>  layerindex/utils.py  | 11 +++++++
>  2 files changed, 83 insertions(+), 9 deletions(-)
> 
> diff --git a/layerindex/update.py b/layerindex/update.py
> index d5c56cd..7d2e367 100755
> --- a/layerindex/update.py
> +++ b/layerindex/update.py
> @@ -85,6 +85,43 @@ def prepare_update_layer_command(options, branch, layer, updatedeps=False):
>          cmd += ' -q'
>      return cmd
>  
> +def update_actual_branch(layerquery, fetchdir, branch, options, update_bitbake, bitbakepath):
> +    """Update actual branch for layers and bitbake in database"""
> +    to_save = set()
> +    actual_branch = options.actual_branch
> +    if update_bitbake:
> +        branchobj = utils.get_branch(branch)
> +        if actual_branch != branchobj.bitbake_branch:
> +            if utils.is_branch_valid(bitbakepath, actual_branch):
> +                logger.info("bitbake: %s.bitbake_branch: %s -> %s" % (branch, branchobj.bitbake_branch, actual_branch))
> +                branchobj.bitbake_branch = actual_branch
> +                to_save.add(branchobj)
> +            else:
> +                logger.info("Skipping update bitbake_branch for bitbake - branch %s doens't exist" % actual_branch)

doens't -> doesn't (there are several of these)


> +        else:
> +            logger.info("bitbake: %s.bitbake_branch is already %s, so no change" % (branch, actual_branch))
> +
> +    for layer in layerquery:
> +        urldir = layer.get_fetch_dir()
> +        repodir = os.path.join(fetchdir, urldir)
> +        if not utils.is_branch_valid(repodir, actual_branch):
> +            logger.info("Skipping update actual_branch for %s - branch %s doens't exist" % (layer.name, actual_branch))
> +            continue
> +        layerbranch = layer.get_layerbranch(branch)
> +        if not layerbranch:
> +            logger.info("Skipping update actual_branch for %s - layerbranch %s doens't exist" % (layer.name, branch))
> +            continue
> +        if actual_branch != layerbranch.actual_branch:
> +            logger.info("%s: %s.actual_branch: %s -> %s" % (layer.name, branch, layerbranch.actual_branch, actual_branch))
> +            layerbranch.actual_branch = actual_branch
> +            to_save.add(layerbranch)
> +        else:
> +            logger.info("%s: %s.actual_branch is already %s, so no change" % (layer.name, branch, actual_branch))
> +
> +    # At last, do the save
> +    if not options.dryrun:
> +        for s in to_save:
> +            s.save()
>  
>  def main():
>      if LooseVersion(git.__version__) < '0.3.1':
> @@ -102,6 +139,9 @@ def main():
>      parser.add_option("-l", "--layer",
>              help = "Specify layers to update (use commas to separate multiple). Default is all published layers.",
>              action="store", dest="layers")
> +    parser.add_option("-a", "--actual-branch",
> +            help = "Update actual branch for layer and bitbake",

We should add "only" to the end of this since this option will suppress
the normal layer update since it returns afterwards, correct?


> +            action="store", dest="actual_branch", default='')
>      parser.add_option("-r", "--reload",
>              help = "Reload recipe data instead of updating since last update",
>              action="store_true", dest="reload")
> @@ -151,16 +191,35 @@ def main():
>          logger.error("Please set LAYER_FETCH_DIR in settings.py")
>          sys.exit(1)
>  
> +    # We deliberately exclude status == 'X' ("no update") here
> +    layerquery_all = LayerItem.objects.filter(classic=False).filter(status='P')
> +    if layerquery_all.count() == 0:
> +        logger.info("No published layers to update")
> +        sys.exit(1)

So near as I can tell this change isn't required as part of the other
changes here, it's just to tell you up front that no layers are published
if you've specified layers instead of seeing an error. I don't have an
issue with that but this change should be mentioned in the commit
message ("additionally ..."), or split out as a separate patch.


> +    # For -a option to update bitbake branch
> +    update_bitbake = False
>      if options.layers:
> -        layerquery = LayerItem.objects.filter(classic=False).filter(name__in=options.layers.split(','))
> -        if layerquery.count() == 0:
> -            logger.error('No layers matching specified query "%s"' % options.layers)
> -            sys.exit(1)
> +        layers = options.layers.split(',')
> +        if 'bitbake' in layers:
> +            update_bitbake = True
> +            layers.remove('bitbake')

So since this means 'bitbake' is a reserved name for layers we should add
validation upon layer submission to ensure you can't create a layer with this
name. I can take care of that if you like.


> +        for layer in layers:
> +            layerquery = LayerItem.objects.filter(classic=False).filter(name=layer)
> +            if layerquery.count() == 0:
> +                logger.error('No layers matching specified query "%s"' % layer)
> +                sys.exit(1)
> +        layerquery = LayerItem.objects.filter(classic=False).filter(name__in=layers)
>      else:
> -        # We deliberately exclude status == 'X' ("no update") here
> -        layerquery = LayerItem.objects.filter(classic=False).filter(status='P')
> -        if layerquery.count() == 0:
> -            logger.info("No published layers to update")
> +        update_bitbake = True
> +        layerquery = layerquery_all
> +
> +    if options.actual_branch:
> +        if not options.branch:
> +            logger.error("-a option requires -b")
> +            sys.exit(1)
> +        elif len(branches) != 1:
> +            logger.error("Only one branch should be used with -a")
>              sys.exit(1)
>  
>      if not os.path.exists(fetchdir):
> @@ -209,7 +268,7 @@ def main():
>                              continue
>                          fetchedrepos.append(layer.vcs_url)
>  
> -                if not fetchedrepos:
> +                if not (fetchedrepos or update_bitbake):
>                      logger.error("No repositories could be fetched, exiting")
>                      sys.exit(1)
>  
> @@ -219,6 +278,10 @@ def main():
>                  else:
>                      out = utils.runcmd("git fetch", bitbakepath, logger=logger)
>  
> +            if options.actual_branch:
> +                update_actual_branch(layerquery, fetchdir, branches[0], options, update_bitbake, bitbakepath)
> +                return
> +
>              # Process and extract data from each layer
>              # We now do this by calling out to a separate script; doing otherwise turned out to be
>              # unreliable due to leaking memory (we're using bitbake internals in a manner in which
> diff --git a/layerindex/utils.py b/layerindex/utils.py
> index 3b45b07..442b121 100644
> --- a/layerindex/utils.py
> +++ b/layerindex/utils.py
> @@ -160,6 +160,17 @@ def is_layer_valid(layerdir):
>          return False
>      return True
>  
> +def is_branch_valid(layerdir, branch):
> +    import git
> +
> +    g = git.cmd.Git(layerdir)
> +    assert g.rev_parse('--is-bare-repository') == 'false'
> +    try:
> +        g.rev_parse('--verify', 'origin/%s' % branch)
> +    except Exception:
> +        return False

Is there a more specific exception class we can respond to here instead of
Exception in case something unexpected happens?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

