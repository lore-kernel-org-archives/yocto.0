Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C208DE013AD
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2011 08:22:59 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Nov 2011 08:22:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,477,1315206000"; d="scan'208";a="71886002"
Received: from unknown (HELO helios.localnet) ([10.252.121.141])
	by azsmga001.ch.intel.com with ESMTP; 08 Nov 2011 08:22:57 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Anders Darander <anders@chargestorm.se>
Date: Tue, 08 Nov 2011 16:22:56 +0000
Message-ID: <3423753.SGxEVnGZhz@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.2 (Linux/3.0.0-12-generic-pae; KDE/4.7.2; i686; ; )
In-Reply-To: <20111107091851.GA3677@ad.chargestorm.se>
References: <20111107091851.GA3677@ad.chargestorm.se>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [rpm] Problems with package upgrades
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
X-List-Received-Date: Tue, 08 Nov 2011 16:22:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Anders,

On Monday 07 November 2011 10:18:51 Anders Darander wrote:
> We have found a problem with upgrading packages on our own image.
> (Hopefully it'll show up to an error from our side).
> 
> After upgrading system packages, like busybox, we render our system
> unusable... In the busybox case, all symlinks pointing to busybox has
> been removed, and not reinstated during the post-install script.
> 
> The output from the rpm upgrade is shown below [2].
> 
> In order to get some feedback, I've reproduced the problem using a
> sligthly modified core-image-minimal built for qemux86. In the image, we
> increased the rootfs size, removed the removing of packaging data files
> and added rpm (dropbear was added to be able to easily tranfser a test
> rpm to the system). The patch is at the end of the mail [1].
> 
> Once this was done, the image was built, and after that, we bumped the
> PR of busybox and rebuilt that package. We transfered the updated
> busybox rpm to a running qemux86 instance, and tried to `rpm -Uvh
> busybox-1.18.5-r2`. After running this, all links normally pointing to
> /bin/busybox are non-existing, most certainly due to problems in the
> post-install script.

I looked into this yesterday and there's definitely a problem. I have filed bug 
#1760 [1] to track it and as described there should have a working fix very 
soon. Thanks for the concise example that helped me to reproduce the issue 
easily.

Cheers,
Paul

[1] http://bugzilla.pokylinux.org/show_bug.cgi?id=1760

-- 

Paul Eggleton
Intel Open Source Technology Centre

