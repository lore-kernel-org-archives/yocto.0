Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D549BC83F25
	for <webhook@archiver.kernel.org>; Mon, 21 Jul 2025 20:49:15 +0000 (UTC)
Subject: Re: [yocto] error with SDK that supports Qt creator
To: "Crane" <crane2018@gmail.com>, yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Toronto, Ontario, CA (72.138.19.58)
X-Originating-Platform: Windows Chrome 138
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Jul 2025 13:49:11 -0700
References: <FTrN.1753068185981760834.14lX@lists.yoctoproject.org>
In-Reply-To: <FTrN.1753068185981760834.14lX@lists.yoctoproject.org>
Message-ID: <24538.1753130951575957259@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ki8Nb1YhNL0ATgQohDke"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Jul 2025 20:49:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65698

--Ki8Nb1YhNL0ATgQohDke
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

qt.conf is missing.
But after adding qt.conf, Qt creators reports " *Qt version is not properly=
 installed, please run make install".*
*"qmake -query" returns valid absolte paths.*
*qt tools moc, rcc and uic are present.*
*Still missing files.*

*"bitbake <image> -c populate_sdk" or "bitbake meta-toolchain-qt5" should b=
e used?*

Thanks!
Crane

--Ki8Nb1YhNL0ATgQohDke
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>qt.conf is missing.&nbsp;</div>
<div>But after adding qt.conf, Qt creators reports "<strong id=3D"docs-inte=
rnal-guid-f4f63a05-7fff-c5ce-fc68-fb6c46fdb0f6" style=3D"font-weight: norma=
l;"><span style=3D"font-size: 11pt; font-family: Arial,sans-serif; color: #=
000000; background-color: transparent; font-weight: 400; font-style: normal=
; font-variant: normal; text-decoration: none; vertical-align: baseline; wh=
ite-space: pre-wrap;">Qt version is not properly installed, please run make=
 install". </span></strong></div>
<div><strong style=3D"font-weight: normal;"><span style=3D"font-size: 11pt;=
 font-family: Arial,sans-serif; color: #000000; background-color: transpare=
nt; font-weight: 400; font-style: normal; font-variant: normal; text-decora=
tion: none; vertical-align: baseline; white-space: pre-wrap;">"qmake -query=
" returns valid absolte paths.</span></strong></div>
<div><strong style=3D"font-weight: normal;"><span style=3D"font-size: 11pt;=
 font-family: Arial,sans-serif; color: #000000; background-color: transpare=
nt; font-weight: 400; font-style: normal; font-variant: normal; text-decora=
tion: none; vertical-align: baseline; white-space: pre-wrap;">qt tools moc,=
 rcc and uic are present.</span></strong></div>
<div><strong style=3D"font-weight: normal;"><span style=3D"font-size: 11pt;=
 font-family: Arial,sans-serif; color: #000000; background-color: transpare=
nt; font-weight: 400; font-style: normal; font-variant: normal; text-decora=
tion: none; vertical-align: baseline; white-space: pre-wrap;">Still missing=
 files. </span></strong></div>
<div>&nbsp;</div>
<div><strong style=3D"font-weight: normal;"><span style=3D"font-size: 11pt;=
 font-family: Arial,sans-serif; color: #000000; background-color: transpare=
nt; font-weight: 400; font-style: normal; font-variant: normal; text-decora=
tion: none; vertical-align: baseline; white-space: pre-wrap;">"bitbake &lt;=
image&gt; -c populate_sdk" or "bitbake meta-toolchain-qt5" should be used?<=
/span></strong></div>
<div>&nbsp;</div>
<div>Thanks!</div>
<div>Crane</div>

--Ki8Nb1YhNL0ATgQohDke--

