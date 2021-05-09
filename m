Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web12.21735.1620581990649399492
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 May 2021 10:39:51 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.200, mailfrom: foss@0leil.net)
X-Originating-IP: 80.110.100.75
Received: from [127.0.0.1] (80-110-100-75.cgn.dynamic.surfer.at [80.110.100.75])
	(Authenticated sender: foss@0leil.net)
	by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 9317720009;
	Sun,  9 May 2021 17:39:48 +0000 (UTC)
Date: Sun, 09 May 2021 17:39:45 +0000
From: "Quentin Schulz" <foss@0leil.net>
To: yocto@lists.yoctoproject.org, Armin Kuster <akuster808@gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 4/6] suricata: 4.1.x add UPSTREAM_CHECK_REGEX
In-Reply-To: <20210509154740.1628375-4-akuster808@gmail.com>
References: <20210509154740.1628375-1-akuster808@gmail.com> <20210509154740.1628375-4-akuster808@gmail.com>
Message-ID: <C1139449-2AAB-47FD-A18F-162FA882B289@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Armin,

On May 9, 2021 3:47:38 PM UTC, Armin Kuster <akuster808@gmail=2Ecom> wrote=
:
>Signed-off-by: Armin Kuster <akuster808@gmail=2Ecom>
>---
> recipes-ids/suricata/suricata_4=2E1=2E10=2Ebb | 2 ++
> 1 file changed, 2 insertions(+)
>
>diff --git a/recipes-ids/suricata/suricata_4=2E1=2E10=2Ebb b/recipes-ids/=
suricata/suricata_4=2E1=2E10=2Ebb
>index 3f7beaa=2E=2Ebf08843 100644
>--- a/recipes-ids/suricata/suricata_4=2E1=2E10=2Ebb
>+++ b/recipes-ids/suricata/suricata_4=2E1=2E10=2Ebb
>@@ -12,6 +12,8 @@ SRC_URI +=3D " \
>     file://run-ptest \
>     "
>=20
>+UPSTREAM_CHECK_URI =3D "www=2Eopeninfosecfoundation=2Eorg/download"
>+

There is a mismatch between what you're doing and what the title of this c=
ommit is, I guess the commit title is to be updated?

Cheers,
Quentin
