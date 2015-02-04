Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3879E00985; Wed,  4 Feb 2015 00:52:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EE04E0097F
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 00:52:48 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 04 Feb 2015 00:52:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,517,1418112000"; d="scan'208";a="661291518"
Received: from bdrobeso-mobl3.amr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.17.70])
	by fmsmga001.fm.intel.com with ESMTP; 04 Feb 2015 00:52:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Erwin.Rieger.ext@rohde-schwarz.com
Date: Wed, 04 Feb 2015 08:49:36 +0000
Message-ID: <7866529.NQufU6yQLy@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <54D18849.7020003@windriver.com>
References: <54D028EC.3010001@windriver.com>
	<OFD2FD4259.5EFAEEC5-ONC1257DE1.00338C9C-C1257DE1.00338CA2@rohde-schwarz.com>
	<54D18849.7020003@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to use different busybox defconfig's in the initramfs and rootfs image
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
X-List-Received-Date: Wed, 04 Feb 2015 08:52:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 04 February 2015 10:47:37 ChenQi wrote:
> On 02/03/2015 05:23 PM, Erwin.Rieger.ext@rohde-schwarz.com wrote:
> > I have a working solution now, but it is not as clean as i would like
> > it to be and some new questions arose with it.
> > 
> > My current setup consists of a busybox.bbappend file that is used to
> > customize the rootfs
> > busybox (defconfig, some /etc files and so on) and a
> > busybox-initramfs.bb recipe for the initramfs busybox (as you
> > suggested).
> > 
> > The busybox.bbappend (see below) is straight forward, so no problem
> > with that.
> > 
> > To create the busybox-initramfs.bb in my custom layer, i have included
> > the base busybox recipe from the meta layer with
> > an 'require' statement.
> > 
> > Then i had to extend the FILESEXTRAPATHS variable to point back to the
> > base recipe files-directory since it
> > no longer found the SRC_URI files from meta/busybox.bb and
> > meta/busybox.inc. See the BUSYBOXBASEDIR
> > variable in the busybox-initramfs.bb below.
> > 
> > I feel that his construct is not that elegant, so here comes the
> > f*irst question*:
> > 
> > Is there a nicer/cleaner way to include/reference the source files
> > from the base busybox recipe in the meta layer?
> 
> How about using "${COREBASE}/meta/recipes-core/busybox"? I didn't try it
> out, so I'm not sure whether it works.

You shouldn't need ${COREBASE}/meta/ - the following should work just fine 
(which is already in busybox-initramfs.bb):

require recipes-core/busybox/busybox_${PV}.bb

> > The *second question* concerns the versioning: The busybox.bbappend
> > file uses a 'version wildcard' (_%) to
> > match all versions of the base busybox recipe. But in
> > the busybox-initramfs.bb recipe i have to hardwire the
> > version of the base recipe.
> 
> How about change the recipe name to busybox-initramfs_1.22.1.bb? So that
> the PV value is automatically extracted from the recipe name and there's
> no need to set it in the recipe.

I think this is really the only practical way to handle this.

> > How can i use a 'version wildcard' in a 'require' statement?
> 
> It's not supported, as far as I know.

It isn't, no.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

