Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F075E01570
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 01:39:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Aug 2013 01:38:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,981,1367996400"; d="scan'208";a="370279958"
Received: from unknown (HELO helios.localnet) ([10.252.123.55])
	by orsmga001.jf.intel.com with ESMTP; 29 Aug 2013 01:38:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Thu, 29 Aug 2013 09:38:44 +0100
Message-ID: <6594787.TOYfR4Y2ta@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CA+Z6RkV4Ep3QkHJApRSwLU4i7vRO2KJ-kqm7F2ydki_XWtgeGQ@mail.gmail.com>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<1595398.sI48yF1pnG@helios>
	<CA+Z6RkV4Ep3QkHJApRSwLU4i7vRO2KJ-kqm7F2ydki_XWtgeGQ@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: bitbake -c populate_sdk -v poky-image
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
X-List-Received-Date: Thu, 29 Aug 2013 08:39:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 29 August 2013 13:57:12 Navani Srivastava wrote:
> >>You should set SDKMACHINE if you need the machine that runs the SDK to be
> 
> a
> different architecture from the machine
> Please find the local.conf file which clearly shows SDKMACHINE is i686 and
> I want to build for arm1136 arch.. So MACHINE ??= "EBboard" is given where
> EBboard refers to arm1136 architecture..
> Not able to find any problem in configurations..

OK. I think it's unlikely that that would be able to cause this kind of 
problem anyway.

> /opt/poky/1.3.2/sysroots/i686-pokysdk-linux/usr/bin/armv6-vfp-poky-linux-gnu
> eabi/arm-poky-linux-gnueabi-gcc test.c
> test.c:3:19: fatal error: stdio.h: No such file or directory
> 
> error shows that I have problem in cross toolchain...  Have yocto ever
> faced such kind of issue with populate_sdk before ?

Not that I'm aware of. Could you please file a bug in bugzilla for this? It 
would really help if you had a simple test case we can use to reproduce it 
with the SDK as well.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

