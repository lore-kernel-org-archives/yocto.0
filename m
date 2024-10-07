Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4D2CFB441
	for <webhook@archiver.kernel.org>; Mon,  7 Oct 2024 14:44:04 +0000 (UTC)
Subject: Re: [yocto] Yocto Binary Distro
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: Erlangen, Bavaria, DE (147.161.171.73)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Oct 2024 07:43:59 -0700
References: <CANNYZj_=Yoa0LxU-OqfJQA+D7MyOqPVZ7YZ0OFcmBZ5m93OiGw@mail.gmail.com>
In-Reply-To: <CANNYZj_=Yoa0LxU-OqfJQA+D7MyOqPVZ7YZ0OFcmBZ5m93OiGw@mail.gmail.com>
Message-ID: <2952.1728312239161653401@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8jAsQGFv5h52wJDStTcx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Oct 2024 14:44:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63946

--8jAsQGFv5h52wJDStTcx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 7, 2024 at 01:31 PM, Alexander Kanavin wrote:

>=20
> On Mon, 7 Oct 2024 at 07:06, Aleksandar Nikolic via
> lists.yoctoproject.org
> <aleksandar.nikolic010=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
>> 1) When I build a recipe previously not installed in my image and want t=
o
>> install it during runtime, the dnf install command fails, saying that th=
e
>> package's dependencies are not met (see [2] for more info). This is fine=
,
>> as I can see that the tmp/deploy/rpm directory does not contain all of t=
he
>> package's dependencies nor the dependencies' WORKDIRs contain the
>> deploy-rpms directory. Is this behavior correct? Shouldn't building a
>> recipe also lead that all of its dependencies are not just built but als=
o
>> packaged and put into the tpm/deploy/rpm directory (the same as with
>> building the image containing the package in question)?
>=20
> The default behavior is that bitbake runs the absolute minimum of
> tasks needed to complete the task you specify (in this case, producing
> the rpm). Making a vim rpm requires only do_package of its
> dependencies, but not their do_package_write_rpm.
>=20
> If you want all dependent rpms too, this is easily done with:
> bitbake --runall package_write_rpm vim

Thanks, will try this later!

>=20
>=20
>> 2) Is there an official, stable, and not some hacky way to install alrea=
dy
>> pre-built packages during the build and not later during runtime? So
>> instead of building from source or from the sstate-cache, to provide a U=
RL
>> to a webserver holding packages, which would then be pulled and installe=
d
>> (if I am not wrong Isar does this)?
>=20
> If you ask me, pulling pre-built packages into a yocto image is in
> itself a horrible hack that goes against yocto philosophy, and I would
> not want yocto to help that or support it in any way.
>=20
> We build from source. Isar can do what it wants, but I don't have to
> like or support that.
>=20
> There's a separate question of pulling pre-built *binaries* that
> sometimes come in .rpm archives and repackaging them with recipes,
> which is sort of supported if you list the rpm in SRC_URI (bitbake
> will then fetch/unpack/repackage), but I don't like that either for
> different reasons (vendor blobs are evil).

I am of the same opinion and even though pre-built binaries do come in hand=
y in some occasions, IMHO they bring a lot of other issues along and it's n=
ot worth it. Just wanted to hear other opinions on the mailing list.

Aleksandar

>=20
>=20
>> 3) Is enabling and using the package runtime management recommended and
>> encouraged when it comes to Yocto running on actual devices and not duri=
ng
>> a development phase? IMHO we are talking about embedded devices here, wi=
th
>> little or no user interaction, with secure boot enabled, atomic updates,
>> etc. and having a package management system such as dnf or apt is cool,
>> but is also kind of brittle (a simple power off during apt update can
>> break the system).
>=20
> That's exactly correct. Classic package management (rpm/dpkg) was
> created for the 'Unix workstation' use case where you want to provide
> as much available disk space as possible to users (so A/B partitioning
> is a non-starter), and users can easily add things they want to their
> system. Nobody ever claimed that such mass-upgrade transactions can be
> safely interrupted by a power outage, and in all likelihood you'll
> have a half-updated system with an undefined behaviour on the next
> boot.
>=20
> Alex

--8jAsQGFv5h52wJDStTcx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Mon, Oct 7, 2024 at 01:31 PM, Alexander Kanavin wrote:</div>
<div>
<blockquote>On Mon, 7 Oct 2024 at 07:06, Aleksandar Nikolic via<br />lists.=
yoctoproject.org<br />&lt;aleksandar.nikolic010=3Dgmail.com@lists.yoctoproj=
ect.org&gt; wrote:<br />
<blockquote>1) When I build a recipe previously not installed in my image a=
nd want to install it during runtime, the dnf install command fails, saying=
 that the package's dependencies are not met (see [2] for more info). This =
is fine, as I can see that the tmp/deploy/rpm directory does not contain al=
l of the package's dependencies nor the dependencies' WORKDIRs contain the =
deploy-rpms directory. Is this behavior correct? Shouldn't building a recip=
e also lead that all of its dependencies are not just built but also packag=
ed and put into the tpm/deploy/rpm directory (the same as with building the=
 image containing the package in question)?</blockquote>
The default behavior is that bitbake runs the absolute minimum of<br />task=
s needed to complete the task you specify (in this case, producing<br />the=
 rpm). Making a vim rpm requires only do_package of its<br />dependencies, =
but not their do_package_write_rpm.<br /><br />If you want all dependent rp=
ms too, this is easily done with:<br />bitbake --runall package_write_rpm v=
im</blockquote>
</div>
<div>Thanks, will try this later!</div>
<div><br />
<blockquote>
<blockquote>2) Is there an official, stable, and not some hacky way to inst=
all already pre-built packages during the build and not later during runtim=
e? So instead of building from source or from the sstate-cache, to provide =
a URL to a webserver holding packages, which would then be pulled and insta=
lled (if I am not wrong Isar does this)?</blockquote>
If you ask me, pulling pre-built packages into a yocto image is in<br />its=
elf a horrible hack that goes against yocto philosophy, and I would<br />no=
t want yocto to help that or support it in any way.<br /><br />We build fro=
m source. Isar can do what it wants, but I don't have to<br />like or suppo=
rt that.<br /><br />There's a separate question of pulling pre-built *binar=
ies* that<br />sometimes come in .rpm archives and repackaging them with re=
cipes,<br />which is sort of supported if you list the rpm in SRC_URI (bitb=
ake<br />will then fetch/unpack/repackage), but I don't like that either fo=
r<br />different reasons (vendor blobs are evil).</blockquote>
I am of the same opinion and even though pre-built binaries do come in hand=
y in some occasions, IMHO they bring a lot of other issues along and it's n=
ot worth it. Just wanted to hear other opinions on the mailing list.</div>
<div>&nbsp;</div>
<div>Aleksandar</div>
<div><br />
<blockquote>
<blockquote>3) Is enabling and using the package runtime management recomme=
nded and encouraged when it comes to Yocto running on actual devices and no=
t during a development phase? IMHO we are talking about embedded devices he=
re, with little or no user interaction, with secure boot enabled, atomic up=
dates, etc. and having a package management system such as dnf or apt is co=
ol, but is also kind of brittle (a simple power off during apt update can b=
reak the system).</blockquote>
That's exactly correct. Classic package management (rpm/dpkg) was<br />crea=
ted for the 'Unix workstation' use case where you want to provide<br />as m=
uch available disk space as possible to users (so A/B partitioning<br />is =
a non-starter), and users can easily add things they want to their<br />sys=
tem. Nobody ever claimed that such mass-upgrade transactions can be<br />sa=
fely interrupted by a power outage, and in all likelihood you'll<br />have =
a half-updated system with an undefined behaviour on the next<br />boot.<br=
 /><br />Alex</blockquote>
</div>

--8jAsQGFv5h52wJDStTcx--

