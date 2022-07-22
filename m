Return-Path: <sethu.m@calixto.co.in>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DCCAC433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 13:27:26 +0000 (UTC)
Subject: Re: Custom YOCTO meta-layer building on Ubuntu 20 but Not in Ubuntu
 18.Why? #dunfell #yocto
To: yocto@lists.yoctoproject.org
From: sethu.m@calixto.co.in
X-Originating-Location: Nellore, Andhra Pradesh, IN (49.206.132.145)
X-Originating-Platform: Linux Chrome 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 22 Jul 2022 06:27:17 -0700
References: <e12d26ef-09d5-5060-3948-2904ab3c531b@gmail.com>
In-Reply-To: <e12d26ef-09d5-5060-3948-2904ab3c531b@gmail.com>
Message-ID: <15386.1658496437410669998@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lBpK04DVjnB2TgYHNdIL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 13:27:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57621

--lBpK04DVjnB2TgYHNdIL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Actually that was a problem with broken gcc package . It resolved when i cl=
eaned the gcc and rebuilt the image.

Another Problem iam facing is we have actually 2 machine configurations , S=
ame kernel but different defconfig and dts files. For one machine config bu=
ild iam getting the root login but for another machine iam not getting the =
root login after boot. Where should i look in to for resolving this issue??=
?

--lBpK04DVjnB2TgYHNdIL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Actually that was a problem with broken gcc package . It resolved when i cl=
eaned the gcc and rebuilt the image.&nbsp;<br /><br />Another Problem iam f=
acing is we have actually 2 machine configurations , Same kernel but differ=
ent defconfig and dts files. For one machine config build iam getting the r=
oot login but for another machine iam not getting the root login after boot=
. Where should i look in to for resolving this issue???

--lBpK04DVjnB2TgYHNdIL--

