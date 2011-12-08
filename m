Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4AA9FE00728
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2011 23:25:28 -0800 (PST)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%21]) with mapi id
	14.01.0323.003; Thu, 8 Dec 2011 08:25:18 +0100
From: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
To: Koen Kooi <koen@dominion.thruhere.net>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Variable locality too restricted.
Thread-Index: Acy05RmAyA7gXNsQSMymZKmerKcaXv//8++AgAADwgCAAACSAIABHBIX
Date: Thu, 8 Dec 2011 07:24:59 +0000
Message-ID: <88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>,
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
In-Reply-To: <752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.132]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Variable locality too restricted.
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
X-List-Received-Date: Thu, 08 Dec 2011 07:25:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

=0A=
________________________________________=0A=
From: Koen Kooi [koen@dominion.thruhere.net]=0A=
Sent: Wednesday, December 07, 2011 15:07=0A=
To: Paul Eggleton=0A=
Cc: Chris Larson; David Nystr=F6m; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Variable locality too restricted.=0A=
=0A=
Op 7 dec. 2011, om 15:05 heeft Paul Eggleton het volgende geschreven:=0A=
=0A=
> On Wednesday 07 December 2011 06:52:25 Chris Larson wrote:=0A=
>> On Wed, Dec 7, 2011 at 6:44 AM, David Nystr=F6m <David.Nystrom@enea.com>=
=0A=
> wrote:=0A=
>>> I'm trying to create a setup for qemuppc.=0A=
>>>=0A=
>>> Goals:=0A=
>>> core-image-minimal + virtual/kernel.=0A=
>>> core-image-minimal + virtual/kernel with modified .config for debug=0A=
>>> flavoured kernel.=0A=
>>>=0A=
>>> Problems:=0A=
>>> PREFERRED_PROVIDER seems to be restricted to local.conf, distro and=0A=
>>> machine.=0A=
>> This is incorrect. It can be anywhere in the configuration metadata.=0A=
>> bitbake.conf includes a variety of config files, not just=0A=
>> distro/machine. Read that to see other existing files which get=0A=
>> included. Further, you could create a .conf/.inc which you include=0A=
>> from your machine .conf, if your goal is just to avoid duplication.=0A=
>=0A=
> Changing MACHINE has other implications though; do we not have any other =
way=0A=
> to switch out the kernel on a per-image basis?=0A=
=0A=
And how would that work from a packaging perspective? AIUI changing DISTRO/=
MACHINE flags in an image is a recipe for failure.=0A=
=0A=
regards,=0A=
=0A=
Koen=0A=
Op 7 dec. 2011, om 15:10 heeft Paul Eggleton het volgende geschreven:=0A=
=0A=
--=0A=
> On Wednesday 07 December 2011 15:07:54 Koen Kooi wrote:=0A=
>>> Changing MACHINE has other implications though; do we not have any othe=
r=0A=
>>> way to switch out the kernel on a per-image basis?=0A=
>>=0A=
>> And how would that work from a packaging perspective? AIUI changing=0A=
>> DISTRO/MACHINE flags in an image is a recipe for failure.=0A=
>=0A=
> I'm not suggesting changing the kernel configuration for the existing ker=
nel;=0A=
> naturally you would need a different kernel recipe. Surely you should jus=
t be=0A=
> able to have a different kernel that is built and installed for a differe=
nt=0A=
> image file? No invalidated packages necessary.=0A=
=0A=
A kernel buld will generate packages and thanks to kernel.bbclass they will=
 have similar names. So what will happen when I do:=0A=
=0A=
bitbake foo-image bar-image=0A=
=0A=
? Will it build 2 kernels? Which kernel will end up being packaged or will =
there be a mix of both in deploy?=0A=
=0A=
regards,=0A=
=0A=
Koen=0A=
=0A=
--=0A=
=0A=
Different virtual/kernel recipies depending on kernel configuration might n=
ot be the best resolution path for this issue.=0A=
=0A=
How would it be problematic to have multiple binary flavour packages(Still =
a single source package) =0A=
of the same kernel with the same linux-headers in the distro packages ?=0A=
In deploy/images a similiar notation as for rootfs could be used.=0A=
Perhaps there are no mechanisms today to do this, but perhaps there could/s=
hould be ?=0A=
What about a pkgconfig style approach ?=0A=
=0A=
poky configuration contains a logical separation of IMAGE, MACHINE and DIST=
RO. (Probably more, but this is unrelated to my point below).=0A=
What is the roadmap and future of this separation ?=0A=
=0A=
image:=0A=
The IMAGE may contain user applications that will not function without the =
proper kernel modules.(Or possibly non-module available .config items).=0A=
i.e. RDEPENDS =3D kernel-module-xxxx will is impossible to automate since i=
t only scans kernel build for its existence.(if it was configured by kernel=
 .config monolith selected by MACHINE)=0A=
This is solved in most recipies as RRECOMMENDS =3D kernel-module-xxx to avo=
id build breakage.=0A=
=0A=
So you need to configure your kernel to support all your IMAGEs, from core-=
image-smaller-than-minimal to core-image-huge-system(or in my case debug, p=
rofiling)=0A=
This is especially problematic for small embedded systems when it comes to =
debug and profiling, where included kernel configuration(depending on exact=
ly what) =0A=
will have varying degrees of performance impact.(some huge, others we can p=
robably live with).=0A=
=0A=
machine:=0A=
In my head, this would contain machine specific configuration and not deal =
with other kernel configuration. =0A=
In edison, the kernel configuration is treated as a monolith, perhaps we ca=
n improve this by allowing for a more dynamic configuration model of the ke=
rnel, where the =0A=
machine logical layer would depend on _only_ the machine specific parts of =
the kernel configuration. In the current(edison) case, it usually uses a de=
fconfig. =0A=
Great, but let the build modify it.=0A=
=0A=
pipedream:=0A=
1. MACHINE selects a defconfig.=0A=
2. IMAGE selects packets on rootfs, some depend on kernel-module-xx, or ker=
nel-config-xx.=0A=
3. When building image, fist stage scans included recipes for kernel-module=
-* and kernel-config-* and adds this to the MACHINE selected defconfig befo=
re building kernel.=0A=
Possibly, all kernel related stuff can be located to kernel-profiling-flavo=
ur.bb, where recipes are depending on a flavour instead of directly to the =
kernel-config-xxx.  =0A=
4. Continues with otherwise normal build-flow.=0A=
5. deploy/ipk..rpm..deb: Kernel binary packages are given a flavour.(Still =
the same kernel source package).=0A=
6. deploy/images: keeping a scheme of images similiar to rootfs:es.=0A=
=0A=
Impossible ?=0A=
=0A=
Best Regards,=0A=
David=

