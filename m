Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2830E00C02
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 01:42:55 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s3M8ggcB030200; Tue, 22 Apr 2014 09:42:42 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 9iP115uGXNEy; Tue, 22 Apr 2014 09:42:42 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s3M8gdbY030196
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 22 Apr 2014 09:42:40 +0100
Message-ID: <1398156153.16672.28.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Neuer User <auslands-kv@gmx.de>
Date: Tue, 22 Apr 2014 09:42:33 +0100
In-Reply-To: <lj57d5$6ao$1@ger.gmane.org>
References: <lj57d5$6ao$1@ger.gmane.org>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Newbie question: How to get dependencies into compile of custom recipe?
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
X-List-Received-Date: Tue, 22 Apr 2014 08:42:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2014-04-22 at 09:57 +0200, Neuer User wrote:
> Hi
> 
> Sorry for this simple question. I've just started building my first
> image with yocto and would now like to add a (very simple) own recipe.
> 
> I followed the Yocto Development guide, added my own layer and included
> the "helloworld" example.
> 
> Now I would like to exchange the helloworld.c code with a simple
> gstreamer-rtsp server code
> (http://cgit.freedesktop.org/gstreamer/gst-rtsp-server/tree/examples/test-launch.c).
> 
> I changed the bb file as follows, adding expecially the DEPENDS:
> 
> #
> # This file was derived from the 'Hello World!' example recipe in the
> # Yocto Project Development Manual.
> #
> 
> DESCRIPTION = "Simple helloworld application"
> SECTION = "multimedia"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> PR = "r0"
> 
> SRC_URI = "file://cameraserver.c"
> 
> DEPENDS = "gst-rtsp gstreamer"
> 
> S = "${WORKDIR}"
> 
> do_compile() {
>              ${CC} cameraserver.c -o cameraserver
> }
> 
> do_install() {
>              install -d ${D}${bindir}
>              install -m 0755 cameraserver ${D}${bindir}
> }
> 
> 
> The package "gst-rtsp" is correctly built (as
> libgstrtspserver-0.10-0-0.10.8-r0@cortexa9hf_vfp_neon), but the
> compilation process of the "cameraserver.c" does not find the necessary
> header include files.
> 
> NOTE: recipe camera-server-0.1-r0: task do_compile: Started
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | cameraserver.c:20:21: fatal error: gst/gst.h: No such file or directory
> |  #include <gst/gst.h>
> |                      ^
> | compilation terminated.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> /home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/camera-server/0.1-r0/temp/log.do_compile.26393)
> NOTE: recipe camera-server-0.1-r0: task do_compile: Failed
> 
> 
> The debug of bitbake shows, however, that it correctly identifies the
> dependent packages:
> 
> DEBUG: providers for gst-rtsp are: ['gst-rtsp']
> DEBUG: sorted runtime providers for gst-rtsp are:
> ['/home/ubuntu/yocto/sources/meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer/gst-rtsp_0.10.8.bb']
> DEBUG: adding
> '/home/ubuntu/yocto/sources/meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer/gst-rtsp_0.10.8.bb'
> to satisfy runtime 'gst-rtsp'
> DEBUG: providers for gstreamer are: ['gstreamer']
> DEBUG: sorted runtime providers for gstreamer are:
> ['/home/ubuntu/yocto/sources/poky/meta/recipes-multimedia/gstreamer/gstreamer_0.10.36.bb']
> DEBUG: adding
> '/home/ubuntu/yocto/sources/poky/meta/recipes-multimedia/gstreamer/gstreamer_0.10.36.bb'
> to satisfy runtime 'gstreamer'
> 
> 
> So, what am I doing wrong? Do I explicitly need to add the dependencies
> to the compile environment somehow? If yes, where are the found
> directories stored?
> 
> Or am I doing this all very wrong? I am really very new to Yocto.

Basically, you need to pass in the correct compiler and linker flags.

http://gstreamer.freedesktop.org/data/doc/gstreamer/head/faq/html/chapter-developing.html

Adding:

`pkg-config --cflags --libs gstreamer`

to your compiler line will probably help. The system will automatically
figure out things from there, the environment contains things that
pkg-config can use to generate the correct options.

Cheers,

Richard





