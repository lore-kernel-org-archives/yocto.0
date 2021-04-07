Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.3773.1617780677344847230
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 00:31:17 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.199, mailfrom: foss@0leil.net)
X-Originating-IP: 92.184.123.131
Received: from [127.0.0.1] (pop.92-184-123-131.mobile.abo.orange.fr [92.184.123.131])
	(Authenticated sender: foss@0leil.net)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 089DEFF808;
	Wed,  7 Apr 2021 07:31:14 +0000 (UTC)
Date: Wed, 07 Apr 2021 07:31:11 +0000
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org,
 Michael Halstead <mhalstead@linuxfoundation.org>
CC: nicolas.dechesne@linaro.org
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] run-docs-build: build from tags dynamically instead of static list
In-Reply-To: <20210406225819.37683-1-mhalstead@linuxfoundation.org>
References: <20210406225819.37683-1-mhalstead@linuxfoundation.org>
Message-ID: <6B8E39A6-3CA5-41BC-BB1B-EA87B379F104@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Michael,

On April 6, 2021 10:58:20 PM UTC, Michael Halstead <mhalstead@linuxfoundat=
ion=2Eorg> wrote:
>All new releases are Sphinx ready so we exclude old tags and build for
>all the rest=2E
>
>Signed-off-by: Michael Halstead <mhalstead@linuxfoundation=2Eorg>
>---
> scripts/run-docs-build | 14 ++++++++++----
> 1 file changed, 10 insertions(+), 4 deletions(-)
>
>diff --git a/scripts/run-docs-build b/scripts/run-docs-build
>index 910f03d=2E=2E13df34a 100755
>--- a/scripts/run-docs-build
>+++ b/scripts/run-docs-build
>@@ -7,6 +7,7 @@ ypdocs=3D$2/documentation/
> bbdocs=3D$3/doc/
> docs_buildtools=3D/srv/autobuilder/autobuilder=2Eyoctoproject=2Eorg/pub/=
buildtools/x86_64-buildtools-docs-nativesdk-standalone-3=2E2+snapshot-20201=
105=2Esh
> outputdir=3D$builddir/output
>+excluded_tags=3D"yocto-3=2E1=2E4 yocto-3=2E1=2E3 yocto-3=2E1=2E2 yocto-3=
=2E1=2E1 yocto-3=2E1 yocto-3=2E0=2E1 yocto-3=2E0 yocto-2=2E6=2E4 yocto-2=2E=
6=2E3 yocto-2=2E7=2E1 yocto-2=2E6=2E2 yocto-2=2E7 yocto-2=2E6=2E1 yocto-2=
=2E6 yocto-2=2E5=2E2 yocto-2=2E5=2E1 yocto-2=2E4=2E4 yocto-2=2E4=2E3 yocto-=
2=2E5 yocto-2=2E3=2E4 yocto-1=2E0=2E2 yocto-1=2E1=2E2 yocto-1=2E2=2E2 yocto=
-1=2E2=2E1 yocto-1=2E3 yocto-1=2E3=2E1 yocto-1=2E3=2E2 yocto-1=2E4=2E3 yoct=
o-1=2E4=2E2 yocto-1=2E4=2E1 yocto-1=2E4 yocto-2=2E1=2E3 yocto-2=2E4=2E2 yoc=
to-2=2E1=2E1 yocto-2=2E1=2E2 yocto-2=2E0=2E3 yocto-1=2E8=2E2 yocto-2=2E2=2E=
3 yocto-2=2E4=2E1 yocto-2=2E3=2E3 yocto-2=2E3=2E2 yocto-2=2E4 yocto-2=2E2=
=2E2 yocto-2=2E3=2E1 yocto-2=2E3 yocto-2=2E2=2E1 yocto-2=2E0=2E2 yocto-2=2E=
2 yocto-2=2E1 yocto-2=2E0=2E1 yocto-2=2E0 yocto-1=2E8=2E1 yocto-1=2E7=2E3 y=
octo-1=2E6=2E3 yocto-1=2E7=2E2 yocto-1=2E8 yocto-1=2E5=2E1"
>=20
>=20
> cd $builddir
>@@ -77,13 +78,18 @@ for branch in dunfell gatesgarth hardknott; do
> done
>=20
> # Yocto Project releases/tags
>-for tag in 3=2E1=2E5 3=2E1=2E6 3=2E2 3=2E2=2E1 3=2E2=2E2 3=2E2=2E3; do
>+cd $ypdocs
>+for tag in $(git tag -l  |grep 'yocto-' |sort); do

IIUC the man page,
git tag --list 'yocto-*' | sort
would be doing the same thing as the one command with grep above=2E
Discovered it recently so just wanted to share=2E

I guess this is something we can also do for bitbake Sphinx documentation?

Removed the git context inadvertently but, is =3D~ some bash built-in? I d=
on't know what's the shebang on top but maybe we want to force it to bash s=
ince I'm not sure it's POSIX "compliant" anymore?

Reviewed-by: Quentin Schulz <foss@0leil=2Enet>

Thanks,
Quentin
