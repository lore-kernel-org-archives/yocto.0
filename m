Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 343DCE0098A; Sun,  5 Mar 2017 11:50:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0024E0097C
	for <yocto@yoctoproject.org>; Sun,  5 Mar 2017 11:50:19 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga105.fm.intel.com with ESMTP; 05 Mar 2017 11:50:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,249,1484035200"; d="scan'208";a="232546811"
Received: from ngocnhum-mobl11.ccr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.221])
	by fmsmga004.fm.intel.com with ESMTP; 05 Mar 2017 11:50:17 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Mon, 06 Mar 2017 08:50:15 +1300
Message-ID: <5376807.ONOkBILuBt@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAF1M0z6T9MxDSPtDrvafKJJsnGgfnYYrOOztwE6emECPUO73iw@mail.gmail.com>
References: <CAF1M0z6T9MxDSPtDrvafKJJsnGgfnYYrOOztwE6emECPUO73iw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Issue: SDK
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
X-List-Received-Date: Sun, 05 Mar 2017 19:50:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 6 March 2017 6:09:06 AM NZDT SatyaNarayana Sampangi wrote:
> I am trying to develop the application using SDK, everything goes fine, but
> when it comes to compiling it is failing.
> 
> The details are given below,
> 
> [Satya]/opt/poky/1.6.3
> source environment-setup-cortexa8t2hf-vfp-neon-poky-linux-gnueabi
> [Satya]/opt/poky/1.6.3
> ${CC} sample.c -g -o sample
> /opt/poky/1.6.3/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu
> eabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld: cannot open output file sample:
> Permission denied
> collect2: error: ld returned 1 exit status
> [Satya]/opt/poky/1.6.3

This is a pretty straightforward error. Either you have a file called "sample" 
already existing with permissions that do not allow your current user to 
overwrite it, or the directory itself does not have permissions set allowing 
you to write files to it. Either way, you probably shouldn't be doing your 
work with the standard SDK in the SDK installation path - create a new 
directory somewhere more appropriate (e.g. under your home directory) for your 
source code and build your files there.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

