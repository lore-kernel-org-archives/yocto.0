Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67735C28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 05:07:17 +0000 (UTC)
Subject: Re: [yocto] GLIBCXX_3.4.30' not found
To: "sateesh m" <sateesh0457@gmail.com>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.250.167)
X-Originating-Platform: Windows Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Apr 2025 22:07:14 -0700
References: <5436.1743567026086698373@lists.yoctoproject.org>
In-Reply-To: <5436.1743567026086698373@lists.yoctoproject.org>
Message-ID: <19208.1743570434438484993@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Jf4KMs2QdEjyAiAQcUVB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 05:07:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65058

--Jf4KMs2QdEjyAiAQcUVB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 2, 2025 at 06:10 AM, sateesh m wrote:

>=20
> Hi Khem Raj,
>=20
> I am using dunfell version.
>=20
>=20

Any reason why you are using so old versions? Dunfell hasn't been maintaine=
d since May 2024 and Ubuntu 18.04 has been retired in May 2023 (if I am not=
 mistaken).

Also you are mentioning you have manually integrated the latest version of =
busybox (1.35) using BitBake. How did you do it? Also, does the build succe=
ed if you go back to the original version 1.31?

>=20
>=20
> I deleted the tmp directory and rebuilt the project, but I still see the
> same problem.
>=20
> Could you please suggest any other method.
>=20
> Regards,
> Sateesh
>

--Jf4KMs2QdEjyAiAQcUVB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>On Wed, Apr 2, 2025 at 06:10 AM, sateesh m wrote:</div>
<div>
<blockquote>
<div>Hi Khem Raj,</div>
<div>&nbsp;</div>
<div>I am using dunfell version.</div>
<div>&nbsp;</div>
</blockquote>
Any reason why you are using so old versions? Dunfell hasn't been maintaine=
d since May 2024 and Ubuntu 18.04 has been retired in May 2023 (if I am not=
 mistaken).</div>
<div>&nbsp;</div>
<div>Also you are mentioning you have <span style=3D"color: #333333; font-f=
amily: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liber=
ation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Seg=
oe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; fon=
t-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: normal; background-color: #ffffff; text-decoration-thick=
ness: initial; text-decoration-style: initial; text-decoration-color: initi=
al; display: inline !important; float: none;">manually integrated the lates=
t version of busybox (1.35) using BitBake. How did you do it? Also, does th=
e build succeed if you go back to the original version 1.31?</span></div>
<div>
<blockquote>
<div>&nbsp;</div>
<div>I deleted the tmp directory and rebuilt the project, but I still see t=
he same problem.</div>
<div>&nbsp;</div>
<div>Could you please suggest any other method.</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Sateesh</div>
</blockquote>
</div>

--Jf4KMs2QdEjyAiAQcUVB--

