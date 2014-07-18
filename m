Return-Path: <meenakumari.s@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44E83E006EF; Fri, 18 Jul 2014 03:00:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from GWS06.hcl.com (gws06.hcl.com [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58665E0056A
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 03:00:37 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,684,1400005800"; d="scan'208";a="78026243"
Received: from unknown (HELO NDA-CORP-HT02.CORP.HCL.IN) ([10.248.64.34])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 18 Jul 2014 15:29:11 +0530
Received: from NDA-HCLT-CSHT04.HCLT.CORP.HCL.IN (10.98.132.29) by
	NDA-CORP-HT02.CORP.HCL.IN (10.248.64.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 18 Jul 2014 15:30:34 +0530
Received: from NDA-HCLT-MBS05.HCLT.CORP.HCL.IN ([10.98.132.20]) by
	NDA-HCLT-CSHT04.HCLT.CORP.HCL.IN ([10.98.132.29]) with mapi id
	14.03.0123.003; Fri, 18 Jul 2014 15:30:34 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "ross.burton@intel.com" <ross.burton@intel.com>
Thread-Topic: [yocto] Adding prebuilt binaries/libraries to /usr/bin
	or/usr/lib on rootfs
Thread-Index: AQHPokzXHSoSV0WYtkK3tAjwRqM2vpulhEpAgAASbfI=
Date: Fri, 18 Jul 2014 10:00:33 +0000
Message-ID: <E4938C0D959B3445943720B88F0721341564DEC5@NDA-HCLT-MBS05.hclt.corp.hcl.in>
References: <E4938C0D959B3445943720B88F0721341564DE52@NDA-HCLT-MBS05.hclt.corp.hcl.in>,
	<0f67aa20f48a45739d0815dc0b6c1d5b@EPBYMINSA0001.epam.com>
In-Reply-To: <0f67aa20f48a45739d0815dc0b6c1d5b@EPBYMINSA0001.epam.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Subject: Re: Adding prebuilt binaries/libraries to /usr/bin or/usr/lib on rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Jul 2014 10:00:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for your response.=0A=
=0A=
But if I have few different packages like "usb" "BT" "Qt" and only these pa=
ckages bin and libraries if I want to add to yocto rootfs ?=0A=
=0A=
Regards=0A=
Meena=0A=
________________________________________=0A=
From: Vladimir Redzhepov [Vladimir_Redzhepov@epam.com]=0A=
Sent: Friday, July 18, 2014 2:28 PM=0A=
To: Meenakumari Shedole; yocto@yoctoproject.org; ross.burton@intel.com=0A=
Subject: RE: [yocto] Adding prebuilt binaries/libraries to /usr/bin or/usr/=
lib on rootfs=0A=
=0A=
Hi=0A=
=0A=
You should look closely at meta-oracle-java layer if want to add some binar=
ies to the target rootfs. On the other hand if you want to use binaries wit=
hin the build process they should be put down in the places poky could find=
 them.=0A=
=0A=
There's an example how to use a binary apache-maven within build process=0A=
=0A=
DESCRIPTION =3D "Maven is a software project management and comprehension t=
ool. Based on the concept \=0A=
of a Project Object Model (POM), Maven can manage a project's build, report=
ing and documentation \=0A=
from a central piece of information."=0A=
HOMEPAGE =3D "http://maven.apache.org"=0A=
SECTION =3D "devel"=0A=
LICENSE =3D "Apache-2.0"=0A=
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D9af13b2d31a47f71518aa5dde47fc025=
"=0A=
=0A=
SRC_URI =3D "http://ftp.byfly.by/pub/apache.org/maven/maven-3/${PV}/binarie=
s/${BP}-bin.zip"=0A=
=0A=
SRC_URI[md5sum] =3D "5d86506f17e5ff0b0c83c648f4093abb"=0A=
SRC_URI[sha256sum] =3D "df3338233b34f6d65ec3901fc0039f72ba59ff1380d09eebc5b=
58916b5fea2a3"=0A=
=0A=
do_configure() {=0A=
    sed -i '49i<localRepository>${STAGING_DATADIR_NATIVE}/maven-repository<=
/localRepository>' ${S}/conf/settings.xml=0A=
}=0A=
=0A=
do_install() {=0A=
    install -d -m 0755 ${D}${bindir}/${PN}=0A=
    cp -ar * ${D}${bindir}/${PN}=0A=
    ln -sf ${PN}/bin/mvn ${D}${bindir}/mvn=0A=
}=0A=
=0A=
BBCLASSEXTEND =3D "native"=0A=
=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Meenakumari Shedole=0A=
Sent: Friday, July 18, 2014 8:55 AM=0A=
To: yocto@yoctoproject.org; ross.burton@intel.com=0A=
Subject: [yocto] Adding prebuilt binaries/libraries to /usr/bin or/usr/lib =
on rootfs=0A=
=0A=
Hi all.=0A=
=0A=
I have few prebuilt binaries and libraries, and I want to add them to the y=
octo build rootfs at the=0A=
build itself.=0A=
So Can any one please tell me the steps to add recipes or suggest me any ot=
her method for this.=0A=
=0A=
Thnaks in Advance.=0A=
=0A=
Regards=0A=
Meena=0A=
=0A=
=0A=
::DISCLAIMER::=0A=
---------------------------------------------------------------------------=
-------------------------------------------------------------------------=
=0A=
=0A=
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.=0A=
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,=0A=
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents=0A=
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.=0A=
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the=0A=
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,=0A=
distribution and / or publication of this message without the prior written=
 consent of authorized representative of=0A=
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.=0A=
Before opening any email and/or attachments, please check them for viruses =
and other defects.=0A=
=0A=
---------------------------------------------------------------------------=
-------------------------------------------------------------------------=
=0A=
=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

