Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3354FE0076C; Mon, 14 Jul 2014 03:29:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC5FE0053E
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 03:29:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Jul 2014 03:29:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,657,1400050800"; d="scan'208";a="569451331"
Received: from snaufer-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.80])
	by fmsmga002.fm.intel.com with ESMTP; 14 Jul 2014 03:29:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 14 Jul 2014 11:29:09 +0100
Message-ID: <1642412.ScqZpB672V@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.2 (Linux/3.15.4-200.fc20.x86_64; KDE/4.13.2; x86_64; ; )
In-Reply-To: <alpine.LFD.2.11.1407131341350.3800@localhost>
References: <alpine.LFD.2.11.1407131341350.3800@localhost>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: inconsistent ways of setting IMAGE_FSTYPES
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
X-List-Received-Date: Mon, 14 Jul 2014 10:29:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 13 July 2014 13:44:53 Robert P. J. Day wrote:
>   not a big deal, but just noticed the various formats for assigning
> IMAGE_FSTYPES in the meta-yocto layer:
> 
> $ grep -r IMAGE_FSTYPES *
> meta-yocto/conf/distro/poky-tiny.conf:IMAGE_FSTYPES = "ext2 cpio.gz"
> meta-yocto-bsp/conf/machine/edgerouter.conf:IMAGE_FSTYPES ?= "jffs2 tar.bz2"
> meta-yocto-bsp/conf/machine/beaglebone.conf:IMAGE_FSTYPES += "tar.bz2
> jffs2" meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf:IMAGE_FSTYPES ?=
> "jffs2 tar.bz2"
> scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf:IM
> AGE_FSTYPES += "tar.bz2 jffs2"
> scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf:I
> MAGE_FSTYPES ?= "jffs2 tar.bz2" $
> 
>   just seems a bit odd for those assignments to be bouncing around
> between =, += and ?=.

I have to admit I thought we had established quite a long time ago in OE 
history that += was the correct way to set IMAGE_FSTYPES from a machine config 
file, although a quick search didn't turn up the thread where we discussed it. 
We're apparently not consistent with that at the moment however.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

