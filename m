Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB72DC2BA4C
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 08:11:49 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.10158.1643184708591771909
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 00:11:49 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.199,
 mailfrom: foss@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2F1F3FF808;
	Wed, 26 Jan 2022 08:11:45 +0000 (UTC)
Date: Wed, 26 Jan 2022 09:11:42 +0100
From: Quentin Schulz <foss@0leil.net>
To: yocto@lists.yoctoproject.org,
 Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: 
 =?US-ASCII?Q?Re=3A_=5Byocto=5D_=5BPATCH_yocto-autobuilder-helper=5D_run-d?=
 =?US-ASCII?Q?ocs-build=3A_fix_checkout_of_releases=2Erst_from_master?=
In-Reply-To: <20220125164546.846218-1-michael.opdenacker@bootlin.com>
References: <20220125164546.846218-1-michael.opdenacker@bootlin.com>
Message-ID: <1C000104-4B0D-49A8-B837-61D3A67ABD3D@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 08:11:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55977

Hi Michael,

On January 25, 2022 5:45:46 PM GMT+01:00, Michael Opdenacker <michael=2Eop=
denacker@bootlin=2Ecom> wrote:
>A wrong path was given given the working directory=2E
>
>Also revert the changes with "git reset --hard" to
>have a clean state before further branch switches=2E
>

One change at a time please =E2=98=BA=EF=B8=8F

>Signed-off-by: Michael Opdenacker <michael=2Eopdenacker@bootlin=2Ecom>
>---
> scripts/run-docs-build | 9 ++++++---
> 1 file changed, 6 insertions(+), 3 deletions(-)
>
>diff --git a/scripts/run-docs-build b/scripts/run-docs-build
>index 5d6d24a=2E=2Ec93b3e6 100755
>--- a/scripts/run-docs-build
>+++ b/scripts/run-docs-build
>@@ -43,11 +43,12 @@ cp -r =2E/_build/final/* $outputdir/bitbake/next
> # see the latest releases=2E
> for branch in 1=2E46 1=2E48 1=2E50 1=2E52; do
>     git checkout $branch
>-    git checkout master doc/releases=2Erst
>+    git checkout master releases=2Erst
>     make clean
>     make publish
>     mkdir $outputdir/bitbake/$branch
>     cp -r =2E/_build/final/* $outputdir/bitbake/$branch
>+    git reset --hard

This should be done right after the git checkout=2E It's better to ensure =
what you build is clean that try to ensure the next oneto build has a clean=
 env=2E Especially since checkouts can dirty the git repo I think (I've had=
 this issue multiple times when switching between kernel branches far enoug=
h from one another)=2E

Also git reset --hard is not enough=2E I use git clean -ffdx instead usual=
ly=2E Didn't have a problem with this one for a while now=2E

> done
>=20
> # only sync bitbake folder for now=2E We need bitbake to be published fi=
rst
>@@ -79,11 +80,12 @@ cp -r =2E/_build/final/* $outputdir/next
> for branch in dunfell gatesgarth hardknott honister; do
>     cd $ypdocs
>     git checkout $branch
>-    git checkout master documentation/releases=2Erst
>+    git checkout master releases=2Erst
>     make clean
>     make publish
>     mkdir $outputdir/$branch
>     cp -r =2E/_build/final/* $outputdir/$branch
>+    git reset --hard

Ditto=2E

> done
>=20
> # Yocto Project releases/tags
>@@ -101,12 +103,13 @@ for tag in $(git tag --list 'yocto-*'); do
>         if [ "$tag" =3D "yocto-3=2E3" ] || [ "$tag" =3D "yocto-3=2E4" ];=
 then
>             git am "${scriptdir}/${tag}/0001-conf-update-for-release=2Ep=
atch"
>         fi
>-        git checkout master documentation/releases=2Erst
>+        git checkout master releases=2Erst
>         make clean
>         make publish
>         version=3D$(echo $tag | cut -c7-)
>         mkdir $outputdir/$version
>         cp -r =2E/_build/final/* $outputdir/$version
>+        git reset --hard

Ditto=2E

Cheers,
Quentin

>     fi
> done
>=20

