Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 11CAEE006B0
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 00:31:31 -0800 (PST)
Received: from SESTOEX09.enea.se ([fe80::cc12:dcdc:d521:97f8]) by
	SESTOEX08.enea.se ([fe80::fda4:d8b2:80c9:b320%24]) with mapi id
	14.01.0323.003; Fri, 9 Dec 2011 09:31:15 +0100
From: =?iso-8859-1?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
To: Darren Hart <dvhart@linux.intel.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] Variable locality too restricted.
Thread-Index: Acy05RmAyA7gXNsQSMymZKmerKcaXv//8++AgAADwgCAAACSAIABHBIXgAB8y4CAAEg6gIAAQksAgAACsQCAAARfAIAAC1UAgACKmk0=
Date: Fri, 9 Dec 2011 08:30:55 +0000
Message-ID: <88701C38B5D07249817D428430999C910B7745B7@sestoex09.enea.se>
References: <88701C38B5D07249817D428430999C910B774261@sestoex09.enea.se>
	<CABcZANkovWJH9dFUpRngNzrQH5VAxYOiO1dK3H2pPB4SM9GS6A@mail.gmail.com>
	<1605255.ltn5bNtJ0l@helios>
	<752D6B50-3DE9-4257-B160-AE1CAA99F2C7@dominion.thruhere.net>
	<88701C38B5D07249817D428430999C910B774381@sestoex09.enea.se>
	<CADkTA4O1DeNXkfVk0Oc3Gspsz2erGf0pJTRE0XOLypww8M2n_Q@mail.gmail.com>
	<4EE106CB.6080104@linux.intel.com> <1323384424.5309.85.camel@ted>
	<4EE140AA.3040506@linux.intel.com>
	<1323385940.5309.106.camel@ted>,<4EE14DD6.9070805@linux.intel.com>
In-Reply-To: <4EE14DD6.9070805@linux.intel.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.132]
MIME-Version: 1.0
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
X-List-Received-Date: Fri, 09 Dec 2011 08:31:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

=0A=
________________________________________=0A=
From: Darren Hart [dvhart@linux.intel.com]=0A=
Sent: Friday, December 09, 2011 00:52=0A=
To: Richard Purdie=0A=
Cc: Bruce Ashfield; David Nystr=F6m; Paul Eggleton; yocto@yoctoproject.org=
=0A=
Subject: Re: [yocto] Variable locality too restricted.=0A=
=0A=
On 12/08/2011 03:12 PM, Richard Purdie wrote:=0A=
> On Thu, 2011-12-08 at 14:56 -0800, Darren Hart wrote:=0A=
>> On 12/08/2011 02:47 PM, Richard Purdie wrote:=0A=
>>> On Thu, 2011-12-08 at 10:49 -0800, Darren Hart wrote:=0A=
>>>> On 12/08/2011 06:31 AM, Bruce Ashfield wrote:=0A=
>>>>> If you want to then modify the configuration slightly using either=0A=
>>>>> in-tree or add on kernel=0A=
>>>>> configuration fragments you can simply add a .cfg to the SCR_URI or s=
et the=0A=
>>>>> KERNEL_FEATURES variable, just like Darren did recently.=0A=
>>>>>=0A=
>>>>>    KERNEL_FEATURES_append_fri2 +=3D " cfg/smp.scc cfg/efi-ext.scc"=0A=
>>>>=0A=
>>>>=0A=
>>>> This has the same original variable scope issue as before however. It=
=0A=
>>>> would be nice to be able to do this:=0A=
>>>>=0A=
>>>> $ bitbake core-image-minimal=0A=
>>>> $ bitbake core-image-minimal-debug=0A=
>>>>=0A=
>>>> The latter image would use the same machine, but it would build perf,=
=0A=
>>>> add "debug" and other configurable options to "APPEND", and add a=0A=
>>>> configurable set of KERNEL_FEATURES. We should also update the base=0A=
>>>> kernel tools (non-Yocto) to use merge_config.sh so fragments can be us=
ed=0A=
>>>> in those recipes as well.=0A=
>>>>=0A=
>>>> The problem I've run into here in the past has been that I cannot=0A=
>>>> specify things like PREFERRED_PROVIDER in the image recipe. So, for=0A=
>>>> example, to build RT, the current documented approach is to first add =
a=0A=
>>>> PREFERRED_PROVIDER line to either local.conf or bblayers to select=0A=
>>>> linux-yocto-rt and then to build core-image-rt which merely adds some=
=0A=
>>>> relevant packages. It would be much preferable to be able to specify=
=0A=
>>>> just an image target and not have to change your configuration because=
=0A=
>>>> the image is the intuitive distinguishing factor for people.=0A=
>>>=0A=
>>> I'd like to give the bitbake perspective on this problem.=0A=
>>>=0A=
>>> PREFERRED_PROVIDER in images doesn't really make sense to bitbake.=0A=
>>> Imagine you have:=0A=
>>>=0A=
>>> core-image-minimal setting PREFERRED_PROVIDER =3D "kernelA" and=0A=
>>> core-image-minima-debug setting PREFERRED_PROVIDER =3D "kernelB". Both=
=0A=
>>> would depend on "virtual/kernel". You then run:=0A=
>>>=0A=
>>> "bitbake core-image-minimal core-image-minimal-debug"=0A=
>>>=0A=
>>> What would you expect bitbake to do?=0A=
>>=0A=
>> What I _think_ most people would expect it to do is to build each kernel=
=0A=
>> and install the right one in each image. I understand this doesn't work=
=0A=
>> with the way bitbake currently handles kernels, as you describe below.=
=0A=
>>=0A=
>>> The kernel is special in that doesn't really stage output that is reuse=
d=0A=
>>> by other parts of the system but we have to consider the general case=
=0A=
>>> where output such as libraries would end up in a shared sysroot. Even=
=0A=
>>> then, the kernel does generate packages which it places in a machine=0A=
>>> specific feed and the names don't reflect the different inputs, there i=
s=0A=
>>> one kernel-image package for example and in the above case it would be =
a=0A=
>>> race on which one built last.=0A=
>>=0A=
>> The names not reflecting different inputs seems like it should be=0A=
>> something we can address. I appreciate it isn't trivial, and probably=0A=
>> stomps on some pretty core assumptions dealing with how we build images,=
=0A=
>=0A=
> Images aren't the problem, those are easy. Its the packages. How do you=
=0A=
> represent that kernel-image A is built with configuration X and=0A=
> kernel-image B is built with configuration Y. How do you determine=0A=
> whether you can switch between A and B or not? How do you decide which=0A=
> one is the higher version?=0A=
=0A=
I'd imagine we change the package name linux-yocto vs. linux-yocto-debug=0A=
for example (this is how some of the Linux distributions handle it). I=0A=
believe PREFERRED_PROVIDER can then distinguish based on the package=0A=
name, and the versioning works the same as it does now.=0A=
=0A=
>=0A=
>> but I believe it would be valuable to be able to build multiple kernel=
=0A=
>> versions for a given machine.=0A=
>=0A=
> Version on its own is easier as packages do have pretty clear ideas=0A=
> about versions. I suspect you mean different configurations though.=0A=
=0A=
Agreed, that was a generic "version", not PV :-) I believe being able to=0A=
select the PN from PREFERRED_PROVIDER in the image recipe is what I'm=0A=
saying I'd prefer.=0A=
=0A=
=0A=
>=0A=
>>  Many Linux distributions do this and I can=0A=
>> see users of Yocto wanting to do the same with the distributions they bu=
ild.=0A=
>=0A=
> How do different linux distributions do that exactly? Likely different=0A=
> package feeds for each kernel?=0A=
=0A=
They have different names. For example, Red Hat's MRG ships something like:=
=0A=
=0A=
linux-rt=0A=
linux-rt-vanilla=0A=
linux-rt-debug=0A=
linux-rt-vanilla-debug=0A=
=0A=
It has been a while since I looked, but it was something along those lines.=
=0A=
=0A=
>=0A=
> As far as I can tell, to do this properly we'd need to:=0A=
>=0A=
> a) Adopt per recipe sysroots=0A=
=0A=
Yes. And if the same recipe can be used to generate different PNs based=0A=
on the config option, then that is treated as a separate recipe right?=0A=
=0A=
> b) Adopt package feeds constructed per image=0A=
=0A=
Does the term "feed" refer to "all the packages that can be installed"=0A=
or "all the packages that will be installed" ? Note that the distros=0A=
allow multiple kernels to be installed at once - which in the -debug=0A=
case would probably be preferred, but I can see the argument of not=0A=
wanting to go that route for Yocto.=0A=
=0A=
> c) Drop support for anyone wanting traditional distro type package feeds=
=0A=
>=0A=
=0A=
I'm hoping b and c would not be required.... or could be made not required.=
=0A=
=0A=
> These things would not be popular with the community due to a loss of=0A=
> functionality and would utterly destroy any notion of build speed.=0A=
>=0A=
>>> Bitbake therefore takes PREFERRED_PROVIDER and VERSION decisions from=
=0A=
>>> the core configuration (.conf / .inc / machine / distro / bitbake.conf =
/=0A=
>>> base.bbclass). There is no easy solution to this problem, even recipe=
=0A=
>>> specific sysroots would only get a part solution.=0A=
>>=0A=
>> Would this be something we should consider as a major feature=0A=
>> development item for a future release?=0A=
>=0A=
> Not without some idea of how it could be made to work. I can't visualise=
=0A=
> a way of making this work as you describe as long as we have packages=0A=
> around to deal with in the conventional way.=0A=
>=0A=
> We've talked about special cases for the kernel above but any proposal=0A=
> needs to work generically too which makes this trickier again :(.=0A=
=0A=
Agreed. I'd like to discuss the package feed concept a bit more. Clearly=0A=
more thought is required.=0A=
=0A=
=0A=
--------------=0A=
Will this have implications really be as severe as this ?=0A=
=0A=
We already have a model where normal packages are packaged according to the=
 default scheme:=0A=
=0A=
udev        - Symbol stripped pkg of udev.=0A=
udev-dbg -  Non stripped pkg of udev.=0A=
udev-dev -  Development pkg of udev.=0A=
=0A=
A selectable in IMAGE_FEATURES controls what gets installed on rootfs, and =
=0A=
I guess all of them are available in sysroot with the added .debug director=
y for -dbg packages.=0A=
=0A=
Slightly off-topic:=0A=
My only objection to this method would be the rootfs bloat where both a str=
ipped bash _and_ a bash =0A=
executable with symbols will be installed if dbg-pkgs is configured. Where =
the debug version is located under the .debug path.=0A=
Perhaps we could allow for this to be mutually exclusive when generating th=
e rootfs.=0A=
=0A=
Besides this, it's a good method, perhaps we should not create a new method=
 just because its a kernel package.=0A=
Perhaps we want to do they same with the busybox package ?=0A=
The only differency with this method is that the recipe do_configure/do_com=
pile/dp_package would be issued once for each flavour,=0A=
where the flavours can be selectable in the IMAGE.=0A=
=0A=
The previous discussions of having different kernel recipes for different k=
ernel configs, I dont particularly agree with.=0A=
I guess this will lead to separate build directories directly hitting both =
build time and build disk space.=0A=
Having three configs built in the same build directory with increasing sele=
cts, will take roughly the same =0A=
amount of time and space as the regular bloated .config monolith build.=0A=
=0A=
Having multiple flavours, and being able to add a flavour with .bbappend wo=
uld increase bitbake's modularity when it comes to =0A=
multiple meta-layers from different sources.=0A=
=0A=
Lets say I want to create an custom image for mpc8536ds, which has a define=
d machine in meta-fsl-ppc.=0A=
Image consists of :=0A=
meta, meta-yocto,      meta-fsl-ppc       meta-davids-layer.=0A=
|------YOCTO---------- | ----HW-vendor--- | ----SW-only-guys----- |=0A=
    PACKAGES       DISTRO-MACHINE    IMAGES=0A=
=0A=
When looking at poky-edison, to add changes to the kernel .config, I would =
have to edit meta-fsl-ppc sources and copy some of =0A=
their repo to my own, making the layer structure between HW vendor and SW-g=
uys obsolete since meta-fsl-ppc wont(and shouldn't) accept my user specific=
 modifications.=0A=
This is not only related to .config, but also f.ex. MACHINE_FEATURES, KERNE=
L_IMAGETYPE which can't be overridden from images=0A=
=0A=
Optimally, meta-davids-layer should contain different package configuration=
s(kernel, busybox) and images only. =0A=
=0A=
Best Regards,=0A=
David=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
--=0A=
Darren Hart=0A=
Intel Open Source Technology Center=0A=
Yocto Project - Linux Kernel=0A=

