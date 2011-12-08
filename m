Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2162E01217
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 06:31:18 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by dadi14 with SMTP id i14so2524309dad.35
	for <yocto@yoctoproject.org>; Thu, 08 Dec 2011 06:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=aLCSTC6jeuWwDBSVE+OWe2USPOuRcH6X+v1xx6T8Pqk=;
	b=tQmyEX68oCGV82L+Al6rZB5M0o/jcOW21QZqsavirFKghsEYLhcjD84IwA0kuNO/4E
	FS3M0qw6Yn1ArTM65Sr1sYCw8Q3VWAEhaSeBTknUSlcrcNXaF+LX2b043HbRQzgwe23i
	+z1+qu3/k6cHJUR8yBbb5DBTAFPNIbPtoQ328=
MIME-Version: 1.0
Received: by 10.68.6.233 with SMTP id e9mr16037334pba.13.1323354677128; Thu,
	08 Dec 2011 06:31:17 -0800 (PST)
Received: by 10.142.127.17 with HTTP; Thu, 8 Dec 2011 06:31:17 -0800 (PST)
In-Reply-To: <88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
	<88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
Date: Thu, 8 Dec 2011 09:31:17 -0500
Message-ID: <CADkTA4O1DeNXkfVk0Oc3Gspsz2erGf0pJTRE0XOLypww8M2n_Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: =?ISO-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 08 Dec 2011 14:31:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 8, 2011 at 2:24 AM, David Nystr=F6m <David.Nystrom@enea.com> wr=
ote:
>
> ________________________________________
> From: Koen Kooi [koen@dominion.thruhere.net]
> Sent: Wednesday, December 07, 2011 15:07
> To: Paul Eggleton
> Cc: Chris Larson; David Nystr=F6m; yocto@yoctoproject.org
> Subject: Re: [yocto] Variable locality too restricted.
>
> Op 7 dec. 2011, om 15:05 heeft Paul Eggleton het volgende geschreven:
>
>> On Wednesday 07 December 2011 06:52:25 Chris Larson wrote:
>>> On Wed, Dec 7, 2011 at 6:44 AM, David Nystr=F6m <David.Nystrom@enea.com=
>
>> wrote:
>>>> I'm trying to create a setup for qemuppc.
>>>>
>>>> Goals:
>>>> core-image-minimal + virtual/kernel.
>>>> core-image-minimal + virtual/kernel with modified .config for debug
>>>> flavoured kernel.
>>>>
>>>> Problems:
>>>> PREFERRED_PROVIDER seems to be restricted to local.conf, distro and
>>>> machine.
>>> This is incorrect. It can be anywhere in the configuration metadata.
>>> bitbake.conf includes a variety of config files, not just
>>> distro/machine. Read that to see other existing files which get
>>> included. Further, you could create a .conf/.inc which you include
>>> from your machine .conf, if your goal is just to avoid duplication.
>>
>> Changing MACHINE has other implications though; do we not have any other=
 way
>> to switch out the kernel on a per-image basis?
>
> And how would that work from a packaging perspective? AIUI changing DISTR=
O/MACHINE flags in an image is a recipe for failure.
>
> regards,
>
> Koen
> Op 7 dec. 2011, om 15:10 heeft Paul Eggleton het volgende geschreven:
>
> --
>> On Wednesday 07 December 2011 15:07:54 Koen Kooi wrote:
>>>> Changing MACHINE has other implications though; do we not have any oth=
er
>>>> way to switch out the kernel on a per-image basis?
>>>
>>> And how would that work from a packaging perspective? AIUI changing
>>> DISTRO/MACHINE flags in an image is a recipe for failure.
>>
>> I'm not suggesting changing the kernel configuration for the existing ke=
rnel;
>> naturally you would need a different kernel recipe. Surely you should ju=
st be
>> able to have a different kernel that is built and installed for a differ=
ent
>> image file? No invalidated packages necessary.
>
> A kernel buld will generate packages and thanks to kernel.bbclass they wi=
ll have similar names. So what will happen when I do:
>
> bitbake foo-image bar-image
>
> ? Will it build 2 kernels? Which kernel will end up being packaged or wil=
l there be a mix of both in deploy?
>
> regards,
>
> Koen
>
> --
>
> Different virtual/kernel recipies depending on kernel configuration might=
 not be the best resolution path for this issue.
>
> How would it be problematic to have multiple binary flavour packages(Stil=
l a single source package)
> of the same kernel with the same linux-headers in the distro packages ?
> In deploy/images a similiar notation as for rootfs could be used.
> Perhaps there are no mechanisms today to do this, but perhaps there could=
/should be ?
> What about a pkgconfig style approach ?
>
> poky configuration contains a logical separation of IMAGE, MACHINE and DI=
STRO. (Probably more, but this is unrelated to my point below).
> What is the roadmap and future of this separation ?
>
> image:
> The IMAGE may contain user applications that will not function without th=
e proper kernel modules.(Or possibly non-module available .config items).
> i.e. RDEPENDS =3D kernel-module-xxxx will is impossible to automate since=
 it only scans kernel build for its existence.(if it was configured by kern=
el .config monolith selected by MACHINE)
> This is solved in most recipies as RRECOMMENDS =3D kernel-module-xxx to a=
void build breakage.
>
> So you need to configure your kernel to support all your IMAGEs, from cor=
e-image-smaller-than-minimal to core-image-huge-system(or in my case debug,=
 profiling)
> This is especially problematic for small embedded systems when it comes t=
o debug and profiling, where included kernel configuration(depending on exa=
ctly what)
> will have varying degrees of performance impact.(some huge, others we can=
 probably live with).
>
> machine:
> In my head, this would contain machine specific configuration and not dea=
l with other kernel configuration.
> In edison, the kernel configuration is treated as a monolith, perhaps we =
can improve this by allowing for a more dynamic configuration model of the =
kernel, where the
> machine logical layer would depend on _only_ the machine specific parts o=
f the kernel configuration. In the current(edison) case, it usually uses a =
defconfig.
> Great, but let the build modify it.
>
> pipedream:
> 1. MACHINE selects a defconfig.
> 2. IMAGE selects packets on rootfs, some depend on kernel-module-xx, or k=
ernel-config-xx.
> 3. When building image, fist stage scans included recipes for kernel-modu=
le-* and kernel-config-* and adds this to the MACHINE selected defconfig be=
fore building kernel.

Hi David,

For what it's worth, if you use the linux-yocto tooling/base kernel,
there are alternate
and modular ways to do something that sounds like what you are
describing with the
kernel configuration. I won't claim to have all the answers with how
this impacts
packaging, image creation, etc. I'm simply talking as a "kernel guy",
and my understanding
of what you are trying to do.

In this scenario, the base BSP inherits the standard/policy kernel configur=
ation
fragments that are part of the kernel tree. It then adds board
specific (hardware) options
and overrides of optional functionality (where optional is defined by
the base configuration).

If you want to then modify the configuration slightly using either
in-tree or add on kernel
configuration fragments you can simply add a .cfg to the SCR_URI or set the
KERNEL_FEATURES variable, just like Darren did recently.

   KERNEL_FEATURES_append_fri2 +=3D " cfg/smp.scc cfg/efi-ext.scc"

Cheers,

Bruce
> Possibly, all kernel related stuff can be located to kernel-profiling-fla=
vour.bb, where recipes are depending on a flavour instead of directly to th=
e kernel-config-xxx.
> 4. Continues with otherwise normal build-flow.
> 5. deploy/ipk..rpm..deb: Kernel binary packages are given a flavour.(Stil=
l the same kernel source package).
> 6. deploy/images: keeping a scheme of images similiar to rootfs:es.
>
> Impossible ?
>
> Best Regards,
> David
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

