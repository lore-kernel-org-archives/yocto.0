Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 841B6C64E66
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:26:00 +0000 (UTC)
Subject: Re: [PATCH yocto-autobuilder-helper v4] Add a banner on the old
 documentation docs
To: yocto@lists.yoctoproject.org
From: "Abongwa Amahnui Bonalais" <abongwabonalais@gmail.com>
X-Originating-Location: CM (154.72.153.140)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 17 Apr 2022 10:57:06 -0700
References: <48208941-B986-487E-8492-830F793BA44F@0leil.net>
In-Reply-To: <48208941-B986-487E-8492-830F793BA44F@0leil.net>
Message-ID: <3739.1650218226836374564@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cghRL7djvg2HVxwMEaqh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56793

--cghRL7djvg2HVxwMEaqh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 17, 2022 at 04:45 PM, Quentin Schulz wrote:

>=20
> import glob
> glob.glob('**/*.html', recursive=3DTrue)

Hi Quentin, thanks for the review.
If I use the glob module here, I will get rid of os.walk which was suggeste=
d by Richard, and I have some issues implementing the glob as I am not very=
 familiar with it.

--cghRL7djvg2HVxwMEaqh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Apr 17, 2022 at 04:45 PM, Quentin Schulz wrote:<br />
<blockquote>import glob<br />glob.glob('**/*.html', recursive=3DTrue)</bloc=
kquote>
Hi Quentin, thanks for the review.<br />If I use the glob module here, I wi=
ll get rid of os.walk which was suggested by Richard, and I have some issue=
s implementing the glob as I am not very familiar with it.

--cghRL7djvg2HVxwMEaqh--

