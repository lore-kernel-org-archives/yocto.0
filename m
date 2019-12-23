Received: from sinikuusama2.dnainternet.net (sinikuusama2.dnainternet.net [83.102.40.152])
 by mx.groups.io with SMTP id smtpd.web10.445.1577125094216572937
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Dec 2019 10:18:15 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: iki.fi, ip: 83.102.40.152, mailfrom: anders.montonen@iki.fi)
Received: from localhost (localhost [127.0.0.1])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id 1CCB3F077;
	Mon, 23 Dec 2019 20:18:12 +0200 (EET)
X-Virus-Scanned: DNA Internet at dnainternet.net
X-Spam-Flag: NO
X-Spam-Score: 0.653
X-Spam-Level: 
X-Spam-Status: No, score=0.653 tagged_above=-9999 required=6
	tests=[SPF_HELO_NONE=0.001, SPF_NEUTRAL=0.652] autolearn=disabled
Received: from sinikuusama2.dnainternet.net ([83.102.40.152])
	by localhost (sinikuusama2.dnainternet.net [127.0.0.1]) (DNA Internet, port 10041)
	with ESMTP id KYN5xqmNI40d; Mon, 23 Dec 2019 20:18:11 +0200 (EET)
Received: from oliivipuu2.dnainternet.net (oliivipuu2.dnainternet.net [83.102.40.53])
	by sinikuusama2.dnainternet.net (Postfix) with ESMTP id BE898D2A6;
	Mon, 23 Dec 2019 20:18:11 +0200 (EET)
Received: from [192.168.1.58] (178-75-137-78.bb.dnainternet.fi [178.75.137.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by oliivipuu2.dnainternet.net (Postfix) with ESMTPS id 48ED69E;
	Mon, 23 Dec 2019 20:18:09 +0200 (EET)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [yocto] [meta-security][PATCH] meta-integrity/../systemd: fix pollution issue
From: "Anders Montonen" <Anders.Montonen@iki.fi>
In-Reply-To: <20191223171834.30244-1-akuster808@gmail.com>
Date: Mon, 23 Dec 2019 20:18:08 +0200
Cc: yocto@lists.yoctoproject.org
Message-Id: <DE34DAAB-1CB4-48CD-B51A-F6510C1CA115@iki.fi>
References: <20191223171834.30244-1-akuster808@gmail.com>
To: Armpit <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3445.104.11)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

These look like typos:

On 23 Dec 2019, at 19:18, Armpit <akuster808@gmail.com> wrote:
>=20
> only include changes of systemd is enabled.

of -> if

>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
> meta-integrity/recipes-core/systemd/systemd_%.bbappend | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/meta-integrity/recipes-core/systemd/systemd_%.bbappend =
b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
> index 3b45541..f33e563 100644
> --- a/meta-integrity/recipes-core/systemd/systemd_%.bbappend
> +++ b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
> @@ -1,11 +1,11 @@
> -FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
> +FILESEXTRAPATHS_prepend_ima :=3D "${THISDIR}/files:"
>=20
> -SRC_URI +=3D " \
> +SRC_URI_iam +=3D =E2=80=9C \

iam -> ima

>     file://machine-id-commit-sync.conf \
>     file://random-seed-sync.conf \
> "
>=20
> -do_install_append () {
> +do_install_append_iam () {

iam -> ima

>     for i in machine-id-commit random-seed; do
>         install -d ${D}/${systemd_system_unitdir}/systemd-$i.service.d
>         install -m 0644 ${WORKDIR}/$i-sync.conf =
${D}/${systemd_system_unitdir}/systemd-$i.service.d
> --=20
> 2.17.1

Regards,
Anders=
