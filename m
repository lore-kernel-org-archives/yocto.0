Return-Path: <whuang8933@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16F99C3DA78
	for <webhook@archiver.kernel.org>; Tue, 17 Jan 2023 18:17:56 +0000 (UTC)
Subject: Possible to replace gcc-runtime libraries & libgcc  #gplv3 #yocto #llvm
To: yocto@lists.yoctoproject.org
From: "William Huang" <whuang8933@gmail.com>
X-Originating-Location: Maple, Ontario, CA (97.108.210.63)
X-Originating-Platform: Mac Chrome 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Jan 2023 10:17:48 -0800
Message-ID: <UJ70.1673979468308754075.EgUP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BX9MkfnCDl5sVQDvacty"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jan 2023 18:17:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59007

--BX9MkfnCDl5sVQDvacty
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
I'm in the process of generating an image without GPLv3 software. I have re=
moved everything but the gcc-runtime and libgcc libraries. These are gpl-3.=
0 with GCC exception. I'm not sure how feasible it is to remove these or re=
place them with llvm replacements. Just wondering if anyone had been down t=
his path before and if you can share your experience that would be great!

Thanks

--BX9MkfnCDl5sVQDvacty
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello all,<br />I'm in the process of generating an image without GPLv3 sof=
tware. I have removed everything but the gcc-runtime and libgcc libraries. =
These are gpl-3.0 with GCC exception. I'm not sure how feasible it is to re=
move these or replace them with llvm replacements. Just wondering if anyone=
 had been down this path before and if you can share your experience that w=
ould be great!<br /><br />Thanks

--BX9MkfnCDl5sVQDvacty--

