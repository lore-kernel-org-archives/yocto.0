Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28772C433F5
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 10:32:03 +0000 (UTC)
Subject: Re: How to manage disk space while working with Yocto?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Sesslach, Bavaria, DE (217.24.55.250)
X-Originating-Platform: Windows Chrome 99
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Mar 2022 03:32:01 -0700
References: 
 <CANNYZj8C+A31qXXsy01eKO8V6uYnTP1fye8nfOK8xGhU7bwk+g@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8C+A31qXXsy01eKO8V6uYnTP1fye8nfOK8xGhU7bwk+g@mail.gmail.com>
Message-ID: <18958.1647426721935429314@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sSYxhae36WMueSw0w7DJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 10:32:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56462

--sSYxhae36WMueSw0w7DJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Thanks for the update.

Even after deleting build/tmp and build/sstate-cache and setting `INHERIT +=
=3D "rm_work"` in the build/conf/local.conf.
But still I am facing same issue.

Is there any way to allocate more space to user in ubuntu?

I don't have any CI build servers.

--sSYxhae36WMueSw0w7DJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />Thanks for the update.<br /><br />Even after deleting bui=
ld/tmp and&nbsp;<span style=3D"white-space: pre-wrap;">build/sstate-cache</=
span>&nbsp;and setting `INHERIT +=3D "rm_work"` in the build/conf/local.con=
f.<br />But still I am facing same issue.<br /><br />Is there any way to al=
locate more space to user in ubuntu?<br /><br />I don't have any&nbsp;<span=
 style=3D"white-space: pre-wrap;">CI build servers.</span>

--sSYxhae36WMueSw0w7DJ--

