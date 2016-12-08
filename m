Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A85CE00953; Thu,  8 Dec 2016 12:59:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D11AFE008D3
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 12:59:28 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga102.fm.intel.com with ESMTP; 08 Dec 2016 12:59:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,321,1477983600"; d="scan'208";a="200589552"
Received: from sng18-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.190.78])
	by fmsmga004.fm.intel.com with ESMTP; 08 Dec 2016 12:59:25 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rafael Gago Castano <RGC@hms.se>
Date: Fri, 09 Dec 2016 09:59:23 +1300
Message-ID: <4750708.C3i3MIxDut@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.11-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840@DB5PR0601MB1992.eurprd06.prod.outlook.com>
References: <DB5PR0601MB199276F3BD562C88737B1A73C2850@DB5PR0601MB1992.eurprd06.prod.outlook.com>
	<DB5PR0601MB1992BAA1618CBF2A2B26D4AFC2840@DB5PR0601MB1992.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libssp_nonshared.a not present in native SDK.
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
X-List-Received-Date: Thu, 08 Dec 2016 20:59:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rafael,

On Thu, 08 Dec 2016 16:05:04 Rafael Gago Castano wrote:
> Yesterday, when cross-compiling with the SDK (relocatable/non-extensible), I
> noticed that CMake projects weren't generated because the compiler feature
> detection was failing. CMake enables fstack-protector for each of its
> platform tests and hance requires "libssp_nonshared.a" for linking. A quick
> search revealed that "libssp_nonshared.a" is actually missing from the SDK.
> 
> I found that "libssp_nonshared.a" comes from "gcc-utils.inc". So adding...
> 
> IMAGE_INSTALL_append += "libssp"
> 
> ...fixes (or workarounds) the issue and allows CMake projects to
> cross-compile fine.
> 
> What I see is that I can't manually add all the libraries present in
> "gcc-utils.inc" as "IMAGE_INSTALL_append"s. Some of them (e.g libquadmath)
> fail with the error:
> 
> "Couldn't find anything to satisfy 'libquadmath'"
> 
> So I added those that doesn't cause errors by trial and error. This looks
> wrong.

AIUI libquadmath is only for Fortran so unless you're enabling and using that, 
you don't need it, and it wouldn't be present. However if you are enabling 
Fortran, there was a recent patch to correctly enable libquadmath here:

 http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=1013385b2f04b914538c0699a636074496911788
 
> All the statics in "gcc-utils.inc" look to me like they should be on the SDK
> by default, as they are gcc/libc related and in this case (libssp)
> essential to use some of the compiler features, so I'm wondering:
> 
> If this is a bug in krogoth?
> If it isn't a bug, what is the right way to add all these gcc-runtime libs?

So, yes and no. I looked earlier at adding a packagegroup for bringing all of 
these in together, but the more I looked at it the more I came to realise that 
in most circumstances you don't actually want all of these libraries - they 
should come in individually with the pieces that they're intended to be used 
with. Hence I added an RRECOMMENDS as it seemed appropriate:

  http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=1c0fc7fcf7772ef8774f623126050972f526fe83

In particular libssp is now RRECOMMENDED by gcc for the target. This patch 
came in in the morty release so you wouldn't currently see this in krogoth 
though. Having said that your workaround shouldn't be too awkward in the mean 
time.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

