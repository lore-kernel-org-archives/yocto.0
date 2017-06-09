Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABE92E00BC8; Thu,  8 Jun 2017 23:42:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A6FBE00B87
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 23:42:37 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v596gZU2009115
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 8 Jun 2017 23:42:35 -0700
Received: from [128.224.162.160] (128.224.162.160) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 8 Jun 2017 23:42:34 -0700
To: <yocto@yoctoproject.org>
References: <cover.1496384657.git.liezhi.yang@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <b9f05a04-7262-6f2e-38d2-f57d30614a57@windriver.com>
Date: Fri, 9 Jun 2017 14:42:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <cover.1496384657.git.liezhi.yang@windriver.com>
Cc: Konrad.Scherer@windriver.com, paul.eggleton@linux.intel.com
Subject: Re: [PATCH V3 00/11] Several fixes for layerindex
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
X-List-Received-Date: Fri, 09 Jun 2017 06:42:40 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

I updated the following patch a little:

[PATCH V3 06/11] update.py: update layers orderly

Checkout the branch before parse layer:

+if not options.nocheckout:
+    utils.checkout_layer_branch(layerbranch, repodir, logger=logger)

Updated in the repo:
   git://git.pokylinux.org/poky-contrib rbt/layerindex-8fixes
   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/layerindex-8fixes

Robert Yang (11):
   layerconfparse.py: remove unused layerbranch from parse_layer()
   utils.py: remove obsolete dependencies
   update_layer.py: set layerbranch's collection before add_dependencies
   update.py: fix -l option
   recipeparse.py: restore cwd when the parsing is done
   update.py: update layers orderly
   update_layer.py: remove --update-dependencies
   update.py: add option -a to update actual branch
   update_layer.py: move the location of transaction.atomic()
   update.py: add -p to git fetch
   update_layer.py: delete layerbranch for non-existed branch

// Robert

On 06/02/2017 02:28 PM, Robert Yang wrote:
> * V3:
>   - Better error messages when required collections not found
>   - Delete layerbranch for non-existed branch
>   - update_layer.py: remove --update-dependencies
>
> * V2:
>   - Remove "import bb" from update.py to avoid causing confusions when switch branches.
>
> * V1:
>   - The "-a ACTUAL_BRANCH" is a litle different from what we had talked, now it
>     respects "-l" and "-b", we can use -l to specify layers or default to all,
>     and it requires "-b" to work, only one branch is supported in a run, for example:
>
>     $ update.py -b master -a branch_20170526
>     All the layers which have branch master and actual_branch branch_20170526
>     will be updated to branch_20170526.
>
>     $ update.py -b master -l meta-oe -a branch_20170526
>     Only meta-oe layer will be updated.
>
>     $ update.py -b master -l bitbake -a branch_20170526
>     The bitbake's bitbake_branch will be updated.
>
> // Robert
>
> The following changes since commit 8dfe44ed5e618d517d4acb4a3107cb3907e773c8:
>
>   TODO: drop implemented items (2017-03-22 14:21:22 +1300)
>
> are available in the git repository at:
>
>   git://git.pokylinux.org/poky-contrib rbt/layerindex-8fixes
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/layerindex-8fixes
>
> Robert Yang (11):
>   layerconfparse.py: remove unused layerbranch from parse_layer()
>   utils.py: remove obsolete dependencies
>   update_layer.py: set layerbranch's collection before add_dependencies
>   update.py: fix -l option
>   recipeparse.py: restore cwd when the parsing is done
>   update.py: update layers orderly
>   update_layer.py: remove --update-dependencies
>   update.py: add option -a to update actual branch
>   update_layer.py: move the location of transaction.atomic()
>   update.py: add -p to git fetch
>   update_layer.py: delete layerbranch for non-existed branch
>
>  layerindex/layerconfparse.py     |   2 +-
>  layerindex/recipeparse.py        |   3 +
>  layerindex/tools/import_layer.py |   2 +-
>  layerindex/update.py             | 193 +++++++++++++++++++++++++++++++--------
>  layerindex/update_layer.py       |  92 +++++++------------
>  layerindex/utils.py              |  63 ++++++++++++-
>  6 files changed, 255 insertions(+), 100 deletions(-)
>

