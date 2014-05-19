Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21B2BE00BE2; Mon, 19 May 2014 00:39:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFED9E00A13
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 00:39:19 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WmIAH-0002Zj-VO
	for yocto@yoctoproject.org; Mon, 19 May 2014 09:39:17 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 09:39:17 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 09:39:17 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Mon, 19 May 2014 09:39:03 +0200
Message-ID: <llccen$1os$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
Subject: Help with qt-gstreamer recipe?
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
X-List-Received-Date: Mon, 19 May 2014 07:39:33 -0000
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 7bit

Hi

I need qt-gstreamer in my Qt5 app (because I am having problems with the
camera element).

I found a yocto recipe from Andrey Telepin and tried to modify it for
Qt5. It looks like this:

-----------------------------------------------------------------------
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1"
SECTION = "multimedia"

PR = "r0"

SRC_URI =
"http://gstreamer.freedesktop.org/src/qt-gstreamer/qt-gstreamer-0.10.3.tar.gz"

SRC_URI[md5sum] = "a5f73dfa50270a23a0b07af32304e162"
SRC_URI[sha256sum] =
"bfc4406bde003d9e2e9b7fb5d19c07349c304706ec5936160d988f28dac5dd78"

DEPENDS = "boost qtmultimedia gstreamer"

inherit cmake

do_configure() {
        # Ensure we get the cmake configure and not qmake
        cmake_do_configure
}


export EXTRA_OECMAKE = "-DQT_QMAKE_EXECUTABLE=${OE_QMAKE_QMAKE} \
                        -DQT_LRELEASE_EXECUTABLE=${OE_QMAKE_LRELEASE} \
                        -DQT_MOC_EXECUTABLE=${OE_QMAKE_MOC} \
                        -DQT_UIC_EXECUTABLE=${OE_QMAKE_UIC} \
                        -DQT_RCC_EXECUTABLE=${OE_QMAKE_RCC} \
                        -DQT_LIBRARY_DIR=${OE_QMAKE_LIBDIR_QT} \
                        -DQT_HEADERS_DIR=${OE_QMAKE_INCDIR_QT} \

-DQT_QTCORE_INCLUDE_DIR=${OE_QMAKE_INCDIR_QT}/QtCore \
                        -DQT_QTGUI_INCLUDE_DIR=${OE_QMAKE_INCDIR_QT}/QtGui \
                        -DQTGSTREAMER_EXAMPLES=ON      \
                        -DQT_VERSION=5 \
                        -DUSE_GST_PLUGIN_DIR=ON \
                        -DUSE_QT_PLUGIN_DIR=ON \
                        "
-----------------------------------------------------------------------

I get the following error during configure:

-----------
| -- Using Qt5 (min: 5.0.0)
| CMake Error at
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/cmake/Qt5Core/Qt5CoreConfig.cmake:27
(message):
|   The imported target "Qt5::Core" references the file
|
|      "/qmake"
|
|   but this file does not exist.  Possible reasons include:
|
|   * The file was deleted, renamed, or moved to another location.
|
|   * An install or uninstall procedure did not complete successfully.
|
|   * The installation package was faulty and contained
|
|
"/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/cmake/Qt5Core/Qt5CoreConfigExtras.cmake"
|
|   but not all the files it references.
|
| Call Stack (most recent call first):
|
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/cmake/Qt5Core/Qt5CoreConfigExtras.cmake:6
(_qt5_Core_check_file_exists)
|
/home/ubuntu/yocto/build/tmp/sysroots/cubox-i/usr/lib/cmake/Qt5Core/Qt5CoreConfig.cmake:140
(include)
|   cmake/modules/FindQt4or5.cmake:69 (find_package)
|   CMakeLists.txt:24 (find_package)
-------------

It seems that OE_QMAKE_PATH_EXTERNAL_HOST_BINS is not defined. I have no
idea, however, where and how it should be defined correctly.

There is a file recipes-devtools/cmake/cmake_2.8.12.2.bbappend in the
meta-qt5 layer, which seems to address this problem somehow:

----------------------------------------
# Ugly hack to work around undefined OE_QMAKE_PATH_EXTERNAL_HOST_BINS
variable
# and possibly missing qmake binary (qtbase-native can be removed from
sysroot
# e.g. in order to upgrade it, even when there is target qtbase)

#| -- Performing Test run_pic_test - Success
#| CMake Error at
tmp-eglibc/sysroots/qemuarm/usr/lib/cmake/Qt5Core/Qt5CoreConfig.cmake:27
(message):
#|   The imported target "Qt5::Core" references the file
#|
#|      "/qmake"
#|
#|   but this file does not exist.  Possible reasons include:

do_configure_prepend() {
    sed -i 's/^find_package(Qt5Core QUIET)$/#find_package(Qt5Core
QUIET)/g' ${S}/Tests/RunCMake/CMakeLists.txt
    sed -i 's/^find_package(Qt5Core REQUIRED)/#find_package(Qt5Core
REQUIRED)/g' ${S}/Tests/RunCMake/IncompatibleQt/IncompatibleQt.cmake
    sed -i 's/^  find_package(Qt5Widgets REQUIRED)/#
find_package(Qt5Widgets REQUIRED)/g' ${S}/Tests/QtAutomoc/CMakeLists.txt
    sed -i 's/^find_package(Qt5Core REQUIRED)/#find_package(Qt5Core
REQUIRED)/g' ${S}/Tests/Qt4And5Automoc/CMakeLists.txt
    sed -i 's/^  find_package(Qt5Widgets QUIET NO_MODULE)/#
find_package(Qt5Widgets QUIET NO_MODULE)/g' ${S}/Tests/CMakeLists.txt
    sed -i 's/^find_package(Qt5Widgets QUIET)/#find_package(Qt5Widgets
QUIET)/g' ${S}/Source/QtDialog/CMakeLists.txt
}
-------------------------------------------

Still, I have no idea how to fix the problem. Can anybody hint me into
the right direction?

Thanks a lot

Michael


