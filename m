Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A646F01829
	for <webhook@archiver.kernel.org>; Fri,  6 Mar 2026 11:17:26 +0000 (UTC)
Subject: Finer build time dependencies to optimize sysroot preparation time
To: yocto@lists.yoctoproject.org
From: "Jocelyn Meyron" <jmeyron@gmail.com>
X-Originating-Location: Amsterdam, North Holland, NL (165.225.240.77)
X-Originating-Platform: Windows Firefox 148
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 06 Mar 2026 03:17:24 -0800
Message-ID: <4vYP.1772795844241663957.UURR@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rec7mworGh0A6eSk56jm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Mar 2026 11:17:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66306

--rec7mworGh0A6eSk56jm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I'm trying to solve the following problem (I'm using the latest scarthgap r=
elease):
- I have a recipe A whose job is to aggregate libraries produced by multipl=
e recipes (basically aggregate a bunch of static libraries into a shared on=
e to reduce the file system size).
- Right now, I added the list of recipes into the "DEPENDS" variable of rec=
ipe A. This works but this implies that all the files installed by the othe=
r recipes are copied into the sysroot of recipe A. The issue is that the ot=
her recipes package also header filers, source files, and other libraries, =
leading to slow downs in the build process (especially when ran under a sta=
tic analysis tool).

I could have packaged the relevant files of the recipes into dedicated subp=
ackages but the main recipe A can't depend on those packages (since only re=
cipes can be used for build time dependencies).

Does someone have a proposal to work around this issue? Or maybe I need to =
redesign this "aggregation" recipe?

Thank you in advance.

--rec7mworGh0A6eSk56jm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello everyone,</div>
<div>&nbsp;</div>
<div>I'm trying to solve the following problem (I'm using the latest scarth=
gap release):</div>
<div>- I have a recipe A whose job is to aggregate libraries produced by mu=
ltiple recipes (basically aggregate a bunch of static libraries into a shar=
ed one to reduce the file system size).</div>
<div>- Right now, I added the list of recipes into the "DEPENDS" variable o=
f recipe A. This works but this implies that all the files installed by the=
 other recipes are copied into the sysroot of recipe A. The issue is that t=
he other recipes package also header filers, source files, and other librar=
ies, leading to slow downs in the build process (especially when ran under =
a static analysis tool).</div>
<div>&nbsp;</div>
<div>I could have packaged the relevant files of the recipes into dedicated=
 subpackages but the main recipe A can't depend on those packages (since on=
ly recipes can be used for build time dependencies).</div>
<div>&nbsp;</div>
<div>Does someone have a proposal to work around this issue? Or maybe I nee=
d to redesign this "aggregation" recipe?</div>
<div>&nbsp;</div>
<div>Thank you in advance.</div>

--rec7mworGh0A6eSk56jm--

