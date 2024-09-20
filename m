Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1586FCF58E0
	for <webhook@archiver.kernel.org>; Fri, 20 Sep 2024 07:11:58 +0000 (UTC)
Subject: How do changes get merged from master to release branches
To: yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: Erlangen, Bavaria, DE (147.161.171.114)
X-Originating-Platform: Windows Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 20 Sep 2024 00:11:57 -0700
Message-ID: <Isrj.1726816317462557237.ZoCh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dkC58pNMl5BrjAIBNTA4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Sep 2024 07:11:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63871

--dkC58pNMl5BrjAIBNTA4
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

As the title says, I would like to understand how changes get merged from m=
aster to release branches? =C2=A0Is it done automatically or manually? Can =
I read somewhere about this process?

An example: a few of my commits are at the moment only on the master branch=
. Some are fixes, which need to go to other branches as-is, while in some o=
ther commits the changes contain the version (e.g. 5.0.2), meaning those co=
mmits are not valid for branches other than scarthgap (e.g. kirkstone). For=
 the former - am I supposed to cherry-pick these "fix" commits myself and p=
rovide a patch? For the latter - am I supposed to provide fresh patches, wh=
ich reflect the branch in question (e.g. instead of having 5.0.2, the patch=
 for kirkstone should have something like 4.0.21)?

Aleksandar

--dkC58pNMl5BrjAIBNTA4
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>&nbsp;</div>
<div>As the title says, I would like to understand how changes get merged f=
rom master to release branches? &nbsp;Is it done automatically or manually?=
 Can I read somewhere about this process?</div>
<div>&nbsp;</div>
<div>An example: a few of my commits are at the moment only on the master b=
ranch. Some are fixes, which need to go to other branches as-is, while in s=
ome other commits the changes contain the version (e.g. 5.0.2), meaning tho=
se commits are not valid for branches other than scarthgap (e.g. kirkstone)=
. For the former - am I supposed to cherry-pick these "fix" commits myself =
and provide a patch? For the latter - am I supposed to provide fresh patche=
s, which reflect the branch in question (e.g. instead of having 5.0.2, the =
patch for kirkstone should have something like 4.0.21)?</div>
<div>&nbsp;</div>
<div>Aleksandar&nbsp;</div>

--dkC58pNMl5BrjAIBNTA4--

