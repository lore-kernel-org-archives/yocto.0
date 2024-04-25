Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D8B6C4345F
	for <webhook@archiver.kernel.org>; Thu, 25 Apr 2024 08:10:29 +0000 (UTC)
Subject: Re: [yocto] How I can add/remove libxxxx-dev.ipk to the installed yocto SDK? SDK partial update #devtool #kirkstone #sdk #yocto
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Apr 2024 01:10:25 -0700
References: <CANNYZj_3QKp67y9R8_iyH_Emq3-gnYN=yEcwmXPABhKCTu_5Xg@mail.gmail.com>
In-Reply-To: <CANNYZj_3QKp67y9R8_iyH_Emq3-gnYN=yEcwmXPABhKCTu_5Xg@mail.gmail.com>
Message-ID: <3353.1714032625110471937@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xYm0kDkSVcR7P8G4Al3l"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Apr 2024 08:10:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62998

--xYm0kDkSVcR7P8G4Al3l
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

On Thu, Apr 25, 2024 at 12:26 AM, Alexander Kanavin wrote:

>=20
> I would suggest that you teach the 3rd party to set up a Yocto build
> and provide pre-built sstate cache to them. We've added SDK features
> directly into it, and incremental updates are both possible and easy
> in that setup (just pull from the layer repos and rerun bitbake as
> instructed).
>=20
> Alex

The 3rd party is using only The Yocto SDK (not the eSDK), they want to test=
 pre-release for one or two libs which are not included in the machine conf=
 yet.

If I provide a pre-build sstate-cache, which command in the SDK can be used=
 to get the updates?

Salah

>=20
>=20
> On Wed, 24 Apr 2024 at 16:39, Altous, Salahaldeen via
> lists.yoctoproject.org
> <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>=20
>> Hi,
>>=20
>> I am compiling new version of shared-libs are yocto recipes and plan to
>> ship these libraries to 3rd party without provide a complete SDK, can I
>> only ship the ibxxxx-dev.ipk and install to the already shipped SDK are
>> incremental update.
>>=20
>> From time to time I can provide a full update for the SDK, but I would
>> like to avoid frequent update.
>>=20
>> what is the best practice to provide partial update without using devtoo=
l?
>> is this possible?
>>=20
>> Also, can I uninstall/replace these libs which not official released fro=
m
>> the installed SDK path?
>>=20
>> show I use rpm instead of ipk?
>>=20
>> Regards,
>>=20
>> Salahaldeen
>>=20
>>=20
>>=20
>=20
>=20

On Thu, Apr 25, 2024 at 12:26 AM, Alexander Kanavin wrote:

>=20
> instructed

--xYm0kDkSVcR7P8G4Al3l
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Alex,</p>
<p><br />On Thu, Apr 25, 2024 at 12:26 AM, Alexander Kanavin wrote:</p>
<blockquote>I would suggest that you teach the 3rd party to set up a Yocto =
build<br />and provide pre-built sstate cache to them. We've added SDK feat=
ures<br />directly into it, and incremental updates are both possible and e=
asy<br />in that setup (just pull from the layer repos and rerun bitbake as=
<br />instructed).<br /><br />Alex</blockquote>
<p>The 3rd party is using only The Yocto SDK (not the eSDK), they want to t=
est pre-release for one or two libs which are not included in the machine c=
onf yet.</p>
<p>If I provide a pre-build sstate-cache, which command in the SDK can be u=
sed to get the updates?</p>
<p>Salah</p>
<blockquote><br />On Wed, 24 Apr 2024 at 16:39, Altous, Salahaldeen via<br =
/>lists.yoctoproject.org<br />&lt;Salahaldeen.Altous=3Dleica-camera.com@lis=
ts.yoctoproject.org&gt; wrote:<br />
<blockquote>Hi,<br /><br />I am compiling new version of shared-libs are yo=
cto recipes and plan to ship these libraries to 3rd party without provide a=
 complete SDK, can I only ship the ibxxxx-dev.ipk and install to the alread=
y shipped SDK are incremental update.<br /><br />From time to time I can pr=
ovide a full update for the SDK, but I would like to avoid frequent update.=
<br /><br />what is the best practice to provide partial update without usi=
ng devtool? is this possible?<br /><br />Also, can I uninstall/replace thes=
e libs which not official released from the installed SDK path?<br /><br />=
show I use rpm instead of ipk?<br /><br />Regards,<br /><br />Salahaldeen<b=
r /><br /><br /></blockquote>
</blockquote>
<br />&nbsp;On Thu, Apr 25, 2024 at 12:26 AM, Alexander Kanavin wrote:<br /=
>
<blockquote>instructed</blockquote>

--xYm0kDkSVcR7P8G4Al3l--

