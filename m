Return-Path: <btv1==926561f462b==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9926EE00DE6; Thu, 28 Apr 2016 09:17:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.seescan.com (unknown [69.43.130.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C91AE00DE4
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 09:16:56 -0700 (PDT)
X-ASG-Debug-ID: 1461860214-0b39aa668920cc10001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id HmYWj6Tw8IHHtypw (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 28 Apr 2016 09:16:55 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Thu, 28 Apr 2016 09:16:54 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Thu, 28 Apr 2016 09:16:54 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "S.Jaritz@esa-grimma.de" <S.Jaritz@esa-grimma.de>, "Burton, Ross"
	<ross.burton@intel.com>
Thread-Topic: Antwort: Re: [yocto] how to configure the build packages of a
	makefile based libary
X-ASG-Orig-Subj: Re: Antwort: Re: [yocto] how to configure the build packages
	of a makefile based libary
Thread-Index: AQHRoUclgcPSoZnVVkWpU3Tj70VxR5+fyiEA//+22hGAAHwoAIAABnOA//+MOCs=
Date: Thu, 28 Apr 2016 16:16:53 +0000
Message-ID: <1461860205721.41032@seescan.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
	<1461857100201.50766@seescan.com>
	<CAJTo0LbRp5X9-Q7y4pyXQyBtgRs5A1LnaCYzBHCq0AmTqrXgnw@mail.gmail.com>,
	<OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
In-Reply-To: <OF93501CEC.24CA3D84-ONC1257FA3.00576A53-C1257FA3.0058CC3A@esa-grimma.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1461860215
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 5052
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0015 1.0000 -2.0109
X-Barracuda-Spam-Score: -2.01
X-Barracuda-Spam-Status: No,
	SCORE=-2.01 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_MISMATCH_TO
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.29133
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 16:17:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I don't know why that won't work.


Note, if you don't set the PREFIX, they will add /usr/local anyway. Perhaps=
 that's the problem.


Here's the relevant Makefile bits for the others to look at:


# Installation related variables and target
PREFIX?=3D/usr/local
INCLUDE_PATH?=3Dinclude/hiredis
LIBRARY_PATH?=3Dlib
PKGCONF_PATH?=3Dpkgconfig
INSTALL_INCLUDE_PATH=3D $(DESTDIR)$(PREFIX)/$(INCLUDE_PATH)
INSTALL_LIBRARY_PATH=3D $(DESTDIR)$(PREFIX)/$(LIBRARY_PATH)
INSTALL_PKGCONF_PATH=3D $(INSTALL_LIBRARY_PATH)/$(PKGCONF_PATH)



install: $(DYLIBNAME) $(STLIBNAME) $(PKGCONFNAME)
    mkdir -p $(INSTALL_INCLUDE_PATH) $(INSTALL_LIBRARY_PATH)
    $(INSTALL) hiredis.h async.h read.h sds.h adapters $(INSTALL_INCLUDE_PA=
TH)
    $(INSTALL) $(DYLIBNAME) $(INSTALL_LIBRARY_PATH)/$(DYLIB_MINOR_NAME)
    cd $(INSTALL_LIBRARY_PATH) && ln -sf $(DYLIB_MINOR_NAME) $(DYLIBNAME)
    $(INSTALL) $(STLIBNAME) $(INSTALL_LIBRARY_PATH)
    mkdir -p $(INSTALL_PKGCONF_PATH)
    $(INSTALL) $(PKGCONFNAME) $(INSTALL_PKGCONF_PATH)


________________________________
From: S.Jaritz@esa-grimma.de <S.Jaritz@esa-grimma.de>
Sent: Thursday, April 28, 2016 9:09 AM
To: Burton, Ross
Cc: Fred Ollinger; yocto@yoctoproject.org
Subject: Antwort: Re: [yocto] how to configure the build packages of a make=
file based libary

Hej

sorry - that does not work. Maybe you can show me some working/common code.

Do I have to create the FILE_${PV} or/and FILE_${PV}-dev, FILE_${PV}-static=
?

The builded files go into the Git dir & the autotools-brokensep is generati=
ng the package dir. I repeat my question: What are the commands in the bb f=
ile to build the packages (release, static, dev, whatever ...)?

Sorry - I do not understand at all the steps and theire parameters to build=
 a libary. Is there somewhere an example given?

Below my bb file and the console error print.

#### libhiredis ####
SUMMARY =3D "libhiredis"
SECTION =3D "sek4"
LICENSE =3D "COPYING"
LIC_FILES_CHKSUM =3D "file://$<file://$/>{WORKDIR}/git/COPYING;md5=3Dd84d65=
9a35c666d23233e54503aaea51"

# 0.13.3
# SRCREV =3D "010756025e8cefd1bc66c6d4ed3b1648ef6f1f95"
SRC_URI =3D "git://github.com/redis/hiredis.git;rev=3Dv0.13.3"

S =3D "${WORKDIR}/git/"

# we need to pass the Cxx parameter extra to the make call
EXTRA_OEMAKE =3D "'CC=3D${CC}' 'RANLIB=3D${RANLIB}' 'AR=3D${AR}' 'CFLAGS=3D=
${CFLAGS} -I${S}/include' 'BUILDDIR=3D${S}' 'DESTDIR=3D${D}'"

inherit autotools-brokensep

do_compile() {
        oe_runmake all 'CC=3D${CC}'
}

do_install() {
        oe_runmake install 'DESTDIR=3D${D}'
}
FILES_${PN} +=3D "/user/local"
########

### consol error ###
ERROR: QA Issue: libhiredis: Files/directories were installed but not shipp=
ed in any package:
  /usr/local
  /usr/local/lib
  /usr/local/include
  /usr/local/lib/libhiredis.so
  /usr/local/lib/libhiredis.so.0.13
  /usr/local/lib/libhiredis.a
  /usr/local/lib/.debug
  /usr/local/lib/pkgconfig
  /usr/local/lib/.debug/libhiredis.so.0.13
  /usr/local/lib/pkgconfig/hiredis.pc
  /usr/local/include/hiredis
  /usr/local/include/hiredis/sds.h
  /usr/local/include/hiredis/read.h
  /usr/local/include/hiredis/async.h
  /usr/local/include/hiredis/hiredis.h
  /usr/local/include/hiredis/adapters
  /usr/local/include/hiredis/adapters/glib.h
  /usr/local/include/hiredis/adapters/macosx.h
  /usr/local/include/hiredis/adapters/libev.h
  /usr/local/include/hiredis/adapters/libevent.h
  /usr/local/include/hiredis/adapters/qt.h
  /usr/local/include/hiredis/adapters/libuv.h
  /usr/local/include/hiredis/adapters/ae.h
  /usr/local/include/hiredis/adapters/ivykis.h
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
libhiredis: 24 installed and not shipped files. [installed-vs-shipped]
NOTE: Tasks Summary: Attempted 388 tasks of which 375 didn't need to be rer=
un and all succeeded.
########
Mit freundlichen Gr=FC=DFen

Stefan Jaritz
Entwickler

------------------------------------------------------------
ESA Elektroschaltanlagen Grimma GmbH
Broner Ring 30
04668 Grimma
Telefon: +49 3437 9211 176
Telefax: +49 3437 9211 26
E-Mail: s.jaritz@esa-grimma.de
Internet: www.esa-grimma.de


Gesch=E4ftsf=FChrer:
Dipl.-Ing. J=F6rg Gaitzsch
J=F6rg Reinker

Sitz der Gesellschaft: Grimma
Ust.-ID: DE 141784437
Amtsgericht: Leipzig, HRB 5159
Steuernummer: 238/108/00755


Diese E-Mail enth=E4lt vertrauliche und/oder rechtlich gesch=FCtzte Informa=
tionen.
Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=FCmlich er=
halten
haben, informieren Sie bitte sofort den Absender und l=F6schen Sie diese
Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser Ma=
il
ist nicht gestattet.

This e-mail may contain confidential and/or privileged information. If you =
are
not the intended recipient (or have received this e-mail in error) please
notify the sender immediately and destroy this e-mail. Any unauthorized
copying, disclosure or distribution of the material in this e-mail is stric=
tly
forbidden.

