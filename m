Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2B94E00CD1; Tue, 15 Sep 2015 01:58:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C65E00B72
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 01:58:43 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 15 Sep 2015 01:58:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,534,1437462000"; d="scan'208";a="769276165"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.2.210])
	by orsmga001.jf.intel.com with ESMTP; 15 Sep 2015 01:58:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: chris@2net.co.uk
Date: Tue, 15 Sep 2015 09:58:41 +0100
Message-ID: <22897052.oHQR6DBFiy@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.6-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <55F7DB62.20302@2net.co.uk>
References: <55F7DB62.20302@2net.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: gcc reports sysroot is /not/exist!
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
X-List-Received-Date: Tue, 15 Sep 2015 08:58:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Chris,

On Tuesday 15 September 2015 09:48:34 Chris Simmonds wrote:
> I am using Yocto fido (1.8) to generate an SDK for a BeaglBone. I
> generate the it using the command:
> 
> $ bitbake core-image-minimal -c populate_sdk
> 
> Having installed the resulting SDK and sourced
> /opt/poky/1.8/environment-setup-cortexa8hf-vfp-neon-poky-linux-gnueabi
> 
> I find that the sysroot is not set:
> 
> $ arm-poky-linux-gnueabi-gcc -print-sysroot
> /not/exist
> 
> This used to work fine in 1.7 and earlier. It looks like now I have to
> use $CC in place of arm-poky-linux-gnueabi-gcc, but that messes up many
> Makefiles which set the compiler with something like
> 
> CC=$(CROSS_COMPILE)gcc
> 
> What to do? Why is gcc not configured with a sysroot any more?

AIUI this had to be done in order to have a per-architecture compiler rather 
than a per-machine one. I believe if you use make -e then variables set in the 
environment will take precedence over those set in the makefile, which will 
allow the CC value set by the SDK's environment setup script to be used.

(If we haven't documented this somewhere, we definitely ought to.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

