Return-Path: <wutengss@gmail.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B00E0E006CA
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 05:48:53 -0800 (PST)
Received: by mail-ve0-f182.google.com with SMTP id jy13so888935veb.41
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 05:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=IqmzcsMEmf43rSjepknSqo6Q+iQSJCsucaGAt+wxeCY=;
	b=rL5Z5wznpuumLGDAnhfZxph5PIDJy/rG9XkOJATS02yb0LnJUE0+UyrY0u8LJfUpkQ
	0WQsnGYsQ4loyUBxCaizyV6T26tv8ykaP045jyShZr80O1W49sxKLcM5+cRCkTRCgHdZ
	77AIBv0XvqNsx+77rRyZlGW3P8x6WL/Jn9v3+zIA/4JdLJaadZe+JCO7MbWOL7lXEsxb
	4xTMxExSxLLW0M43fUtNzlwwnRcq2N+0boGRgjCUxW7fzh0JEcPjDKlRMLpQGPBDBQ3M
	2quxW8W2JImzP6D6ZBfspzOP3g/+6ZBZcxG1go6Z+f60uFkSq9H0FFDKK2NBwZbCWm2n
	VWXw==
MIME-Version: 1.0
X-Received: by 10.58.208.130 with SMTP id me2mr11423471vec.13.1385128132381;
	Fri, 22 Nov 2013 05:48:52 -0800 (PST)
Received: by 10.52.35.39 with HTTP; Fri, 22 Nov 2013 05:48:52 -0800 (PST)
Date: Fri, 22 Nov 2013 15:48:52 +0200
Message-ID: <CAOJdAdXRdNQKrPbX_Omd1LHawY1EnPE=3QW6w+Bz3WcjM28gkw@mail.gmail.com>
From: wuteng wu <wutengss@gmail.com>
To: yocto@yoctoproject.org
Subject: Qt creator build error in the first demo try
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
X-List-Received-Date: Fri, 22 Nov 2013 13:48:54 -0000
Content-Type: multipart/alternative; boundary=047d7bdc192c4d0b1004ebc44665

--047d7bdc192c4d0b1004ebc44665
Content-Type: text/plain; charset=ISO-8859-1

Hi guys,


I try to build my first embedded project in qt creator but failed.


the target board is ATMEL SAMA5D34, and a qt-demo-image has been boot to
the board and looks good, i build the yocto project by: bitbake
mata-toolchain-qte command, after that i configured the qt creator by
following the instruction from the link belows:

https://community.freescale.com/thread/309578


but after i press the build i get the mass compiler output msg as showed
below, the project is just a simple test with basic Gui, i cannot solve the
problem, anyone can help me, thx in advance.


**************************************************************************************************************

15:23:34: Running steps for project TestFun...

15:23:34: Starting:
"/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/bin/qmake2"
/home/teng/Teng/TestFun/TestFun.pro -r -spec linux-gnueabi-oe-g++
CONFIG+=debug CONFIG+=declarative_debug

15:23:34: The process
"/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/bin/qmake2" exited
normally.

15:23:34: Starting: "/usr/bin/make"

/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/bin/uic4
../TestFun/mainwindow.ui -o ui_mainwindow.h

arm-poky-linux-gnueabi-g++ -march=armv7-a -marm -mthumb-interwork
-mfloat-abi=hard -mtune=cortex-a9
--sysroot=/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi -c
-pipe -pipe -pipe -O2 -pipe -g -feliminate-unused-debug-types -O2 -pipe -g
-feliminate-unused-debug-types -fpermissive -g -g -g -Wall -W -Wall -W
-Wall -W -D_REENTRANT -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++
-I../TestFun
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia
-I. -I. -I../TestFun -I. -o main.o ../TestFun/main.cpp

In file included from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore/qobject.h:48:0,

from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui/qwidget.h:46,

from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui/qmainwindow.h:45,

from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui/QMainWindow:1,

from ../TestFun/mainwindow.h:4,

from ../TestFun/main.cpp:1:

/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore/qstring.h:174:17:
note: the mangling of 'va_list' has changed in GCC 4.4

arm-poky-linux-gnueabi-g++ -march=armv7-a -marm -mthumb-interwork
-mfloat-abi=hard -mtune=cortex-a9
--sysroot=/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi -c
-pipe -pipe -pipe -O2 -pipe -g -feliminate-unused-debug-types -O2 -pipe -g
-feliminate-unused-debug-types -fpermissive -g -g -g -Wall -W -Wall -W
-Wall -W -D_REENTRANT -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++
-I../TestFun
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia
-I. -I. -I../TestFun -I. -o mainwindow.o ../TestFun/mainwindow.cpp

In file included from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore/qobject.h:48:0,

from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui/qwidget.h:46,

from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui/qmainwindow.h:45,

from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui/QMainWindow:1,

from ../TestFun/mainwindow.h:4,

from ../TestFun/mainwindow.cpp:1:

/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore/qstring.h:174:17:
note: the mangling of 'va_list' has changed in GCC 4.4

/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/bin/moc4 -DQT_GUI_LIB
-DQT_CORE_LIB -DQT_SHARED
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++
-I../TestFun
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia
-I. -I. -I../TestFun -I. ../TestFun/mainwindow.h -o moc_mainwindow.cpp

arm-poky-linux-gnueabi-g++ -march=armv7-a -marm -mthumb-interwork
-mfloat-abi=hard -mtune=cortex-a9
--sysroot=/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi -c
-pipe -pipe -pipe -O2 -pipe -g -feliminate-unused-debug-types -O2 -pipe -g
-feliminate-unused-debug-types -fpermissive -g -g -g -Wall -W -Wall -W
-Wall -W -D_REENTRANT -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi/usr/share/qtopia/mkspecs/linux-g++
-I../TestFun
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia
-I. -I. -I../TestFun -I. -o moc_mainwindow.o moc_mainwindow.cpp

In file included from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore/qobject.h:48:0,

from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui/qwidget.h:46,

from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui/qmainwindow.h:45,

from
/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui/QMainWindow:1,

from ../TestFun/mainwindow.h:4,

from moc_mainwindow.cpp:10:

/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore/qstring.h:174:17:
note: the mangling of 'va_list' has changed in GCC 4.4

arm-poky-linux-gnueabi-g++ -march=armv7-a -marm -mthumb-interwork
-mfloat-abi=hard -mtune=cortex-a9
--sysroot=/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi
-Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
-Wl,-rpath-link,/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/lib
-o TestFun main.o mainwindow.o moc_mainwindow.o
-L/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/lib
-lQtGuiE -lQtNetworkE -lQtCoreE -lpthread

{ test -n "" && DESTDIR="" || DESTDIR=.; } && test $(gdb --version | sed -e
's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch
--quiet -ex 'set confirm off' -ex "save gdb-index $DESTDIR" -ex quit
'TestFun' && test -f TestFun.gdb-index && objcopy --add-section
'.gdb_index=TestFun.gdb-index' --set-section-flags '.gdb_index=readonly'
'TestFun' 'TestFun' && rm -f TestFun.gdb-index || true

Traceback (most recent call last):

File
"/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/site.py",
line 569, in <module>

main()

File
"/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/site.py",
line 551, in main

known_paths = addusersitepackages(known_paths)

File
"/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/site.py",
line 278, in addusersitepackages

user_site = getusersitepackages()

File
"/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/site.py",
line 253, in getusersitepackages

user_base = getuserbase() # this will also set USER_BASE

File
"/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/site.py",
line 242, in getuserbase

from sysconfig import get_config_var

File
"/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.7/sysconfig.py",
line 10, in <module>

'stdlib': '{base}/'+sys.lib+'/python{py_version_short}',

AttributeError: 'module' object has no attribute 'lib'

/bin/sh: 1: test: -gt: unexpected operator

15:23:38: The process "/usr/bin/make" exited normally.

15:23:38: Elapsed time: 00:04.

--047d7bdc192c4d0b1004ebc44665
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<style type=3D"text/css">
p, li { white-space: pre-wrap; }
</style>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(20,20,190)=
">Hi guys,</span></p><p style=3D"margin:0px;text-indent:0px"><br><span styl=
e=3D"color:rgb(20,20,190)"></span></p><p style=3D"margin:0px;text-indent:0p=
x"><span style=3D"color:rgb(20,20,190)">I try to build my first embedded pr=
oject in qt creator but failed.</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(20,20,190)=
"><br></span></p><p style=3D"margin:0px;text-indent:0px"><span style=3D"col=
or:rgb(20,20,190)">the target board is ATMEL SAMA5D34, and a qt-demo-image =
has been boot to the board and looks good, i build the yocto project by: bi=
tbake mata-toolchain-qte command, after that i configured the qt creator by=
 following the instruction from the link belows:<br>
</span></p><p style=3D"margin:0px;text-indent:0px"><a href=3D"https://commu=
nity.freescale.com/thread/309578">https://community.freescale.com/thread/30=
9578</a></p><p style=3D"margin:0px;text-indent:0px"><br></p><p style=3D"mar=
gin:0px;text-indent:0px">
but after i press the build i get the mass compiler output msg as showed be=
low, the project is just a simple test with basic Gui, i cannot solve the p=
roblem, anyone can help me, thx in advance.<br></p><p style=3D"margin:0px;t=
ext-indent:0px">
<br><span style=3D"color:rgb(20,20,190)"></span></p><p style=3D"margin:0px;=
text-indent:0px"><span style=3D"color:rgb(20,20,190)">*********************=
***************************************************************************=
**************<br>
</span></p><p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb=
(20,20,190)">15:23:34: Running steps for project TestFun...</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(20,20,190)=
">15:23:34: Starting: &quot;/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr=
/bin/qmake2&quot; /home/teng/Teng/TestFun/TestFun.pro -r -spec linux-gnueab=
i-oe-g++ CONFIG+=3Ddebug CONFIG+=3Ddeclarative_debug</span></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(20,20,190)=
">15:23:34: The process &quot;/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/u=
sr/bin/qmake2&quot; exited normally.</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(20,20,190)=
">15:23:34: Starting: &quot;/usr/bin/make&quot; </span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(60,60,60)"=
>/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/bin/uic4 ../TestFun/mainwi=
ndow.ui -o ui_mainwindow.h</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(60,60,60)"=
>arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -marm -mthumb-interwork -mflo=
at-abi=3Dhard -mtune=3Dcortex-a9 --sysroot=3D/opt/poky/1.4.1/sysroots/corte=
xa9hf-vfp-poky-linux-gnueabi -c -pipe -pipe -pipe  -O2 -pipe -g -feliminate=
-unused-debug-types  -O2 -pipe -g -feliminate-unused-debug-types -fpermissi=
ve -g -g -g -Wall -W -Wall -W -Wall -W -D_REENTRANT -DQT_GUI_LIB -DQT_CORE_=
LIB -DQT_SHARED -I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueab=
i/usr/share/qtopia/mkspecs/linux-g++ -I../TestFun -I/opt/poky/1.4.1/sysroot=
s/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore -I/opt/poky/=
1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui =
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/q=
topia -I. -I. -I../TestFun -I. -o main.o ../TestFun/main.cpp</span></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">In file included from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtCore/qobject.h:48:0,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtGui/qwidget.h:46,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtGui/qmainwindow.h:45,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtGui/QMainWindow:1,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from ../TestFun/mainwindow.h:4,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from ../TestFun/main.cpp:1:</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/q=
topia/QtCore/qstring.h:174:17: note: the mangling of &#39;va_list&#39; has =
changed in GCC 4.4</span></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(60,60,60)"=
>arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -marm -mthumb-interwork -mflo=
at-abi=3Dhard -mtune=3Dcortex-a9 --sysroot=3D/opt/poky/1.4.1/sysroots/corte=
xa9hf-vfp-poky-linux-gnueabi -c -pipe -pipe -pipe  -O2 -pipe -g -feliminate=
-unused-debug-types  -O2 -pipe -g -feliminate-unused-debug-types -fpermissi=
ve -g -g -g -Wall -W -Wall -W -Wall -W -D_REENTRANT -DQT_GUI_LIB -DQT_CORE_=
LIB -DQT_SHARED -I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueab=
i/usr/share/qtopia/mkspecs/linux-g++ -I../TestFun -I/opt/poky/1.4.1/sysroot=
s/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore -I/opt/poky/=
1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui =
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/q=
topia -I. -I. -I../TestFun -I. -o mainwindow.o ../TestFun/mainwindow.cpp</s=
pan></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">In file included from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtCore/qobject.h:48:0,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtGui/qwidget.h:46,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtGui/qmainwindow.h:45,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtGui/QMainWindow:1,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from ../TestFun/mainwindow.h:4,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from ../TestFun/mainwindow.cpp:1:</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/q=
topia/QtCore/qstring.h:174:17: note: the mangling of &#39;va_list&#39; has =
changed in GCC 4.4</span></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(60,60,60)"=
>/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/bin/moc4 -DQT_GUI_LIB -DQT=
_CORE_LIB -DQT_SHARED -I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi/usr/share/qtopia/mkspecs/linux-g++ -I../TestFun -I/opt/poky/1.4.1/s=
ysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore -I/opt=
/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/=
QtGui -I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/inc=
lude/qtopia -I. -I. -I../TestFun -I. ../TestFun/mainwindow.h -o moc_mainwin=
dow.cpp</span></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(60,60,60)"=
>arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -marm -mthumb-interwork -mflo=
at-abi=3Dhard -mtune=3Dcortex-a9 --sysroot=3D/opt/poky/1.4.1/sysroots/corte=
xa9hf-vfp-poky-linux-gnueabi -c -pipe -pipe -pipe  -O2 -pipe -g -feliminate=
-unused-debug-types  -O2 -pipe -g -feliminate-unused-debug-types -fpermissi=
ve -g -g -g -Wall -W -Wall -W -Wall -W -D_REENTRANT -DQT_GUI_LIB -DQT_CORE_=
LIB -DQT_SHARED -I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueab=
i/usr/share/qtopia/mkspecs/linux-g++ -I../TestFun -I/opt/poky/1.4.1/sysroot=
s/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtCore -I/opt/poky/=
1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/qtopia/QtGui =
-I/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/q=
topia -I. -I. -I../TestFun -I. -o moc_mainwindow.o moc_mainwindow.cpp</span=
></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">In file included from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtCore/qobject.h:48:0,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtGui/qwidget.h:46,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtGui/qmainwindow.h:45,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from /opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-=
gnueabi//usr/include/qtopia/QtGui/QMainWindow:1,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from ../TestFun/mainwindow.h:4,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">                 from moc_mainwindow.cpp:10:</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/include/q=
topia/QtCore/qstring.h:174:17: note: the mangling of &#39;va_list&#39; has =
changed in GCC 4.4</span></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(60,60,60)"=
>arm-poky-linux-gnueabi-g++  -march=3Darmv7-a -marm -mthumb-interwork -mflo=
at-abi=3Dhard -mtune=3Dcortex-a9 --sysroot=3D/opt/poky/1.4.1/sysroots/corte=
xa9hf-vfp-poky-linux-gnueabi -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed=
 -Wl,-rpath-link,/opt/poky/1.4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi=
//usr/lib -o TestFun main.o mainwindow.o moc_mainwindow.o    -L/opt/poky/1.=
4.1/sysroots/cortexa9hf-vfp-poky-linux-gnueabi//usr/lib -lQtGuiE -lQtNetwor=
kE -lQtCoreE -lpthread </span></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(60,60,60)"=
>{ test -n &quot;&quot; &amp;&amp; DESTDIR=3D&quot;&quot; || DESTDIR=3D.; }=
 &amp;&amp; test $(gdb --version | sed -e &#39;s,[^0-9]\+\([0-9]\)\.\([0-9]=
\).*,\1\2,;q&#39;) -gt 72 &amp;&amp; gdb --nx --batch --quiet -ex &#39;set =
confirm off&#39; -ex &quot;save gdb-index $DESTDIR&quot; -ex quit &#39;Test=
Fun&#39; &amp;&amp; test -f TestFun.gdb-index &amp;&amp; objcopy --add-sect=
ion &#39;.gdb_index=3DTestFun.gdb-index&#39; --set-section-flags &#39;.gdb_=
index=3Dreadonly&#39; &#39;TestFun&#39; &#39;TestFun&#39; &amp;&amp; rm -f =
TestFun.gdb-index || true</span></p>

<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">Traceback (most recent call last):</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">  File &quot;/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.=
7/site.py&quot;, line 569, in &lt;module&gt;</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">    main()</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">  File &quot;/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.=
7/site.py&quot;, line 551, in main</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">    known_paths =3D addusersitepackages(known_paths)</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">  File &quot;/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.=
7/site.py&quot;, line 278, in addusersitepackages</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">    user_site =3D getusersitepackages()</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">  File &quot;/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.=
7/site.py&quot;, line 253, in getusersitepackages</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">    user_base =3D getuserbase() # this will also set USER_BASE</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">  File &quot;/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.=
7/site.py&quot;, line 242, in getuserbase</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">    from sysconfig import get_config_var</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">  File &quot;/opt/poky/1.4.1/sysroots/i686-pokysdk-linux/usr/lib/python2.=
7/sysconfig.py&quot;, line 10, in &lt;module&gt;</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">    &#39;stdlib&#39;: &#39;{base}/&#39;+sys.lib+&#39;/python{py_version_s=
hort}&#39;,</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">AttributeError: &#39;module&#39; object has no attribute &#39;lib&#39;</s=
pan></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(190,20,20)=
">/bin/sh: 1: test: -gt: unexpected operator</span></p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(20,20,190)=
">15:23:38: The process &quot;/usr/bin/make&quot; exited normally.</span></=
p>
<p style=3D"margin:0px;text-indent:0px"><span style=3D"color:rgb(20,20,190)=
">15:23:38: Elapsed time: 00:04.</span></p></div>

--047d7bdc192c4d0b1004ebc44665--
