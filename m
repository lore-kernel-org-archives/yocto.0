Return-Path: <dexon1@dexonsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67FADE006EF; Fri, 18 Jul 2014 02:47:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 2087 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Jul 2014 02:47:04 PDT
Received: from mx8.datanet.hu (mx8.datanet.hu [194.149.13.164])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E26FBE0056A
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 02:47:04 -0700 (PDT)
Received: from [192.168.1.120] (unknown [91.120.39.42])
	by mx8.datanet.hu (DataNet) with ESMTP id A7CBFEBCE6
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 11:12:14 +0200 (CEST)
Message-ID: <53C8E4ED.9090909@dexonsystems.com>
Date: Fri, 18 Jul 2014 11:12:13 +0200
From: dexon_test <dexon1@dexonsystems.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: add custom application into a image
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
X-List-Received-Date: Fri, 18 Jul 2014 09:47:10 -0000
Content-Type: multipart/alternative;
	boundary="------------090808080607070107090408"

--------------090808080607070107090408
Content-Type: text/plain; charset=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 7bit

First of all, I am a full beginner when it comes to bitbake, yocto,  etc...So, I am sorry if my questions seems unskilful...

I would like to use meta-atmel (https://github.com/linux4sam/meta-atmel) with SAMA5d3xek machine.

I could build "atmel-qt4e-demo-image" demo image. Therefore I'd like to create custom apps into this image with these steps:

1. Added my new package ("dxatmel") into atmel-qt4e-demo-image.bb

2. Created my custom package file (dxatmel_1.0.bb):

DESCRIPTION = "DXAtmel QT application"
LICENSE = "BSD"
LIC_FILES_CHKSUM ="file://main.cpp;endline=14;md5=224c1642c6a9139c8824491e38263cba"

DEFAULT_PREFERENCE = "14"

PACKAGES = "${PN}-dbg ${PN}"

PR = "r0"

DEPENDS = "qt4-embedded"

SRC_URI ="ftp://www.dexonsystems.com/stuff/dxatmel-$(PV).tar.gz"

SRC_URI[md5sum] = "77c74ad602bfc25a97dd2e5593c00d5c"
SRC_URI[sha256sum] = "eff2bff716602ac21f8ca6a728c1860efd874e7e73d43c9f3f300c0763f2cfa0"

S = "${WORKDIR}/dxatmel-${PV}"

inherit qt4e pkgconfig

FILES_${PN}-dbg = " \
   /opt/DXAtmel/.debug \
   /opt/DXAtmel/.debug/* \
   /usr/* \
   /opt/DXAtmel/mainwindow.h \
   /opt/DXAtmel/mainwindow.cpp \
   /opt/DXAtmel/main.cpp \
   /opt/DXAtmel/DXAtmel.pro \
   /opt/DXAtmel/moc_mainwindow.cpp \
"

FILES_${PN} = " \
   /opt/DXAtmel/DXAtmel \
   /opt/DXAtmel/DXAtmel.sh \
   /opt/ApplicationL* \
"

do_install() {
     make INSTALL_ROOT=${D} install
}

3. bitbake -c build dxatmel

    -> I hit this error msg: Not found *.pro file in the working directory



Any advice on what I have missed in setting up recipes, etc...?


Lori


--------------090808080607070107090408
Content-Type: text/html; charset=ISO-8859-2
Content-Transfer-Encoding: 7bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-2">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <pre wrap="">First of all, I am a full beginner when it comes to bitbake, yocto,  etc...So, I am sorry if my questions seems unskilful...

I would like to use meta-atmel (<a class="moz-txt-link-freetext" href="https://github.com/linux4sam/meta-atmel">https://github.com/linux4sam/meta-atmel</a>) with SAMA5d3xek machine.

I could build "atmel-qt4e-demo-image" demo image. Therefore I'd like to create custom apps into this image with these steps:

1. Added my new package ("dxatmel") into atmel-qt4e-demo-image.bb

2. Created my custom package file (dxatmel_1.0.bb):

DESCRIPTION = "DXAtmel QT application"
LICENSE = "BSD"
LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://main.cpp;endline=14;md5=224c1642c6a9139c8824491e38263cba">"file://main.cpp;endline=14;md5=224c1642c6a9139c8824491e38263cba"</a>

DEFAULT_PREFERENCE = "14"

PACKAGES = "${PN}-dbg ${PN}"

PR = "r0"

DEPENDS = "qt4-embedded"

SRC_URI = <a class="moz-txt-link-rfc2396E" href="ftp://www.dexonsystems.com/stuff/dxatmel-$%28PV%29.tar.gz">"ftp://www.dexonsystems.com/stuff/dxatmel-$(PV).tar.gz"</a>

SRC_URI[md5sum] = "77c74ad602bfc25a97dd2e5593c00d5c"
SRC_URI[sha256sum] = "eff2bff716602ac21f8ca6a728c1860efd874e7e73d43c9f3f300c0763f2cfa0"

S = "${WORKDIR}/dxatmel-${PV}"

inherit qt4e pkgconfig

FILES_${PN}-dbg = " \
  <i class="moz-txt-slash"><span class="moz-txt-tag">/</span>opt/DXAtmel<span class="moz-txt-tag">/</span></i>.debug \
  <i class="moz-txt-slash"><span class="moz-txt-tag">/</span>opt/DXAtmel<span class="moz-txt-tag">/</span></i>.debug/* \
  <i class="moz-txt-slash"><span class="moz-txt-tag">/</span>usr<span class="moz-txt-tag">/</span></i>* \
  /opt/DXAtmel/mainwindow.h \
  /opt/DXAtmel/mainwindow.cpp \
  /opt/DXAtmel/main.cpp \
  /opt/DXAtmel/DXAtmel.pro \
  /opt/DXAtmel/moc_mainwindow.cpp \
"

FILES_${PN} = " \
  /opt/DXAtmel/DXAtmel \
  /opt/DXAtmel/DXAtmel.sh \
  /opt/ApplicationL* \
"

do_install() {
    make INSTALL_ROOT=${D} install
}

3. bitbake -c build dxatmel

   -&gt; I hit this error msg: Not found *.pro file in the working directory



Any advice on what I have missed in setting up recipes, etc...?


Lori </pre>
  </body>
</html>

--------------090808080607070107090408--
