Return-Path: <t.martin@eins-plus.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02B06E00F5D; Thu, 24 Sep 2015 16:27:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.63.214.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  1.0 XPRIO Has X-Priority header
X-Greylist: delayed 467 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Sep 2015 16:27:48 PDT
Received: from mail.bw-networx.net (mail.bw-networx.net [178.63.214.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C721E00E69
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:27:48 -0700 (PDT)
Received: from [192.168.2.157]
	(HSI-KBW-109-193-151-205.hsi7.kabel-badenwuerttemberg.de
	[109.193.151.205])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.bw-networx.net (Postfix) with ESMTPSA id 664B51DC2F
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 01:20:00 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Priority: Normal
From: Tom Martin <t.martin@eins-plus.de>
Message-ID: <5604850F.2030108@eins-plus.de>
Date: Fri, 25 Sep 2015 01:19:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
Subject: [meta-raspberrypi] compiling userland
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
X-List-Received-Date: Thu, 24 Sep 2015 23:27:54 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

i'm completly new to yocta and doing my first steps.

plan is to build a system with a small footprint for low-latency video=20
wifibroadcast.

first steps are trying to build rpi-test-image including omxplayer. but=20
compiling fails when compiling userland.

last lines before the failure are. am i missing just something basic?


| [ 25%] Building C object interface/mmal/openmaxil/CMakeFiles/mmal_omxut=
il.dir/mmalomx_util_params_audio.c.o
| cd /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-lin=
ux-gnueabi/userland/git-r5/build/interface/mmal/openmaxil && /media/tm/li=
nux_daten/master/rpi-build/tmp/sysroots/x86_64-linux/usr/bin/arm-poky-lin=
ux-gnueabi/arm-poky-linux-gnueabi-gcc  -DEGL_SERVER_DISPMANX -DHAVE_CMAKE=
_CONFIG -DHAVE_VMCS_CONFIG -DOMX_SKIP64BIT -DTV_SUPPORTED_MODE_NO_DEPRECA=
TED -DUSE_VCHIQ_ARM -DVCHI_BULK_ALIGN=3D1 -DVCHI_BULK_GRANULARITY=3D1 -D_=
FILE_OFFSET_BITS=3D64 -D_HAVE_SBRK -D_LARGEFILE64_SOURCE -D_LARGEFILE_SOU=
RCE -D_REENTRANT -D__VIDEOCORE4__ -Dmmal_omxutil_EXPORTS -march=3Darmv6 -=
mfloat-abi=3Dhard -mtune=3Darm1176jzf-s -mfpu=3Dvfp  --sysroot=3D/media/t=
m/linux_daten/master/rpi-build/tmp/sysroots/raspberrypi  -O2 -pipe -g -fe=
liminate-unused-debug-types -fPIC -Wno-multichar -Wall -Wno-unused-but-se=
t-variable -fPIC -O2 -pipe -g -feliminate-unused-debug-types  -O2 -pipe -=
g -feliminate-unused-debug-types -fPIC -DNDEBUG -fPIC -I/media/tm/linux_d=
aten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/gi=
t-r5/git/build/inc -I/media/tm/linux_daten/master/rpi-build/tmp/work/rasp=
berrypi-poky-linux-gnueabi/userland/git-r5/git/host_applications/framewor=
k -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linu=
x-gnueabi/userland/git-r5/git -I/media/tm/linux_daten/master/rpi-build/tm=
p/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vcos/=
pthreads -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-po=
ky-linux-gnueabi/userland/git-r5/git/interface/vmcs_host/linux -I/media/t=
m/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/us=
erland/git-r5/git/interface/vmcs_host -I/media/tm/linux_daten/master/rpi-=
build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interfa=
ce/vmcs_host/khronos -I/media/tm/linux_daten/master/rpi-build/tmp/work/ra=
spberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/khronos/includ=
e -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linu=
x-gnueabi/userland/git-r5/build -I/media/tm/linux_daten/master/rpi-build/=
tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vch=
iq_arm -I/media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky=
-linux-gnueabi/userland/git-r5/git/host_support/include -I/media/tm/linux=
_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/=
git-r5/git/interface/mmal    -Wall -Werror -o CMakeFiles/mmal_omxutil.dir=
/mmalomx_util_params_audio.c.o   -c /media/tm/linux_daten/master/rpi-buil=
d/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/m=
mal/openmaxil/mmalomx_util_params_audio.c
| In file included from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vco=
s/vcos.h:185:0,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vcos/pthreads=
/vcos_dlfcn.c:28:
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:112:6: =
error: inline function 'vcos_timer_delete' declared but never defined [-W=
error]
|  void vcos_timer_delete(VCOS_TIMER_T *timer);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:109:6: =
error: inline function 'vcos_timer_reset' declared but never defined [-We=
rror]
|  void vcos_timer_reset(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:102:6: =
error: inline function 'vcos_timer_cancel' declared but never defined [-W=
error]
|  void vcos_timer_cancel(VCOS_TIMER_T *timer);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:95:6: e=
rror: inline function 'vcos_timer_set' declared but never defined [-Werro=
r]
|  void vcos_timer_set(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:80:15: =
error: inline function 'vcos_timer_create' declared but never defined [-W=
error]
|  VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
|                ^
| In file included from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vco=
s/vcos.h:127:0,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vcos/pthreads=
/vcos_dlfcn.c:28:
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:269:6:=
 error: inline function 'vcos_thread_resume' declared but never defined [=
-Werror]
|  void vcos_thread_resume(VCOS_THREAD_T *thread);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:262:5:=
 error: inline function 'vcos_thread_running' declared but never defined =
[-Werror]
|  int vcos_thread_running(VCOS_THREAD_T *thread);
|      ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:251:15=
: error: inline function 'vcos_change_preemption' declared but never defi=
ned [-Werror]
|  VCOS_UNSIGNED vcos_change_preemption(VCOS_UNSIGNED pe);
|                ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:234:6:=
 error: inline function 'vcos_thread_relinquish' declared but never defin=
ed [-Werror]
|  void vcos_thread_relinquish(void);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:186:15=
: error: inline function 'vcos_thread_get_affinity' declared but never de=
fined [-Werror]
|  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
|                ^
| In file included from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vco=
s/vcos.h:185:0,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal_com=
mon.h:40,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal.h:3=
63,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxi=
l/mmalomx.h:36,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxi=
l/mmalomx_util_params.c:29:
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:112:6: =
error: inline function 'vcos_timer_delete' declared but never defined [-W=
error]
|  void vcos_timer_delete(VCOS_TIMER_T *timer);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:109:6: =
error: inline function 'vcos_timer_reset' declared but never defined [-We=
rror]
|  void vcos_timer_reset(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:102:6: =
error: inline function 'vcos_timer_cancel' declared but never defined [-W=
error]
|  void vcos_timer_cancel(VCOS_TIMER_T *timer);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:95:6: e=
rror: inline function 'vcos_timer_set' declared but never defined [-Werro=
r]
|  void vcos_timer_set(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:80:15: =
error: inline function 'vcos_timer_create' declared but never defined [-W=
error]
|  VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
|                ^
| In file included from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vco=
s/vcos.h:127:0,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal_com=
mon.h:40,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal.h:3=
63,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxi=
l/mmalomx.h:36,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxi=
l/mmalomx_util_params.c:29:
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:269:6:=
 error: inline function 'vcos_thread_resume' declared but never defined [=
-Werror]
|  void vcos_thread_resume(VCOS_THREAD_T *thread);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:262:5:=
 error: inline function 'vcos_thread_running' declared but never defined =
[-Werror]
|  int vcos_thread_running(VCOS_THREAD_T *thread);
|      ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:251:15=
: error: inline function 'vcos_change_preemption' declared but never defi=
ned [-Werror]
|  VCOS_UNSIGNED vcos_change_preemption(VCOS_UNSIGNED pe);
|                ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:234:6:=
 error: inline function 'vcos_thread_relinquish' declared but never defin=
ed [-Werror]
|  void vcos_thread_relinquish(void);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:186:15=
: error: inline function 'vcos_thread_get_affinity' declared but never de=
fined [-Werror]
|  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
|                ^
| In file included from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vco=
s/vcos.h:185:0,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal_com=
mon.h:40,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal.h:3=
63,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxi=
l/mmalomx.h:36,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxi=
l/mmalomx_util_params_audio.c:28:
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:112:6: =
error: inline function 'vcos_timer_delete' declared but never defined [-W=
error]
|  void vcos_timer_delete(VCOS_TIMER_T *timer);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:109:6: =
error: inline function 'vcos_timer_reset' declared but never defined [-We=
rror]
|  void vcos_timer_reset(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:102:6: =
error: inline function 'vcos_timer_cancel' declared but never defined [-W=
error]
|  void vcos_timer_cancel(VCOS_TIMER_T *timer);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:95:6: e=
rror: inline function 'vcos_timer_set' declared but never defined [-Werro=
r]
|  void vcos_timer_set(VCOS_TIMER_T *timer, VCOS_UNSIGNED delay);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_timer.h:80:15: =
error: inline function 'vcos_timer_create' declared but never defined [-W=
error]
|  VCOS_STATUS_T vcos_timer_create(VCOS_TIMER_T *timer,
|                ^
| In file included from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vco=
s/vcos.h:127:0,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal_com=
mon.h:40,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/mmal.h:3=
63,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxi=
l/mmalomx.h:36,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/mmal/openmaxi=
l/mmalomx_util_params_audio.c:28:
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:269:6:=
 error: inline function 'vcos_thread_resume' declared but never defined [=
-Werror]
|  void vcos_thread_resume(VCOS_THREAD_T *thread);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:262:5:=
 error: inline function 'vcos_thread_running' declared but never defined =
[-Werror]
|  int vcos_thread_running(VCOS_THREAD_T *thread);
|      ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:251:15=
: error: inline function 'vcos_change_preemption' declared but never defi=
ned [-Werror]
|  VCOS_UNSIGNED vcos_change_preemption(VCOS_UNSIGNED pe);
|                ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:234:6:=
 error: inline function 'vcos_thread_relinquish' declared but never defin=
ed [-Werror]
|  void vcos_thread_relinquish(void);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:186:15=
: error: inline function 'vcos_thread_get_affinity' declared but never de=
fined [-Werror]
|  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
|                ^
| cc1: all warnings being treated as errors
| make[2]: *** [interface/mmal/openmaxil/CMakeFiles/mmal_omxutil.dir/mmal=
omx_util_params_audio.c.o] Error 1
| make[2]: *** Waiting for unfinished jobs....
| make -f interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_test.=
dir/build.make interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_=
test.dir/depend
| cc1: all warnings being treated as errors
| make[2]: *** [interface/vcos/pthreads/CMakeFiles/vcos.dir/vcos_dlfcn.c.=
o] Error 1
| make[2]: *** Waiting for unfinished jobs....
| cc1: all warnings being treated as errors
| make[2]: *** [interface/mmal/openmaxil/CMakeFiles/mmal_omxutil.dir/mmal=
omx_util_params.c.o] Error 1
| make[2]: Leaving directory `/media/tm/linux_daten/master/rpi-build/tmp/=
work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
| make[1]: *** [interface/mmal/openmaxil/CMakeFiles/mmal_omxutil.dir/all]=
 Error 2
| make[1]: *** Waiting for unfinished jobs....
| make[2]: Entering directory `/media/tm/linux_daten/master/rpi-build/tmp=
/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
| cd /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-lin=
ux-gnueabi/userland/git-r5/build && /media/tm/linux_daten/master/rpi-buil=
d/tmp/sysroots/x86_64-linux/usr/bin/cmake -E cmake_depends "Unix Makefile=
s" /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux=
-gnueabi/userland/git-r5/git /media/tm/linux_daten/master/rpi-build/tmp/w=
ork/raspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vmcs_hos=
t/linux/vcfiled /media/tm/linux_daten/master/rpi-build/tmp/work/raspberry=
pi-poky-linux-gnueabi/userland/git-r5/build /media/tm/linux_daten/master/=
rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/i=
nterface/vmcs_host/linux/vcfiled /media/tm/linux_daten/master/rpi-build/t=
mp/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build/interface/vm=
cs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_test.dir/DependInfo.cmake -=
-color=3D
| make[2]: Leaving directory `/media/tm/linux_daten/master/rpi-build/tmp/=
work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
| make -f interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_test.=
dir/build.make interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_lock_=
test.dir/build
| make[2]: Entering directory `/media/tm/linux_daten/master/rpi-build/tmp=
/work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
| make[2]: Nothing to be done for `interface/vmcs_host/linux/vcfiled/CMak=
eFiles/vcfiled_lock_test.dir/build'.
| make[2]: Leaving directory `/media/tm/linux_daten/master/rpi-build/tmp/=
work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
| [ 25%] Built target vcfiled_lock_test
| In file included from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/build/inc/interface/vco=
s/vcos.h:127:0,
|                  from /media/tm/linux_daten/master/rpi-build/tmp/work/r=
aspberrypi-poky-linux-gnueabi/userland/git-r5/git/interface/vcos/pthreads=
/vcos_pthreads.c:29:
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:269:6:=
 error: inline function 'vcos_thread_resume' declared but never defined [=
-Werror]
|  void vcos_thread_resume(VCOS_THREAD_T *thread);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:262:5:=
 error: inline function 'vcos_thread_running' declared but never defined =
[-Werror]
|  int vcos_thread_running(VCOS_THREAD_T *thread);
|      ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:251:15=
: error: inline function 'vcos_change_preemption' declared but never defi=
ned [-Werror]
|  VCOS_UNSIGNED vcos_change_preemption(VCOS_UNSIGNED pe);
|                ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:234:6:=
 error: inline function 'vcos_thread_relinquish' declared but never defin=
ed [-Werror]
|  void vcos_thread_relinquish(void);
|       ^
| /media/tm/linux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-=
gnueabi/userland/git-r5/git/build/inc/interface/vcos/vcos_thread.h:186:15=
: error: inline function 'vcos_thread_get_affinity' declared but never de=
fined [-Werror]
|  VCOS_UNSIGNED vcos_thread_get_affinity(VCOS_THREAD_T *thread);
|                ^
| cc1: all warnings being treated as errors
| make[2]: *** [interface/vcos/pthreads/CMakeFiles/vcos.dir/vcos_pthreads=
=2Ec.o] Error 1
| make[2]: Leaving directory `/media/tm/linux_daten/master/rpi-build/tmp/=
work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
| make[1]: *** [interface/vcos/pthreads/CMakeFiles/vcos.dir/all] Error 2
| make[1]: Leaving directory `/media/tm/linux_daten/master/rpi-build/tmp/=
work/raspberrypi-poky-linux-gnueabi/userland/git-r5/build'
| make: *** [all] Error 2
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (log file is located at /media/tm/li=
nux_daten/master/rpi-build/tmp/work/raspberrypi-poky-linux-gnueabi/userla=
nd/git-r5/temp/log.do_compile.11496)




