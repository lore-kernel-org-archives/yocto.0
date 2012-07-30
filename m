Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0583E0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 10:18:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jul 2012 10:18:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="190376817"
Received: from unknown (HELO helios.localnet) ([10.252.121.57])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2012 10:18:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Mon, 30 Jul 2012 18:18:52 +0100
Message-ID: <12219656.pCAnqchrzT@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <02EF9496-6BB6-473A-8C55-0BB42CA96FFC@gmail.com>
References: <2C433563-B7CA-458C-B27F-68E3D5D2408C@gmail.com>
	<1441563.jsPnjQvs5m@helios>
	<02EF9496-6BB6-473A-8C55-0BB42CA96FFC@gmail.com>
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
X-List-Received-Date: Mon, 30 Jul 2012 17:18:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 30 July 2012 21:08:54 Elvis Dowson wrote:
> Hi Paul,
> 
> On Jul 30, 2012, at 8:58 PM, Paul Eggleton wrote:
> > This is my fault - I'll put together a patch right now. As a workaround
> > you
> > can "bitbake rpmresolve-native" first and you won't get the error anymore.
> 
> Thanks for the workaround! It worked.
> 
> It would be good if all changes to the master were run through an automated
> build test on an internal git repository, prior to being pushed out to the
> public git repository. This way, you would be able to ensure that breaks in
> the build do not get propagated to all users.

FYI, we do do this already for most significant changes, and it was done for 
this one. The trouble with this specific issue is, if you happened to build a 
normal image prior to building meta-toolchain or indeed any other user of 
do_populate_sdk, the error will not occur because rpmresolve-native would 
already have been built; hence why this was missed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

