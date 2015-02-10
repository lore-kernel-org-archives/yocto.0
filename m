Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87D55E0095D; Tue, 10 Feb 2015 03:02:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 412FEE00949
	for <yocto@yoctoproject.org>; Tue, 10 Feb 2015 03:02:31 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 10 Feb 2015 02:55:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,549,1418112000"; d="scan'208";a="452510293"
Received: from mjbowe-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.120])
	by FMSMGA003.fm.intel.com with ESMTP; 10 Feb 2015 02:47:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Parthiban Kandasamy <parthiban@ulivesystems.com>
Date: Tue, 10 Feb 2015 11:02:29 +0000
Message-ID: <2481169.FyXc4Gd5rn@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CABNKipJyE1s4rh7z4qJQRRtWCToF4rpkbQDpjCYvkvDasLQLZA@mail.gmail.com>
References: <CABNKipLeXK-jMOnwkyVhjD2PBSANTj5AtikTC2pOzmu93FuFsA@mail.gmail.com>
	<3253782.3YlRbQs6Cl@peggleto-mobl5.ger.corp.intel.com>
	<CABNKipJyE1s4rh7z4qJQRRtWCToF4rpkbQDpjCYvkvDasLQLZA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: SDKMACHINE settings
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
X-List-Received-Date: Tue, 10 Feb 2015 11:02:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 February 2015 09:45:45 Parthiban Kandasamy wrote:
> On 9 February 2015 at 16:36, Paul Eggleton <paul.eggleton@linux.intel.com>
> wrote:
> > On Thursday 05 February 2015 17:43:31 Parthiban Kandasamy wrote:
> > > entirely i am new to embedded linux. first i did bitbake of
> > > core-image-minimal it came out very well. then again i tried sdk
> > > toolchain development using bitbake -k meta-toolchain-qte. it gives so
> > > many error. so could you provide details for how do i start to develop
> > > BSP for beagleboard-XM. i am entirely confused to understand yocto
> > > online document.
> > 
> > Can you please include a log of the errors you are receiving?
>
> while building toolchain for beagleboard-xm in my laptop, i got this
> compilation error oc autoconf, then how do i get back working level?

Firstly, please keep replies CC'd to the mailing list so that there is a 
chance for others to participate - thanks.

You are using 1.5. Can I suggest that you at least use the last stable release 
from the 1.5 branch i.e. 1.5.4? You may also wish to note that this release is 
no longer officially supported by our project, so a newer stable release would 
be preferred (1.6.2 or 1.7.1).

Having said that, there are two failures in the log:

1) Fetch failure for qt4-native. It's true that the upstream URL is no longer 
valid; however, the Yocto Project source mirror (set up as a MIRRORS entry by 
default in meta-yocto/conf/distro/poky.conf) definitely still has this file. 
Either you've disabled this or you have some kind of connectivity issue 
(firewall, proxy, intermittent connection failure) preventing the mirror from 
working. Check the log file 
/home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-
dora-10.0.0/BeagleBuild/tmp/work/x86_64-linux/qt4-native/4.8.5-
r0/temp/log.do_fetch.3111 to see if there is an indication as to why the 
mirror fetch failed if you are unsure.
 (I've just verified, fetching qt4-native with the 1.5.4 release automatically 
falls back to the mirror and succeeds here.)

2) Are you running the build within a buildtools or SDK environment? The 
/opt/poky/... path in the error message suggests that you might be. I can't 
reproduce this error with 1.5.4 either.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

