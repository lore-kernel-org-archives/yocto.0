Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3D4BC55187
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 16:52:01 +0000 (UTC)
Subject: Re: [PATCH v6] Add a banner on the old documentation docs
To: yocto@lists.yoctoproject.org
From: "Abongwa Amahnui Bonalais" <abongwabonalais@gmail.com>
X-Originating-Location: CM (41.202.219.242)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 22 Apr 2022 06:53:24 -0700
References: <106DA91B-8E31-4F3D-A5EA-1CB7A9EA0789@0leil.net>
In-Reply-To: <106DA91B-8E31-4F3D-A5EA-1CB7A9EA0789@0leil.net>
Message-ID: <11713.1650635604661386769@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="AwF4YuvSqWNRLI8rqV7i"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 16:52:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56845

--AwF4YuvSqWNRLI8rqV7i
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> A better name would be fix_all_style_css('.') Or something like that.
> Because, yes, you're looping through directories but that's not what this
> function is used for, it's used for fixing files. Same for the function i=
n
> the other file. The script filename would benefit from a rename too, like=
ly
> docs_fix_all_style_css.py or something similar. So that we know what this
> script is used for without reading it. The filenames are just suggestions=
,
> if you come up with something better, please use whatever think is best.
>=20

Since I am to send everything to a single script, I will just give it a gen=
eric name to cover both the html and css changes.

--AwF4YuvSqWNRLI8rqV7i
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote><span style=3D"white-space: pre-wrap;">A better name would be f=
ix_all_style_css('.')</span><span style=3D"white-space: pre-wrap;">Or somet=
hing like that. Because, yes, you're looping through directories but that's=
 not what this function is used for, it's used for fixing files.</span><spa=
n style=3D"white-space: pre-wrap;">Same for the function in the other file.=
</span><span style=3D"white-space: pre-wrap;"></span><span style=3D"white-s=
pace: pre-wrap;">The script filename would benefit from a rename too, likel=
y docs_fix_all_style_css.py or something similar. So that we know what this=
 script is used for without reading it.</span><span style=3D"white-space: p=
re-wrap;">The filenames are just suggestions, if you come up with something=
 better, please use whatever think is best.<br /></span></blockquote>
<span style=3D"white-space: pre-wrap;">Since I am to send everything to a s=
ingle script, I will just give it a generic name to cover both the html and=
 css changes.<br /></span><span style=3D"white-space: pre-wrap;"></span>

--AwF4YuvSqWNRLI8rqV7i--

