Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D217E00DE8; Thu, 24 Sep 2015 21:42:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23177E0071C
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 21:42:44 -0700 (PDT)
Received: by iofh134 with SMTP id h134so99369550iof.0
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 21:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=3gOHtGpZhnVe7UZOqzrodNny9RxBUzSvF2PndJCC8cc=;
	b=mik1/DHSxppdGqNScnIRBcCNV9f6eTNx3UUqiVzD7tqCTkcJGhQz7rp6O98Q/fMKSt
	jAKbTbRbLZORkhzIJq4B2NDVvM7ycj8xAa+O9BupGXGdOI9puxvSJD2Ewf2EmoI7WzLP
	recsTDVUKljx0H3JCkP4WdxOrAnnS2osuU3eZ8X0swNerVVP9THm6Uko9AHGV/5frpNO
	fELpyGLWt1Is/0MlzILodhf1zAUqnWT6xtP9UtRp4FbXLE3vIuOIjNZjhfsFruq/9DH4
	JoaXSMJcfUEla+CrRtiW4VM5nQjmTYI6RAM6OXMX33F0kqid4yfPVuF2VSXcvoWG32ig
	Iu4w==
X-Received: by 10.107.4.131 with SMTP id 125mr4022480ioe.49.1443156163910;
	Thu, 24 Sep 2015 21:42:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Thu, 24 Sep 2015 21:42:14 -0700 (PDT)
In-Reply-To: <5604850F.2030108@eins-plus.de>
References: <5604850F.2030108@eins-plus.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 24 Sep 2015 21:42:14 -0700
Message-ID: <CAMKF1so1qMH=FNzoj0PzE7FN1FeGiLM=mcq-ywYfRziO4Cb-Ng@mail.gmail.com>
To: Tom Martin <t.martin@eins-plus.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] compiling userland
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
X-List-Received-Date: Fri, 25 Sep 2015 04:42:48 -0000
Content-Type: text/plain; charset=UTF-8

Can you try the patches from
https://github.com/kraj/meta-raspberrypi/commits/kraj/master

On Thu, Sep 24, 2015 at 4:19 PM, Tom Martin <t.martin@eins-plus.de> wrote:
> i'm completly new to yocta and doing my first steps.
>
> plan is to build a system with a small footprint for low-latency video
> wifibroadcast.
>
> first steps are trying to build rpi-test-image including omxplayer. but
> compiling fails when compiling userland.
>
> last lines before the failure are. am i missing just something basic?
>
>
> | [ 25%] Building C object
> interface/mmal/openmaxil/CMakeFiles/mmal_omxutil.dir/mmalomx_util_params_audio.c.o
> | cd
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/interface/mmal/openmaxil
> &&
> /media/tm/linux_daten/master/rpi-build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
> -DEGL_SERVER_DISPMANX -DHAVE_CMAKE_CONFIG -DHAVE_VMCS_CONFIG -DOMX_SKIP64BIT
> -DTV_SUPPORTED_MODE_NO_DEPRECATED -DUSE_VCHIQ_ARM -DVCHI_BULK_ALIGN=1
> -DVCHI_BULK_GRANULARITY=1 -D_FILE_OFFSET_BITS=64 -D_HAVE_SBRK
> -D_LARGEFILE64_SOURCE -D_LARGEFILE_SOURCE -D_REENTRANT -D__VIDEOCORE4__
> -Dmmal_omxutil_EXPORTS -march=armv6 -mfloat-abi=hard -mtune=arm1176jzf-s
> -mfpu=vfp
> --sysroot=/media/tm/linux_daten/master/rpi-build/tmp/sysroots/raspberrypi
> -O2 -pipe -g -feliminate-unused-debug-types -fPIC -Wno-multichar -Wall
> -Wno-unused-but-set-variable -fPIC -O2 -pipe -g
> -feliminate-unused-debug-types  -O2 -pipe -g -feliminate-unused-debug-types
> -fPIC -DNDEBUG -fPIC
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnu
> eabi/userland/git-r5/git/build/inc
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/host_applications/framework
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vcos/pthreads
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host/linux
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host/khronos
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/khronos/include
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r
> 5/build
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vchiq_arm
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/host_support/include
> -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal
> -Wall -Werror -o CMakeFiles/mmal_omxutil.dir/mmalomx_util_params_audio.c.o
> -c
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_audio.c
> | In file included from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos.h:185:0,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vcos/pthreads/vcos_dlfcn.c:28:
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:112:6:
> error: inline function 'vcos_timer_delete' declared but never defined
> [-Werror]
> |  void vcos_timer_delete(VCOS_TIMER_T *timer);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:109:6:
> error: inline function 'vcos_timer_reset' declared but never defined
> [-Werror]
> |  void vcos_timer_reset(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:102:6:
> error: inline function 'vcos_timer_cancel' declared but never defined
> [-Werror]
> |  void vcos_timer_cancel(VCOS_TIMER_T *timer);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:95:6:
> error: inline function 'vcos_timer_set' declared but never defined [-Werror]
> |  void vcos_timer_set(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:80:15:
> error: inline function 'vcos_timer_create' declared but never defined
> [-Werror]
> |  VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
> |                ^
> | In file included from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos.h:127:0,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vcos/pthreads/vcos_dlfcn.c:28:
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:269:6:
> error: inline function 'vcos_thread_resume' declared but never defined
> [-Werror]
> |  void vcos_thread_resume(VCOS_THREAD_T *thread);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:262:5:
> error: inline function 'vcos_thread_running' declared but never defined
> [-Werror]
> |  int vcos_thread_running(VCOS_THREAD_T *thread);
> |      ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:251:15:
> error: inline function 'vcos_change_preemption' declared but never defined
> [-Werror]
> |  VCOS_UNSIGNED vcos_change_preemption(VCOS_UNSIGNED pe);
> |                ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:234:6:
> error: inline function 'vcos_thread_relinquish' declared but never defined
> [-Werror]
> |  void vcos_thread_relinquish(void);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:186:15:
> error: inline function 'vcos_thread_get_affinity' declared but never defined
> [-Werror]
> |  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
> |                ^
> | In file included from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos.h:185:0,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal_common.h:40,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal.h:363,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx.h:36,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params.c:29:
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:112:6:
> error: inline function 'vcos_timer_delete' declared but never defined
> [-Werror]
> |  void vcos_timer_delete(VCOS_TIMER_T *timer);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:109:6:
> error: inline function 'vcos_timer_reset' declared but never defined
> [-Werror]
> |  void vcos_timer_reset(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:102:6:
> error: inline function 'vcos_timer_cancel' declared but never defined
> [-Werror]
> |  void vcos_timer_cancel(VCOS_TIMER_T *timer);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:95:6:
> error: inline function 'vcos_timer_set' declared but never defined [-Werror]
> |  void vcos_timer_set(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:80:15:
> error: inline function 'vcos_timer_create' declared but never defined
> [-Werror]
> |  VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
> |                ^
> | In file included from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos.h:127:0,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal_common.h:40,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal.h:363,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx.h:36,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params.c:29:
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:269:6:
> error: inline function 'vcos_thread_resume' declared but never defined
> [-Werror]
> |  void vcos_thread_resume(VCOS_THREAD_T *thread);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:262:5:
> error: inline function 'vcos_thread_running' declared but never defined
> [-Werror]
> |  int vcos_thread_running(VCOS_THREAD_T *thread);
> |      ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:251:15:
> error: inline function 'vcos_change_preemption' declared but never defined
> [-Werror]
> |  VCOS_UNSIGNED vcos_change_preemption(VCOS_UNSIGNED pe);
> |                ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:234:6:
> error: inline function 'vcos_thread_relinquish' declared but never defined
> [-Werror]
> |  void vcos_thread_relinquish(void);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:186:15:
> error: inline function 'vcos_thread_get_affinity' declared but never defined
> [-Werror]
> |  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
> |                ^
> | In file included from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos.h:185:0,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal_common.h:40,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal.h:363,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx.h:36,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_audio.c:28:
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:112:6:
> error: inline function 'vcos_timer_delete' declared but never defined
> [-Werror]
> |  void vcos_timer_delete(VCOS_TIMER_T *timer);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:109:6:
> error: inline function 'vcos_timer_reset' declared but never defined
> [-Werror]
> |  void vcos_timer_reset(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:102:6:
> error: inline function 'vcos_timer_cancel' declared but never defined
> [-Werror]
> |  void vcos_timer_cancel(VCOS_TIMER_T *timer);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:95:6:
> error: inline function 'vcos_timer_set' declared but never defined [-Werror]
> |  void vcos_timer_set(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:80:15:
> error: inline function 'vcos_timer_create' declared but never defined
> [-Werror]
> |  VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
> |                ^
> | In file included from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos.h:127:0,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal_common.h:40,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal.h:363,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx.h:36,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxil/mmalomx_util_params_audio.c:28:
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:269:6:
> error: inline function 'vcos_thread_resume' declared but never defined
> [-Werror]
> |  void vcos_thread_resume(VCOS_THREAD_T *thread);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:262:5:
> error: inline function 'vcos_thread_running' declared but never defined
> [-Werror]
> |  int vcos_thread_running(VCOS_THREAD_T *thread);
> |      ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:251:15:
> error: inline function 'vcos_change_preemption' declared but never defined
> [-Werror]
> |  VCOS_UNSIGNED vcos_change_preemption(VCOS_UNSIGNED pe);
> |                ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:234:6:
> error: inline function 'vcos_thread_relinquish' declared but never defined
> [-Werror]
> |  void vcos_thread_relinquish(void);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:186:15:
> error: inline function 'vcos_thread_get_affinity' declared but never defined
> [-Werror]
> |  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
> |                ^
> | cc1: all warnings being treated as errors
> | make[2]: ***
> [interface/mmal/openmaxil/CMakeFiles/mmal_omxutil.dir/mmalomx_util_params_audio.c.o]
> Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | make -f
> interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_test.dir/build.make
> interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_test.dir/depend
> | cc1: all warnings being treated as errors
> | make[2]: *** [interface/vcos/pthreads/CMakeFiles/vcos.dir/vcos_dlfcn.c.o]
> Error 1
> | make[2]: *** Waiting for unfinished jobs....
> | cc1: all warnings being treated as errors
> | make[2]: ***
> [interface/mmal/openmaxil/CMakeFiles/mmal_omxutil.dir/mmalomx_util_params.c.o]
> Error 1
> | make[2]: Leaving directory
> `/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
> | make[1]: *** [interface/mmal/openmaxil/CMakeFiles/mmal_omxutil.dir/all]
> Error 2
> | make[1]: *** Waiting for unfinished jobs....
> | make[2]: Entering directory
> `/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
> | cd
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build
> &&
> /media/tm/linux_daten/master/rpi-build/tmp/sysroots/x86_64-linux/usr/bin/cmake
> -E cmake_depends "Unix Makefiles"
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host/linux/vcfiled
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/interface/vmcs_host/linux/vcfiled
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_test.dir/DependInfo.cmake
> --color=
> | make[2]: Leaving directory
> `/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
> | make -f
> interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_test.dir/build.make
> interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_test.dir/build
> | make[2]: Entering directory
> `/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
> | make[2]: Nothing to be done for
> `interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_test.dir/build'.
> | make[2]: Leaving directory
> `/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
> | [ 25%] Built target vcfiled_lock_test
> | In file included from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos.h:127:0,
> |                  from
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vcos/pthreads/vcos_pthreads.c:29:
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:269:6:
> error: inline function 'vcos_thread_resume' declared but never defined
> [-Werror]
> |  void vcos_thread_resume(VCOS_THREAD_T *thread);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:262:5:
> error: inline function 'vcos_thread_running' declared but never defined
> [-Werror]
> |  int vcos_thread_running(VCOS_THREAD_T *thread);
> |      ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:251:15:
> error: inline function 'vcos_change_preemption' declared but never defined
> [-Werror]
> |  VCOS_UNSIGNED vcos_change_preemption(VCOS_UNSIGNED pe);
> |                ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:234:6:
> error: inline function 'vcos_thread_relinquish' declared but never defined
> [-Werror]
> |  void vcos_thread_relinquish(void);
> |       ^
> |
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:186:15:
> error: inline function 'vcos_thread_get_affinity' declared but never defined
> [-Werror]
> |  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
> |                ^
> | cc1: all warnings being treated as errors
> | make[2]: ***
> [interface/vcos/pthreads/CMakeFiles/vcos.dir/vcos_pthreads.c.o] Error 1
> | make[2]: Leaving directory
> `/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
> | make[1]: *** [interface/vcos/pthreads/CMakeFiles/vcos.dir/all] Error 2
> | make[1]: Leaving directory
> `/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
> | make: *** [all] Error 2
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (log file is located at
> /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/temp/log.do_compile.11496)
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

