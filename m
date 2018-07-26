Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B521BE00DFE; Thu, 26 Jul 2018 03:40:55 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B657E00DFC
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 03:40:55 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Jul 2018 03:40:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,404,1526367600"; d="scan'208";a="243479648"
Received: from jfkehoe-mobl.amr.corp.intel.com (HELO localhost.localdomain)
	([10.252.50.133])
	by orsmga005.jf.intel.com with ESMTP; 26 Jul 2018 03:40:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: MOHAMMAD RASIM <mohammad.rasim96@gmail.com>
Date: Thu, 26 Jul 2018 12:40:10 +0200
Message-ID: <10152170.chYgiU6tNd@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <a2a07618-2378-4563-109b-a6654ab29220@gmail.com>
References: <1aa737c1-9930-4a32-2060-6c6103142d88@gmail.com>
	<4930421.VRI8zmqDti@localhost.localdomain>
	<a2a07618-2378-4563-109b-a6654ab29220@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: can bitbake build offline ?
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
X-List-Received-Date: Thu, 26 Jul 2018 10:40:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 26 July 2018 12:09:46 PM CEST MOHAMMAD RASIM wrote:
> Well, actually I used the find command in that wiki page to find the 
> recipe that uses tag name to chose github revision and it found only one 
> recipe
> 
>  >meta-openembedded/meta-initramfs/recipes-devtools/mtd/ubi-utils-
>  >klibc_1.5.1.bb

Hmm, right, it seems like you're using a previous branch - this got fixed
in a later update of that recipe.

> I masked this recipe in the local.conf file and bitbake failed at 
> parsing other recipes, looking at those recipes I saw that they don't 
> use tag names but they use
> 
>  >SRCREV = "${AUTOREV}"
> 
> which is logical since bitbake has to issue ls-remote to know what is 
> the latest revision on the remote git repo (maybe the wiki page needs 
> update to point this ?)
> 
> Now I can't remove this AUTOREV in these recipes since I need bitbake to 
> fetch the latest updates ( I push updates regularly on that repo and I 
> don't want to update the recipe file each time to add the latest revision)
> 
> So, here comes the hard part, Is it possible to tell bitbake to issue 
> ls-remote if there is network and to use the latest fetched revision in 
> the sources directory if the network is disabled ? that way I can use 
> ${AUTOREV} in my recipes and bitbake will build from the local repo in 
> the sources directory unless there is network to update the local repo, 
> probably there is no such thing :) .

So there isn't a mechanism to do exactly that, no, however you can sort of
achieve the same thing if you set up a .inc file that sets the SRCREV values
for each recipe and sets BB_NO_NETWORK at the same time (though the
latter could still be separate). e.g. let's call it no_network.inc:

BB_NO_NETWORK = "1"
SRCREV_pn-abc = "b4c2bd84ee6f699e348d602a82d2d0963384cdea"
SRCREV_pn-xyz = "e3b30def2cd1c9ede7630489c3949a45b6eba6ee"
..

Then to build offline you would just add the following to your config:

require no_network.inc

FYI you can enable buildhistory and use the buildhistory-collect-srcrevs 
script to generate all those SRCREV lines so you don't have to do that
by hand:

https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#maintaining-build-output-quality

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



