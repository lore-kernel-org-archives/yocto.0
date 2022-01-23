Return-Path: <robert.joslyn@redrectangle.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCAD6C433EF
	for <webhook@archiver.kernel.org>; Sun, 23 Jan 2022 15:01:25 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web12.10278.1642950084249363897
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Jan 2022 07:01:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: redrectangle.org,
 ip: 217.70.183.194, mailfrom: robert.joslyn@redrectangle.org)
Received: from smtpclient.apple (unknown [50.34.64.238])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by mail.gandi.net (Postfix) with ESMTPSA id 6F54E40005
	for <yocto@lists.yoctoproject.org>; Sun, 23 Jan 2022 15:01:21 +0000 (UTC)
From: Robert Joslyn <robert.joslyn@redrectangle.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: [yocto] Packages Missing from Deploy
Date: Sun, 23 Jan 2022 07:01:18 -0800
References: <16CBE2CEE67BCA47.10162@lists.yoctoproject.org>
To: yocto@lists.yoctoproject.org
In-Reply-To: <16CBE2CEE67BCA47.10162@lists.yoctoproject.org>
Message-Id: <08247306-3164-4A72-98AB-F06734BF8809@redrectangle.org>
X-Mailer: Apple Mail (2.3693.40.0.1.81)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 23 Jan 2022 15:01:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55949


> On Jan 19, 2022, at 9:17 PM, Robert Joslyn =
<robert.joslyn@redrectangle.org> wrote:
>=20
> I=E2=80=99m testing migrating one of my dunfell builds to master in =
anticipation of the upcoming LTS, and there is a difference in how =
packages are populated into deploy that is causing me problems. My =
builds use a package feed, and the way I=E2=80=99ve been generating my =
package feed is to create a packagegroup recipe that RDEPENDS on all of =
the top level packages I want pulled into my feed. Then I=E2=80=99ll =
generate the packagefeed index and copy the content of tmp/deploy/ipk to =
the web server.
>=20
> On dunfell, if I build a recipe like my packagegroup, the packages =
from that recipe and all recursive dependencies are populated into =
tmp/deploy/ipk. On master, only the packages from the specific recipe I =
built are populated into tmp/deploy/ipk, but none of the RDEPENDS. I=E2=80=
=99m using ipk, but the same behavior holds for rpm and deb.
>=20
> This can easily be seen with a simple poky checkout and build, for =
example on dunfell:
> $ bitbake curl
> $ find tmp/deploy/ipk -type f | wc -l
> 4691
>=20
> And on master:
> $ bitbake curl
> $ find tmp/deploy/ipk -type f | wc -l
> 10
>=20
> In this example of building curl, the only packages I get are from =
curl and ca-certificates.=20
>=20
> Is this expected behavior? Is there something I need to configure to =
get the same package generation as dunfell?

After bisecting, I found that yes, this is now expected behavior:=20
=
https://git.yoctoproject.org/poky/commit/?id=3D568f62214bca3ac6d35eef8d9f4=
562596fb4c9ab

Basically, that commit removes the recursive dependency on the packaging =
tasks. Using =E2=80=98bitbake --runall build ...=E2=80=99 as suggested =
in the commit does provide the behavior I want. For me, this is only an =
issue when building my package feeds. It seems that the documentation =
for the package feeds should be updated to reflect this change. Unless I =
missed something, if you follow the docs you end up with a broken feed =
that is missing a lot of needed packages.

I can probably write something up if needed. I think just a paragraph =
explaining it in this section somewhere:
=
https://docs.yoctoproject.org/singleindex.html#using-runtime-package-manag=
ement

Thanks,
Robert=

