Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534A1C433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Jun 2022 06:13:26 +0000 (UTC)
Subject: Re: how to setup host environment for yocto
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (84.10.27.202)
X-Originating-Platform: Linux Firefox 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 26 Jun 2022 23:13:19 -0700
References: 
 <CACaVmheL0i4Bhr-zyqPxDM+HT2+HGKtUzhdeRBatW3gQUYbQ9w@mail.gmail.com>
In-Reply-To: 
 <CACaVmheL0i4Bhr-zyqPxDM+HT2+HGKtUzhdeRBatW3gQUYbQ9w@mail.gmail.com>
Message-ID: <24889.1656310399777124978@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7Hg3l1xtTDzYKu9S0umU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Jun 2022 06:13:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57389

--7Hg3l1xtTDzYKu9S0umU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Hi,

Hi

>=20
> I'm new to yocto, I wonder the recommended=C2=A0way to setup an environme=
nt for
> yocto using=C2=A0vagrant or docker to isolate from the host, since I've
> encounter many different error about python version or something like
> that. Some layers providede by vendor uses a tool called repo (
> https://source.android.com/setup/develop#repo ) for version control, I
> always cannot install on my machine, following the steps form that page
> doesn't help either.
>=20

I recommend taking a look at the kas project.[1] It allows you to manage Yo=
cto layers in your project in a very easy
and pleasant way. You can also take a look at the Yocto Summit presentation=
 [2] which talks about various ways of
managing Yocto layers. Good luck with learning the Yocto Project.
[1] https://github.com/siemens/kas ( https://github.com/siemens/kas, ) ; ht=
tps://kas.readthedocs.io/en/latest/userguide.html?highlight=3Dkas-container=
#usage
[2] https://www.youtube.com/watch?v=3DPLl8jwZOpS0&list=3DPLD4M5FoHz-TwZkOR-=
GoWjq5XlLpZIFt5-&index=3D12

>=20
> Thanks,
> CD
>=20

Regards
Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--7Hg3l1xtTDzYKu9S0umU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>Hi,</blockquote>
Hi<br />
<blockquote>
<div>I'm new to yocto, I wonder the recommended&nbsp;way to setup an enviro=
nment for yocto using&nbsp;vagrant or docker to isolate from the host, sinc=
e I've encounter many different error about python version or something lik=
e that. Some layers providede by vendor uses a tool called <a href=3D"https=
://source.android.com/setup/develop#repo" target=3D"_blank" rel=3D"nofollow=
 noopener">repo</a>&nbsp;for version control, I always cannot install on my=
 machine, following the steps form that page doesn't help either.&nbsp;</di=
v>
</blockquote>
<p><span class=3D"VIiyi" lang=3D"en"><span class=3D"JLqJ4b ChMk0b" data-lan=
guage-for-alternatives=3D"en" data-language-to-translate-into=3D"pl" data-p=
hrase-index=3D"0" data-number-of-phrases=3D"2"><span class=3D"Q4iAWc">I rec=
ommend taking a look at the kas project.[1]</span></span> <span class=3D"JL=
qJ4b ChMk0b" data-language-for-alternatives=3D"en" data-language-to-transla=
te-into=3D"pl" data-phrase-index=3D"1" data-number-of-phrases=3D"2"><span c=
lass=3D"Q4iAWc">It allows you to manage Yocto layers in your project in a v=
ery easy<br /></span></span></span><span class=3D"VIiyi" lang=3D"en"><span =
class=3D"JLqJ4b ChMk0b" data-language-for-alternatives=3D"en" data-language=
-to-translate-into=3D"pl" data-phrase-index=3D"1" data-number-of-phrases=3D=
"2"><span class=3D"Q4iAWc">and pleasant way. You can also take a look at th=
e Yocto Summit presentation [2] which talks about various ways of<br />mana=
ging Yocto layers. Good luck with learning the Yocto Project.<br />[1] <a h=
ref=3D"https://github.com/siemens/kas," target=3D"_blank" rel=3D"noopener">=
https://github.com/siemens/kas</a>; <a href=3D"https://kas.readthedocs.io/e=
n/latest/userguide.html?highlight=3Dkas-container#usage" target=3D"_blank" =
rel=3D"noopener">https://kas.readthedocs.io/en/latest/userguide.html?highli=
ght=3Dkas-container#usage</a><br />[2] https://www.youtube.com/watch?v=3DPL=
l8jwZOpS0&amp;list=3DPLD4M5FoHz-TwZkOR-GoWjq5XlLpZIFt5-&amp;index=3D12<br /=
></span></span></span></p>
<blockquote>
<div>Thanks,</div>
<div>CD</div>
</blockquote>
<p>Regards<br />Tomasz =C5=BByjewski<br />Embedded Systems Engineer<br />GP=
G: 5C495EA3EBEECA59<br />https://3mdeb.com | @3mdeb_com</p>

--7Hg3l1xtTDzYKu9S0umU--

