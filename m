Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B100E0044D
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 09:33:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Apr 2012 09:33:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="149197556"
Received: from unknown (HELO envy.home) ([10.255.12.143])
	by fmsmga002.fm.intel.com with ESMTP; 03 Apr 2012 09:33:07 -0700
Message-ID: <4F7B261B.1090101@linux.intel.com>
Date: Tue, 03 Apr 2012 09:32:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <1333141865.18082.120.camel@ted> <4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
	<20120403162541.GB3943@jama.jama.net>
In-Reply-To: <20120403162541.GB3943@jama.jama.net>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 03 Apr 2012 16:33:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 04/03/2012 09:25 AM, Martin Jansa wrote:
> On Tue, Apr 03, 2012 at 09:01:01AM -0700, Darren Hart wrote:
>> -----BEGIN PGP SIGNED MESSAGE----- Clear reproducible testing
>> results. Whether or not a pair of git clones and some tinkering
>> can result in the same thing as a poky repository or not isn't
>> relevant in my opinion. I believe that we need a consistent mode
>> of validating support for a Yocto Project X.Y release. Now if
>> that is accomplished by building with the poky repository of the
>> same vintage or by running some script that pulls the right bits
>> together independently.... I honestly don't care, but I do think
>> it should be consistent.
> 
> so teach setup script something like: poky.sh checkout X.Y (which
> checkouts whatever parts are needed for X.Y) poky.sh update X.Y
> (dtto)
> 
> Which creates the same structure like poky repository has, but by 
> checkouting upstream repositories or using submodules or whatever.
> 
> That's what oebb.sh and SHR makefile does for master/shr HEADs, but
> can be extended do it for particular version too.
> 


This is certainly doable, but it doesn't address the stabilization
buffer poky provides that I mentioned.

- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJPeyYbAAoJEKbMaAwKp364OUMH/j8LTjnxSHNS7bc2oDQXmx3r
E/HzG2t2Q+u0N7Zg/H/1OHNjmZesDr94GlnqHzVMOQRXdpmnx/BZjLuTCL//R43Y
wP3jH/gCrAqdk2EJmqNkNQN3A5iQT8Ybj9dYfd0tr6M+GnN/9MpaL8VyW1Fz3Rxo
gHgxNu+mvB8mKT4Ix45a91yV107LQ2enPZ7OHHURLGRdjxF1SCi0owuP/hQzEAYl
qdgrc3KeBcrAs9ubC9OyAg68G7N8kvgSNSQRegVcELRa34k5Lr/6uP7pehT0IY4m
meA1E3tGafo1iIpdxSHhM6HwzUwKcWf/RzupGcXXUWuHsVgeaElvUW5u0h7Kkkg=
=mdcZ
-----END PGP SIGNATURE-----

