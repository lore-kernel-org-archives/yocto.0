Return-Path: <lucky33newman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71A40C00140
	for <webhook@archiver.kernel.org>; Sat, 13 Aug 2022 03:14:01 +0000 (UTC)
Subject: A bitbake error caused by "Variable BB_ENV_EXTRAWHITE" #bitbake
To: yocto@lists.yoctoproject.org
From: lucky33newman@gmail.com
X-Originating-Location: Singapore, SG (172.104.174.22)
X-Originating-Platform: Windows Chrome 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 12 Aug 2022 20:13:54 -0700
Message-ID: <BRp1.1660360434435137905.U3zp@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2OX7Gn3cpzVBCIIewhF3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Aug 2022 03:14:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57833

--2OX7Gn3cpzVBCIIewhF3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hellow everyone, this is Yan. I am new to Yocto Project, still, I am learni=
ng.

There is a question, when I bitbaked my image I found this ERROR:

yanxk@yanxk-Ubuntu:~/Yocto/poky/build$ bitbake core-image-sato
ERROR: Variable BB_ENV_EXTRAWHITE has been renamed to BB_ENV_PASSTHROUGH_AD=
DITIONS
ERROR: Variable BB_ENV_EXTRAWHITE from the shell environment has been renam=
ed to BB_ENV_PASSTHROUGH_ADDITIONS
ERROR: Exiting to allow enviroment variables to be corrected

How can I do a quick fix, and why is it working wrong?

By the way, I check the link https://git.openembedded.org/bitbake/commit/?i=
d=3D87104b6a167188921da157c7dba45938849fb22a , which most likely the main c=
ause.

Waiting for a help.

--2OX7Gn3cpzVBCIIewhF3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hellow everyone, this is Yan. I am new to Yocto Project, still, I am learni=
ng.<br /><br />There is a question, when I bitbaked my image I found this E=
RROR:<br /><br />
<div>yanxk@yanxk-Ubuntu:~/Yocto/poky/build$ bitbake core-image-sato</div>
<div>ERROR: Variable BB_ENV_EXTRAWHITE has been renamed to BB_ENV_PASSTHROU=
GH_ADDITIONS</div>
<div>ERROR: Variable BB_ENV_EXTRAWHITE from the shell environment has been =
renamed to BB_ENV_PASSTHROUGH_ADDITIONS</div>
<div>ERROR: Exiting to allow enviroment variables to be corrected</div>
<div><br />How can I do a quick fix, and why is it working wrong?<br /><br =
/>By the way, I check the link&nbsp;<a href=3D"https://git.openembedded.org=
/bitbake/commit/?id=3D87104b6a167188921da157c7dba45938849fb22a" target=3D"_=
blank" rel=3D"noopener">https://git.openembedded.org/bitbake/commit/?id=3D8=
7104b6a167188921da157c7dba45938849fb22a</a>&nbsp;, which most likely the ma=
in cause.<br /><br />Waiting for a help.<br /><br /></div>

--2OX7Gn3cpzVBCIIewhF3--

