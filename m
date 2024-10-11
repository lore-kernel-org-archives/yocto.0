Return-Path: <jean-michel.papy@exail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D9FD2447E
	for <webhook@archiver.kernel.org>; Fri, 11 Oct 2024 06:02:48 +0000 (UTC)
Subject: Re: [yocto] #kirkstone #yocto [openembedded-core] openssh/sshd
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "Jean-Michel Papy" <jean-michel.papy@exail.com>
X-Originating-Location: Toulouse, Occitanie, FR (185.18.210.154)
X-Originating-Platform: Windows Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Oct 2024 23:02:47 -0700
References: <CAMKF1spsvghZFHLCLAWAE=O8mBE7gsCVEZOvVQWLXHYTdrrypQ@mail.gmail.com>
In-Reply-To: <CAMKF1spsvghZFHLCLAWAE=O8mBE7gsCVEZOvVQWLXHYTdrrypQ@mail.gmail.com>
Message-ID: <24753.1728626567640627567@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="905TBQyCHgnMNnJvRljT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 06:02:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64006

--905TBQyCHgnMNnJvRljT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 10, 2024 at 06:47 PM, Khem Raj wrote:

>=20
> On Thu, Oct 10, 2024 at 2:56=E2=80=AFAM Jean-Michel Papy via
> Lists.Yoctoproject.Org
> <jean-michel.papy=3Dexail.com@lists.yoctoproject.org> wrote:
>=20
>> Dear Khem,
>>=20
>> Thank you for your answer and for the patch.
>> I tested both changing permissions before and after file renaming and it
>> works equally well.
>> If you do not mind I'd like to have your opinion about the most preferre=
d
>> way of doing a
>> modification of recipe via a bbappend:
>> 1) providing patch and letting bitbake apply it
>> 2) providing a modified file and letting bitbake replace the original on=
e
>=20
> For your own layer using a bbappend might work better, you have to
> take the change you did and apply it via do_install:append
> I will send the upstream patch with your credits added.

Ok fine for me :)
thanks !

>=20
>=20
>=20
>> Thank you in advance
>> Best regards
>=20
>

--905TBQyCHgnMNnJvRljT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Thu, Oct 10, 2024 at 06:47 PM, Khem Raj wrote:</div>
<div>
<blockquote>On Thu, Oct 10, 2024 at 2:56=E2=80=AFAM Jean-Michel Papy via<br=
 />Lists.Yoctoproject.Org<br />&lt;jean-michel.papy=3Dexail.com@lists.yocto=
project.org&gt; wrote:<br />
<blockquote>Dear Khem,<br /><br />Thank you for your answer and for the pat=
ch.<br />I tested both changing permissions before and after file renaming =
and it works equally well.<br />If you do not mind I'd like to have your op=
inion about the most preferred way of doing a<br />modification of recipe v=
ia a bbappend:<br />1) providing patch and letting bitbake apply it<br />2)=
 providing a modified file and letting bitbake replace the original one</bl=
ockquote>
For your own layer using a bbappend might work better, you have to<br />tak=
e the change you did and apply it via do_install:append<br />I will send th=
e upstream patch with your credits added.</blockquote>
Ok fine for me :)</div>
<div>thanks !<br />
<blockquote><br />
<blockquote>Thank you in advance<br />Best regards</blockquote>
</blockquote>
</div>

--905TBQyCHgnMNnJvRljT--

