Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11E80E00510; Fri,  3 Feb 2017 06:55:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 424 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Feb 2017 06:54:56 PST
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CAAFE004A0
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 06:54:56 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3vFKTz2DPYz3hjmR;
	Fri,  3 Feb 2017 15:47:51 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3vFKTz1JMCzvkj6;
	Fri,  3 Feb 2017 15:47:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id PPf0AmsdrhIs; Fri,  3 Feb 2017 15:47:49 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Fri,  3 Feb 2017 15:47:49 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 0EFC545403BD;
	Fri,  3 Feb 2017 15:45:27 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id XmIhv6EtffrG; Fri,  3 Feb 2017 15:45:24 +0100 (CET)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id 4867E45402FD;
	Fri,  3 Feb 2017 15:45:24 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <37a3d903-1068-7d37-5e27-3b60e4a39cdc@denx.de>
Date: Fri, 3 Feb 2017 15:47:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Cc: Otavio Salvador <otavio@ossystems.com.br>, heinold@inf.fu-berlin.de
Subject: [meta-java]: how add nativesdk-openjdk-8
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
X-List-Received-Date: Fri, 03 Feb 2017 14:55:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi,

I would like to have openjdk-8 in the built SDK. Because there is not
yet a nativesdk- package, I have tried in the usual way, but I am facing
some issues I do not understand.

I have added a .bbappend for openjdk-8-native with :

	BBCLASSEXTEND_append = " nativesdk"

(meta-java: master, poky: still krogoth for now)

This let me start a "bitbake nativesdk-openjdk-8-native". I have also
fixed in the configure the check for COMPILE_TYPE (it was reported
"cross" when I try to build). Anyway, configure reports errors because
it does not find freetype. But freetype-native is in DEPENDS, and I can
build successfully openjdk-8-native.

Last part of the log is:

| configure: WARNING: Ignoring
CFLAGS(-isystem/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe -Wno-error=deprecated-declarations   -DHEADLESS=true) found in
environment. Use --with-extra-cflags
| configure: WARNING: Ignoring
CXXFLAGS(-isystem/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-linux/usr/include
-O2 -pipe   -DHEADLESS=true) found in environment. Use --with-extra-cxxflags
| configure: WARNING: Ignoring
LDFLAGS(-L/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-O1
-L/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/opt/poky/2.1.2/sysroots/x86_64-pokysdk-linux/lib
-Wl,-rpath-link,/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/opt/poky/2.1.2/sysroots/x86_64-pokysdk-linux/lib
-Wl,-rpath,/opt/poky/2.1.2/sysroots/x86_64-pokysdk-linux/lib -Wl,-O1)
found in environment. Use --with-extra-ldflags
| checking if compiler supports "-m64"... yes
| checking if compiler supports "-m64"... yes
| checking for broken SuSE 'ld' which only understands anonymous version
tags in executables... no
| checking if we should generate debug symbols... true
| checking if we should zip debug-info files... yes
| checking what is not needed on Linux?... pulse
| checking for X... libraries
/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/sysroots/x86_64-linux/usr/lib64,
headers
| checking whether -R must be followed by a space... neither works
| checking for gethostbyname... (cached) yes
| checking for connect... (cached) yes
| checking for remove... (cached) yes
| checking for shmat... (cached) yes
| checking for IceConnectionNumber in -lICE... yes
| checking for X11/extensions/shape.h... yes
| checking for X11/extensions/Xrender.h... yes
| checking for X11/extensions/XTest.h... yes
| checking for X11/Intrinsic.h... yes
| checking for FREETYPE... no
| configure: error: Could not find freetype! You might be able to fix
this by running 'sudo apt-get install libfreetype6-dev'.
| NOTE: The following config.log files may provide further information.
| NOTE:
/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-openjdk-8-native/102b14-r0/build/config.log
| ERROR: configure failed
| ERROR: Function failed: do_configure (log file is located at
/work/stefano/db-krogoth-arri/theadorable-mv78260/tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-openjdk-8-native/102b14-r0/temp/log.do_configure.13211)

Anyway, there is something I am missing, because building
openjdk-8-native reports no error and it works flawlessly.

Has somebody tried to put openjdk to the SDK or some hints that can put
me in the right direction ?


Regards,
Stefano


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

