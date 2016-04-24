Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3CAAE00CB9; Sun, 24 Apr 2016 10:57:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09C23E007B7
	for <yocto@yoctoproject.org>; Sun, 24 Apr 2016 10:57:29 -0700 (PDT)
Received: from mfilter36-d.gandi.net (mfilter36-d.gandi.net [217.70.178.167])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id 13845C5A5C;
	Sun, 24 Apr 2016 19:57:28 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mfilter36-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter36-d.gandi.net (mfilter36-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id JC35GDgQRnwh; Sun, 24 Apr 2016 19:57:25 +0200 (CEST)
X-Originating-IP: 80.215.230.116
Received: from [192.168.43.244] (unknown [80.215.230.116])
	(Authenticated sender: contact@jgueytat.fr)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id D54C0C5A56;
	Sun, 24 Apr 2016 19:57:24 +0200 (CEST)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <5715F053.8040801@jgueytat.fr> <5716C35C.3040800@jgueytat.fr>
	<57188C1B.70804@jgueytat.fr> <20160421171055.GO1588@resin>
From: Julien Gueytat <contact@jgueytat.fr>
Message-ID: <571D0903.4080607@jgueytat.fr>
Date: Sun, 24 Apr 2016 19:57:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160421171055.GO1588@resin>
Cc: yocto@yoctoproject.org, otavio@ossystems.com.br
Subject: Re: [meta-qt5][meta-raspberrypi]: Qt5 with EGL support for the Raspberry through linux-oe-g++
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
X-List-Received-Date: Sun, 24 Apr 2016 17:57:32 -0000
X-Groupsio-MsgNum: 29600
Content-Type: multipart/mixed; boundary="------------040302030501000404060902"

--------------040302030501000404060902
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

you will find here two patches to get EGL enabled on RaspberryPi without 
any hack in meta-*bsp layers.
Please note that it is just a proposition of correction as I'm not aware 
of the best correction you would like to implement.

The result of those two patches on top of master for meta-raspberry and 
krogoth for meta-qt5 (jethro would have been the same correction) gives:
   QPA backends:
     DirectFB ............. no
     EGLFS ................ yes
       EGLFS i.MX6 ........ no
       EGLFS i.MX6 Wayland. no
       EGLFS EGLDevice .... no
       EGLFS GBM .......... no
       EGLFS Mali ......... no
       EGLFS Raspberry Pi . yes
       EGLFS X11 .......... no

As long as I understand there use to be a lot of hacks in either BSP 
layers or mkspecs files for Qt.
With proper pkg_config files we might have a simpler solution. Right now 
I'm quite sure that the master branch from Qt has some troubles to 
handle pkg-config stuff AND mkspecs at the same time. There is a bug 
report opened on that subject.

The patch on meta-qt5 is to "force" layers to implement pkg-config 
files. (I just did it for EGL...) As I said it's not a full rewrite of 
the configure file at all.
The patch on the Raspberry is just to add one library missing to get the 
EGLFS Raspberry Pi test passing (the EGL test one was already working 
with this meta-qt5 patch)

Best Regards,


Le 21/04/2016 19:10, Andrei Gherzan a écrit :
> Hi Julien,
>
> On Thu, Apr 21, 2016 at 10:15:23AM +0200, Julien Gueytat wrote:
>> Just to keep you informed that a bug report has been opened to Qt:
>> https://bugreports.qt.io/browse/QTBUG-52739
>>
>> We might save some patches in layers by solving this,
>> Thanks for helping,
>>
> Great Julien. Here is a hint - would this help your problem?
> https://lists.yoctoproject.org/pipermail/yocto/2016-February/028277.html
>
>> Le 20/04/2016 01:46, Julien Gueytat a écrit :
>>> Hi again guys,
>>>
>>> after more investigations:
>>>
>>> I found out that the default value -lEGL comes from
>>> ./mkspecs/common/linux.conf which is included in
>>> ./mkspecs/linux-oe-g++/qmake.conf
>>>
>>> linux-oe-g++ being the only generic mkspecs that should be used in Yocto
>>>
>>> So! At the time the configuration enters egl.pro the content of the
>>> variables LIBS and QMAKE_EGL_LIBS are still a bit weird for me :
>>>
>>> 1- LIBS already has the content of the QMAKE_EGL_LIBS content from the
>>> result of the pkg-config command.
>>> 2- QMAKE_EGL_LIBS has the content of the default value found in
>>> ./mkspecs/common/linux.conf
>>>
>>> There are two options to have it properly working:
>>> - First and easy option : remove the QMAKE_EGL_LIBS default variable in
>>> ./mkspecs/linux-oe-g++/qmake.conf since the good libs seems to already
>>> been present in the LIBS variable.
>>> - Second option : understand why the LIBS variable is already properly
>>> set and why the QMAKE_EGL_LIBS properly computed in the configure and
>>> present .qmake.vars is not used. (I would say that the device spec
>>> overrides the one from qmake spec... I did not dig further yet.)
>>>
>>> Anyway I'm pretty sure the trouble comes from meta-qt5 side now. I'm
>>> pretty sure meta-raspberrypi maintainers can confirm that their master
>>> branch handles pkg-config stuff now.
>>>
>>> Thanks advance for having a look on this guys,
>>> Best Regards
>>>
>>>
>>> Le 19/04/2016 10:46, Julien Gueytat a écrit :
>>>> Hi,
>>>>
>>>> I still can't figure out the patch to apply in meta-qt5 to get EGL
>>>> support with the Raspberry.
>>>>
>>>> The test to check EGL does not pass and fails with the following command:
>>>>
>>>> arm-poky-linux-gnueabi-g++  -march=armv7-a -marm -mthumb-interwork
>>>> -mfloat-abi=hard -mfpu=neon-vfpv4 -mtune=cortex-a7 --sysroot=/home/jgueytat/projects/LightPixels/poky/build/tmp/sysroots/lightpixels
>>>> -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-O1 -o egl egl.o
>>>> -lGLESv2 -lbcm_host -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
>>>>
>>>>
>>>> Here is the content of the file egl.pro:
>>>>
>>>> $ cat egl.pro
>>>> SOURCES = egl.cpp
>>>>
>>>> for(p, QMAKE_LIBDIR_EGL) {
>>>>      exists($$p):LIBS += -L$$p
>>>> }
>>>>
>>>> message("In egl.pro - 1: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
>>>> message("In egl.pro - 1: LIBS = $$LIBS")
>>>>
>>>> !isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH += $$QMAKE_INCDIR_EGL
>>>> !isEmpty(QMAKE_LIBS_EGL): LIBS += $$QMAKE_LIBS_EGL
>>>>
>>>> message("In egl.pro - 2: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
>>>> message("In egl.pro - 2: LIBS = $$LIBS")
>>>>
>>>> CONFIG -= qt
>>>>
>>>> In the main ./configure file of qtbase:
>>>>
>>>> | In configure #1: QMAKE_LIBS_EGL =
>>>> | In configure #2: QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host
>>>> -lvchostif -lbcm_host -lvcos -lvchiq_arm -pthread
>>>>
>>>> The variable QMAKE_LIBS_EGL is set properly.
>>>>
>>>>
>>>> In the ./config.tests/qpa/egl/egl.pro file:
>>>>
>>>> | Project MESSAGE: In egl.pro - 1: QMAKE_LIBS_EGL = -lEGL
>>>> | Project MESSAGE: In egl.pro - 1: LIBS = -lEGL -lGLESv2 -lbcm_host
>>>> -lvchostif -lvcos -lvchiq_arm -pthread
>>>> | Project MESSAGE: In egl.pro - 2: QMAKE_LIBS_EGL = -lEGL
>>>> | Project MESSAGE: In egl.pro - 2: LIBS = -lEGL -lGLESv2 -lbcm_host
>>>> -lvchostif -lvcos -lvchiq_arm -pthread -lEGL
>>>>
>>>>
>>>> *What I see is that:*
>>>> In the configure file the variable QMAKE_LIBS_EGL is properly set
>>>> through pkg-config.
>>>> In the egl.pro file... The variable LIBS gets the content of
>>>> QMAKE_LIBS_EGL and the variable QMAKE_LIBS_EGL gets back to its
>>>> default -lEGL.
>>>>
>>>> In the end with have -lGLESv2 before -lEGL and this does not link.
>>>>
>>>> I checked also the content of .qmake.vars:
>>>> grep QMAKE_LIBS_EGL .qmake.vars
>>>> QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif -lbcm_host
>>>> -lvcos -lvchiq_arm -pthread
>>>>
>>>>
>>>> The command QMakeVar set QMAKE_LIBS_EGL "$QMAKE_LIBS_EGL" seems to
>>>> have his job done too late...
>>>>
>>>> If someone has an idea to get the proper correction done...
>>>>
>>>> Best Regards,
>>>> Julien
>>>>
>>>>
>>>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Andrei Gherzan


--------------040302030501000404060902
Content-Type: text/x-patch;
 name="0001-Add-lvchostif-for-the-EGLFS-RaspberryPi-test-from-Qt.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Add-lvchostif-for-the-EGLFS-RaspberryPi-test-from-Qt.pa";
 filename*1="tch"

From 0d802a1033c297f376956c614cf7ba256d4d939b Mon Sep 17 00:00:00 2001
From: Julien Gueytat <contact@jgueytat.fr>
Date: Sun, 24 Apr 2016 19:12:13 +0200
Subject: [PATCH] Add -lvchostif for the EGLFS RaspberryPi test from Qt.

---
 pkgconfig/bcm_host.pc.in | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/pkgconfig/bcm_host.pc.in b/pkgconfig/bcm_host.pc.in
index c7237c5..3d21ae6 100644
--- a/pkgconfig/bcm_host.pc.in
+++ b/pkgconfig/bcm_host.pc.in
@@ -6,5 +6,5 @@ includedir=${prefix}/include
 Name: bcm_host
 Description: Broadcom VideoCore host API library
 Version: 1
-Libs: -L${libdir} -lbcm_host -lvcos -lvchiq_arm -pthread
+Libs: -L${libdir} -lbcm_host -lvcos -lvchiq_arm -lvchostif -pthread
 Cflags: -I${includedir} -I${includedir}/interface/vmcs_host/linux -I${includedir}/interface/vcos/pthreads -DUSE_VCHIQ_ARM
-- 
1.9.1


--------------040302030501000404060902
Content-Type: text/x-patch;
 name="0001-Use-completely-PKG_CONFIG-which-set-the-variables-li.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-Use-completely-PKG_CONFIG-which-set-the-variables-li.pa";
 filename*1="tch"

From 47c9d4d202bdc4bd6af3adc2a9d45c41525334c7 Mon Sep 17 00:00:00 2001
From: Julien Gueytat <contact@jgueytat.fr>
Date: Sun, 24 Apr 2016 17:27:45 +0200
Subject: [PATCH] Use completely PKG_CONFIG which set the variables: -
 $libdir_raw - $incdir_raw - $libs - $cflags There is no need to have anything
 in the .pro files then.

PKG_CONFIG calls for now only one dependency... bcm_host.
So we need to add EGL and GLESv2 too directly in the .pro.

The way *.pro files and pkg_config needs changes.
---
 config.tests/qpa/egl/egl.pro               |  8 --------
 config.tests/qpa/eglfs-brcm/eglfs-brcm.pro | 10 +---------
 config.tests/unix/opengles2/opengles2.pro  |  7 -------
 configure                                  | 12 ++----------
 4 files changed, 3 insertions(+), 34 deletions(-)

diff --git a/config.tests/qpa/egl/egl.pro b/config.tests/qpa/egl/egl.pro
index f04d053..c1889c5 100644
--- a/config.tests/qpa/egl/egl.pro
+++ b/config.tests/qpa/egl/egl.pro
@@ -1,10 +1,2 @@
 SOURCES = egl.cpp
-
-for(p, QMAKE_LIBDIR_EGL) {
-    exists($$p):LIBS += -L$$p
-}
-
-!isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH += $$QMAKE_INCDIR_EGL
-!isEmpty(QMAKE_LIBS_EGL): LIBS += $$QMAKE_LIBS_EGL
-
 CONFIG -= qt
diff --git a/config.tests/qpa/eglfs-brcm/eglfs-brcm.pro b/config.tests/qpa/eglfs-brcm/eglfs-brcm.pro
index ce16a3a..064ec6a 100644
--- a/config.tests/qpa/eglfs-brcm/eglfs-brcm.pro
+++ b/config.tests/qpa/eglfs-brcm/eglfs-brcm.pro
@@ -1,11 +1,3 @@
 SOURCES = eglfs-brcm.cpp
-
 CONFIG -= qt
-
-INCLUDEPATH += $$QMAKE_INCDIR_EGL
-
-for(p, QMAKE_LIBDIR_EGL) {
-    exists($$p):LIBS += -L$$p
-}
-
-LIBS += -lEGL -lGLESv2 -lbcm_host
+LIBS += -lEGL -lGLESv2
diff --git a/config.tests/unix/opengles2/opengles2.pro b/config.tests/unix/opengles2/opengles2.pro
index c4d7689..899ad99 100644
--- a/config.tests/unix/opengles2/opengles2.pro
+++ b/config.tests/unix/opengles2/opengles2.pro
@@ -1,12 +1,5 @@
 SOURCES = opengles2.cpp
-INCLUDEPATH += $$QMAKE_INCDIR_OPENGL_ES2
-
-for(p, QMAKE_LIBDIR_OPENGL_ES2) {
-    exists($$p):LIBS += -L$$p
-}
-
 CONFIG -= qt
-LIBS += $$QMAKE_LIBS_OPENGL_ES2
 mac {
     DEFINES += BUILD_ON_MAC
 }
diff --git a/configure b/configure
index c696e7e..843b79f 100755
--- a/configure
+++ b/configure
@@ -5796,15 +5796,7 @@ if [ "$CFG_EGL" != "no" ]; then
         exit 101
     fi
 
-    if [ -n "$PKG_CONFIG" ] && $PKG_CONFIG --exists egl 2>/dev/null; then
-        QMAKE_INCDIR_EGL=`$PKG_CONFIG --cflags-only-I egl 2>/dev/null | sed -e 's,^-I,,g' -e 's, -I, ,g'`
-        QMAKE_LIBS_EGL=`$PKG_CONFIG --libs egl 2>/dev/null`
-        QMAKE_CFLAGS_EGL=`$PKG_CONFIG --cflags egl 2>/dev/null`
-        QMakeVar set QMAKE_INCDIR_EGL "$QMAKE_INCDIR_EGL"
-        QMakeVar set QMAKE_LIBS_EGL "$QMAKE_LIBS_EGL"
-        QMakeVar set QMAKE_CFLAGS_EGL "`echo " $QMAKE_CFLAGS_EGL " | sed -e 's, -I[^ ]* , ,g;s,^ ,,;s, $,,'`"
-    fi       # detect EGL support
-    if compileTest qpa/egl "EGL" $QMAKE_CFLAGS_EGL $QMAKE_LIBS_EGL; then
+    if compileTestWithPkgConfig egl qpa/egl "EGL" EGL; then
         CFG_EGL=yes
         if compileTest qpa/egl-x11 "EGL-X11" $QMAKE_CFLAGS_EGL $QMAKE_LIBS_EGL; then
             CFG_EGL_X=yes
@@ -5827,7 +5819,7 @@ if [ "$CFG_EGLFS" != "no" ]; then
     if [ "$XPLATFORM_QNX" = "no" ] && [ "$CFG_OPENGL" != "no" ]; then
         CFG_EGLFS="$CFG_EGL"
         # Detect eglfs backends.
-        if compileTest qpa/eglfs-brcm "eglfs-brcm"; then
+        if compileTestWithPkgConfig bcm_host qpa/eglfs-brcm "eglfs-brcm" EGLFS_BRCM; then
             CFG_EGLFS_BRCM=yes
         else
             CFG_EGLFS_BRCM=no
-- 
1.9.1


--------------040302030501000404060902--
