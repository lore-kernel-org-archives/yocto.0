Return-Path: <Peter.Oruba@signalion.com>
Received: from smtp-2.pop-dresden.de (smtp-2.pop-dresden.de [89.28.242.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78BC7E013AF
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2012 05:44:35 -0800 (PST)
Received: from business-178-015-087-210.static.arcor-ip.net ([178.15.87.210]
	helo=sophie.Signalion.local)
	by smtp-2.pop-dresden.de with esmtp (Exim 4.63)
	(envelope-from <Peter.Oruba@signalion.com>) id 1TXuJW-0001JL-Gt
	for yocto@yoctoproject.org; Mon, 12 Nov 2012 14:44:34 +0100
Received: from [10.0.2.15] (192.168.102.124) by sophie.Signalion.local
	(192.168.0.27) with Microsoft SMTP Server id 8.1.375.2; Mon, 12 Nov 2012
	14:44:33 +0100
Message-ID: <50A0FD41.8010900@signalion.com>
Date: Mon, 12 Nov 2012 14:44:33 +0100
From: Peter Oruba <peter.oruba@signalion.com>
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-TM-AS-Product-Ver: SMEX-8.0.0.1181-6.500.1024-19356.007
X-TM-AS-Result: No--14.611200-8.000000-31
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
Subject: No package is created after do_install
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 Nov 2012 13:44:35 -0000
Content-Type: text/plain; charset="ISO-8859-15"; format=flowed
Content-Transfer-Encoding: 7bit

Hello everybody

I am using Yocto as a framework to build Debian packages. So far there 
is a recipe working up to the stage that source is fetched and copied 
(for now compiling is simply skipped). That part works fine, however, I 
am having a hard time to create a Debian package with ${destdir}'s content.

The recipe looks as follows:

LICENSE = "MyLicense"
LIC_FILES_CHKSUM = "file://LICENSE;md5=c6564c1e3c8492bdfa4eddb6d81c2c66"

#SRCDATE
SRCREV="r105"
PV="${SRCPV}"
PR="${SRCREV}"
SRC_URI = "svn://repo/trunk;module=myproject;proto=http"
S = "${WORKDIR}/${PN}"

PKG="myproject-debian"
PKGFN="myproject"
IMAGE_ROOTFS="${D}"
PN="myproject"
PACKAGE_ARCH = "${MACHINE_ARCH}"
PACKAGES = "${PN}"
FILES_${PN} = "${D}/usr/libexec/*"

inherit native package_deb

do_install() {
   #oe_runmake 'DESTDIR=${D}' install
   install -v -d ${D}/usr/libexec/
   cp -a -v ${S} ${D}/usr/libexec/
}

do_populate_sysroot[noexec] = "1"

do_package[noexec] = "0"
do_package_write[noexec] = "0"
do_package_write_deb[noexec] = "0"


Unfortunately there is not a lot of information about creating native 
packages with Yocto that you can find out there.

Thanks,
Peter

