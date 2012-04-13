Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD112E0059A
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 23:08:55 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Apr 2012 23:08:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="128836620"
Received: from unknown (HELO envy.home) ([10.255.12.99])
	by orsmga001.jf.intel.com with ESMTP; 12 Apr 2012 23:08:55 -0700
Message-ID: <4F87C2D3.8020805@linux.intel.com>
Date: Thu, 12 Apr 2012 23:08:19 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
	<1334216100.2759.2.camel@babel.joshhome>
	<20120412080021.GA3661@jama.jama.net>
	<4F86E2E8.2030607@linux.intel.com>
	<CAPhnLPCc1+uV5rM48k45JxbSwHpPqG9x7ci=uN_5TA8j1XmpJg@mail.gmail.com>
	<20120413055150.GA3652@jama.jama.net>
In-Reply-To: <20120413055150.GA3652@jama.jama.net>
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
X-List-Received-Date: Fri, 13 Apr 2012 06:08:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 04/12/2012 10:51 PM, Martin Jansa wrote:

> And my system is very slow compared to yours, I've found my
> measurement of core-image-minimal-with-mtdutils around 95 mins 
> http://patchwork.openembedded.org/patch/17039/ but this was with
> Phenom II X4 965, 4GB RAM, RAID0 (3 SATA2 disks) for WORKDIR, RAID5
> (the same 3 SATA2 disks) BUILDDIR (raid as mdraid), now I have
> Bulldozer AMD FX(tm)-8120, 16GB RAM, still the same RAID0 but 
> different motherboard..

Why RAID5 for BUILDDIR? The write overhead of RAID5 is very high. The
savings RAID5 alots you is more significant with more disks, but with
3 disks it's only 1 disk better than RAID10, with a lot more overhead.

I spent some time outlining all this a while back:
http://www.dvhart.com/2011/03/qnap_ts419p_configuration_raid_levels_and_throughput/

Here's the relevant bit:

"RAID 5 distributes parity across all the drives in the array, this
parity calculation is both compute intensive and IO intensive. Every
write requires the parity calculation, and data must be written to
every drive."



- --
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJPh8LTAAoJEKbMaAwKp364pa8H/A8BSudN/g7ixFmUTYMNGHlC
2+H59MgNHYWRYzNn9QvN6vyyfXzX7C00HUTQ4MQ3CmisTUza2tbJEdX9CpeIBQNg
Ny8iqyNNoInTFx2T1Yi2eA9Ytegtue9Ls+IcBRbpIbs6Zo1Qwzi6oemdPZN7g3YI
rH/NKALWIBt/Y/Dt2k0fz7WsQGYOuE/lYpL/CmukU7vNNEUAdOs7tZa5o1ZOQDuj
zGCwuVH9QwrDJEXNsMtjNY37aJeAgDMwSXjN0pKv1WQI9j47kYQQrrp2qKVQYhV1
x4QxJ5aOuV7BaS0Y7zYkNo9nv+yKPODt25s5L83k5vjbMhCvczmMJn3jupQuUhQ=
=3GDA
-----END PGP SIGNATURE-----

