Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3B9EE01374
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 07:13:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Apr 2012 07:13:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="130095985"
Received: from unknown (HELO envy.home) ([10.255.12.222])
	by azsmga001.ch.intel.com with ESMTP; 12 Apr 2012 07:13:32 -0700
Message-ID: <4F86E2E8.2030607@linux.intel.com>
Date: Thu, 12 Apr 2012 07:12:56 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
	<1334216100.2759.2.camel@babel.joshhome>
	<20120412080021.GA3661@jama.jama.net>
In-Reply-To: <20120412080021.GA3661@jama.jama.net>
X-Enigmail-Version: 1.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 12 Apr 2012 14:13:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 04/12/2012 01:00 AM, Martin Jansa wrote:
> On Thu, Apr 12, 2012 at 01:05:00PM +0530, Joshua Immanuel wrote:
>> Darren,
>> 
>> On Wed, 2012-04-11 at 17:30 -0700, Darren Hart wrote:
>>> I run on a beast with 12 cores, 48GB of RAM, OS and sources on
>>> a G2 Intel SSD, with two Seagate Barracudas in a RAID0 array
>>> for my /build partition. I run a headless Ubuntu 11.10 (x86_64)
>>> installation running the 3.0.0-16-server kernel. I can build
>>> core-image-minimal in < 30 minutes and core-image-sato in < 50
>>> minutes from scratch.
> 
> why not use so much RAM for WORKDIR in tmpfs? I bought 16GB just to
> be able to do my builds in tmpfs and keep only more permanent data
> on RAID.

We've done some experiments with tmpfs, adding Beth on CC. If I recall
correctly, my RAID0 array with the mount options I specified
accomplishes much of what tmpfs does for me without the added setup.
With a higher commit interval, the kernel doesn't try to sync the
dcache with the disks as frequently (eg not even once during a build),
so it's effectively writing to memory (although there is still plenty
of IO occurring).

The other reason is that while 48GB is plenty for a single build, I
often run many builds in parallel, sometimes in virtual machines when
I need to reproduce or test something on different hosts.

For example:
https://picasaweb.google.com/lh/photo/7PCrqXQqxL98SAY1ecNzDdMTjNZETYmyPJy0liipFm0?feat=directlink


- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJPhuLfAAoJEKbMaAwKp3648pYH/1HGCzI1QP1mj1OPfbo1TNou
nq1dCnEQOc+vUqShrmgjEY5H2G7Kqu5Y8JRp8m3D6v2iUPwu+ko3xASJkIVetgTn
1J+dkZl93Gbm8nm63b5bES0mMqyiycNgXW4KTL0iA+4mLbKSXck7nF/gIyjE4iHa
SR+DDavSoOIJUiZsJBJpIdS4sY2RpalohhJvp97Qfmbxmqlo2RJkqzB7OmLliKbB
zGiuXeFgGojZXIRl11Rr36kqqA75WoTlNYjlkcg1paEhCr4zCMh0sujGaPQgVPtu
YU+FCtGxQ569f+hahdJraCU9T4IbMK4AOk30VqVxPifCqFhIvr7FnVRkYtV5pZM=
=tdFq
-----END PGP SIGNATURE-----

