Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 617D2E00A38; Thu, 20 Jul 2017 23:19:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3296CE0090A
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 23:19:10 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga105.jf.intel.com with ESMTP; 20 Jul 2017 23:19:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,388,1496127600"; d="scan'208";a="881126019"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.39.4])
	by FMSMGA003.fm.intel.com with ESMTP; 20 Jul 2017 23:19:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Fri, 21 Jul 2017 08:19:08 +0200
Message-ID: <2361969.H4jE58WX8T@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <cover.1498203770.git.liezhi.yang@windriver.com>
References: <cover.1498203770.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH V5 00/10] Several fixes for layerindex
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
X-List-Received-Date: Fri, 21 Jul 2017 06:19:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert / all,

This patchset finally got merged. I tweaked some of the commit messages, 
messages and comments but otherwise they went in unchanged. Thanks for sorting 
out these issues!

Cheers,
Paul

On Friday, 23 June 2017 9:44:59 AM CEST Robert Yang wrote:
> * V5
>   - Fix Paul's comments
>   - Add REMOVE_LAYER_DEPENDENCIES = False to settings, the
>     _add_dependency() will check and remove dependencies which is not in
>     conf/layer.conf when True (WARN when False)..
> 
> * V4
>   - Add an option -i to update_layer.py to get initial layer value 
(dependencies,
>     versions and so on), update.py doesn't use tinfoil any more since 
tinfoil
>     before morty can't be shutdown totally if the process is not exited, 
this was
>     why splitted update_layer.py from update.py.
>   - Squash 11 patches (v3) into 10, since two of them have overlap.
> 
> * V3:
>   - Better error messages when required collections not found
>   - Delete layerbranch for non-existed branch
>   - update_layer.py: remove --update-dependencies
> 
> * V2:
>   - Remove "import bb" from update.py to avoid causing confusions when 
switch branches.
> 
> * V1:
>   - The "-a ACTUAL_BRANCH" is a litle different from what we had talked, now 
it
>     respects "-l" and "-b", we can use -l to specify layers or default to 
all,
>     and it requires "-b" to work, only one branch is supported in a run, for 
example:
> 
>     $ update.py -b master -a branch_20170526
>     All the layers which have branch master and actual_branch 
branch_20170526
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
> The following changes since commit b958a991caa947fde2ccb073e3cb7924e162562d:
> 
>   layerindex/views: support querying by layer name (2017-06-15 16:04:14 
+0200)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/poky-contrib rbt/layerindex-10fixes
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/
layerindex-10fixes
> 
> Robert Yang (10):
>   update.py: update actual branch for layer and bitbake
>   layerconfparse.py: remove unused layerbranch from parse_layer()
>   utils.py: add REMOVE_LAYER_DEPENDENCIES to remove dependencies
>   update_layer.py: set layerbranch's collection before add_dependencies
>   recipeparse.py: restore cwd when the parsing is done
>   update.py: update layers orderly
>   update_layer.py: remove --update-dependencies
>   update_layer.py: move the location of transaction.atomic()
>   update.py: add -p to git fetch
>   update_layer.py: delete layerbranch for non-existed branch
> 
>  layerindex/layerconfparse.py     |   2 +-
>  layerindex/recipeparse.py        |   3 +
>  layerindex/tools/import_layer.py |   2 +-
>  layerindex/update.py             | 186 +++++++++++++++++++++++++++++
+---------
>  layerindex/update_layer.py       |  99 +++++++++------------
>  layerindex/utils.py              |  71 ++++++++++++++-
>  settings.py                      |   3 +
>  7 files changed, 263 insertions(+), 103 deletions(-)
> 
> 


-- 

Paul Eggleton
Intel Open Source Technology Centre

