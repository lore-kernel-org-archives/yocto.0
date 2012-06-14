Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D406E01440
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 14:12:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Jun 2012 14:12:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="153359689"
Received: from unknown (HELO envy.home) ([10.7.199.149])
	by orsmga001.jf.intel.com with ESMTP; 14 Jun 2012 14:12:20 -0700
Message-ID: <4FDA5368.9020508@linux.intel.com>
Date: Thu, 14 Jun 2012 14:11:04 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1339650859.git.dvhart@linux.intel.com>
	<3b44305edae36265295087fb5f31d22d660599b8.1339650859.git.dvhart@linux.intel.com>
	<4FD974F1.2000703@linux.intel.com> <4FD98BAD.1050109@gmail.com>
In-Reply-To: <4FD98BAD.1050109@gmail.com>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: [OE-core] [PATCH 2/3] busybox: Add setsid and cttyhack for tiny DISTRO_FEATURE
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
X-List-Received-Date: Thu, 14 Jun 2012 21:12:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 06/13/2012 11:58 PM, Khem Raj wrote:
> On 6/13/2012 10:21 PM, Darren Hart wrote:
>> At some point poky-tiny may need to come into oe-core, until 
>> then...
> 
> why do you think so. micro is also a distro with similar goals
> lives outside of OE-Core infact any distros live outside oe-core

Note I'm not arguing for it one way or the other. I could see people
wanting it to come in with linux-yocto-tiny already in oe-core. Or, it
might make more sense to move linux-yocto-tiny to meta-yocto and just
keep it all contained in meta-yocto. That's fine with me too.

- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJP2lNoAAoJEKbMaAwKp364GmwH/3wmP5TTnZ2oReLwaNFOkdCh
aKMr7EVm0ZOfb2j8vS2oRBg3C5AQ4aV7CR3w3OmXt+0tRlTF2P/M5XT2WgB90YUA
aeFM9znTs4DWSkUHw0Kr9O+kmb2WE6jXJUMxcmk9rId03XhykZBKKjVjUQXON8hQ
oL8u3s83IOL1fPLIUbJEg28LuOW25O0jQftZBeAqiX5tG8nC10m0HZFry0FqN/UG
MggLVSmUOEVioS1Z3rYHxValFqs/LFEtr3B+8sEgILFOM+kKE0LbJUbup2vS1eoh
YbhA2pzPsqLKswJAdkgv11QLvJ0fT9osrsBTUe7uIEPJHQG0YRawIFk8pS8BxZU=
=OZf4
-----END PGP SIGNATURE-----

