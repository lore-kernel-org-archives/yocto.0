Return-Path: <howard.egan@avid.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F105BC433F5
	for <webhook@archiver.kernel.org>; Mon, 27 Dec 2021 20:30:47 +0000 (UTC)
Subject: Fetch of shared-mime-info and shared-mime-info-native never finishes.
To: yocto@lists.yoctoproject.org
From: "Howard" <howard.egan@avid.com>
X-Originating-Location: Santa Cruz, California, US (23.119.165.140)
X-Originating-Platform: Mac Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Dec 2021 12:30:47 -0800
Message-ID: <jRGE.1640637047742303048.7ADP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="j1UwzLASIE5lyBdF9pUS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Dec 2021 20:30:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55665

--j1UwzLASIE5lyBdF9pUS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi:

This just started happening today.

Both
shared-mime-info-native-1.15-r0 do_fetch
and
shared-mime-info-1.15-r0 do_fetch

Never complete.=C2=A0=C2=A0 Bitbake completes all other non-dependant recip=
es, leaving the 2 above to go forever, but never finish.

Anybody else seeing this?=C2=A0=C2=A0 Is this a case of a remote repo not f=
unctioning properly?

Thanks
Howard

--j1UwzLASIE5lyBdF9pUS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi:<br /><br />This just started happening today.&nbsp;&nbsp; <br /><br />B=
oth<br />shared-mime-info-native-1.15-r0 do_fetch<br />and<br />shared-mime=
-info-1.15-r0 do_fetch<br /><br />Never complete.&nbsp;&nbsp; Bitbake compl=
etes all other non-dependant recipes, leaving the 2 above to go forever, bu=
t never finish.<br /><br />Anybody else seeing this?&nbsp;&nbsp; Is this a =
case of a remote repo not functioning properly?<br /><br />Thanks<br />Howa=
rd

--j1UwzLASIE5lyBdF9pUS--

