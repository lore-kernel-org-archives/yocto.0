Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EEC8E00B01; Sun, 22 Apr 2018 18:55:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAF63E00756
	for <yocto@yoctoproject.org>; Sun, 22 Apr 2018 18:55:52 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Apr 2018 18:55:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,315,1520924400"; d="scan'208";a="43832617"
Received: from xliu65-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.143.230])
	by FMSMGA003.fm.intel.com with ESMTP; 22 Apr 2018 18:55:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Mon, 23 Apr 2018 13:55:45 +1200
Message-ID: <2037793.CeckpQWsM0@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <6deae428d43ea4bbe0146bf59aa7d247f6c0f80b.1524049072.git.liezhi.yang@windriver.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
	<6deae428d43ea4bbe0146bf59aa7d247f6c0f80b.1524049072.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/4] update_layer.py: move layer validation to update.py (Performance improve)
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
X-List-Received-Date: Mon, 23 Apr 2018 01:55:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert

I like the performance improvements, thanks. A few comments below though.

On Wednesday, 18 April 2018 11:04:33 PM NZST Robert Yang wrote:
> The utils.setup_django() costs a lot of time, but both update.py and
> update_layer.py calls it, so move layer validation from update_layer.py to
> update.py to avoid calling update_layer.py when possible can save a lot of
> time.
> 
> Now we don't have to call update_layer.py in the following cases:
> * The branch doesn't exist
> * The layer is already update to date on specified branch (when no
>   reload)
> * The layer dir or conf/layer.layer doesn't exist
> 
> We can save up to 98% time in my testing:
> 
> $ update.py -b master --nofetch [--fullreload]
> 
>                    Before    Now       Reduced
> No update:         276s      3.6s      98%
> Partial update:    312s      87s       72%
> Full repload:      1016s     980s      3%
> 
> Note:
> * All of the testing are based on --nofetch
> 
> * "No update" means all layers on the branch is up-to-date, for
>   example, when we run it twice, there is no update in the second run, so we
>   only need about 3s now, which is the most common case when we use cron to run
>   it per half an hour.
> 
> * "Partly update" means part of the layers have been updated.
> 
> * "Fullreload" means all of the layers have been updated.
> 
> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> ---
>  layerindex/update.py       | 79 +++++++++++++++++++++++++++++++++++++++++++++-
>  layerindex/update_layer.py | 39 +++--------------------
>  2 files changed, 82 insertions(+), 36 deletions(-)
> 
> diff --git a/layerindex/update.py b/layerindex/update.py
> index 44a7b90..2bb2df7 100755
> --- a/layerindex/update.py
> +++ b/layerindex/update.py
> @@ -140,6 +140,15 @@ def fetch_repo(vcs_url, repodir, urldir, fetchdir, layer_name):
>          logger.error("Fetch of layer %s failed: %s" % (layer_name, e.output))
>          return (vcs_url, e.output)
>  
> +def print_subdir_error(newbranch, layername, vcs_subdir, branchdesc):
> +    # This will error out if the directory is completely invalid or had never existed at this point
> +    # If it previously existed but has since been deleted, you will get the revision where it was
> +    # deleted - so we need to handle that case separately later
> +    if newbranch:
> +        logger.info("Skipping update of layer %s for branch %s - subdirectory %s does not exist on this branch" % (layername, branchdesc, vcs_subdir))
> +    elif vcs_subdir:
> +        logger.error("Subdirectory for layer %s does not exist on branch %s - if this is legitimate, the layer branch record should be deleted" % (layername, branchdesc))
> +
>  def main():
>      if LooseVersion(git.__version__) < '0.3.1':
>          logger.error("Version of GitPython is too old, please install GitPython (python-git) 0.3.1 or later in order to use this script")
> @@ -195,7 +204,7 @@ def main():
>  
>      utils.setup_django()
>      import settings
> -    from layerindex.models import Branch, LayerItem, Update, LayerUpdate
> +    from layerindex.models import Branch, LayerItem, Update, LayerUpdate, LayerBranch
>  
>      logger.setLevel(options.loglevel)
>  
> @@ -337,6 +346,74 @@ def main():
>                          collections.add((layerbranch.collection, layerbranch.version))
>  
>                  for layer in layerquery:
> +                    layerbranch = layer.get_layerbranch(branch)
> +                    branchname = branch
> +                    branchdesc = branch
> +                    newbranch = False
> +                    branchobj = utils.get_branch(branch)
> +                    if layerbranch:
> +                        if layerbranch.actual_branch:
> +                            branchname = layerbranch.actual_branch
> +                            branchdesc = "%s (%s)" % (branch, branchname)
> +                    else:
> +                        # LayerBranch doesn't exist for this branch, create it
> +                        newbranch = True
> +                        layerbranch = LayerBranch()
> +                        layerbranch.layer = layer
> +                        layerbranch.branch = branchobj
> +                        layerbranch_source = layer.get_layerbranch(branchobj)
> +                        if not layerbranch_source:
> +                            layerbranch_source = layer.get_layerbranch(None)
> +                        if layerbranch_source:
> +                            layerbranch.vcs_subdir = layerbranch_source.vcs_subdir
> +

It seems that you are missing a call somewhere to layerbranch.save() later
on, guarded with "if newbranch:". This was easy to miss though when copying
over from update_layer.py seeing as we were relying upon saving it later on
there (and that is still needed).

> +                    if layerbranch.vcs_last_rev == topcommit.hexsha and not update.reload:
> +                        logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
> +                        collections.add((layerbranch.collection, layerbranch.version))
> +                        continue
> +
> +                    if layerbranch.vcs_last_rev != topcommit.hexsha or update.reload:
> +                        # Check out appropriate branch
> +                        if not options.nocheckout:
> +                            utils.checkout_layer_branch(layerbranch, repodir, logger=logger)

Isn't "if layerbranch.vcs_last_rev != topcommit.hexsha or update.reload:"
superfluous here? We're skipping to the next layer if that wasn't true via
"continue" above, so it should always evaluate to true.

Additionally this results in the checkout being done twice - once here and
a second time in the update_layer.py script. I guess it's not taking much time
the second time though so we could probably ignore it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



