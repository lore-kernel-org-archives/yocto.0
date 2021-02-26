Received: from posti.hhpartners.fi (posti.hhpartners.fi [85.194.237.131])
 by mx.groups.io with SMTP id smtpd.web10.9944.1614349143054608501
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Feb 2021 06:19:03 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hhpartners.fi, ip: 85.194.237.131, mailfrom: mikko.murto@hhpartners.fi)
Received: from MAIL.hhpartners.local (172.25.43.54) by MAIL.hhpartners.local
 (172.25.43.54) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Fri, 26 Feb
 2021 16:18:59 +0200
Received: from MAIL.hhpartners.local ([fe80::fdc9:661:735b:235f]) by
 MAIL.hhpartners.local ([fe80::fdc9:661:735b:235f%9]) with mapi id
 15.01.1913.010; Fri, 26 Feb 2021 16:18:59 +0200
From: mikko.murto@hhpartners.fi
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Package names in IMAGE_MANIFEST and PACKAGES
Thread-Topic: Package names in IMAGE_MANIFEST and PACKAGES
Thread-Index: AdcMSTQmr6+AtqswQG6gpiPYqqc34g==
Date: Fri, 26 Feb 2021 14:18:59 +0000
Message-ID: <6de2fa72e60448a9980a3ff820f225bf@hhpartners.fi>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.43.128]
MIME-Version: 1.0
Content-Language: fi-FI
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm developing a meta layer to save details about an image created by Yocto=
 to an SPDX document (https://github.com/doubleopen-project/meta-doubleopen=
).

I've encountered two issues regarding package names in IMAGE_MANIFEST and P=
ACKAGES variables, https://github.com/doubleopen-project/meta-doubleopen/is=
sues/2 and https://github.com/doubleopen-project/meta-doubleopen/issues/3.

The crux of the matter is that I need to find packages created by recipes a=
nd to link the packages listed in image's manifest files to these packages.=
=20

First, the PACKAGES variable of all recipes doesn't seem to include all pac=
kages created. For example util-linux's PACKAGES doesn't include util-linux=
-sulogin, but util-linux-sulogin may be included in an image's manifest and=
 it has a directory in the packages-split directory of util-linux. What wou=
ld be the correct way to get information about all packages?

Second, the package names in the image manifest may differ from those in th=
e PACKAGES variable or in packages-split directory. As an example, a manife=
st file may include libkmod2, but recipe for kmod creates package named lib=
kmod. How to make the link from libkmod2 to libkmod?

Best regards,

Mikko Murto
Associate

HH Partners, Attorneys-at-law Ltd
Etel=E4esplanadi 22 a, 00130 Helsinki, Finland
P.O. Box 232, 00101 Helsinki, Finland
Tel: +358 9 177 613, Fax: +358 9 653=A0873
mikko.murto@hhpartners.fi=20
www.hhpartners.fi

HH Partners shines in international rankings. See details at hhpartners.fi.

Privileged and confidential information may be contained in this message. I=
f you are not the addressee indicated in this message (or responsible for t=
he delivery of the message to such person), you may not copy or deliver thi=
s message to anyone. In such case, kindly notify us by reply e-mail and del=
ete this message immediately. Thank you.


