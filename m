Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6703DE0081A; Tue, 26 Aug 2014 07:38:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82CE3E00809
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 07:38:17 -0700 (PDT)
Received: by mail-lb0-f180.google.com with SMTP id 10so1454873lbg.25
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 07:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bdNWayYCEaZrKdmLmXVIGfKfHOnQ0eeuLJDa4F3WW1o=;
	b=FeR21CP04txzkzuL3rwoYgOsc/3DU1tRmvDEfntfcSxiLmUlXfDmfANFJYDWJNd9o3
	T/fJpdrxtLDV0C6ddtG9MOtA173wT6Tfe3ldFluigvNmgjk++kX1CxdJ2Zeav6Z4oz6F
	C4wtp9oX+NV8A9/MgtO+Tk7mVRf6x4LVB6wTM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=bdNWayYCEaZrKdmLmXVIGfKfHOnQ0eeuLJDa4F3WW1o=;
	b=YGULvaWtAIK5pqN0pQLFTfp/wpeKTFDCIShpkpSjlHFFHHGYiBYncCgKU9IJ4vwLOZ
	C5++9YbEv0NXpRKcsk4KOM32MKJ5VDcbU33puUtviwMU3LU1kiWg7h7VM66vbiaKbXyX
	3dZXZ6szpb7ELIyikUkwDgYVzSvQ/pKEkMaFKhbenTiFKubPOEm4n0SzbqQ29BhZmoVC
	FZmuamY2/3nh+NBFqZR3tf6SJug0xLAqmDxnsLSDgBz7udSM0UsW2/mL/Q/Xu7pqf5G1
	rZxZahzLcZ+bKVI2gx12QHkFxQTz+8eHdMbJjiEpFY378yESJU09ZGmdp+09S6soIw45
	kDBg==
X-Gm-Message-State: ALoCoQlvfWlS6Bnwo60YePFi/ddB11UC/Xgp1MH0+Stza6NA+35OD7yaKvyv1QWqHFWjp0JbkIcU
MIME-Version: 1.0
X-Received: by 10.152.88.81 with SMTP id be17mr15001891lab.75.1409063896699;
	Tue, 26 Aug 2014 07:38:16 -0700 (PDT)
Received: by 10.112.200.105 with HTTP; Tue, 26 Aug 2014 07:38:16 -0700 (PDT)
X-Originating-IP: [72.74.84.52]
Date: Tue, 26 Aug 2014 10:38:16 -0400
Message-ID: <CAPoQQ-11JSZbRpBSNz8pD+yfwNrGWXACCv_t6vdY00V6X_W66g@mail.gmail.com>
From: Cody P Schafer <dev@codyps.com>
To: yocto@yoctoproject.org
Subject: cmake + qt4e in bitbake fails to detect/supply all requested qt include paths
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
X-List-Received-Date: Tue, 26 Aug 2014 14:38:28 -0000
Content-Type: text/plain; charset=UTF-8

This works with qt4 (non-embedded) when built natively, is there some
bitbake incantation I'm missing to have qt4e+cmake work? Or does qt4e
just not play nice with cmake?

Error message:
----
| [100%] Building CXX object CMakeFiles/kiosk-web.dir/kiosk.cc.o
| /home/cody/obj/yocto/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-g++
  -DQT_CORE_LIB -DQT_GUI_LIB -DQT_NO_DEBUG -march=armv7-a
-mthumb-interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8
--sysroot=/home/cody/obj/yocto/tmp/sysroots/beaglebone  -O2 -pipe -g
-feliminate-unused-debug-types -fvisibility-inlines-hidden
-fpermissive -isystem
/home/cody/obj/yocto/tmp/sysroots/x86_64-linux/usr/include/qt4
-isystem /home/cody/obj/yocto/tmp/sysroots/x86_64-linux/usr/include/qt4/QtGui
-isystem /home/cody/obj/yocto/tmp/sysroots/x86_64-linux/usr/include/qt4/QtCore
   -o CMakeFiles/kiosk-web.dir/kiosk.cc.o -c
/home/cody/obj/yocto/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/kiosk-web/0.0+gitrAUTOINC+dfe3db9730-r0/git/kiosk-web/kiosk.cc
| /home/cody/obj/yocto/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/kiosk-web/0.0+gitrAUTOINC+dfe3db9730-r0/git/kiosk-web/kiosk.cc:6:28:
fatal error: QGraphicsWebView: No such file or directory
|  #include <QGraphicsWebView>
|                             ^
----

Relevent portion of my kiosk-web_0.1.bb file (remainder is srcs, revs,
desc, and license junk)
----
S = "${WORKDIR}/git/${PN}"
inherit cmake qt4e
do_configure () {
    cmake_do_configure
}
----

CMakeLists.txt:
----
cmake_minimum_required(VERSION 2.6)
project(kiosk-web)
find_package(Qt4 REQUIRED)

set(kiosk-web_SOURCES kiosk.cc)
set(QT_USE_QTWEBKIT 1)

include(${QT_USE_FILE})
add_definitions(${QT_DEFINITIONS})

add_executable(kiosk-web ${kiosk-web_SOURCES})
target_link_libraries(kiosk-web ${QT_LIBRARIES})
----

kiosk.cc :
----
#include <QApplication>

#include <QGraphicsScene>
#include <QGraphicsView>

#include <QGraphicsWebView>
#include <QWebSettings>

int main(int argc, char **argv)
{
    QApplication app(argc, argv);

    QGraphicsScene scene;
    QGraphicsView view(&scene);
    view.setFrameShape(QFrame::NoFrame);
    view.setVerticalScrollBarPolicy(Qt::ScrollBarAlwaysOff);
    view.setHorizontalScrollBarPolicy(Qt::ScrollBarAlwaysOff);

    QGraphicsWebView webview;
    webview.load(QUrl("http://google.com/"));
    webview.setResizesToContents(true);

    scene.addItem(&webview);
    view.showFullScreen();

    return app.exec();
}
----

