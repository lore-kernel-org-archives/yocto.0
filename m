Return-Path: <Vladimir_Redzhepov@epam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71D79E006EF; Fri, 18 Jul 2014 03:35:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from EVBYMINSA0101.epam.com (evbyminsa0101.epam.com [217.21.63.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F41FE0056A
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 03:35:17 -0700 (PDT)
Received: from EPBYMINSA0001.epam.com (10.6.110.2) by EPBYMINSA0001.epam.com
	(10.6.110.2) with Microsoft SMTP Server (TLS) id 15.0.913.22;
	Fri, 18 Jul 2014 13:35:01 +0300
Received: from EPBYMINSA0001.epam.com ([::1]) by EPBYMINSA0001.epam.com
	([::1]) with mapi id 15.00.0913.011; Fri, 18 Jul 2014 13:35:01 +0300
From: Vladimir Redzhepov <Vladimir_Redzhepov@epam.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "ross.burton@intel.com" <ross.burton@intel.com>
Thread-Topic: [yocto] Adding prebuilt binaries/libraries to /usr/bin
	or/usr/lib on rootfs
Thread-Index: AQHPokzXHSoSV0WYtkK3tAjwRqM2vpulhEpAgAASbfKAAAq7gA==
Date: Fri, 18 Jul 2014 10:35:00 +0000
Message-ID: <8fb545b8e4fb4b7790d7fb5036bafd74@EPBYMINSA0001.epam.com>
References: <E4938C0D959B3445943720B88F0721341564DE52@NDA-HCLT-MBS05.hclt.corp.hcl.in>,
	<0f67aa20f48a45739d0815dc0b6c1d5b@EPBYMINSA0001.epam.com>
	<E4938C0D959B3445943720B88F0721341564DEC5@NDA-HCLT-MBS05.hclt.corp.hcl.in>
In-Reply-To: <E4938C0D959B3445943720B88F0721341564DEC5@NDA-HCLT-MBS05.hclt.corp.hcl.in>
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
X-List-Received-Date: Fri, 18 Jul 2014 10:35:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

There're some variables and methods that are responsible for rootfs content=
. The official documentation is a good place to start
Read carefully how to customize image here http://www.yoctoproject.org/docs=
/latest/dev-manual/dev-manual.html#usingpoky-extend-customimage

-----Original Message-----
From: Meenakumari Shedole [mailto:meenakumari.s@hcl.com]=20
Sent: Friday, July 18, 2014 1:01 PM
To: Vladimir Redzhepov; yocto@yoctoproject.org; ross.burton@intel.com
Subject: RE: [yocto] Adding prebuilt binaries/libraries to /usr/bin or/usr/=
lib on rootfs

Thanks for your response.

But if I have few different packages like "usb" "BT" "Qt" and only these pa=
ckages bin and libraries if I want to add to yocto rootfs ?

Regards
Meena
________________________________________
From: Vladimir Redzhepov [Vladimir_Redzhepov@epam.com]
Sent: Friday, July 18, 2014 2:28 PM
To: Meenakumari Shedole; yocto@yoctoproject.org; ross.burton@intel.com
Subject: RE: [yocto] Adding prebuilt binaries/libraries to /usr/bin or/usr/=
lib on rootfs

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
build itself.
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

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

