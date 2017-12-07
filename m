Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E63B5E00D6A; Wed,  6 Dec 2017 23:47:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B625E00D61
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:47:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vB77lNJN026303
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Dec 2017 23:47:23 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:47:22 -0800
To: <yocto@yoctoproject.org>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <c1d40400-f9e7-b415-9093-ea5d9662a0cb@windriver.com>
Date: Thu, 7 Dec 2017 15:46:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [PATCH 00/12] [auh] make it easy to use by recipe maintainer
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
X-List-Received-Date: Thu, 07 Dec 2017 07:47:24 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I had added alexander.kanavin@linux.intel.com in the cc list, but it was gone,
looks strange, now add him again.

// Robert

On 12/07/2017 03:37 PM, Robert Yang wrote:
> * Usages: (No settings is required by default)
>    - Upgrade one recipe:
>      $ upgradehelper.py less
> 
>    - Upgrade multiple recipes:
>      $ upgradehelper.py less bash
> 
>      The commit will be kept in the repo when *succeed*.
>      No commit when *failed* by default unless -f is used.
> 
>    - Upgrade recipes and apply failed patches after the upgrade is done:
>      $ upgradehelper.py less bash -f
> 
>    - Upgrade all recipes and send emails:
>      $ upgradehelper.py all -e
> 
> * Next:
>    - Auto fix do_fetch error when thera are more than one checksums, e.g., git repo.
>    - Add it into oe-core and suggest maintainer uses it ?
> 
> // Robert
> 
> The following changes since commit ccf93239c7def7b475fe20f8fcd91043bc59bd61:
> 
>    upgradehelper.py: Layer mode do a full cleanup of poky (2017-06-05 16:14:23 -0500)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib rbt/auh
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=rbt/auh
> 
> Robert Yang (12):
>    upgradehelper.py: fix checking for do_checkpkg
>    upgradehelper.py: support upgrade multiple recipes
>    upgradehelper.py: use UniverseUpdater for all cases
>    modules/steps.py: fix warn when skip compilation
>    modules/steps.py: fix warn when skip compilation
>    upgradehelper.py: only check email settings when -e is specified
>    upgradehelper.py: always do upgrade when recipes are specified
>    upgradehelper.py: clean repo only once when recipes are specified
>    upgradehelper.py: use git user in commit when recipes are specified
>    upgradehelper.py: add --apply-failed option
>    upgradehelper.py: print info when recipe is skipped to upgrade
>    upgradehelper.py: don't build gcc-runtime when --skip-compilation
> 
>   modules/steps.py |   4 --
>   upgradehelper.py | 118 ++++++++++++++++++++++++++++++++++---------------------
>   2 files changed, 73 insertions(+), 49 deletions(-)
> 

