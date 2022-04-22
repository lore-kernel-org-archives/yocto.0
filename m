Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D5DC3A59E
	for <webhook@archiver.kernel.org>; Fri, 22 Apr 2022 16:52:00 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web12.6261.1650616889291888059
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Apr 2022 01:41:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.195,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 2AF0D60011;
	Fri, 22 Apr 2022 08:41:26 +0000 (UTC)
Date: Fri, 22 Apr 2022 10:41:25 +0200
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org,
 Abongwa Amahnui Bonalais <abongwabonalais@gmail.com>
CC: Abongwa Bonalais Amahnui <abongwabonalais@gmail.com>
Subject: =?US-ASCII?Q?Re=3A_=5Byocto=5D_=5BPATCH_yocto-autobuilder-helper=5D?=
 =?US-ASCII?Q?_Sourced_warning_banner_scripts_to_=24outputdir?=
In-Reply-To: <20220421210234.26707-1-abongwabonalais@gmail.com>
References: <20220421210234.26707-1-abongwabonalais@gmail.com>
Message-ID: <C4B47118-8021-4072-B20C-962655F4E225@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Apr 2022 16:52:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56843

Hi Amahnui,

On April 21, 2022 11:02:35 PM GMT+02:00, Abongwa Amahnui Bonalais <abongwa=
bonalais@gmail=2Ecom> wrote:
>Signed-off-by: Abongwa Bonalais Amahnui <abongwabonalais@gmail=2Ecom>
>---
> run-docs-build | 6 ++++++
> 1 file changed, 6 insertions(+)
>
>diff --git a/run-docs-build b/run-docs-build
>index db790dc=2E=2Eb6744ee 100755
>--- a/run-docs-build
>+++ b/run-docs-build

This will not apply because run-docs-build is in the scripts directory ins=
ide yocto-autobuilder-helper git repo=2E I'm wondering how you got this pat=
ch=2E Do you mind explaining how you created the patch so we can help you f=
ix its creation?

>@@ -37,6 +37,12 @@ cd $outputdir
> echo Extracing old content from archive
> tar -xJf $docbookarchive
>=20
>+cp '/home/abongwa/Documents/auto-builder/stylescript=2Epy' $outputdir
>+cp '/home/abongwa/Documents/auto-builder/htmlscript=2Epy' $outputdir

We do not (fortunately!) have access to your home directory on your PC so =
this cannot be merged=2E We need a patch which adds those two scripts in yo=
cto-autobuilder-helper git repo and then use them=2E You already sent anoth=
er patch for the scripts, so they just need to be sent together in one patc=
h=2E git commit --amend and/or git rebase -i will help you merging two comm=
its=2E

Also, once the script is inside yocto-autobuilder-helper git repo, we don'=
t need to copy it anymore :)

>+python3 $outputdir/htmlscript=2Epy
>+python3 $outputdir/stylescript=2Epy
>+

Since those scripts have a Python shebang (#!/usr/bin/env python3) you don=
t need to call the scripts with python3 in front because the shell will do =
it automatically for you=2E

Also, you should use $scriptdir/htmlscript=2Epy once it's put in the corre=
ct directory since we already are in outputdir at those lines in the script=
 and the files aren't supposed to be in outputdir (outputdir is the directo=
ry where all files that needs to be served by docs=2Eyoctoproject=2Eorg are=
, and we don't want this script to be there)=2E

Cheers,
Quentin

>+
> cd $bbdocs
> mkdir $outputdir/bitbake
>=20

