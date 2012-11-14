Return-Path: <Peter.Oruba@signalion.com>
Received: from smtp-2.pop-dresden.de (smtp-2.pop-dresden.de [89.28.242.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46AABE01448
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2012 02:34:04 -0800 (PST)
Received: from business-178-015-087-210.static.arcor-ip.net ([178.15.87.210]
	helo=sophie.Signalion.local)
	by smtp-2.pop-dresden.de with esmtp (Exim 4.63)
	(envelope-from <Peter.Oruba@signalion.com>) id 1TYaIF-0004YO-1Z
	for yocto@yoctoproject.org; Wed, 14 Nov 2012 11:34:03 +0100
Received: from [10.0.2.15] (192.168.102.124) by sophie.Signalion.local
	(192.168.0.27) with Microsoft SMTP Server id 8.1.375.2; Wed, 14 Nov 2012
	11:34:01 +0100
Message-ID: <50A37399.8030208@signalion.com>
Date: Wed, 14 Nov 2012 11:34:01 +0100
From: Peter Oruba <peter.oruba@signalion.com>
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <50A0FD41.8010900@signalion.com>
In-Reply-To: <50A0FD41.8010900@signalion.com>
X-TM-AS-Product-Ver: SMEX-8.0.0.1181-6.500.1024-19364.001
X-TM-AS-Result: No--17.494700-8.000000-31
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
Subject: Re: No package is created after do_install
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
X-List-Received-Date: Wed, 14 Nov 2012 10:34:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Am 12.11.2012 14:44, schrieb Peter Oruba:
> Hello everybody
>
> I am using Yocto as a framework to build Debian packages. So far there
> is a recipe working up to the stage that source is fetched and copied
> (for now compiling is simply skipped). That part works fine, however, I
> am having a hard time to create a Debian package with ${destdir}'s content.
>
> The recipe looks as follows:
>
> LICENSE = "MyLicense"
> LIC_FILES_CHKSUM = "file://LICENSE;md5=c6564c1e3c8492bdfa4eddb6d81c2c66"
>
> #SRCDATE
> SRCREV="r105"
> PV="${SRCPV}"
> PR="${SRCREV}"
> SRC_URI = "svn://repo/trunk;module=myproject;proto=http"
> S = "${WORKDIR}/${PN}"
>
> PKG="myproject-debian"
> PKGFN="myproject"
> IMAGE_ROOTFS="${D}"
> PN="myproject"
> PACKAGE_ARCH = "${MACHINE_ARCH}"
> PACKAGES = "${PN}"
> FILES_${PN} = "${D}/usr/libexec/*"
>
> inherit native package_deb
>
> do_install() {
>     #oe_runmake 'DESTDIR=${D}' install
>     install -v -d ${D}/usr/libexec/
>     cp -a -v ${S} ${D}/usr/libexec/
> }
>
> do_populate_sysroot[noexec] = "1"
>
> do_package[noexec] = "0"
> do_package_write[noexec] = "0"
> do_package_write_deb[noexec] = "0"
>
>
> Unfortunately there is not a lot of information about creating native
> packages with Yocto that you can find out there.
>
> Thanks,
> Peter
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Managed to make it work, problem was solved by removing the following lines:

  do_package[noexec] = "0"
  do_package_write[noexec] = "0"
  do_package_write_deb[noexec] = "0"

Thanks,
Peter


