Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0521C433EF
	for <webhook@archiver.kernel.org>; Tue, 26 Apr 2022 16:04:40 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web12.8743.1650989077257316233
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Apr 2022 09:04:37 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.194,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 1492F40007;
	Tue, 26 Apr 2022 16:04:34 +0000 (UTC)
Date: Tue, 26 Apr 2022 18:04:30 +0200
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org,
 Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>
Subject: =?US-ASCII?Q?Re=3A_=5Byocto=5D_=5BPATCH_yocto-autobuilder-helper_v1?=
 =?US-ASCII?Q?0=5D_Add_a_banner_on_the_old_documentation_docs=2E?=
In-Reply-To: <21572.1650988178931047188@lists.yoctoproject.org>
References: <aded5e37-24e4-ddc7-6242-d4b38a6187df@theobroma-systems.com>
 <21572.1650988178931047188@lists.yoctoproject.org>
Message-ID: <8936D151-E306-4F9A-81CE-6ECF547CAC93@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Apr 2022 16:04:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56900

Hi Amahnui,

On April 26, 2022 5:49:38 PM GMT+02:00, Abongwa Amahnui Bonalais <abongwab=
onalais@gmail=2Ecom> wrote:
>Hi Quentin,
>Thanks for the review=2E
>
>I tried using regex to look for all the folders prefixed by 3=2E1=2E but =
it is currently not working, But I am still working on a fix for it=2E

No need for a regex, just check the root string starts with "=2E/3=2E1", t=
hat's enough=2E

>I noticed that the banner was already on the dunfell excluding 3=2E1=2E15=
, so should I hardcode from 3=2E1 to 3=2E1=2E14 while looking for way to ma=
ke the regex method work?

Your script will only run on the old docs which stops at 3=2E1=2E4=2E Ther=
e are no other directories=2E You can check by yourself in the docbook tarb=
all and/or by exiting the run-docs-build script right after calling your sc=
ript=2E Therefore, there's really nothing fancy in handling 3=2E1 except ha=
ving a different message than for <3=2E1 releases=2E

Cheers,
Quentin

