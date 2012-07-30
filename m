Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EE1E0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 15:56:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Jul 2012 15:56:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="175030303"
Received: from unknown (HELO helios.localnet) ([10.252.121.49])
	by azsmga001.ch.intel.com with ESMTP; 30 Jul 2012 15:56:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Mon, 30 Jul 2012 23:56:31 +0100
Message-ID: <18409278.lgfylsICqB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <3BC10996-751B-4657-8F1D-848C0FD88C88@gmail.com>
References: <2C433563-B7CA-458C-B27F-68E3D5D2408C@gmail.com>
	<12219656.pCAnqchrzT@helios>
	<3BC10996-751B-4657-8F1D-848C0FD88C88@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, do_populate_sdk) failed with exit code '1'
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jul 2012 22:56:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 30 July 2012 23:52:18 Elvis Dowson wrote:
> On Jul 30, 2012, at 9:18 PM, Paul Eggleton wrote:
> > FYI, we do do this already for most significant changes, and it was done
> > for this one. The trouble with this specific issue is, if you happened to
> > build a normal image prior to building meta-toolchain or indeed any other
> > user of do_populate_sdk, the error will not occur because
> > rpmresolve-native would already have been built; hence why this was
> > missed.
> 
> Ah, I see. I normally alway build meta-toolchain, so that I get the cross
> compiler built first, before trying to build core-image-minimal.

I'm guessing you already know this, but you can just build core-image-minimal 
without building meta-toolchain and the cross compiler will be built 
automatically (and since meta-toolchain builds a bunch of other things it will 
take less time overall). Of course, you may actually need the output of meta-
toolchain, in which case you're getting something for the extra build time; 
but in that case it still does not matter which order you build them in.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

