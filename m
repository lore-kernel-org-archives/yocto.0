Return-Path: <chan.kitx.yu@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F5A3E0080C; Tue, 23 Dec 2014 21:54:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 261EBE003E3
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 21:54:49 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 23 Dec 2014 21:54:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,691,1406617200"; d="scan'208";a="503461862"
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
	by orsmga003.jf.intel.com with ESMTP; 23 Dec 2014 21:49:46 -0800
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.62]) by
	KMSMSX152.gar.corp.intel.com ([169.254.11.86]) with mapi id
	14.03.0195.001; Wed, 24 Dec 2014 13:54:28 +0800
From: "Yu, Chan KitX" <chan.kitx.yu@intel.com>
To: Jim Rafert <jimr@spectralogic.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Building clang with Yocto
Thread-Index: AQHQEw7mRsY0MXmXQESP6lU4D7T5NZyGdePQgAAVi/CAAGJQAIABNS4AgBLk3LD///72AIAB4a1QgAAOdwCAAV7d4A==
Date: Wed, 24 Dec 2014 05:54:27 +0000
Message-ID: <0E4D391FE2BDEC45AA0B4E32D6BD598A251985@PGSMSX101.gar.corp.intel.com>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25021D@PGSMSX101.gar.corp.intel.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A2517AC@PGSMSX101.gar.corp.intel.com>
	<3004533.IQ76YFNeID@peggleto-mobl5.ger.corp.intel.com>,
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25190B@PGSMSX101.gar.corp.intel.com>
	<86196249137E0843B2E0673D4F731E0C0108E29E26@reactor.sldomain.com>
In-Reply-To: <86196249137E0843B2E0673D4F731E0C0108E29E26@reactor.sldomain.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building clang with Yocto
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
X-List-Received-Date: Wed, 24 Dec 2014 05:54:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Question: Does the fact that Yocto is based on elibc rather than libc be th=
e cause of the incompatibility here?=20

-----Original Message-----
From: Jim Rafert [mailto:jimr@spectralogic.com]=20
Sent: Wednesday, December 24, 2014 12:58 AM
To: Yu, Chan KitX; Paul Eggleton
Cc: yocto@yoctoproject.org
Subject: RE: [yocto] Building clang with Yocto

Hi Chan,

The errors that you are experiencing point to a mismatch between the target=
 architecture of the compiler, and the headers and libraries that the compi=
ler finds.  There are several steps that are necessary to get right before =
you can produce correct code with the compiler.

1.  Configure the clang compiler build such that  the compiler will be buil=
t to execute on the architecture of the workstation you that you intend to =
use  to compile code for your target with clang.

2.  Configure the clang compiler build such that the clang compiler will su=
pport code generation for the architecture of the target machine.

3. Modify a copy of the environment-setup file in /opt/poky/...  to Here's =
a page which explains cross compilation using clang.
http://clang.llvm.org/docs/CrossCompilation.html

Here's an excerpt that talks about specifying the target triple which defin=
es the target architecture that the clang compiler will produce code for:

***************************************************************
Target Triple

The basic option is to define the target architecture. For that, use -targe=
t <triple>. If you don't specify the target, CPU names won't match (since C=
lang assumes the host triple), and the compilation will go ahead, creating =
code for the host platform, which will break later on when assembling or li=
nking.

The triple has the general format <arch><sub>-<vendor>-<sys>-<abi>, where:
arch =3D x86, arm, thumb, mips, etc.
sub =3D for ex. on ARM: v5, v6m, v7a, v7m, etc.
vendor =3D pc, apple, nvidia, ibm, etc.
sys =3D none, linux, win32, darwin, cuda, etc.
abi =3D eabi, gnu, android, macho, elf, etc.
The sub-architecture options are available for their own architectures, of =
course, so "x86v7a" doesn't make sense. The vendor needs to be specified on=
ly if there's a relevant change, for instance between PC and Apple. Most of=
 the time it can be omitted (and Unknown) will be assumed, which sets the d=
efaults for the specified architecture. The system name is generally the OS=
 (linux, darwin), but could be special like the bare-metal "none".

When a parameter is not important, they can be omitted, or you can choose u=
nknown and the defaults will be used. If you choose a parameter that Clang =
doesn't know, like blerg, it'll ignore and assume unknown, which is not alw=
ays desired, so be careful.

Finally, the ABI option is something that will pick default CPU/FPU, define=
 the specific behaviour of your code (PCS, extensions), and also choose the=
 correct library calls, etc.
****************************************************************

I hope that you find this helpful.

-Jim-
________________________________________
From: Yu, Chan KitX [chan.kitx.yu@intel.com]
Sent: Tuesday, December 23, 2014 1:21 AM
To: Paul Eggleton
Cc: Jim Rafert; yocto@yoctoproject.org
Subject: Re: [yocto] Building clang with Yocto

I tried ldd-ing my binary on my build machine since it doesn't work on my i=
mage and it was built on glibc indeed. Since yocto is based on ulibc so it =
won't work even my target platform is roughly the same as my build platform=
. I wonder what options should I specify to get llvm to build against the Y=
octo's libraries rather than my build machine's.

As I said in IRC yesterday I found https://lists.yoctoproject.org/pipermail=
/yocto/2014-June/020358.html which should suit my needs but I get stupid er=
rors on uint32_t:

/work/corei7-64-poky-linux/llvm/3.3-r0/llvm
-3.3.src/include/llvm/Support/BranchProbability.h:27:3: error: 'uint32_t' d=
oes not name a type
   uint32_t N;

I tried adding #include <cstdint> to that header but no luck.

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
Sent: Monday, December 22, 2014 7:22 PM
To: Yu, Chan KitX
Cc: 'Liviu Gheorghisan'; 'Jim Rafert'; yocto@yoctoproject.org
Subject: Re: [yocto] Building clang with Yocto

Hi Chan Kit,

On Monday 22 December 2014 03:33:17 Yu, Chan KitX wrote:
> Here's an update FYI. I have managed to get clang sort of working. It=20
> compiles my sample code but I can't get the binary to execute. ./a.out=20
> simply returns:
>
>
> ./a.out: No such file or directory.
>
> I'm sure that a.out exists and weirdly I could get the same binary=20
> file to run on my build machine. So I guess it could be because of=20
> some architecture difference but both target and build platform are=20
> quite the same (Intel x64 in build machine and BayleyBay for target
> platform) I used
> valleyisland-64 for the target platform so both should be able to=20
> execute
> 64 bit binaries. I suppose I can specify some other configuration=20
> options there but I have no idea what to specify the configure=20
> parameter --target=3D<TARGET> . x64 did not do any good. So any idea?

That sounds a bit like the binary has been linked to libraries in the host =
libdir rather than the correct one for the target. You may be able to verif=
y that using ldd.

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre


