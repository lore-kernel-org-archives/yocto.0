Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B33A2E00A1C; Sun, 22 Apr 2018 20:35:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90FF3E00756
	for <yocto@yoctoproject.org>; Sun, 22 Apr 2018 20:35:18 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Apr 2018 20:35:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,316,1520924400"; d="scan'208";a="49058438"
Received: from xliu65-mobl.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.143.230])
	by fmsmga001.fm.intel.com with ESMTP; 22 Apr 2018 20:35:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Mon, 23 Apr 2018 15:35:11 +1200
Message-ID: <15882216.6VK8L3jXBo@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <551359ef-fb5c-1cec-2d28-2ff715e7767d@windriver.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
	<2037793.CeckpQWsM0@peggleto-mobl.ger.corp.intel.com>
	<551359ef-fb5c-1cec-2d28-2ff715e7767d@windriver.com>
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
X-List-Received-Date: Mon, 23 Apr 2018 03:35:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 23 April 2018 3:06:43 PM NZST Robert Yang wrote:
> On 04/23/2018 09:55 AM, Paul Eggleton wrote:
> > It seems that you are missing a call somewhere to layerbranch.save() later
> > on, guarded with "if newbranch:". This was easy to miss though when copying
> > over from update_layer.py seeing as we were relying upon saving it later on
> > there (and that is still needed).
> 
> We don't need it to save the new branch here, we just want to know whether it is
> a new branch or not, the logic is:
> 
> if newbranch and "the branch doesn't exist" in the repo:
>      continue
> else: # "the branch exits in the repo"
>      update_layer.py
> 
> So we don't have to save the new branch here, the update_layer.py will save the
> new branch when needed, this can reducing a lot of calls to update_layer, which
> can save a lot of time.

OK - I had missed that you hadn't removed the code from
update_layer.py that does the actual creation, so the logic is fine. 
I think however we need to adjust the "LayerBranch doesn't exist
for this branch, create it" comment here though, something like
"LayerBranch doesn't exist for this branch, create it temporarily
(we won't save this - update_layer.py will do the actual creation
if it gets called)."
 
> >> +                    if layerbranch.vcs_last_rev == topcommit.hexsha and not update.reload:
> >> +                        logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
> >> +                        collections.add((layerbranch.collection, layerbranch.version))
> >> +                        continue
> >> +
> >> +                    if layerbranch.vcs_last_rev != topcommit.hexsha or update.reload:
> >> +                        # Check out appropriate branch
> >> +                        if not options.nocheckout:
> >> +                            utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
> > 
> > Isn't "if layerbranch.vcs_last_rev != topcommit.hexsha or update.reload:"
> > superfluous here? We're skipping to the next layer if that wasn't true via
> > "continue" above, so it should always evaluate to true.
> 
> Let's ignore the update.reload here, then the logic will be clear:
> 
> if layerbranch.vcs_last_rev == topcommit.hexsha:
>      continue
> else:
>      checkout_layer_branch()
>
> So we can't ignore the else block here, the "if" block doesn't cover the "else"
> block. And If update.reload, then we can't continue, so the first "if" is:
> "if layerbranch.vcs_last_rev == topcommit.hexsha and not update.reload"
> 
> And for the second "if", we need checkout the branch when:
> "layerbranch.vcs_last_rev != topcommit.hexsha or update.reload"
> 
> And check whether there is a conf/layer.layer in the repo, we have a lot of
> layers which are only for specific releases, for example, a layer is for morty
> branch only, then we cleanup its master branch, just leave a README
> (no conf/layer.conf) file on master branch which says this layer is for morty
> only, check conf/layer.conf in update.py rather than in update_layer.py can
> save a lot of time, too.

Right, I understand the logic, what I'm saying is that the two if statements
are opposites, and the first one results in a "continue" if true, so the second one
can logically never evaluate to false, thus there's no point doing the check - just
put the code inside the block immediately afterwards, i.e.:

                    if layerbranch.vcs_last_rev == topcommit.hexsha and not update.reload:
                        logger.info("Layer %s is already up-to-date for branch %s" % (layer.name, branchdesc))
                        collections.add((layerbranch.collection, layerbranch.version))
                        continue

                    # Check out appropriate branch
                    if not options.nocheckout:
                        utils.checkout_layer_branch(layerbranch, repodir, logger=logger)
                    ...

If you wanted to make it even more clear you could have it in an "else" block
instead, but that's not strictly necessary.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



