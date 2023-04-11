Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CEC0C7619A
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 06:26:50 +0000 (UTC)
Subject: Re: Missing .o files.
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.123.98)
X-Originating-Platform: Linux Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 10 Apr 2023 23:26:42 -0700
References: <CAMKF1sr=+-0UOVSm+xgXKEbJgUS6HGF-yTB0YbExjThQ0nNAKg@mail.gmail.com>
In-Reply-To: <CAMKF1sr=+-0UOVSm+xgXKEbJgUS6HGF-yTB0YbExjThQ0nNAKg@mail.gmail.com>
Message-ID: <28742.1681194402633433253@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2DkePREj42SCt4vVrDiU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 06:26:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59670

--2DkePREj42SCt4vVrDiU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 10, 2023 at 10:45 PM, Khem Raj wrote:

>=20
> you need to add
>=20
> DEPENDS +=3D "readline ncurses"
>=20
> to your recipe.
>=20
>=20

Hi Khem,
Thanks for your reply. I didnt get any more errors and bitbake zigbee was a=
 success.
The issue is in my executable is saved in=C2=A0/amlogic/meta-c/recipes-exam=
ple/zigbee/files/gecko_sdk_suite/v3.2/build/Z3GatewayHostm/build/exe folder=
 and not in the=C2=A0=C2=A0/amlogic/build/tmp/work/aarch64-poky-linux/zigbe=
e/0.1-r0 folder. I thought of making changes in the makefile but not sure w=
ith the commands I need to write. Can you please help.

Thanks and Reagrds,
Hassan

--2DkePREj42SCt4vVrDiU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 10, 2023 at 10:45 PM, Khem Raj wrote:<br />
<blockquote>you need to add<br /><br />DEPENDS +=3D "readline ncurses"<br /=
><br />to your recipe.<br /><br /></blockquote>
Hi Khem,<br />Thanks for your reply. I didnt get any more errors and bitbak=
e zigbee was a success.<br />The issue is in my executable is saved in&nbsp=
;/amlogic/meta-c/recipes-example/zigbee/files/gecko_sdk_suite/v3.2/build/Z3=
GatewayHostm/build/exe folder and not in the&nbsp;&nbsp;/amlogic/build/tmp/=
work/aarch64-poky-linux/zigbee/0.1-r0 folder. I thought of making changes i=
n the makefile but not sure with the commands I need to write. Can you plea=
se help.<br /><br />Thanks and Reagrds,<br />Hassan

--2DkePREj42SCt4vVrDiU--

