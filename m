Return-Path: <systemcpp@mail.ru>
Received: from smtp39.i.mail.ru (smtp39.i.mail.ru [94.100.177.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28E4FE00BAB
	for <yocto@yoctoproject.org>; Wed,  2 Apr 2014 03:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
	s=mail2; 
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:To:From;
	bh=8dE0tDI6Qo4wWVNpn0Z+V9nHA7DCckYn//Xb60PwKzA=; 
	b=JqBfCgnEO4ypy3b0qPJtLY9AWk0VIsclQnq/fzeFr754zG+qGaQ4f16wCWcik4tzszVfhuOdmuBIKm0rdFGIeaKJZPl0KPVTdKZs44oH/BA8u4infnbgCvuV0rEzZt/WuxOR5EYugYVGbOgK9KyDQV+8wdPHXtWxbgC56C2i0yw=;
Received: from [213.157.36.206] (port=57363 helo=atelepin-nb.localnet)
	by smtp39.i.mail.ru with esmtpa (envelope-from <systemcpp@mail.ru>)
	id 1WVIhy-0004ol-7S
	for yocto@yoctoproject.org; Wed, 02 Apr 2014 14:47:50 +0400
From: Andrey Telepin <systemcpp@mail.ru>
To: yocto@yoctoproject.org
Date: Wed, 02 Apr 2014 16:47:45 +0600
Message-ID: <1516835.hnZfIudZDS@atelepin-nb>
Organization: Home
User-Agent: KMail/4.11.5 (Linux/3.11.0-18-generic; KDE/4.11.5; i686; ; )
MIME-Version: 1.0
X-Spam: Not detected
X-Spam: Not detected
X-Mras: Ok
Subject: qt-gstreamer do_install issue
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
X-List-Received-Date: Wed, 02 Apr 2014 10:48:22 -0000
Content-Type: multipart/alternative; boundary="nextPart1486254.U5GfreZzku"
Content-Transfer-Encoding: 7Bit

--nextPart1486254.U5GfreZzku
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello All! 

I write .bb file for qt-gstreamer, all steps seems to by normal, but on do_install i get 
next error:

ERROR: QA Issue: qt-gstreamer: Files/directories were installed but not shipped
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
			-
DQT_QTGUI_INCLUDE_DIR=${OE_QMAKE_INCDIR_QT}/QtGui \
			-DQTGSTREAMER_EXAMPLES=OFF	
\
                        "


What i miss?
Thanks!

--nextPart1486254.U5GfreZzku
Content-Transfer-Encoding: 7Bit
Content-Type: text/html; charset="us-ascii"

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html><head><meta name="qrichtext" content="1" /><style type="text/css">
p, li { white-space: pre-wrap; }
</style></head><body style=" font-family:'Ubuntu'; font-size:9pt; font-weight:400; font-style:normal;">
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Hello All! </p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">I write .bb file for qt-gstreamer, all steps seems to by normal, but on do_install i get next error:</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">ERROR: QA Issue: qt-gstreamer: Files/directories were installed but not shipped</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">  /usr/lib</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">  /usr/local</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">  /usr/lib/gstreamer-0.10</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">  /usr/lib/gstreamer-0.10/libgstqtvideosink.so        </p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">.........</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"><span style=" font-weight:600;">My .bb file</span></p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">LICENSE = &quot;GPLv2&quot;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">LIC_FILES_CHKSUM = &quot;file://COPYING;md5=2d5025d4aa3495befef8f17206a5b0a1&quot;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">SECTION = &quot;multimedia&quot;</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">PR = &quot;r0&quot;</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">SRC_URI = &quot;http://gstreamer.freedesktop.org/src/qt-gstreamer/qt-gstreamer-0.10.2.tar.gz&quot;</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">SRC_URI[md5sum] = &quot;0428aedf2874fd0884ad4c41db9da20e&quot;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">SRC_URI[sha256sum] = &quot;d40d312b34916582b29e6ade4fb856749071e041c0a92bc219d7f424c45dd8aa&quot;</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;"># DEPENDS = &quot;boost qt4-embedded&quot;</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">inherit qmake2 cmake qt4x11</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">do_configure() {</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">	# Ensure we get the cmake configure and not qmake</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">	cmake_do_configure</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">}</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">export EXTRA_OECMAKE = &quot;-DQT_QMAKE_EXECUTABLE=${OE_QMAKE_QMAKE} \</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">                        -DQT_LRELEASE_EXECUTABLE=${OE_QMAKE_LRELEASE} \</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">                        -DQT_MOC_EXECUTABLE=${OE_QMAKE_MOC} \</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">                        -DQT_UIC_EXECUTABLE=${OE_QMAKE_UIC} \</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">                        -DQT_RCC_EXECUTABLE=${OE_QMAKE_RCC} \</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">                        -DQT_LIBRARY_DIR=${OE_QMAKE_LIBDIR_QT} \</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">                        -DQT_HEADERS_DIR=${OE_QMAKE_INCDIR_QT} \</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">                        -DQT_QTCORE_INCLUDE_DIR=${OE_QMAKE_INCDIR_QT}/QtCore \</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">			-DQT_QTGUI_INCLUDE_DIR=${OE_QMAKE_INCDIR_QT}/QtGui \</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">			-DQTGSTREAMER_EXAMPLES=OFF	\</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">                        &quot;</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style="-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; ">&nbsp;</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">What i miss?</p>
<p style=" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; -qt-user-state:0;">Thanks!</p></body></html>

--nextPart1486254.U5GfreZzku--
