Return-Path: <ddbabich@bootseeds.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5983C433EF
	for <webhook@archiver.kernel.org>; Mon, 29 Nov 2021 19:35:58 +0000 (UTC)
Subject: Re: Problem installing python package from a wheel #bitbake
To: yocto@lists.yoctoproject.org
From: "David Babich" <ddbabich@bootseeds.com>
X-Originating-Location: Boardman, Oregon, US (52.61.197.79)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 29 Nov 2021 11:35:58 -0800
References: <78f33f57d2ad4ed03a057c1c69865261b2612e98.camel@delisys.ch>
In-Reply-To: <78f33f57d2ad4ed03a057c1c69865261b2612e98.camel@delisys.ch>
Message-ID: <32437.1638214558031475373@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XsXhM857a7uENgotqcJR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Nov 2021 19:35:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55443

--XsXhM857a7uENgotqcJR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 25, 2021 at 02:45 AM, Nicolas Jeker wrote:

>=20
> On Wed, 2021-11-24 at 09:55 -0800, Tim Orling wrote:
>=20
>> On Mon, Nov 22, 2021 at 2:54 PM David Babich <ddbabich@bootseeds.com>
>> wrote:
>>=20
>>> I made it a little further by adding=C2=A0--no-cache-dir=C2=A0to the pi=
p3
>>> install command.=C2=A0 That got rid fo the warning about not being able
>>> to access the .cache/pip.=C2=A0 However I still have the error:
>>> | ERROR: torch-1.10.0-cp36-cp36m-linux_aarch64.whl is not a
>>> supported wheel on this platform.
>>=20
>> Installing third-party wheels is not something we are likely to ever
>> support in Yocto Project/OpenEmbedded recipes.
>>=20
>> Are you trying to install using pip3 on target?
>> Note that many factors will make it tricky for python wheels with
>> binary content (C or Rust extensions). The python3 version must
>> match, as will the libraries it requires.
>>=20
>> The wheel you listed was built for Python 3.6 (cp36) and ARM v8
>> (aarch64).=C2=A0 The error is what you would see if you were trying to
>> install an aarch64 wheel on an x86-64 target, but other reasons could
>> lead to that error. We don't know what version of glibc, gcc, etc.
>> was used and whether those are going to be compatible.
>=20
>=20

Ah OK, I wasn't aware of the the python naming convention.=C2=A0 That is li=
kely my problem since I'm using Honister which uses Python 3.9.=C2=A0 I pul=
led the wheel from NVIDIA's forums for pytorch, unfortunately they've not r=
eleased one for Python 3.9 so I will likely have to create it myself using =
the build from scratch method described in the article I linked.=C2=A0 Unfo=
rtunately this will likely open a new can of worms...

>=20
> There's a section about building from source with a patch in the
> article he linked with his first message. I don't know much about
> python in yocto, but maybe doing that in a recipe could work?
>=20
>=20
>> Also, when asking questions, please tell us which release of Yocto
>> Project you are using, what the MACHINE you are building for is,
>> which layers you are using (and at what release) and other
>> information to help us help you.
>=20
>=20

I'm using Honister and the machine is 'jetson-tx2-dev-kit-tx2i', I'm making=
 a custom distro based on the meta-tegra-demo from this:

https://github.com/OE4T

A large part of the problem that I have is that many of these custom packag=
es don't provide a nice .tar.gz pypi source distribution that I could use w=
ith the pypi class.=C2=A0 My target install ends up on a spacecraft, so the=
re is a strong desire to have a fully managed build that can just be flashe=
d onto the target tx2i without the need to do any post installation or conf=
iguration.=C2=A0 Sadly I'm finding that a lot of these third party dependen=
cies do not lend themselves well to the yocto paradigm.=C2=A0 I'm thinking =
that I may have to setup the target board, install the third party packages=
 on the target using whatever is required to do that, then copy the build p=
roducts back to the host and use a bitbake recipe to just do_install:append=
 the built products into the rootfs during the yocto build.=C2=A0 Does that=
 sound feasible?=C2=A0 I've not had to do this before, but it seems like it=
 might be a reasonable approach given the complexity of the situation.

>=20
>=20
>>=20
>> Cheers,
>> --Tim
>=20
>=20

Thanks
-David

--XsXhM857a7uENgotqcJR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 25, 2021 at 02:45 AM, Nicolas Jeker wrote:<br />
<blockquote>On Wed, 2021-11-24 at 09:55 -0800, Tim Orling wrote:<br />
<blockquote>On Mon, Nov 22, 2021 at 2:54 PM David Babich &lt;ddbabich@boots=
eeds.com&gt;<br />wrote:<br />
<blockquote>I made it a little further by adding&nbsp;--no-cache-dir&nbsp;t=
o the pip3<br />install command.&nbsp; That got rid fo the warning about no=
t being able<br />to access the .cache/pip.&nbsp; However I still have the =
error:<br />| ERROR: torch-1.10.0-cp36-cp36m-linux_aarch64.whl is not a<br =
/>supported wheel on this platform.</blockquote>
Installing third-party wheels is not something we are likely to ever<br />s=
upport in Yocto Project/OpenEmbedded recipes.<br /><br />Are you trying to =
install using pip3 on target?<br />Note that many factors will make it tric=
ky for python wheels with<br />binary content (C or Rust extensions). The p=
ython3 version must<br />match, as will the libraries it requires.&nbsp;<br=
 /><br />The wheel you listed was built for Python 3.6 (cp36) and ARM v8<br=
 />(aarch64).&nbsp; The error is what you would see if you were trying to<b=
r />install an aarch64 wheel on an x86-64 target, but other reasons could<b=
r />lead to that error. We don't know what version of glibc, gcc, etc.<br /=
>was used and whether those are going to be compatible.</blockquote>
</blockquote>
Ah OK, I wasn't aware of the the python naming convention.&nbsp; That is li=
kely my problem since I'm using Honister which uses Python 3.9.&nbsp; I pul=
led the wheel from NVIDIA's forums for pytorch, unfortunately they've not r=
eleased one for Python 3.9 so I will likely have to create it myself using =
the build from scratch method described in the article I linked.&nbsp; Unfo=
rtunately this will likely open a new can of worms...<br />
<blockquote>There's a section about building from source with a patch in th=
e<br />article he linked with his first message. I don't know much about<br=
 />python in yocto, but maybe doing that in a recipe could work?<br /><br /=
>
<blockquote>Also, when asking questions, please tell us which release of Yo=
cto<br />Project you are using, what the MACHINE you are building for is,<b=
r />which layers you are using (and at what release) and other<br />informa=
tion to help us help you.</blockquote>
</blockquote>
<p>I'm using Honister and the machine is 'jetson-tx2-dev-kit-tx2i', I'm mak=
ing a custom distro based on the meta-tegra-demo from this:</p>
<p><a href=3D"https://github.com/OE4T" target=3D"_blank" rel=3D"noopener">h=
ttps://github.com/OE4T</a></p>
<p>A large part of the problem that I have is that many of these custom pac=
kages don't provide a nice .tar.gz pypi source distribution that I could us=
e with the pypi class.&nbsp; My target install ends up on a spacecraft, so =
there is a strong desire to have a fully managed build that can just be fla=
shed onto the target tx2i without the need to do any post installation or c=
onfiguration.&nbsp; Sadly I'm finding that a lot of these third party depen=
dencies do not lend themselves well to the yocto paradigm.&nbsp; I'm thinki=
ng that I may have to setup the target board, install the third party packa=
ges on the target using whatever is required to do that, then copy the buil=
d products back to the host and use a bitbake recipe to just do_install:app=
end the built products into the rootfs during the yocto build.&nbsp; Does t=
hat sound feasible?&nbsp; I've not had to do this before, but it seems like=
 it might be a reasonable approach given the complexity of the situation.</=
p>
<blockquote>
<blockquote><br />Cheers,<br />--Tim</blockquote>
</blockquote>
Thanks<br />-David<br />&nbsp;
<p>&nbsp;</p>

--XsXhM857a7uENgotqcJR--

