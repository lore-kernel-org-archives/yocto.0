Return-Path: <systemcpp@mail.ru>
Received: from smtp8.mail.ru (smtp8.mail.ru [94.100.176.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4236BE00C6E
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 18:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
	s=mail2; 
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From;
	bh=s8g8QSp9FC4jsZrjf+q1KfKpG6/yUXztkLx1AyiZM5M=; 
	b=qxBxumty7kX9L9OWI7mBcXKq9U7qoA0Z3g1yO0Xw7cZ2bILbETJRNq2VzwIdO1FTdabVhWWczOfklKcQseQv38t8lT8jOdm3aIgaS6Q+5CiS2UcXxa3E8arS9POGtY8ZsCEo+wbc7YW0VgKBpVVotmEduse8p/6jNdWbgUWUuo8=;
Received: from [213.157.36.206] (port=50469 helo=atelepin-nb.localnet)
	by smtp8.mail.ru with esmtpa (envelope-from <systemcpp@mail.ru>)
	id 1WVWP0-0004po-36
	for yocto@yoctoproject.org; Thu, 03 Apr 2014 05:25:10 +0400
From: Andrey Telepin <systemcpp@mail.ru>
To: yocto@yoctoproject.org
Date: Thu, 03 Apr 2014 07:25:06 +0600
Message-ID: <3442523.WH0q7U2T2Z@atelepin-nb>
Organization: Home
User-Agent: KMail/4.11.5 (Linux/3.11.0-19-generic; KDE/4.11.5; i686; ; )
MIME-Version: 1.0
X-Spam: Not detected
X-Mras: Ok
Subject: "qt-gstreamer do_install issue"
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
X-List-Received-Date: Thu, 03 Apr 2014 01:25:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello All! 

I write .bb file for qt-gstreamer, all steps seems to by normal, but on 
do_install i get 
next error:

ERROR: QA Issue: qt-gstreamer: Files/directories were installed but not 
shipped
  /usr/lib
  /usr/local
  /usr/lib/gstreamer-0.10
  /usr/lib/gstreamer-0.10/libgstqtvideosink.so        
.........

*My .bb file*

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1"
SECTION = "multimedia"

PR = "r0"

SRC_URI = "http://gstreamer.freedesktop.org/src/qt-gstreamer/qt-gstreamer-0.10.2.tar.gz"

SRC_URI[md5sum] = "0428aedf2874fd0884ad4c41db9da20e"
SRC_URI[sha256sum] = 
"d40d312b34916582b29e6ade4fb856749071e041c0a92bc219d7f424c45dd8aa"

# DEPENDS = "boost qt4-embedded"

inherit qmake2 cmake qt4x11

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
                        -DQTGSTREAMER_EXAMPLES=OFF      \
                        "


What i miss?
Thanks!

