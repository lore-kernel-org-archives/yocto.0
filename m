Return-Path: <H.Wulff@kruss.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7514CC7115D
	for <webhook@archiver.kernel.org>; Thu, 19 Jun 2025 17:35:22 +0000 (UTC)
Subject: Re: [yocto] do_unpack:append() with dependencies
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "H. Wulff" <H.Wulff@kruss.de>
X-Originating-Location: Uetersen, Schleswig-Holstein, DE (91.9.179.70)
X-Originating-Platform: Linux Firefox 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 19 Jun 2025 10:35:14 -0700
References: <11DCDA4A-CA9F-4D22-A6BF-D0FD45D75AE6@arm.com>
In-Reply-To: <11DCDA4A-CA9F-4D22-A6BF-D0FD45D75AE6@arm.com>
Message-ID: <17942.1750354514825841214@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qesn73UERuygqJxJ8z2o"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jun 2025 17:35:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65526

--qesn73UERuygqJxJ8z2o
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

Hi!

Thanks for your reply. You're right, it works now.

> The neatest thing to do here would be either adding iso unpacking support=
 to bitbake itself

I was thinking about this, but I couldn't find a starting point in the docu=
mentation. Do you've a starting point for me? Documentation or file would h=
elp.

Thank you.

--qesn73UERuygqJxJ8z2o
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi!</p>

<p>Thanks for your reply. You're right, it works now.</p>

<blockquote>
<p>The neatest thing to do here would be either adding iso unpacking suppor=
t to bitbake itself</p>
</blockquote>

<p>I was thinking about this, but I couldn't find a starting point in the d=
ocumentation. Do you've a starting point for me? Documentation or file woul=
d help.</p>

<p>Thank you.</p>

--qesn73UERuygqJxJ8z2o--

