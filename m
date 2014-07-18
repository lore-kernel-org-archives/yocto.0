Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1E09E006EF; Fri, 18 Jul 2014 02:00:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from EVBYMINSA0102.epam.com (evbyminsa0102.epam.com [217.21.63.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12272E0056A
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 02:00:01 -0700 (PDT)
Received: from EPBYMINSA0001.epam.com (10.6.110.2) by EPBYMINSA0032.epam.com
	(10.6.110.32) with Microsoft SMTP Server (TLS) id 15.0.913.22;
	Fri, 18 Jul 2014 11:58:28 +0300
Received: from EPBYMINSA0001.epam.com ([::1]) by EPBYMINSA0001.epam.com
	([::1]) with mapi id 15.00.0913.011; Fri, 18 Jul 2014 11:58:28 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "ross.burton@intel.com" <ross.burton@intel.com>
Thread-Topic: [yocto] Adding prebuilt binaries/libraries to /usr/bin
	or/usr/lib on rootfs
Thread-Index: AQHPokzXHSoSV0WYtkK3tAjwRqM2vpulhEpA
Date: Fri, 18 Jul 2014 08:58:28 +0000
Message-ID: <0f67aa20f48a45739d0815dc0b6c1d5b@EPBYMINSA0001.epam.com>
References: <E4938C0D959B3445943720B88F0721341564DE52@NDA-HCLT-MBS05.hclt.corp.hcl.in>
In-Reply-To: <E4938C0D959B3445943720B88F0721341564DE52@NDA-HCLT-MBS05.hclt.corp.hcl.in>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.6.137.107]
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
X-List-Received-Date: Fri, 18 Jul 2014 09:00:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

You should look closely at meta-oracle-java layer if want to add some binar=
ies to the target rootfs. On the other hand if you want to use binaries wit=
hin the build process they should be put down in the places poky could find=
 them.

There's an example how to use a binary apache-maven within build process

DESCRIPTION =3D "Maven is a software project management and comprehension t=
ool. Based on the concept \
of a Project Object Model (POM), Maven can manage a project's build, report=
ing and documentation \
from a central piece of information."
HOMEPAGE =3D "http://maven.apache.org"
SECTION =3D "devel"
LICENSE =3D "Apache-2.0"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D9af13b2d31a47f71518aa5dde47fc025=
"

SRC_URI =3D "http://ftp.byfly.by/pub/apache.org/maven/maven-3/${PV}/binarie=
s/${BP}-bin.zip"

SRC_URI[md5sum] =3D "5d86506f17e5ff0b0c83c648f4093abb"
SRC_URI[sha256sum] =3D "df3338233b34f6d65ec3901fc0039f72ba59ff1380d09eebc5b=
58916b5fea2a3"

do_configure() {
    sed -i '49i<localRepository>${STAGING_DATADIR_NATIVE}/maven-repository<=
/localRepository>' ${S}/conf/settings.xml
}

do_install() {
    install -d -m 0755 ${D}${bindir}/${PN}
    cp -ar * ${D}${bindir}/${PN}
    ln -sf ${PN}/bin/mvn ${D}${bindir}/mvn
}

BBCLASSEXTEND =3D "native"


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Meenakumari Shedole
Sent: Friday, July 18, 2014 8:55 AM
To: yocto@yoctoproject.org; ross.burton@intel.com
Subject: [yocto] Adding prebuilt binaries/libraries to /usr/bin or/usr/lib =
on rootfs

Hi all.

I have few prebuilt binaries and libraries, and I want to add them to the y=
octo build rootfs at the
build itself.=20
So Can any one please tell me the steps to add recipes or suggest me any ot=
her method for this.

Thnaks in Advance.

Regards
Meena


::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------

The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.

---------------------------------------------------------------------------=
-------------------------------------------------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

