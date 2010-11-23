Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C53B4C81065
	for <yocto@yoctoproject.org>; Tue, 23 Nov 2010 03:00:33 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Nov 2010 01:00:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,241,1288594800"; d="scan'208";a="629459089"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 23 Nov 2010 01:00:32 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 23 Nov 2010 17:00:28 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 23 Nov 2010 17:00:27 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 23 Nov 2010 17:00:26 +0800
Thread-Topic: [yocto] Eclipse plugin
Thread-Index: AcuK6THExgyhuciDTdGUGi8/ga/ZCQAAkjjQ
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1ADB1E0164@shsmsx502.ccr.corp.intel.com>
References: <4CEA3442.6080909@mlbassoc.com>	<4CEA53B8.9060804@mlbassoc.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F1ACE892ED1@shsmsx502.ccr.corp.intel.com>
	<4CEA7405.8070700@mlbassoc.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F1ACE892EE5@shsmsx502.ccr.corp.intel.com>
	<4CEA8B25.3060103@mlbassoc.com> <4CEA8D05.8010608@mlbassoc.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95133F@orsmsx504.amr.corp.intel.com>
	<4CEB7C74.4000502@mlbassoc.com>
In-Reply-To: <4CEB7C74.4000502@mlbassoc.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse plugin
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
X-List-Received-Date: Tue, 23 Nov 2010 09:00:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Gary,

Pls compile your application using the cmd line to debug the error:

# source /home/gary/mytarget_poky/tmp/environment-setup-ppc603e-poky-linux
# cd /home/gthomas/workspace/yocto_test3
# ./configure --host=3Dpowerpc-poky-linux --build=3Di686-linux --target=3Dp=
owerpc-poky-linux

If it still fails, you may look at the config.log to see what actually goes=
 wrong here.

Best regards,
-Lianhao

>> Gary Thomas wrote:
>>>> I did that and now I can move a bit farther. I managed to select my
>>>> SDK type (ppc603e-poky-linux) and started with the autotools
>>>> example. However, I
>>>> get this error when trying to run autogen.sh:
>>>>=20
>>>>=20
>>>> Generating Makefile in build directory:
>>>> /home/gthomas/workspace/yocto_test3
>>>>=20
>>>> sh /home/gthomas/workspace/yocto_test3/configure
>>>> --host=3Dpowerpc-poky-linux --build=3Di686-linux
>>>> --target=3Dpowerpc-poky-linux checking for a BSD-compatible install...
>>>> /usr/bin/install -c
>>>> checking whether build environment is sane... yes
>>>> checking for powerpc-poky-linux-strip... no
>>>> checking for strip... strip
>>>> configure: WARNING: using cross tools not prefixed with host triplet
>>>> checking for a thread-safe mkdir -p... /bin/mkdir -p
>>>> checking for gawk... gawk
>>>> checking whether make sets $(MAKE)... yes
>>>> checking build system type... i686-pc-linux-gnu
>>>> checking host system type... powerpc-poky-linux-gnu
>>>> checking for style of include used by make... GNU
>>>> checking for powerpc-poky-linux-gcc... powerpc-poky-linux-gcc
>>>> checking whether the C compiler works... no
>>>> configure: error: in `/home/gthomas/workspace/yocto_test3':
>>>> configure: error: C compiler cannot create executables
>>>> See `config.log' for more details.
>>>>=20
>>>> Configuration failed with error
>>>>=20
>>>> It looks like there is a confusion over the SDK type and the
>>>> compiler setup?
>>>>=20
>>>=20
>>> BTW, this was on my console (hidden by the eclipse window), in
>>> case it helps:
>>>=20
>>> get env key CC value powerpc-poky-linux-gcc
>>> get env key CXX value powerpc-poky-linux-g++
>>> get env key GDB value powerpc-poky-linux-gdb
>>> get env key TARGET_PREFIX value powerpc-poky-linux-
>>> get env key CONFIGURE_FLAGS value --target=3Dpowerpc-poky-linux
>>> --host=3Dpowerpc-poky-linux --build=3Di686-linux get env key CFLAGS val=
ue
>>> -mcpu=3D603e -mhard-float
>>> get env key CXXFLAGS value -mcpu=3D603e -mhard-float
>>> get env key POKY_NATIVE_SYSROOT value
>>> /home/gary/mytarget_poky/tmp/sysroots/i686-linux
>>> get env key POKY_TARGET_SYSROOT value
>>> /home/gary/mytarget_poky/tmp/sysroots/ppc603e-poky-linux

