Return-Path: <hbauszus@nt-ware.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E80ADECAAD4
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 11:27:30 +0000 (UTC)
Subject: How can I set configuration options for npm startet by bitbake?
 #bitbake #hardknott
To: yocto@lists.yoctoproject.org
From: "Holger Bauszus" <hbauszus@nt-ware.com>
X-Originating-Location: CH (147.161.228.113)
X-Originating-Platform: Windows Firefox 104
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 31 Aug 2022 04:27:22 -0700
Message-ID: <Z4Up.1661945242094432356.r1jy@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fs0elWyjheaxgkJI7wTR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 11:27:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57956

--fs0elWyjheaxgkJI7wTR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm relatively new to Yocto and have a question related to bitbake and node=
js modules.

I'm working with Yocto Hardknott and would like to integrate a nodejs modul=
e into my build.
To do so I'm using devtool:
devtool add "npm://registry.npmjs.org;package=3Delectron;version=3Dlatest"

During the do_fetch task I get the following error:
npm view electron@latest failed with exit code 1, output:
{
"error": {
"code": "UNABLE_TO_GET_ISSUER_CERT_LOCALLY",
"summary": "request to https://registry.npmjs.org/electron failed, reason: =
unable to get local issuer certificate",
"detail": ""
}
}

This seems to be because our company proxy exchanges the certificates.
The question is where or how can I add configuration options to the npm sta=
rted during the do_fetch task?

PS: The error is not related to Electron the same happens with other module=
s.

Thank you and kind regards,
Holger

--fs0elWyjheaxgkJI7wTR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br />I'm relatively new to Yocto and have a question related to bitb=
ake and nodejs modules.<br /><br />I'm working with Yocto Hardknott and wou=
ld like to integrate a nodejs module into my build.<br />To do so I'm using=
 devtool:<br />devtool add "npm://registry.npmjs.org;package=3Delectron;ver=
sion=3Dlatest"<br /><br />During the do_fetch task I get the following erro=
r:<br />&nbsp;npm view electron@latest failed with exit code 1, output:<br =
/>{<br />&nbsp; "error": {<br />&nbsp;&nbsp;&nbsp; "code": "UNABLE_TO_GET_I=
SSUER_CERT_LOCALLY",<br />&nbsp;&nbsp;&nbsp; "summary": "request to https:/=
/registry.npmjs.org/electron failed, reason: unable to get local issuer cer=
tificate",<br />&nbsp;&nbsp;&nbsp; "detail": ""<br />&nbsp; }<br />}<br /><=
br />This seems to be because our company proxy exchanges the certificates.=
<br />The question is where or how can I add configuration options to the n=
pm started during the do_fetch task?<br /><br />PS: The error is not relate=
d to Electron the same happens with other modules.<br /><br />Thank you and=
 kind regards,<br />Holger

--fs0elWyjheaxgkJI7wTR--

