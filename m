Return-Path: <ms.priyanshu.sharma@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECDEC001DC
	for <webhook@archiver.kernel.org>; Wed, 26 Jul 2023 07:53:58 +0000 (UTC)
Subject: Add different PREFERRED_VERSION of recipe to different images
To: yocto@lists.yoctoproject.org
From: "Priyanshu Sharma" <ms.priyanshu.sharma@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (202.164.25.5)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Jul 2023 00:53:58 -0700
Message-ID: <5NtY.1690358038009111944.Elav@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XAHVjCL9yhN895faklhI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jul 2023 07:53:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60652

--XAHVjCL9yhN895faklhI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have two images in same custom layer : A-image.bb & B-image.bb

I want to add readline_5.2.bb ( https://git.yoctoproject.org/meta-gplv2/tre=
e/recipes-core/readline/readline_5.2.bb ) in A-image.bb & readline_8.2.bb (=
 https://git.yoctoproject.org/poky/tree/meta/recipes-core/readline/readline=
_8.2.bb ) in B-image.bb. How can I achieve this?

Adding PREFERRED_VERSION in local.conf applies to both the image recipes.

Thanks,

--XAHVjCL9yhN895faklhI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I have two images in same custom layer : A-image.bb &amp; B-image.bb</p>
<p>I want to add&nbsp;<a href=3D"https://git.yoctoproject.org/meta-gplv2/tr=
ee/recipes-core/readline/readline_5.2.bb" target=3D"_blank" rel=3D"noopener=
">readline_5.2.bb</a>&nbsp;in A-image.bb &amp;&nbsp;<a href=3D"https://git.=
yoctoproject.org/poky/tree/meta/recipes-core/readline/readline_8.2.bb" targ=
et=3D"_blank" rel=3D"noopener">readline_8.2.bb</a>&nbsp;in B-image.bb. How =
can I achieve this?</p>
<p>Adding PREFERRED_VERSION in local.conf applies to both the image recipes=
.</p>
<p>Thanks,</p>

--XAHVjCL9yhN895faklhI--

