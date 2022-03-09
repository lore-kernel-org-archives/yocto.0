Return-Path: <robert.joslyn@redrectangle.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC3EC433EF
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 15:00:43 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.1099.1646838042126739140
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 07:00:42 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: redrectangle.org,
 ip: 217.70.183.201, mailfrom: robert.joslyn@redrectangle.org)
Received: from smtpclient.apple (unknown [50.34.64.238])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by mail.gandi.net (Postfix) with ESMTPSA id 9E8921BF20E;
	Wed,  9 Mar 2022 15:00:38 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: [yocto] Howto build packages for dependencies of an out of image
 recipe build.
From: Robert Joslyn <robert.joslyn@redrectangle.org>
In-Reply-To: <19841.1646830741667464206@lists.yoctoproject.org>
Date: Wed, 9 Mar 2022 07:00:36 -0800
Cc: yocto@lists.yoctoproject.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <B871AD6A-8497-42F5-8529-63F9E97F446D@redrectangle.org>
References: <3501.1646830187806955501@lists.yoctoproject.org>
 <19841.1646830741667464206@lists.yoctoproject.org>
To: Daniel Squires <dan@engineeredarts.co.uk>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 15:00:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56409


> On Mar 9, 2022, at 4:59 AM, Daniel Squires <dan@engineeredarts.co.uk> =
wrote:
>=20
> Just to be absolutely clear, here is the result of having run bitbake =
build-essential having first removed and thus started with a clean tmp =
dir.
>=20
> dan@melon:/home/dan/workspace_ssd/kas/build$ find tmp/deploy/deb/=20
> tmp/deploy/deb/=20
> tmp/deploy/deb/all=20
> tmp/deploy/deb/all/build-essential-ptest_1.0.0-r0.0_all.deb=20
> tmp/deploy/deb/all/build-essential-dev_1.0.0-r0.0_all.deb=20
> tmp/deploy/deb/all/build-essential_1.0.0-r0.0_all.deb=20
> tmp/deploy/deb/all/build-essential-dbg_1.0.0-r0.0_all.deb

This is now expected behavior. I discovered it a few months ago in my =
package feed builds:
https://lists.yoctoproject.org/g/yocto/topic/88553371#55926

Bitbake no longer does recursive packaging tasks since they are not =
always needed. To get all the recursive packages, you need to run =
bitbake --runall build build-essential


Robert=

