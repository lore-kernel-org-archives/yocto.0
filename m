Return-Path: <f.louveau@lacroix.group>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BA20C4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 12:11:36 +0000 (UTC)
Subject: Re: [yocto] Verity hash in kernel bootscript
To: "Mikko Rapeli" <mikko.rapeli@linaro.org>, yocto@lists.yoctoproject.org
From: f.louveau@lacroix.group
X-Originating-Location: =?UTF-8?B?UGFyaXMsIMOObGUtZGUtRnJhbmNlLCBGUg==?= (81.250.230.22)
X-Originating-Platform: Linux Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 May 2024 05:11:28 -0700
References: <ZjNsNn2VVy366tjU@nuoska>
In-Reply-To: <ZjNsNn2VVy366tjU@nuoska>
Message-ID: <20089.1714651888078006301@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YKJTE3YAPOy06y6iT8pa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 12:11:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63020

--YKJTE3YAPOy06y6iT8pa
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the advice.

In my trial using 2 images, I have the following:

* first image generates a rootfs + other partitions (/var) in wanted format=
 (squashfs+verity & ext4). I delete content of /boot as it will be generate=
d by the second image
* second image is a really simplified version to just compile u-boot, boots=
cript, kernel-base and fitimage and generate /boot as a ext4 partition

Second point is that UBOOT_ENV can only be set at machine level. So I need =
an empty bootscript for the first image as I can't disable fitimage generat=
ion depending on image variant (even by removing do_assemble_fitimage manua=
lly)

--YKJTE3YAPOy06y6iT8pa
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the advice.<br /><br />In my trial using 2 images, I have the fo=
llowing:<br />
<ul>
<li>first image generates a rootfs + other partitions (/var) in wanted form=
at (squashfs+verity &amp; ext4). I delete content of /boot as it will be ge=
nerated by the second image</li>
<li>second image is a really simplified version to just compile u-boot, boo=
tscript, kernel-base and fitimage and generate /boot as a ext4 partition</l=
i>
</ul>
Second point is that UBOOT_ENV can only be set at machine level. So I need =
an empty bootscript for the first image as I can't disable fitimage generat=
ion depending on image variant (even by removing do_assemble_fitimage manua=
lly)

--YKJTE3YAPOy06y6iT8pa--

