Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F37D7E00A0A; Sat, 11 Mar 2017 02:13:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B285BE009B9
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 02:13:02 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id BC42768A01C; Sat, 11 Mar 2017 10:13:00 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 47A8D68A019;
	Sat, 11 Mar 2017 10:13:00 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id C93676740301;
	Sat, 11 Mar 2017 11:12:59 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <057e9971-070d-5610-6aa3-63e4a4e65f47@mlbassoc.com>
Date: Sat, 11 Mar 2017 11:12:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
Subject: [meta-raspberrypi] Errors building
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
X-List-Received-Date: Sat, 11 Mar 2017 10:13:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

If I build for RaspberryPi-3 with vc4graphics enabled, I get
this error building omxplayer:

| In file included from linux/RBP.h:45:0,
|                  from linux/RBP.cpp:22:
| ./DllBCM.h:34:22: fatal error: bcm_host.h: No such file or directory
|  #include <bcm_host.h>
|                       ^
| compilation terminated.
| Makefile:44: recipe for target 'linux/RBP.o' failed
| make: *** [linux/RBP.o] Error 1
| make: *** Waiting for unfinished jobs....
| In file included from OMXCore.h:32:0,
|                  from OMXClock.h:27,
|                  from OMXReader.cpp:29:
| DllOMX.h:36:25: fatal error: IL/OMX_Core.h: No such file or directory
|  #include <IL/OMX_Core.h>
|                          ^
| compilation terminated.
| Makefile:44: recipe for target 'OMXReader.o' failed

If I disable the vc4graphics, I can't build webkitgtk:

| 
/build/rpi3_2016-09-13/tmp/work/cortexa7t2hf-neon-vfpv4-amltd-linux-gnueabi/webkitgtk/2.14.5-r0/webkitgtk-2.14.5/Source/WebCore/platform/graphics/egl/GLContextEGLX11.cpp: 
In static member function 'static void* WebCore::GLContextEGL::createWindowSurfaceX11(EGLDisplay, EGLConfig, 
GLNativeWindowType)':
| 
/build/rpi3_2016-09-13/tmp/work/cortexa7t2hf-neon-vfpv4-amltd-linux-gnueabi/webkitgtk/2.14.5-r0/webkitgtk-2.14.5/Source/WebCore/platform/graphics/egl/GLContextEGLX11.cpp:42:91: 
error: invalid static_cast from type 'GLNativeWindowType {aka long long unsigned int}' to type 'EGLNativeWindowType {aka 
void*}'
|      return eglCreateWindowSurface(display, config, static_cast<EGLNativeWindowType>(window), nullptr);

Using current master of Poky/Yocto & meta-raspberrypi
meta              = "master:d454dc2fc17711d3efe6dbe5aca3c734f0ed158b"
meta-raspberrypi  = "master:c768a3d1aed8d16d08afe12fddb359914e0a203a"

Ideas?  Ideally, I'd like both of these packages in my image for the rpi3.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

