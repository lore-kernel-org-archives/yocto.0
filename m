Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A83D8E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:41:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q39MfPKj024276
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 9 Apr 2012 15:41:25 -0700 (PDT)
Received: from msp-dhcp17.wrs.com (172.25.34.17) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 9 Apr 2012 15:41:24 -0700
Message-ID: <4F836594.8030304@windriver.com>
Date: Mon, 9 Apr 2012 17:41:24 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:11.0) Gecko/20120327 Thunderbird/11.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <D956029D25CF204F948EA0FB515E1EE20360939E@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20360939E@ORSMSX105.amr.corp.intel.com>
Subject: Re: 1.2_M2 build fails for syslinux_4.03.bb for Romley BSP
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Apr 2012 22:41:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 4/9/12 5:36 PM, Bodke, Kishore K wrote:
> Hi ,
>
> Poky and meta-intel for 1.2_M2 build is failing for syslinux_4.03 recipe.
>
> Did anyone saw this for other BSPs?
>
> ERROR: Function 'do_compile' failed (see
> /home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/temp/log.do_compile.53231
> for further information)
>
> ERROR: Logfile of failure stored in:
> /home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/temp/log.do_compile.53231
>
> Log data follows:
>
> | ERROR: Function 'do_compile' failed (see
> /home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/temp/log.do_compile.53231
> for further information)
>
> | NOTE: make -j 8
> BINDIR=/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/bin
> SBINDIR=/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/sbin
> LIBDIR=/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/lib
> DATADIR=/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/share
> MANDIR=/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/share/man
> INCDIR=/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/include
> CC=ccache gcc installer
>
> | make -r installer-local
>
> | make[1]: Entering directory
> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03'
>
> | make[1]: Nothing to be done for `installer-local'.
>
> | make[1]: Leaving directory
> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03'
>
> | set -e ; for i in libinstaller mtools linux extlinux utils; do make -r -C $i
> all ; done
>
> | make[1]: Entering directory
> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/libinstaller'
>
> | make[1]: Nothing to be done for `all'.
>
> | make[1]: Leaving directory
> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/libinstaller'
>
> | make[1]: Entering directory
> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/mtools'
>
> | make[1]: Nothing to be done for `all'.
>
> | make[1]: Leaving directory
> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/mtools'
>
> | make[1]: Entering directory
> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/linux'
>
> | ccache gcc -Wp,-MT,syslinux.o,-MMD,./.syslinux.o.d -W -Wall
> -Wstrict-prototypes -D_FILE_OFFSET_BITS=64 -g -O0 -Dalloca=malloc -I. -I..
> -I../libinstaller -c -o syslinux.o syslinux.c
>
> | ccache gcc -Wp,-MT,syslxcom.o,-MMD,./.syslxcom.o.d -W -Wall
> -Wstrict-prototypes -D_FILE_OFFSET_BITS=64 -g -O0 -Dalloca=malloc -I. -I..
> -I../libinstaller -c -o syslxcom.o ../libinstaller/syslxcom.c
>
> | In file included from ../libinstaller/linuxioctl.h:22:0,
>
> | from ../libinstaller/syslxcom.c:33:
>
> | /usr/include/linux/ext2_fs.h:178:41: error: unknown type name 'umode_t'

This looks like a bug in the libinstaller component of syslinux.  It is relying 
on the include files from the host system's kernel to gain access to kernel 
specific headers.

Instead this thing should be cleaned of references to /usr/include/linux, and 
local versions (that are known to be correct) should be provided.

Please be sure to file a bug in the bugzilla.yoctoproject.org system -- or if 
you can't do that for some reason, let me know and I'll file it.

--Mark

> | make[1]: *** [syslxcom.o] Error 1
>
> | make[1]: *** Waiting for unfinished jobs....
>
> | In file included from ../libinstaller/linuxioctl.h:22:0,
>
> | from syslinux.c:50:
>
> | /usr/include/linux/ext2_fs.h:178:41: error: unknown type name 'umode_t'
>
> | make[1]: *** [syslinux.o] Error 1
>
> | make[1]: Leaving directory
> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/linux'
>
> | make: *** [installer] Error 2
>
> | ERROR: oe_runmake failed
>
> NOTE: package syslinux-native-4.03-r3: task do_compile: Failed
>
> NOTE: package mtools-native-4.0.17-r0: task do_install: Started
>
> NOTE: package
> linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4:
> task do_validate_branches: Started
>
> NOTE: package
> linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4:
> task do_validate_branches: Succeeded
>
> NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task do_populate_sysroot:
> Started
>
> NOTE: Running task 2732 of 4771 (ID: 1998,
> /home/tmelab/yocto/poky/poky-1.2_M2.final/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.bb,
> do_patch)
>
> NOTE: Running task 2733 of 4771 (ID: 4286,
> /home/tmelab/yocto/poky/poky-1.2_M2.final/meta/recipes-devtools/gcc/gcc-cross-initial_4.6.bb,
> do_package_write_rpm)
>
> ERROR: Task 152
> (virtual:native:/home/tmelab/yocto/poky/poky-1.2_M2.final/meta/recipes-devtools/syslinux/syslinux_4.03.bb,
> do_compile) failed with exit code '1'
>
> Waiting for 2 active tasks to finish:
>
> 0: mtools-native-4.0.17-r0 do_install (pid 53232)
>
> 1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
>
> Waiting for 3 active tasks to finish:
>
> 0: mtools-native-4.0.17-r0 do_install (pid 53232)
>
> 1:
> linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4
> do_patch (pid 53317)
>
> 2: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
>
> NOTE: package
> linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4:
> task do_patch: Started
>
> Waiting for 2 active tasks to finish:
>
> 0: mtools-native-4.0.17-r0 do_install (pid 53232)
>
> 1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
>
> NOTE: package
> linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4:
> task do_patch: Succeeded
>
> Waiting for 1 active tasks to finish:
>
> 0: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
>
> NOTE: package mtools-native-4.0.17-r0: task do_install: Succeeded
>
> Waiting for 2 active tasks to finish:
>
> 0: cdrtools-native-2.01-r2 do_populate_sysroot (pid 53310)
>
> 1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
>
> NOTE: package cdrtools-native-2.01-r2: task do_populate_sysroot: Started
>
> Waiting for 3 active tasks to finish:
>
> 0: gcc-cross-initial-4.6.2+svnr181430-r20 do_package_write_rpm (pid 53320)
>
> 1: cdrtools-native-2.01-r2 do_populate_sysroot (pid 53310)
>
> 2: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
>
> NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task do_package_write_rpm:
> Started
>
> Waiting for 2 active tasks to finish:
>
> 0: cdrtools-native-2.01-r2 do_populate_sysroot (pid 53310)
>
> 1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
>
> NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task do_package_write_rpm:
> Succeeded
>
> Waiting for 1 active tasks to finish:
>
> 0: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
>
> NOTE: package cdrtools-native-2.01-r2: task do_populate_sysroot: Succeeded
>
> NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task do_populate_sysroot:
> Succeeded
>
> ERROR:
> 'virtual:native:/home/tmelab/yocto/poky/poky-1.2_M2.final/meta/recipes-devtools/syslinux/syslinux_4.03.bb'
> failed
>
> Summary: There were 2 WARNING messages shown.
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
> Thanks
>
> Kishore.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


