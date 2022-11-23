Return-Path: <apoplawski@kan-therm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DD27C433FE
	for <webhook@archiver.kernel.org>; Wed, 23 Nov 2022 10:40:44 +0000 (UTC)
Subject: Re: pseudo issue in kirkstone
To: yocto@lists.yoctoproject.org
From: apoplawski@kan-therm.com
X-Originating-Location: Knorydy, Podlasie, PL (130.180.193.206)
X-Originating-Platform: Windows Firefox 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Nov 2022 02:40:35 -0800
References: <CAAfyv36F5cDdfdOZf7RANHjDBQd-OdT4SosC2WLzQEbP-O7A+g@mail.gmail.com>
In-Reply-To: <CAAfyv36F5cDdfdOZf7RANHjDBQd-OdT4SosC2WLzQEbP-O7A+g@mail.gmail.com>
Message-ID: <23555.1669200035388675458@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="a2dkhQlgrfHrKIfMZV0i"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Nov 2022 10:40:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58625

--a2dkhQlgrfHrKIfMZV0i
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 23, 2022 at 10:25 AM, Marek Belisko wrote:

>=20
> Hi,
>=20
> On Wed, Nov 23, 2022 at 9:41 AM apoplawski via lists.yoctoproject.org
> <apoplawski=3Dkan-therm.com@lists.yoctoproject.org> wrote:
>=20
>> Hi,
>>=20
>> I have a similar problem. First, you need to disable pseudo before
>> executing.
>> On begin of the line containing sudo cryptsetup add environment variable
>> definition: PSEUDO_DISABLED=3D1. This, however, does not solve the probl=
em
>> of executing sudo. I've noticed from the recipe point of view, all files
>> you don't own
>> are nobody:nogroup. This happens whether the task is in fakeroot or not.
>=20
> OK so adding PSEUDO_DISABLE=3D1 doesn't solve an issue. It's the same lik=
e
> before.

In my case, adding PSEUDO_DISABLE=3D1 makes /etc/sudoers.conf problem go aw=
ay.
However, I am left with an error about running sudo:

| sudo must be owned by uid 0 and have the setuid bit set

I think main problem is ownership of files in task perspective. I don't kno=
w why files are nobody:nogroup.
I spent some time on that but not found solution.

>=20
> Any idea what was changed and why it was working in dunfell and not in
> kirkstone?
>=20
>> --
>> Adam Pop=C5=82awski
>=20
> BR,
>=20
> marek
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>=20
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com

--a2dkhQlgrfHrKIfMZV0i
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 23, 2022 at 10:25 AM, Marek Belisko wrote:<br />
<blockquote>Hi,<br /><br />On Wed, Nov 23, 2022 at 9:41 AM apoplawski via l=
ists.yoctoproject.org<br />&lt;apoplawski=3Dkan-therm.com@lists.yoctoprojec=
t.org&gt; wrote:<br />
<blockquote>Hi,<br /><br />I have a similar problem. First, you need to dis=
able pseudo before executing.<br />On begin of the line containing sudo cry=
ptsetup add environment variable<br />definition: PSEUDO_DISABLED=3D1. This=
, however, does not solve the problem<br />of executing sudo. I've noticed =
from the recipe point of view, all files you don't own<br />are nobody:nogr=
oup. This happens whether the task is in fakeroot or not.</blockquote>
OK so adding PSEUDO_DISABLE=3D1 doesn't solve an issue. It's the same like =
before.</blockquote>
<span class=3D"HwtZe" lang=3D"en"><span class=3D"jCAhz ChMk0b"><span class=
=3D"ryNqvb">In my case, adding </span></span></span>PSEUDO_DISABLE=3D1<span=
 class=3D"HwtZe" lang=3D"en"><span class=3D"jCAhz ChMk0b"><span class=3D"ry=
Nqvb"> makes /etc/sudoers.conf problem go away.</span></span> <br /><span c=
lass=3D"jCAhz ChMk0b"><span class=3D"ryNqvb">However, I am left with an err=
or about running sudo:</span></span><span class=3D"jCAhz"><span class=3D"ry=
Nqvb"> <br /><br /></span></span><span class=3D"jCAhz ChMk0b"><span class=
=3D"ryNqvb">| sudo must be owned by uid 0 and have the setuid bit set<br />=
<br />I think main problem is ownership of files in task perspective. I don=
't know why files are nobody:nogroup. <br />I spent some time on that but n=
ot found solution.<br /><br /></span></span></span>
<blockquote>Any idea what was changed and why it was working in dunfell and=
 not in<br />kirkstone?<br />
<blockquote>--<br />Adam Pop=C5=82awski</blockquote>
BR,<br /><br />marek<br />-- <br />as simple and primitive as possible<br /=
>-------------------------------------------------<br />Marek Belisko - OPE=
N-NANDRA<br />Freelance Developer<br /><br />Ruska Nova Ves 219 | Presov, 0=
8005 Slovak Republic<br />Tel: +421 915 052 184<br />skype: marekwhite<br /=
>twitter: #opennandra<br />web: <a href=3D"http://open-nandra.com" target=
=3D"_blank" rel=3D"noopener">http://open-nandra.com</a></blockquote>

--a2dkhQlgrfHrKIfMZV0i--

