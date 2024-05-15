Return-Path: <JHarris@westell.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9790AC25B75
	for <webhook@archiver.kernel.org>; Wed, 15 May 2024 15:41:53 +0000 (UTC)
Subject: devtool update-recipe/finish fix in scarthgap
To: yocto@lists.yoctoproject.org
From: "Jeff Harris" <JHarris@westell.com>
X-Originating-Location: Hilliard, Ohio, US (24.160.195.130)
X-Originating-Platform: Linux Firefox 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 May 2024 08:41:50 -0700
Message-ID: <risQ.1715787710688910509.4hM6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="T9aNKtfNhvjo6epVVi4y"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 May 2024 15:41:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63095

--T9aNKtfNhvjo6epVVi4y
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is the new devtool fix for update-recipe/finish in the master branch slated=
 for merge into scarthgap as well?=C2=A0 Commit 28516320d81f1767be24fb32260=
21f16b425d355 fixes a problem that occurs frequently for our projects which=
 append onto the linux and busybox recipes and have customized menuconfig f=
ragments.=C2=A0 It would be nice to have that fix to prevent having to fork=
 poky ourselves as it doesn't seem to be fixable in our own layers.

Thanks,
Jeff

--T9aNKtfNhvjo6epVVi4y
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is the new devtool fix for update-recipe/finish in the master branch slated=
 for merge into scarthgap as well?&nbsp; Commit 28516320d81f1767be24fb32260=
21f16b425d355 fixes a problem that occurs frequently for our projects which=
 append onto the linux and busybox recipes and have customized menuconfig f=
ragments.&nbsp; It would be nice to have that fix to prevent having to fork=
 poky ourselves as it doesn't seem to be fixable in our own layers.<br /><b=
r />Thanks,<br />Jeff

--T9aNKtfNhvjo6epVVi4y--

