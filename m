Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 015CBE7716D
	for <webhook@archiver.kernel.org>; Wed,  4 Dec 2024 09:35:33 +0000 (UTC)
Subject: Re: [yocto] swupdate applications, bootloader, how to update #swupdate #yocto #poky #stefanobabic
To: barath.seeni09_ee@mepcoeng.ac.in, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.251.105)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 04 Dec 2024 01:35:23 -0800
References: <20128.1731321217688489463@lists.yoctoproject.org>
In-Reply-To: <20128.1731321217688489463@lists.yoctoproject.org>
Message-ID: <20236.1733304923237357893@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="06I1M0GP3qVwfynEHzDf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2024 09:35:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64398

--06I1M0GP3qVwfynEHzDf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 11, 2024 at 11:33 AM, <barath.seeni09_ee@mepcoeng.ac.in> wrote:

>=20
> Hi All,
>=20
> I have referred most of the documentations, Every one did the update only
> using the rootfs or rootf.ext4 image.
> No one, implemented how to update applications alone, kernel or boot ?
>=20
> I need to know how to update the individual applications using swupdate?
>=20
>=20

I'm no expert on swupdate, but I believe it's not possible to update indivi=
dual packages with it, but rather whole partitions (take a look at AB boot)=
. Also, it's not a good practice to update single packages as (1) ABI compa=
tibility is not checked, so it can easily happen you new package is not com=
patible with the rest of the system and (2) this would invalidate the fail-=
safe feature of the update procedure - if there's a power outage during an =
update, your system might get bricked.

Aleksandar

>=20
>=20
>=20
> Please give me the guide to how to update applications, kernel, boot usin=
g
> swupdate.
>=20
>=20
> Thanks
>

--06I1M0GP3qVwfynEHzDf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Mon, Nov 11, 2024 at 11:33 AM, &lt;barath.seeni09_ee@mepcoeng.ac.in=
&gt; wrote:</div>
<div>
<blockquote>
<div>Hi All,<br /><br />I have referred most of the documentations, Every o=
ne did the update only using the rootfs or rootf.ext4 image.&nbsp;<br />No =
one, implemented how to update applications alone, kernel or boot ?<br /><b=
r />I need to know how to update the individual applications using swupdate=
?</div>
<div>&nbsp;</div>
</blockquote>
I'm no expert on swupdate, but I believe it's not possible to update indivi=
dual packages with it, but rather whole partitions (take a look at AB boot)=
. Also, it's not a good practice to update single packages as (1) ABI compa=
tibility is not checked, so it can easily happen you new package is not com=
patible with the rest of the system and (2) this would invalidate the fail-=
safe feature of the update procedure - if there's a power outage during an =
update, your system might get bricked.</div>
<div>&nbsp;</div>
<div>Aleksandar<br />
<blockquote>
<div><br /><br />Please give me the guide to how to update applications, ke=
rnel, boot using swupdate.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Thanks</div>
</blockquote>
</div>

--06I1M0GP3qVwfynEHzDf--

