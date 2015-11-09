Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA6A3E00AE4; Mon,  9 Nov 2015 14:08:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD48AE00978
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 14:08:02 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Nov 2015 14:07:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,267,1444719600"; d="scan'208";a="832118921"
Received: from pmcgoldr-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.0.227])
	by fmsmga001.fm.intel.com with ESMTP; 09 Nov 2015 14:07:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 09 Nov 2015 22:07:36 +0000
Message-ID: <2108825.hXyYQEHPRS@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.10-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <C91162B3-9E8D-46B6-A1BF-93B3D0E90AA7@gmail.com>
References: <CABatt_y6X3uxCcq+0Z7r2Zcz_4McJJSQ0D=SwKo-uPFaxuG3Og@mail.gmail.com>
	<CABatt_yn1RkC9j490mUwm=GzzBEb1WXxrR_BOwJJgMD+68SKrg@mail.gmail.com>
	<C91162B3-9E8D-46B6-A1BF-93B3D0E90AA7@gmail.com>
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 09 Nov 2015 22:08:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

What I think Martin hasn't mentioned here (but did on IRC) is this is binutils 
for the target machine, not host/cross. I would assume it's somehow related to 
the target being built for. Martin, can you provide any details on that which 
might help others to reproduce the issue?

Cheers,
Paul

On Monday 09 November 2015 12:15:40 Khem Raj wrote:
> No it should be well supported. So now I wonder why no one else sees it
> 
> > On Nov 9, 2015, at 11:22 AM, Martin Townsend <mtownsend1973@gmail.com>
> > wrote:
> > 
> > Hi,
> > 
> > I'm running Ubuntu 14.04 LTS.
> > 
> > Could this be the problem?
> > 
> > Cheers,
> > Martin.
> > 
> > 
> > On Mon, Nov 9, 2015 at 5:56 PM, Khem Raj <raj.khem@gmail.com
> > <mailto:raj.khem@gmail.com>> wrote:> 
> > On Mon, Nov 9, 2015 at 4:36 AM, Martin Townsend <mtownsend1973@gmail.com 
<mailto:mtownsend1973@gmail.com>> wrote:
> > > Hi,
> > > 
> > > binutils is failing to compile.  I'm using tip of fido branch.  Error
> > > message is:
> > > 
> > > 
> > > /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortex
> > > a9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/
> > > fibheap.c: In function 'fibheap_replace_key_data':
> > > 
> > > /home/martint/yocto/build/am43-devboard-aquila/bia-tmp-glibc/work/cortex
> > > a9hf-vfp-neon-oe-linux-gnueabi/binutils/2.24-r0/binutils-2.24/libiberty/
> > > fibheap.c:38:24: error: 'LONG_MIN' undeclared (first use in this
> > > function)
> > > 
> > > |  #define FIBHEAPKEY_MIN LONG_MIN
> > > 
> > > I've tracked it down to the fact that libiberty is the only component
> > > that
> > > doesn't define HAVE_LIMITS in config.h, so I assume this part of the
> > > configure is failing for some reason.
> > > 
> > > Anyone else seen this, or have an idea on how to fix this?
> > 
> > whats your host distro ?
> > 
> > > Cheers,
> > > Martin.
> > > 
> > > 
> > > 
> > > 
> > > 
> > > --
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > > https://lists.yoctoproject.org/listinfo/yocto
> > > <https://lists.yoctoproject.org/listinfo/yocto>

-- 

Paul Eggleton
Intel Open Source Technology Centre

