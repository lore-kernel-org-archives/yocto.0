Return-Path: <Neil.Wu@emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0202E009C2; Thu, 16 Apr 2015 23:18:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [68.232.130.237 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from esa2.emerson-outbound.iphmx.com
	(esa2.emerson-outbound.iphmx.com [68.232.130.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F1FE0085D
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 23:18:53 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.11,592,1422900000"; 
   d="scan'208";a="6918735"
Received: from usstlz-pinfez05.extemr.org ([144.191.128.189])
	by esa2.emerson-outbound.iphmx.com with ESMTP/TLS/AES128-SHA;
	17 Apr 2015 12:18:53 +0600
Received: from USSTLZ-PMSG002.emrsn.org (10.16.72.40) by
	USSTLZ-PINFEZ05.extemr.org (10.16.8.78) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Fri, 17 Apr 2015 06:18:43 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.186]) by
	USSTLZ-PMSG002.emrsn.org ([169.254.6.221]) with mapi id 14.03.0158.001;
	Fri, 17 Apr 2015 06:18:42 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: cannot find crti.o: No such file or directory
Thread-Index: AQHQeNPj9wkUcVHiU0ubCy5Kxiz+JJ1QuAGg
Date: Fri, 17 Apr 2015 06:18:41 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8522E7042B6@USSTLZ-PMSG012.emrsn.org>
References: <552FAFAF.30005@eschenauer.be>
	<F14AEF751653024287138321000C846AF4814FF5@BOS-DAG1.zone1.flir.net>
	<20150417060034.GA19955@ad.chargestorm.se>
In-Reply-To: <20150417060034.GA19955@ad.chargestorm.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: S3E= BPVw Cq0p CwqZ DG6y EAvh EEnv EbkI FzkI GkjH G1p5
	Ht9B I0hI JLBe JxEv
	KBt9; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {09AC930E-6E38-4B20-A5DE-0B0179CEC70C};
	bgBlAGkAbAAuAHcAdQBAAGUAbQBlAHIAcwBvAG4ALgBjAG8AbQA=; Fri,
	17 Apr 2015 06:18:38 GMT;
	bABkADoAIABjAGEAbgBuAG8AdAAgAGYAaQBuAGQAIABjAHIAdABpAC4AbwA6ACAATgBvACAAcwB1AGMAaAAgAGYAaQBsAGUAIABvAHIAIABkAGkAcgBlAGMAdABvAHIAeQA=
x-cr-puzzleid: {09AC930E-6E38-4B20-A5DE-0B0179CEC70C}
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: ld: cannot find crti.o: No such file or directory
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
X-List-Received-Date: Fri, 17 Apr 2015 06:18:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, all

I use the 1.8 YP to build the ccgi, the receip of ccgi as this:

SUMMARY =3D "Add ccgi lib to rootfs"
HOMEPAGE =3D "http://sourceforge.net/projects/libccgi/?source=3Dtyp_redirec=
t"
LICENSE =3D "GPLv2"
FILESEXTRAPATHS_prepend  :=3D "${THISDIR}/${PN}:"

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504=
"

FILES_${PN}_dev =3D "${libdir}/* ${includedir}/* "

SRC_URI =3D "file://${PN}-${PV}.tgz \
	   file://0001-modify-the-source-code-to-match-the-G4-code.patch \        =
  "
		 =20
S =3D "${WORKDIR}/${PN}-${PV}"

PARALLEL_MAKEINST=3D"prefix=3D${D}/usr"
EXTRA_OEMAKE =3D 'CROSS=3D${HOST_PREFIX}'
do_compile() {
        oe_runmake OPENSSL_INCLUDE=3D${TOPDIR}/tmp/sysroots/${MACHINE}/usr/=
include=20
}

It appears the error as follows:
/home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-lin=
ux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find crti.o: No such=
 file or directory
| /home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find crtbeginS.o: =
No such file or directory
| /home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find -lgcc
| /home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find -lgcc_s
| /home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find -lpthread
| /home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find -lc
| /home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find -lgcc
| /home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find -lgcc_s
| /home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find crtendS.o: No=
 such file or directory
| /home/ectrs/poky/coretexa8/tmp/sysroots/i686-linux/usr/libexec/arm-poky-l=
inux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.2/ld: cannot find crtn.o: No su=
ch file or directory

In fact , I can find the crti.o in /home/ectrs/poky/coretexa8/tmp/sysroots/=
i686-linux/usr/ directory.

How to resolve this problem? If you know ,please tell me .



Thanks=20

Neil


