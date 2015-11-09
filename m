Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 406FBE0088C; Mon,  9 Nov 2015 15:06:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A04C9E007C9
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 15:06:36 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 09 Nov 2015 15:06:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,267,1444719600"; d="scan'208";a="597184423"
Received: from pmcgoldr-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.0.227])
	by FMSMGA003.fm.intel.com with ESMTP; 09 Nov 2015 15:06:35 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Townsend <mtownsend1973@gmail.com>
Date: Mon, 09 Nov 2015 23:06:34 +0000
Message-ID: <2410248.6Je5P1fpKU@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.10-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <CABatt_zdu=F5wA+piXsSdds4ht_v+htHkCpaUSyBx8vajsemtQ@mail.gmail.com>
References: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
	<2108825.hXyYQEHPRS@peggleto-mobl.ger.corp.intel.com>
	<CABatt_zdu=F5wA+piXsSdds4ht_v+htHkCpaUSyBx8vajsemtQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: binutils failing in FIDO branch
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
X-List-Received-Date: Mon, 09 Nov 2015 23:06:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 09 November 2015 22:32:59 Martin Townsend wrote:
> My issue is particular to my distro, I tried changing to poky and all was
> well.  The reason for our own distro was to migrate from Arago which we
> were using.  So I copied Arago into a separate distro and then started
> morphing it into something more akin to Poky over time.  Alas I left the
> following line in the distro conf, one which should have removed :(
> 
> # Enable basic stack and buffer overflow protections
> TARGET_CPPFLAGS += "-fstack-protector -D_FORTIFY_SOURCE=1"
> 
> After commenting this out binutils for the target builds fine.  I'm
> guesssing that for libiberty CPPFLAGS propogates into configure or makefile
> in the binutils recipe which then fails one of it's config checks and
> because of this fails to set HAVE_LIMITS and a few others no doubt.
> 
> Many apologies for leading you on a wild goose chase, I don't know if there
> is anything you can do so others don't fall foul of this.  Is setting
> TARGET_CPPFLAGS or TARGET_CFLAGS for that matter useful in configuration
> files??  If so, maybe making sure they are reverted for building binutils??

I'm assuming you could do something like:

TARGET_CPPFLAGS += "${MY_EXTRAFLAGS}"
MY_EXTRAFLAGS = "-fstack-protector -D_FORTIFY_SOURCE=1"
MY_EXTRAFLAGS_pn-binutils = ""

FYI we do have meta/conf/distro/include/security_flags.inc to apply these two 
flags, but interestingly there's no mention of binutils in there.

> Thanks for all the help and maybe it's time we moved over to Poky :)

Well, there's nothing forcing you to use poky - it's a reference distribution; 
the assumption is usually that you'll want to change something at the 
distribution level at which point you've effectively created your own distro.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

