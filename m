Return-Path: <jimr@spectralogic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 524B5E0080C; Tue, 23 Dec 2014 08:57:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.spectralogic.com (mail5.spectralogic.com [192.30.190.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F00AE002F9
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 08:57:39 -0800 (PST)
From: Jim Rafert <jimr@spectralogic.com>
To: "Yu, Chan KitX" <chan.kitx.yu@intel.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Building clang with Yocto
Thread-Index: AQHQEw7mRsY0MXmXQESP6lU4D7T5NZyGdePQgAAVi/CAAV3FAIAAt6mAgBLea4CAAILsAIABX/WAgAAN9Rk=
Date: Tue, 23 Dec 2014 16:57:38 +0000
Message-ID: <86196249137E0843B2E0673D4F731E0C0108E29E26@reactor.sldomain.com>
References: <86196249137E0843B2E0673D4F731E0C0108E2902F@reactor.sldomain.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25021D@PGSMSX101.gar.corp.intel.com>
	<0E4D391FE2BDEC45AA0B4E32D6BD598A2517AC@PGSMSX101.gar.corp.intel.com>
	<3004533.IQ76YFNeID@peggleto-mobl5.ger.corp.intel.com>,
	<0E4D391FE2BDEC45AA0B4E32D6BD598A25190B@PGSMSX101.gar.corp.intel.com>
In-Reply-To: <0E4D391FE2BDEC45AA0B4E32D6BD598A25190B@PGSMSX101.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.200.15]
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
X-List-Received-Date: Tue, 23 Dec 2014 16:57:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Chan,=0A=
=0A=
The errors that you are experiencing point to a mismatch between the target=
 architecture of the compiler, and the headers and libraries that the compi=
ler finds.  There are several steps that are necessary to get right before =
you can produce correct code with the compiler.=0A=
=0A=
1.  Configure the clang compiler build such that  the compiler will be buil=
t to execute on the architecture of the workstation you that you intend to =
use  to compile code for your target with clang.=0A=
=0A=
2.  Configure the clang compiler build such that the clang compiler will su=
pport code generation for the architecture of the target machine.=0A=
=0A=
3. Modify a copy of the environment-setup file in /opt/poky/...  to=0A=
Here's a page which explains cross compilation using clang.=0A=
http://clang.llvm.org/docs/CrossCompilation.html=0A=
=0A=
Here's an excerpt that talks about specifying the target triple which defin=
es the target architecture that the clang compiler will produce code for:=
=0A=
=0A=
***************************************************************=0A=
Target Triple=0A=
=0A=
The basic option is to define the target architecture. For that, use -targe=
t <triple>. If you don=92t specify the target, CPU names won=92t match (sin=
ce Clang assumes the host triple), and the compilation will go ahead, creat=
ing code for the host platform, which will break later on when assembling o=
r linking.=0A=
=0A=
The triple has the general format <arch><sub>-<vendor>-<sys>-<abi>, where:=
=0A=
arch =3D x86, arm, thumb, mips, etc.=0A=
sub =3D for ex. on ARM: v5, v6m, v7a, v7m, etc.=0A=
vendor =3D pc, apple, nvidia, ibm, etc.=0A=
sys =3D none, linux, win32, darwin, cuda, etc.=0A=
abi =3D eabi, gnu, android, macho, elf, etc.=0A=
The sub-architecture options are available for their own architectures, of =
course, so =93x86v7a=94 doesn=92t make sense. The vendor needs to be specif=
ied only if there=92s a relevant change, for instance between PC and Apple.=
 Most of the time it can be omitted (and Unknown) will be assumed, which se=
ts the defaults for the specified architecture. The system name is generall=
y the OS (linux, darwin), but could be special like the bare-metal =93none=
=94.=0A=
=0A=
When a parameter is not important, they can be omitted, or you can choose u=
nknown and the defaults will be used. If you choose a parameter that Clang =
doesn=92t know, like blerg, it=92ll ignore and assume unknown, which is not=
 always desired, so be careful.=0A=
=0A=
Finally, the ABI option is something that will pick default CPU/FPU, define=
 the specific behaviour of your code (PCS, extensions), and also choose the=
 correct library calls, etc.=0A=
****************************************************************=0A=
=0A=
I hope that you find this helpful.=0A=
=0A=
-Jim-=0A=
________________________________________=0A=
From: Yu, Chan KitX [chan.kitx.yu@intel.com]=0A=
Sent: Tuesday, December 23, 2014 1:21 AM=0A=
To: Paul Eggleton=0A=
Cc: Jim Rafert; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Building clang with Yocto=0A=
=0A=
I tried ldd-ing my binary on my build machine since it doesn't work on my i=
mage and it was built on glibc indeed. Since yocto is based on ulibc so it =
won't work even my target platform is roughly the same as my build platform=
. I wonder what options should I specify to get llvm to build against the Y=
octo's libraries rather than my build machine's.=0A=
=0A=
As I said in IRC yesterday I found https://lists.yoctoproject.org/pipermail=
/yocto/2014-June/020358.html which should suit my needs but I get stupid er=
rors on uint32_t:=0A=
=0A=
/work/corei7-64-poky-linux/llvm/3.3-r0/llvm=0A=
-3.3.src/include/llvm/Support/BranchProbability.h:27:3: error: 'uint32_t' d=
oes not name a type=0A=
   uint32_t N;=0A=
=0A=
I tried adding #include <cstdint> to that header but no luck.=0A=
=0A=
-----Original Message-----=0A=
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=0A=
Sent: Monday, December 22, 2014 7:22 PM=0A=
To: Yu, Chan KitX=0A=
Cc: 'Liviu Gheorghisan'; 'Jim Rafert'; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Building clang with Yocto=0A=
=0A=
Hi Chan Kit,=0A=
=0A=
On Monday 22 December 2014 03:33:17 Yu, Chan KitX wrote:=0A=
> Here's an update FYI. I have managed to get clang sort of working. It=0A=
> compiles my sample code but I can't get the binary to execute. ./a.out=0A=
> simply returns:=0A=
>=0A=
>=0A=
> ./a.out: No such file or directory.=0A=
>=0A=
> I'm sure that a.out exists and weirdly I could get the same binary=0A=
> file to run on my build machine. So I guess it could be because of=0A=
> some architecture difference but both target and build platform are=0A=
> quite the same (Intel x64 in build machine and BayleyBay for target=0A=
> platform) I used=0A=
> valleyisland-64 for the target platform so both should be able to=0A=
> execute=0A=
> 64 bit binaries. I suppose I can specify some other configuration=0A=
> options there but I have no idea what to specify the configure=0A=
> parameter --target=3D<TARGET> . x64 did not do any good. So any idea?=0A=
=0A=
That sounds a bit like the binary has been linked to libraries in the host =
libdir rather than the correct one for the target. You may be able to verif=
y that using ldd.=0A=
=0A=
Cheers,=0A=
Paul=0A=
=0A=
--=0A=
=0A=
Paul Eggleton=0A=
Intel Open Source Technology Centre=0A=
=0A=

