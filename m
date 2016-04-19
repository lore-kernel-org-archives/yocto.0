Return-Path: <contact@jgueytat.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A88CE00ED9; Tue, 19 Apr 2016 02:16:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.178.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1465 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Apr 2016 02:16:50 PDT
Received: from slow1-d.mail.gandi.net (slow1-d.mail.gandi.net [217.70.178.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B2EEE00CA2
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 02:16:50 -0700 (PDT)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
	[217.70.183.197])
	by slow1-d.mail.gandi.net (Postfix) with ESMTP id 9BBEC486E67
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 10:46:11 +0200 (CEST)
X-Originating-IP: 92.245.156.62
Received: from [192.168.1.49] (unknown [92.245.156.62])
	(Authenticated sender: contact@jgueytat.fr)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 8AF3541C086
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 10:46:11 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Julien Gueytat <contact@jgueytat.fr>
Message-ID: <5715F053.8040801@jgueytat.fr>
Date: Tue, 19 Apr 2016 10:46:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
Subject: [meta-qt5][meta-raspberrypi]: Qt5 with EGL support for the Raspberry through linux-oe-g++
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
X-List-Received-Date: Tue, 19 Apr 2016 09:16:55 -0000
Content-Type: multipart/alternative;
	boundary="------------080008000709080404050907"

--------------080008000709080404050907
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I still can't figure out the patch to apply in meta-qt5 to get EGL 
support with the Raspberry.

The test to check EGL does not pass and fails with the following command:

arm-poky-linux-gnueabi-g++  -march=armv7-a -marm  -mthumb-interwork 
-mfloat-abi=hard -mfpu=neon-vfpv4 -mtune=cortex-a7 
--sysroot=/home/jgueytat/projects/LightPixels/poky/build/tmp/sysroots/lightpixels 
-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-O1 -o egl egl.o 
-lGLESv2 -lbcm_host -lvchostif -lvcos -lvchiq_arm -pthread -lEGL


Here is the content of the file egl.pro:

$ cat egl.pro
SOURCES = egl.cpp

for(p, QMAKE_LIBDIR_EGL) {
     exists($$p):LIBS += -L$$p
}

message("In egl.pro - 1: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
message("In egl.pro - 1: LIBS = $$LIBS")

!isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH += $$QMAKE_INCDIR_EGL
!isEmpty(QMAKE_LIBS_EGL): LIBS += $$QMAKE_LIBS_EGL

message("In egl.pro - 2: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")
message("In egl.pro - 2: LIBS = $$LIBS")

CONFIG -= qt

In the main ./configure file of qtbase:

| In configure #1: QMAKE_LIBS_EGL =
| In configure #2: QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif 
-lbcm_host -lvcos -lvchiq_arm -pthread

The variable QMAKE_LIBS_EGL is set properly.


In the ./config.tests/qpa/egl/egl.pro file:

| Project MESSAGE: In egl.pro - 1: QMAKE_LIBS_EGL = -lEGL
| Project MESSAGE: In egl.pro - 1: LIBS = -lEGL -lGLESv2 -lbcm_host 
-lvchostif -lvcos -lvchiq_arm -pthread
| Project MESSAGE: In egl.pro - 2: QMAKE_LIBS_EGL = -lEGL
| Project MESSAGE: In egl.pro - 2: LIBS = -lEGL -lGLESv2 -lbcm_host 
-lvchostif -lvcos -lvchiq_arm -pthread -lEGL


*What I see is that:*
In the configure file the variable QMAKE_LIBS_EGL is properly set 
through pkg-config.
In the egl.pro file... The variable LIBS gets the content of 
QMAKE_LIBS_EGL and the variable QMAKE_LIBS_EGL gets back to its default 
-lEGL.

In the end with have -lGLESv2 before -lEGL and this does not link.

I checked also the content of .qmake.vars:
grep QMAKE_LIBS_EGL .qmake.vars
QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif -lbcm_host -lvcos 
-lvchiq_arm -pthread


The command QMakeVar set QMAKE_LIBS_EGL "$QMAKE_LIBS_EGL" seems to have 
his job done too late...

If someone has an idea to get the proper correction done...

Best Regards,
Julien


--------------080008000709080404050907
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi,<br>
    <br>
    I still can't figure out the patch to apply in meta-qt5 to get EGL
    support with the Raspberry.<br>
    <br>
    The test to check EGL does not pass and fails with the following
    command:<br>
    <br>
    arm-poky-linux-gnueabi-g++  -march=armv7-a -marm  -mthumb-interwork
    -mfloat-abi=hard -mfpu=neon-vfpv4 -mtune=cortex-a7
    --sysroot=/home/jgueytat/projects/LightPixels/poky/build/tmp/sysroots/lightpixels

    -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -Wl,-O1 -o egl egl.o  
    -lGLESv2 -lbcm_host -lvchostif -lvcos -lvchiq_arm -pthread -lEGL<br>
    <br>
    <br>
    Here is the content of the file egl.pro:<br>
    <br>
    $ cat egl.pro <br>
    SOURCES = egl.cpp<br>
    <br>
    for(p, QMAKE_LIBDIR_EGL) {<br>
        exists($$p):LIBS += -L$$p<br>
    }<br>
    <br>
    message("In egl.pro - 1: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")<br>
    message("In egl.pro - 1: LIBS = $$LIBS")<br>
    <br>
    !isEmpty(QMAKE_INCDIR_EGL): INCLUDEPATH += $$QMAKE_INCDIR_EGL<br>
    !isEmpty(QMAKE_LIBS_EGL): LIBS += $$QMAKE_LIBS_EGL<br>
    <br>
    message("In egl.pro - 2: QMAKE_LIBS_EGL = $$QMAKE_LIBS_EGL")<br>
    message("In egl.pro - 2: LIBS = $$LIBS")<br>
    <br>
    CONFIG -= qt<br>
    <br>
    In the main ./configure file of qtbase:<br>
    <br>
    | In configure #1: QMAKE_LIBS_EGL =<br>
    | In configure #2: QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host
    -lvchostif -lbcm_host -lvcos -lvchiq_arm -pthread<br>
    <br>
    The variable QMAKE_LIBS_EGL is set properly.<br>
    <br>
    <br>
    In the ./config.tests/qpa/egl/egl.pro file:<br>
    <br>
    | Project MESSAGE: In egl.pro - 1: QMAKE_LIBS_EGL = -lEGL<br>
    | Project MESSAGE: In egl.pro - 1: LIBS = -lEGL -lGLESv2 -lbcm_host
    -lvchostif -lvcos -lvchiq_arm -pthread<br>
    | Project MESSAGE: In egl.pro - 2: QMAKE_LIBS_EGL = -lEGL<br>
    | Project MESSAGE: In egl.pro - 2: LIBS = -lEGL -lGLESv2 -lbcm_host
    -lvchostif -lvcos -lvchiq_arm -pthread -lEGL<br>
    <br>
    <br>
    <b>What I see is that:</b><br>
    In the configure file the variable QMAKE_LIBS_EGL is properly set
    through pkg-config.<br>
    In the egl.pro file... The variable LIBS gets the content of
    QMAKE_LIBS_EGL and the variable QMAKE_LIBS_EGL gets back to its
    default -lEGL.<br>
    <br>
    In the end with have -lGLESv2 before -lEGL and this does not link.<br>
    <br>
    I checked also the content of .qmake.vars:<br>
    grep QMAKE_LIBS_EGL .qmake.vars <br>
    QMAKE_LIBS_EGL = -lEGL -lGLESv2 -lbcm_host -lvchostif -lbcm_host
    -lvcos -lvchiq_arm -pthread<br>
    <br>
    <br>
    The command QMakeVar set QMAKE_LIBS_EGL "$QMAKE_LIBS_EGL" seems to
    have his job done too late...<br>
    <br>
    If someone has an idea to get the proper correction done...<br>
    <br>
    Best Regards,<br>
    Julien<br>
    <br>
  </body>
</html>

--------------080008000709080404050907--
