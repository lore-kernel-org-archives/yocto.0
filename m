Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C145C636FD
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:14 +0000 (UTC)
Subject: Re: [PATCH yocto-autobuilder-helper v8] Add a banner on the old
 documentation docs.
To: yocto@lists.yoctoproject.org
From: "Abongwa Amahnui Bonalais" <abongwabonalais@gmail.com>
X-Originating-Location: CM (154.72.153.147)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Apr 2022 06:57:43 -0700
References: <f301f1da-7826-684c-d3b6-8e1e1f639877@theobroma-systems.com>
In-Reply-To: <f301f1da-7826-684c-d3b6-8e1e1f639877@theobroma-systems.com>
Message-ID: <19297.1650895063079370918@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zg2VbVDQ0X4y5NNZdz7g"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56881

--zg2VbVDQ0X4y5NNZdz7g
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Hardcoding numbers like this isn=E2=80=99t a great idea. If the intention=
 is to
> add the warning on all versions earlier than 3.2, then the regex approach
> that is commented out would be better. It most likely didn=E2=80=99t work=
 as regex
> matching isn=E2=80=99t like shell/windows matching: pattern =3D r=E2=80=
=9D^3\.1.*" A good
> solution would be to use packaging.version.parse, but that=E2=80=99s not =
a
> built-in module so would need to be added to the build. That can wait, th=
e
> regex solution should be good.
>=20

Hi Ross, I tried out the regex solution but I did not work and I also notic=
ed that the 3.1.x doc versions on the documentation website already contain=
s the banner
I thought from 3.1.2 above were not outdate to, I am a little bit confused =
about which version is the latest.

--zg2VbVDQ0X4y5NNZdz7g
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><span style=3D"white-space: pre-wrap;">Hardcoding numbers like =
this isn&rsquo;t a great idea. If the intention is to add the warning on al=
l versions earlier than 3.2, then the regex approach that is commented out =
would be better. It most likely didn&rsquo;t work as regex matching isn&rsq=
uo;t like shell/windows matching:</span><span style=3D"white-space: pre-wra=
p;">pattern =3D r&rdquo;^3\.1.*"</span><span style=3D"white-space: pre-wrap=
;">A good solution would be to use packaging.version.parse, but that&rsquo;=
s not a built-in module so would need to be added to the build. That can wa=
it, the regex solution should be good.<br /></span></blockquote>
<span style=3D"white-space: pre-wrap;">Hi Ross, I tried out the regex solut=
ion but I did not work and I also noticed that the 3.1.x doc versions on th=
e documentation website already contains the banner<br />I thought from 3.1=
.2 above were not outdate to, I am a little bit confused about which versio=
n is the latest.</span>

--zg2VbVDQ0X4y5NNZdz7g--

