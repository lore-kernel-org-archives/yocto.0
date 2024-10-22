Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9A8ED1CDBC
	for <webhook@archiver.kernel.org>; Tue, 22 Oct 2024 08:44:03 +0000 (UTC)
Subject: Re: [yocto] Input for FIPS openssl to be added in yocto build
To: emailaddress.ashish@gmail.com, yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.208.197)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Oct 2024 01:44:02 -0700
References: <2413.1729158135608433475@lists.yoctoproject.org>
In-Reply-To: <2413.1729158135608433475@lists.yoctoproject.org>
Message-ID: <1581.1729586642126680223@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="a3XIOLAKFvSqVMDzWyCD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 08:44:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64078

--a3XIOLAKFvSqVMDzWyCD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Khem Raj ,

Able to get the fips working on target with Yocto scrathgap.

The problem is with fips config file which was creating error as shared in =
earlier message.
Since the openssl fips is cross compiled the fips configuration will not be=
 proper .
The fips configuration does required an https://docs.openssl.org/3.0/man1/o=
penssl-fipsinstall/#examples

Thanks ,
Ashish

--a3XIOLAKFvSqVMDzWyCD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Khem Raj ,</div>
<div>&nbsp;</div>
<div>Able to get the fips working on target with Yocto scrathgap.</div>
<div>&nbsp;</div>
<div>The problem is with fips config file which was creating error as share=
d in earlier message.</div>
<div>Since the openssl fips is cross compiled the fips configuration will n=
ot be proper .</div>
<div>The fips configuration does required an <a href=3D"https://docs.openss=
l.org/3.0/man1/openssl-fipsinstall/#examples" target=3D"_blank" rel=3D"noop=
ener">https://docs.openssl.org/3.0/man1/openssl-fipsinstall/#examples</a></=
div>
<div>&nbsp;</div>
<div>Thanks ,</div>
<div>Ashish</div>

--a3XIOLAKFvSqVMDzWyCD--

