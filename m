Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CDEC77B7A
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 15:44:20 +0000 (UTC)
Subject: How to get yocto to export python wheels
To: yocto@lists.yoctoproject.org
From: lorenzo.ruffati+yoctoforums@unikie.com
X-Originating-Location: Tallinn, Harjumaa, EE (85.253.137.230)
X-Originating-Platform: Windows Firefox 113
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 May 2023 06:46:37 -0700
Message-ID: <ulRM.1684331197817955249.thUf@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mqLn7m4WvOtuE5IUzPCI"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 15:44:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60042

--mqLn7m4WvOtuE5IUzPCI
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, is there a way to get yocto to "deploy" the wheels for python packages?

At the moment I can only find .deb artifacts, I would like to have "tmp/dep=
loy/whl" (or some other)
folder in which to find all wheels for python packages generated in the bui=
ld.

Is there some standard way to do this? Is it even possible without writing =
a custom recipe for each
package?

--mqLn7m4WvOtuE5IUzPCI
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, is there a way to get yocto to "deploy" the wheels for python packages?=
<br /><br />At the moment I can only find .deb artifacts, I would like to h=
ave "tmp/deploy/whl" (or some other)<br />folder in which to find all wheel=
s for python packages generated in the build.<br /><br />Is there some stan=
dard way to do this? Is it even possible without writing a custom recipe fo=
r each<br />package?

--mqLn7m4WvOtuE5IUzPCI--

