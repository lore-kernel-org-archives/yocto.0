Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FDF7CFA771
	for <webhook@archiver.kernel.org>; Fri,  4 Oct 2024 11:59:34 +0000 (UTC)
Subject: Re: [yocto] sstate cache and task hash changing with constant base hash
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 04 Oct 2024 04:59:32 -0700
References: <11f534bf16d97e405d253d07055447d061679df8.camel@linuxfoundation.org>
In-Reply-To: <11f534bf16d97e405d253d07055447d061679df8.camel@linuxfoundation.org>
Message-ID: <26848.1728043172751059785@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1pN6mUAyaOxNYQcONG4p"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Oct 2024 11:59:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63940

--1pN6mUAyaOxNYQcONG4p
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Now I think about it, there was a bug recently fixed:
>=20
> https://git.yoctoproject.org/poky/commit/bitbake?id=3Dc6b883106bc414312e5=
8fe8c682b3ccc1257f114
>=20
>=20
> it could be that. Do you have that fix in your build?
>=20
> That was triggered by differing paths to the layers on disk which could
> differ between your machine and CI.
>=20

I don't have that fix, but I also don't have the clean_checksum_file_path()=
 function at all as having to use Langdale due to Vendor tooling.

>=20
> I don't understand how you have two siginfo files with different sigs
> and the same data.
>=20

It's a mystery to me too at this point! Is there anything I can do to get m=
ore information on how it's calculating the task hash?

I'll try and run across more PCs as well to see if it's just the one CI mac=
hine that's different.

Thanks,
Phil Dawson

--1pN6mUAyaOxNYQcONG4p
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div>Now I think about it, there was a bug recently fixed:<br /><br /><a hr=
ef=3D"https://git.yoctoproject.org/poky/commit/bitbake?id=3Dc6b883106bc4143=
12e58fe8c682b3ccc1257f114" target=3D"_blank" rel=3D"noopener">https://git.y=
octoproject.org/poky/commit/bitbake?id=3Dc6b883106bc414312e58fe8c682b3ccc12=
57f114</a><br /><br />it could be that. Do you have that fix in your build?=
<br /><br />That was triggered by differing paths to the layers on disk whi=
ch could<br />differ between your machine and CI.</div>
</blockquote>
<div>I don't have that fix, but I also don't have the clean_checksum_file_p=
ath() function at all as having to use Langdale due to Vendor tooling.</div=
>
<div>&nbsp;</div>
<blockquote>
<div>I don't understand how you have two siginfo files with different sigs<=
br />and the same data.</div>
</blockquote>
<div>It's a mystery to me too at this point! Is there anything I can do to =
get more information on how it's calculating the task hash?<br /><br />I'll=
 try and run across more PCs as well to see if it's just the one CI machine=
 that's different.</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Phil Dawson</div>

--1pN6mUAyaOxNYQcONG4p--

