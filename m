Return-Path: <chin.huat.ang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7666FE00D0B; Thu, 28 Jun 2018 00:15:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 638B4E00C1B
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2018 00:15:25 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Jun 2018 00:15:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,282,1526367600"; d="scan'208";a="50533190"
Received: from pgsmsx111.gar.corp.intel.com ([10.108.55.200])
	by fmsmga007.fm.intel.com with ESMTP; 28 Jun 2018 00:15:17 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.121]) by
	PGSMSX111.gar.corp.intel.com ([169.254.2.7]) with mapi id
	14.03.0319.002; Thu, 28 Jun 2018 15:15:16 +0800
From: "Ang, Chin Huat" <chin.huat.ang@intel.com>
To: Guy Morand <guy@guy-morand.ch>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] cmake toolchain file missing in SDK
Thread-Index: AQHUDgJ8dU0rKSNtr0eaIv4zqKwV3aRzm48AgAGnRwk=
Date: Thu, 28 Jun 2018 07:15:16 +0000
Message-ID: <08E361F78D55674EADC52186A78684A534D0529C@PGSMSX110.gar.corp.intel.com>
References: <51c1efa9-0654-d65b-a29c-400ccd83eb1f@guy-morand.ch>,
	<6dbd8943-8cff-e77e-24c4-6b37ad177e01@guy-morand.ch>
In-Reply-To: <6dbd8943-8cff-e77e-24c4-6b37ad177e01@guy-morand.ch>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.135]
MIME-Version: 1.0
Subject: Re: cmake toolchain file missing in SDK
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
X-List-Received-Date: Thu, 28 Jun 2018 07:15:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Looks like the toolchain file is located in a separate package which is not=
 included in the SDK, I've filed a bug on this:=0A=
=0A=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12827=0A=
=0A=
--Chin Huat=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Guy Morand [guy@guy-morand.ch]=0A=
Sent: Wednesday, June 27, 2018 9:57 PM=0A=
To: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] cmake toolchain file missing in SDK=0A=
=0A=
If I copy the missing toolchain file=0A=
(meta/recipes-devtools/cmake/cmake/OEToolchainConfig.cmake) manually=0A=
into the extracted SDK, this fixes the issue.=0A=
=0A=
But why was it not deployed automatically by yocto?=0A=
=0A=
Regards,=0A=
=0A=
Guy=0A=
=0A=
=0A=
On 06/27/18 12:31, Guy Morand wrote:=0A=
> Hallo Yocto developpers!=0A=
>=0A=
> Since my last SDK release, I cannot cross compile applications with=0A=
> cmake. I'm using yocto sumo. I get this error:=0A=
>=0A=
> build$ cmake ../=0A=
> CMake Error at=0A=
> /opt/comet-linux/0.0.0-2018.06-last-guy/sysroots/x86_64-cometsdk-linux/us=
r/share/cmake-3.10/Modules/CMakeDetermineSystem.cmake:100=0A=
> (message):=0A=
>   Could not find toolchain file:=0A=
> /opt/comet-linux/0.0.0-2018.06-last-guy/sysroots/x86_64-cometsdk-linux/us=
r/share/cmake/OEToolchainConfig.cmake=0A=
>=0A=
> Call Stack (most recent call first):=0A=
>   CMakeLists.txt:2 (project)=0A=
>=0A=
>=0A=
> CMake Error: CMake was unable to find a build program corresponding to=0A=
> "Unix Makefiles".  CMAKE_MAKE_PROGRAM is not set.  You probably need=0A=
> to select a different build tool.=0A=
> CMake Error: CMAKE_C_COMPILER not set, after EnableLanguage=0A=
> CMake Error: CMAKE_CXX_COMPILER not set, after EnableLanguage=0A=
> -- Configuring incomplete, errors occurred!=0A=
>=0A=
> It seems that the folder "cmake" is missing:=0A=
>=0A=
> $ ls=0A=
> /opt/comet-linux/0.0.0-2018.06-last-guy/sysroots/x86_64-cometsdk-linux/us=
r/share/=0A=
> X11  aclocal  aclocal-1.15  autoconf  automake-1.15 ca-certificates=0A=
> cmake-3.10  device_table-minimal.txt  gdb gnu-config  libtool  locale=0A=
> mime  opkg  qemu=0A=
>=0A=
> However, it was working with a previous release ??!! And it seems to=0A=
> be installed in the cmake recipe:=0A=
>=0A=
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtool=
s/cmake/cmake_3.10.3.bb#n38=0A=
>=0A=
>=0A=
> Has someone already faced this problem? What am I doing wrong?=0A=
>=0A=
> Kind regards,=0A=
>=0A=
> Guy=0A=
>=0A=
=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

