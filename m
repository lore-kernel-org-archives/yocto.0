Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE2D5E00C02
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 01:05:11 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WcVhP-0004rq-L1
	for yocto@yoctoproject.org; Tue, 22 Apr 2014 10:05:03 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 10:05:03 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 10:05:03 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Tue, 22 Apr 2014 09:57:20 +0200
Message-ID: <lj57d5$6ao$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
Subject: Newbie question: How to get dependencies into compile of custom recipe?
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
X-List-Received-Date: Tue, 22 Apr 2014 08:05:15 -0000
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 7bit

Hi

Sorry for this simple question. I've just started building my first
image with yocto and would now like to add a (very simple) own recipe.

I followed the Yocto Development guide, added my own layer and included
the "helloworld" example.

Now I would like to exchange the helloworld.c code with a simple
gstreamer-rtsp server code
(http://cgit.freedesktop.org/gstreamer/gst-rtsp-server/tree/examples/test-launch.c).

I changed the bb file as follows, adding expecially the DEPENDS:

#
# This file was derived from the 'Hello World!' example recipe in the
# Yocto Project Development Manual.
#

DESCRIPTION = "Simple helloworld application"
SECTION = "multimedia"
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PR = "r0"

SRC_URI = "file://cameraserver.c"

DEPENDS = "gst-rtsp gstreamer"

S = "${WORKDIR}"

do_compile() {
             ${CC} cameraserver.c -o cameraserver
}

do_install() {
             install -d ${D}${bindir}
             install -m 0755 cameraserver ${D}${bindir}
}


The package "gst-rtsp" is correctly built (as
libgstrtspserver-0.10-0-0.10.8-r0@cortexa9hf_vfp_neon), but the
compilation process of the "cameraserver.c" does not find the necessary
header include files.

NOTE: recipe camera-server-0.1-r0: task do_compile: Started
Log data follows:
| DEBUG: Executing shell function do_compile
| cameraserver.c:20:21: fatal error: gst/gst.h: No such file or directory
|  #include <gst/gst.h>
|                      ^
| compilation terminated.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/home/ubuntu/yocto/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/camera-server/0.1-r0/temp/log.do_compile.26393)
NOTE: recipe camera-server-0.1-r0: task do_compile: Failed


The debug of bitbake shows, however, that it correctly identifies the
dependent packages:

DEBUG: providers for gst-rtsp are: ['gst-rtsp']
DEBUG: sorted runtime providers for gst-rtsp are:
['/home/ubuntu/yocto/sources/meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer/gst-rtsp_0.10.8.bb']
DEBUG: adding
'/home/ubuntu/yocto/sources/meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer/gst-rtsp_0.10.8.bb'
to satisfy runtime 'gst-rtsp'
DEBUG: providers for gstreamer are: ['gstreamer']
DEBUG: sorted runtime providers for gstreamer are:
['/home/ubuntu/yocto/sources/poky/meta/recipes-multimedia/gstreamer/gstreamer_0.10.36.bb']
DEBUG: adding
'/home/ubuntu/yocto/sources/poky/meta/recipes-multimedia/gstreamer/gstreamer_0.10.36.bb'
to satisfy runtime 'gstreamer'


So, what am I doing wrong? Do I explicitly need to add the dependencies
to the compile environment somehow? If yes, where are the found
directories stored?

Or am I doing this all very wrong? I am really very new to Yocto.

Thanks for any help!

Michael


