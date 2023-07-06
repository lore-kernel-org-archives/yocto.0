Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C67DEB64DD
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 09:54:09 +0000 (UTC)
Subject: Re: do_configure error while adding networkmanager to image
To: yocto@lists.yoctoproject.org
From: "MOHAMMED HASSAN" <hassanchattarki@gmail.com>
X-Originating-Location: Hyderabad, Telangana, IN (183.82.1.74)
X-Originating-Platform: Linux Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 06 Jul 2023 02:54:00 -0700
References: <8d25b1e3d7a401d493802117d0cc48c3f63e7544.camel@gmail.com>
In-Reply-To: <8d25b1e3d7a401d493802117d0cc48c3f63e7544.camel@gmail.com>
Message-ID: <17151.1688637240030090881@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YTuCLp2iMDGphh2Uu6Og"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jul 2023 09:54:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60524

--YTuCLp2iMDGphh2Uu6Og
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 6, 2023 at 02:29 AM, Adrian Freihofer wrote:

>=20
> Hi Hassan

Hi Adrian,
Thanks for your reply.

>=20
> It's a bit hard to guess what you are really doing. The bb is a fork
> from a quite old version when it was still using the autotools. Now we
> use meson.
>=20
> The check for rl_echo_signal_char came into NetworkManager 8 years ago
> https://gitlab.freedesktop.org/NetworkManager/NetworkManager/-/commit/b69=
143b5085c58e51ab8077ee5cbe6fafe73e041
> .
> It's probably not a change on NetworkManager side which came in
> recently with your update to 1.22.16.
>=20
> Compiling nmcli with readline works with the bb from meta-openembedded
> and the poky version with a similar age. That's the default.
>=20
> Some ideas:
> - Try if the original recipe throws the same error
> - Pass the readline parameter to autotools (what we do with newer
> versions of the recipe and meson)
> - Compile without nmcli and remove the readline dependency. Look at the
> commit history of the networkmanager.bb. There was an autotools based
> recipe which supported compiling without nmcli at some point in time.

Actually I want nmcli recipe in my yocto image file. I am still a beginner =
with this so i am facing these issues. Alternatively, I was looking at addi=
ng wireless-tools to my image file but i dont have its related recipe in my=
 SDK. Do let me know if you have any suggestions.

>=20
> Regards,
> Adrian

--YTuCLp2iMDGphh2Uu6Og
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 6, 2023 at 02:29 AM, Adrian Freihofer wrote:<br />
<blockquote>Hi Hassan</blockquote>
Hi Adrian,<br />Thanks for your reply.<br />
<blockquote>It's a bit hard to guess what you are really doing. The bb is a=
 fork<br />from a quite old version when it was still using the autotools. =
Now we<br />use meson.<br /><br />The check for rl_echo_signal_char came in=
to NetworkManager 8 years ago<br /><a href=3D"https://gitlab.freedesktop.or=
g/NetworkManager/NetworkManager/-/commit/b69143b5085c58e51ab8077ee5cbe6fafe=
73e041" target=3D"_blank" rel=3D"noopener">https://gitlab.freedesktop.org/N=
etworkManager/NetworkManager/-/commit/b69143b5085c58e51ab8077ee5cbe6fafe73e=
041</a>.<br />It's probably not a change on NetworkManager side which came =
in<br />recently with your update to 1.22.16.<br /><br />Compiling nmcli wi=
th readline works with the bb from meta-openembedded<br />and the poky vers=
ion with a similar age. That's the default.<br /><br />Some ideas:<br />- T=
ry if the original recipe throws the same error<br />- Pass the readline pa=
rameter to autotools (what we do with newer<br />versions of the recipe and=
 meson)<br />- Compile without nmcli and remove the readline dependency. Lo=
ok at the<br />commit history of the networkmanager.bb. There was an autoto=
ols based<br />recipe which supported compiling without nmcli at some point=
 in time.</blockquote>
Actually I want nmcli recipe in my yocto image file. I am still a beginner =
with this so i am facing these issues. Alternatively, I was looking at addi=
ng wireless-tools to my image file but i dont have its related recipe in my=
 SDK. Do let me know if you have any suggestions.<br />
<blockquote>Regards,<br />Adrian</blockquote>

--YTuCLp2iMDGphh2Uu6Og--

