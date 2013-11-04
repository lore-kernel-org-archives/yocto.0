Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD020E017AB
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 03:29:29 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Nov 2013 03:26:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="403272160"
Received: from pauljbro-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.96])
	by orsmga001.jf.intel.com with ESMTP; 04 Nov 2013 03:29:28 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 04 Nov 2013 11:29:27 +0000
Message-ID: <3111944.mOI84hoDJY@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311020507080.20522@oneiric>
References: <alpine.DEB.2.02.1311020507080.20522@oneiric>
MIME-Version: 1.0
Subject: Re: coding style: hardcoding package names instead of using PN/BPN/etc
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
X-List-Received-Date: Mon, 04 Nov 2013 11:29:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 02 November 2013 05:14:10 Robert P. J. Day wrote:
>   i figure the answer is obvious but i'll ask it anyway -- is it
> reasonable to encourage new developers to use the general packagename
> variables such as PN and BPN rather than hardcoding packagenames in
> their recipe files?

Generally yes, but see below.
 
>   typically, you see things like this in recipe files:
> 
> ALLOW_EMPTY_${PN} = "1"
> ALLOW_EMPTY_${PN}-staticdev = "1"
> 
> and so on. but, occasionally, someone decides to (unnecessarily?)
> hardcode the package name, as in:
> 
> gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel = "1"
> gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel-general = "1"
> gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel-video = "1"
> gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel-vaapi = "1"
> 
> i'm *assuming* the above could have been written more concisely by
> using ${PN}, correct? is there a coding style preference that users
> should be *encouraged* to use? is there a general coding style guide
> anywhere?

Whatever you put here it really needs to match up with what goes into PACKAGES 
- i.e. if you're putting explicit names in PACKAGES then use those here, if 
using ${PN} then use that here. If they don't match up, you'll get odd things  
happening if the recipe is renamed or when you use multilib / BBCLASSEXTEND.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

