Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BE45E00807; Thu, 21 Aug 2014 04:15:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.9 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, FSL_HELO_BARE_IP_2, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_LOW, RCVD_IN_SORBS_WEB, RCVD_NUMERIC_HELO,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (babu.anoop[at]gmail.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 1.2 RCVD_NUMERIC_HELO Received: contains an IP address used for HELO
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [115.248.23.130 listed in dnsbl.sorbs.net]
	*  1.7 FSL_HELO_BARE_IP_2 FSL_HELO_BARE_IP_2
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8013E004F5
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 04:14:57 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XKQKW-0005Mg-6p
	for yocto@yoctoproject.org; Thu, 21 Aug 2014 13:14:56 +0200
Received: from 115.248.23.130 ([115.248.23.130])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 13:14:56 +0200
Received: from babu.anoop by 115.248.23.130 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 13:14:56 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Anoop <babu.anoop@gmail.com>
Date: Thu, 21 Aug 2014 11:14:44 +0000 (UTC)
Message-ID: <loom.20140821T131142-418@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 115.248.23.130 (Mozilla/5.0 (Windows NT 6.1;
	WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143
	Safari/537.36)
Subject: Tizen Build Using Yocto - bitbake error mesa_10.1.3.bb,do_configure
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
X-List-Received-Date: Thu, 21 Aug 2014 11:15:03 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hi

Yocto Build for minimal image

Summary: 1 task failed:
  /home/sfm/YOCTO/poky/meta/recipes-graphics/mesa/mesa_10.1.3.bb, 
do_configure

*********************************************************************
configure: error: Package requirements (x11-xcb xcb-dri2 >= 1.8 xcb-xfixes) 
were not met:

No package 'x11-xcb' found
No package 'xcb-dri2' found
No package 'xcb-xfixes' found

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

Alternatively, you may set the environment variables XCB_DRI2_CFLAGS
and XCB_DRI2_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.

+ '[' 1 '!=' 0 ']'
+ echo 'Configure failed. The contents of all config.log files follows to 
aid debugging'
Configure failed. The contents of all config.log files follows to aid 
debugging
+ find /home/sfm/YOCTO/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-
gnueabi/mesa/2_10.1.3-r0/Mesa-10.1.3 -name config.log -print -exec cat '{}' 
';'

+ bbfatal 'oe_runconf failed'
+ echo 'ERROR: oe_runconf failed'
ERROR: oe_runconf failed
+ exit 1
+ bb_exit_handler
+ ret=1
+ case $ret in
+ case $BASH_VERSION in
+ echo 'WARNING: /home/sfm/YOCTO/build/tmp/work/cortexa9hf-vfp-neon-mx6-
poky-linux-gnueabi/mesa/2_10.1.3-r0/temp/run.do_configure.12232:1 exit 1 
from
  exit' 1
WARNING: /home/sfm/YOCTO/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-
gnueabi/mesa/2_10.1.3-r0/temp/run.do_configure.12232:1 exit 1 from
  exit 1
+ exit 1

CTO/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking whether arm-poky-linux-gnueabi-gcc  -march=armv7-a -mthumb-
interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a9 --
sysroot=/home/sfm/YOCTO/build/tmp/sysroots/imx6qsabreauto supports -
Werror=missing-prototypes... yes
checking whether arm-poky-linux-gnueabi-gcc  -march=armv7-a -mthumb-
interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a9 --
sysroot=/home/sfm/YOCTO/build/tmp/sysroots/imx6qsabreauto supports -
fvisibility=hidden... yes
checking whether arm-poky-linux-gnueabi-g++  -march=armv7-a -mthumb-
interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a9 --
sysroot=/home/sfm/YOCTO/build/tmp/sysroots/imx6qsabreauto supports -
fvisibility=hidden... yes
checking whether C compiler accepts -msse4.1... no
checking whether to enable assembly... no, platform not supported
checking for dlopen... no
checking for dlopen in -ldl... yes
checking for clock_gettime... yes
checking for posix_memalign... (cached) yes
checking for the pthreads library -lpthreads... no
checking whether pthreads work without any flags... no
checking whether pthreads work with -Kthread... no
checking whether pthreads work with -kthread... no
checking for the pthreads library -llthread... no
checking whether pthreads work with -pthread... yes
checking for joinable pthread attribute... PTHREAD_CREATE_JOINABLE
checking if more special flags are required for pthreads... no
checking for PTHREAD_PRIO_INHERIT... no
configure: WARNING: GLX disabled, disabling Xlib-GLX
checking for LIBDRM... yes
checking for LIBUDEV... yes
checking for EXPAT... yes
checking for mincore... yes
checking for XCB_DRI2... no
configure: error: Package requirements (x11-xcb xcb-dri2 >= 1.8 xcb-xfixes) 
were not met:

No package 'x11-xcb' found
No package 'xcb-dri2' found
No package 'xcb-xfixes' found

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

Alternatively, you may set the environment variables XCB_DRI2_CFLAGS
and XCB_DRI2_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.
+ '[' 1 '!=' 0 ']'
+ echo 'Configure failed. The contents of all config.log files follows to 
aid debugging'
Configure failed. The contents of all config.log files follows to aid 
debugging
+ find /home/sfm/YOCTO/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-
gnueabi/mesa/2_10.1.3-r0/Mesa-10.1.3 -name config.log -print -exec cat '{}' 
';'
+ bbfatal 'oe_runconf failed'
+ echo 'ERROR: oe_runconf failed'
ERROR: oe_runconf failed
+ exit 1
+ bb_exit_handler
+ ret=1
+ case $ret in
+ case $BASH_VERSION in
+ echo 'WARNING: /home/sfm/YOCTO/build/tmp/work/cortexa9hf-vfp-neon-mx6-
poky-linux-gnueabi/mesa/2_10.1.3-r0/temp/run.do_configure.12232:1 exit 1 
from
  exit' 1
WARNING: /home/sfm/YOCTO/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-
gnueabi/mesa/2_10.1.3-r0/temp/run.do_configure.12232:1 exit 1 from
  exit 1
+ exit 1
ERROR: Function failed: do_configure (log file is located at 
/home/sfm/YOCTO/build/tmp/work/cortexa9hf-vfp-neon-mx6-poky-linux-
gnueabi/mesa/2_10.1.3-r0/temp/log.do_configure.12232)

Please give inputs to resolve the error


