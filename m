Return-Path: <robert.joslyn@redrectangle.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE4F8C433F5
	for <webhook@archiver.kernel.org>; Thu, 20 Jan 2022 05:17:47 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web09.8063.1642655866618198483
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 21:17:46 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: redrectangle.org,
 ip: 217.70.183.193, mailfrom: robert.joslyn@redrectangle.org)
Received: from smtpclient.apple (unknown [50.34.64.238])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by mail.gandi.net (Postfix) with ESMTPSA id B3ADD240004
	for <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 05:17:43 +0000 (UTC)
From: Robert Joslyn <robert.joslyn@redrectangle.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Packages Missing from Deploy
Message-Id: <3840B26E-4FC4-4534-A8C4-9054CCAF8E86@redrectangle.org>
Date: Wed, 19 Jan 2022 21:17:40 -0800
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3693.40.0.1.81)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jan 2022 05:17:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55926

I=E2=80=99m testing migrating one of my dunfell builds to master in =
anticipation of the upcoming LTS, and there is a difference in how =
packages are populated into deploy that is causing me problems. My =
builds use a package feed, and the way I=E2=80=99ve been generating my =
package feed is to create a packagegroup recipe that RDEPENDS on all of =
the top level packages I want pulled into my feed. Then I=E2=80=99ll =
generate the packagefeed index and copy the content of tmp/deploy/ipk to =
the web server.

On dunfell, if I build a recipe like my packagegroup, the packages from =
that recipe and all recursive dependencies are populated into =
tmp/deploy/ipk. On master, only the packages from the specific recipe I =
built are populated into tmp/deploy/ipk, but none of the RDEPENDS. I=E2=80=
=99m using ipk, but the same behavior holds for rpm and deb.

This can easily be seen with a simple poky checkout and build, for =
example on dunfell:
$ bitbake curl
$ find tmp/deploy/ipk -type f | wc -l
4691

And on master:
$ bitbake curl
$ find tmp/deploy/ipk -type f | wc -l
10

In this example of building curl, the only packages I get are from curl =
and ca-certificates.=20

Is this expected behavior? Is there something I need to configure to get =
the same package generation as dunfell?

Thanks,
Robert=

