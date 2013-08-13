Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79F77E002F9
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 09:24:41 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Tue, 13 Aug 2013 12:24:40 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 13 Aug 2013 12:24:39 -0400
Thread-Topic: Error building meta-ide-support; 'SNDCTL_DSP_MAPINBUF'
	undeclared here
Thread-Index: Ac6YQZvm1/inciC/S1SlI4tH30qmCw==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153ADC7DF00@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0101CBEB004FFC0101CD38
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Error building meta-ide-support; 'SNDCTL_DSP_MAPINBUF' undeclared here
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
X-List-Received-Date: Tue, 13 Aug 2013 16:24:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am working on installing and setting up the Eclipse IDE plug-in for Eclip=
se Juno.  I am using poky/dylan (at the yocto-1.4.1 tag) for my build envir=
onment.  I am to the "Configuring the Cross-Compiler Options" section from =
the current Yocto Project mega-manual, and after setting up the Toolchain R=
oot Location and the Sysroot Location, I get the error 'Specified toolchain=
 directory does not contain a toolchain generated with "bitbake meta-ide-su=
pport"'.  So, I went back and did "bitbake meta-ide-support" as requested a=
nd I am getting the following errors:

DEBUG: Executing shell function do_compile
NOTE: make -j 2
  CC    arm-linux-user/linux-user/syscall.o
In file included from /media/sda3/poky/poky-build/tmp/work/i686-linux/qemu-=
native/1.4.0-r0/qemu-1.4.0/linux-user/syscall.c:3705:0:
/media/sda3/poky/poky-build/tmp/work/i686-linux/qemu-native/1.4.0-r0/qemu-1=
.4.0/linux-user/ioctls.h:189:1: error: 'SNDCTL_DSP_MAPINBUF' undeclared her=
e (not in a function)
/media/sda3/poky/poky-build/tmp/work/i686-linux/qemu-native/1.4.0-r0/qemu-1=
.4.0/linux-user/ioctls.h:190:1: error: 'SNDCTL_DSP_MAPOUTBUF' undeclared he=
re (not in a function)
/media/sda3/poky/poky-build/tmp/work/i686-linux/qemu-native/1.4.0-r0/qemu-1=
.4.0/linux-user/ioctls.h:245:1: error: 'SOUND_MIXER_ACCESS' undeclared here=
 (not in a function)
make[1]: *** [linux-user/syscall.o] Error 1
make: *** [subdir-arm-linux-user] Error 2
make: *** Waiting for unfinished jobs....
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (see /media/sda3/poky/poky-build/tmp/wor=
k/i686-linux/qemu-native/1.4.0-r0/temp/log.do_compile.20276 for further inf=
ormation)

I did a search and I cannot find these defines anywhere in the i686 sysroot=
 directory, but it exists in my target's sysroot directory.  Is there somet=
hing wrong with the i686 sysroot setup on my system?  If it matters, I'm do=
ing the build machine is running Ubuntu 12.04.2 LTS.

Thanks,
Bryan





