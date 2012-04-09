Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D224E00596
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:54:30 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Apr 2012 15:54:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="87103828"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Apr 2012 15:54:29 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 Apr 2012 15:54:29 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.128]) with mapi id
	14.01.0355.002; Mon, 9 Apr 2012 15:54:28 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] 1.2_M2 build fails for syslinux_4.03.bb for Romley BSP
Thread-Index: AQHNFqH8z7akC5KtL0aaLB8UuYrO0paTGeag
Date: Mon, 9 Apr 2012 22:54:27 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE2036093C3@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20360939E@ORSMSX105.amr.corp.intel.com>
	<4F836594.8030304@windriver.com>
In-Reply-To: <4F836594.8030304@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 09 Apr 2012 22:54:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Mark Hatle
>Sent: Monday, April 09, 2012 3:41 PM
>To: yocto@yoctoproject.org
>Subject: Re: [yocto] 1.2_M2 build fails for syslinux_4.03.bb for Romley
>BSP
>
>On 4/9/12 5:36 PM, Bodke, Kishore K wrote:
>> Hi ,
>>
>> Poky and meta-intel for 1.2_M2 build is failing for syslinux_4.03
>recipe.
>>
>> Did anyone saw this for other BSPs?
>>
>> ERROR: Function 'do_compile' failed (see
>> /home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/temp/log.do_compile.53231
>> for further information)
>>
>> ERROR: Logfile of failure stored in:
>> /home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/temp/log.do_compile.53231
>>
>> Log data follows:
>>
>> | ERROR: Function 'do_compile' failed (see
>> /home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/temp/log.do_compile.53231
>> for further information)
>>
>> | NOTE: make -j 8
>> BINDIR=3D/home/tmelab/yocto/poky/poky-
>1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/bin
>> SBINDIR=3D/home/tmelab/yocto/poky/poky-
>1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/sbin
>> LIBDIR=3D/home/tmelab/yocto/poky/poky-
>1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/lib
>> DATADIR=3D/home/tmelab/yocto/poky/poky-
>1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/share
>> MANDIR=3D/home/tmelab/yocto/poky/poky-
>1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/share/man
>> INCDIR=3D/home/tmelab/yocto/poky/poky-
>1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/include
>> CC=3Dccache gcc installer
>>
>> | make -r installer-local
>>
>> | make[1]: Entering directory
>> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/syslinux-4.03'
>>
>> | make[1]: Nothing to be done for `installer-local'.
>>
>> | make[1]: Leaving directory
>> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/syslinux-4.03'
>>
>> | set -e ; for i in libinstaller mtools linux extlinux utils; do make
>-r -C $i
>> all ; done
>>
>> | make[1]: Entering directory
>> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/syslinux-4.03/libinstaller'
>>
>> | make[1]: Nothing to be done for `all'.
>>
>> | make[1]: Leaving directory
>> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/syslinux-4.03/libinstaller'
>>
>> | make[1]: Entering directory
>> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/syslinux-4.03/mtools'
>>
>> | make[1]: Nothing to be done for `all'.
>>
>> | make[1]: Leaving directory
>> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/syslinux-4.03/mtools'
>>
>> | make[1]: Entering directory
>> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/syslinux-4.03/linux'
>>
>> | ccache gcc -Wp,-MT,syslinux.o,-MMD,./.syslinux.o.d -W -Wall
>> -Wstrict-prototypes -D_FILE_OFFSET_BITS=3D64 -g -O0 -Dalloca=3Dmalloc -I=
.
>-I..
>> -I../libinstaller -c -o syslinux.o syslinux.c
>>
>> | ccache gcc -Wp,-MT,syslxcom.o,-MMD,./.syslxcom.o.d -W -Wall
>> -Wstrict-prototypes -D_FILE_OFFSET_BITS=3D64 -g -O0 -Dalloca=3Dmalloc -I=
.
>-I..
>> -I../libinstaller -c -o syslxcom.o ../libinstaller/syslxcom.c
>>
>> | In file included from ../libinstaller/linuxioctl.h:22:0,
>>
>> | from ../libinstaller/syslxcom.c:33:
>>
>> | /usr/include/linux/ext2_fs.h:178:41: error: unknown type name
>'umode_t'
>
>This looks like a bug in the libinstaller component of syslinux.  It is
>relying
>on the include files from the host system's kernel to gain access to
>kernel
>specific headers.
>
>Instead this thing should be cleaned of references to
>/usr/include/linux, and
>local versions (that are known to be correct) should be provided.
>
>Please be sure to file a bug in the bugzilla.yoctoproject.org system --
>or if
>you can't do that for some reason, let me know and I'll file it.
>

Filed a bug.  BUG:2269.

Thanks
Kishore.

>--Mark
>
>> | make[1]: *** [syslxcom.o] Error 1
>>
>> | make[1]: *** Waiting for unfinished jobs....
>>
>> | In file included from ../libinstaller/linuxioctl.h:22:0,
>>
>> | from syslinux.c:50:
>>
>> | /usr/include/linux/ext2_fs.h:178:41: error: unknown type name
>'umode_t'
>>
>> | make[1]: *** [syslinux.o] Error 1
>>
>> | make[1]: Leaving directory
>> `/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-
>linux/syslinux-native-4.03-r3/syslinux-4.03/linux'
>>
>> | make: *** [installer] Error 2
>>
>> | ERROR: oe_runmake failed
>>
>> NOTE: package syslinux-native-4.03-r3: task do_compile: Failed
>>
>> NOTE: package mtools-native-4.0.17-r0: task do_install: Started
>>
>> NOTE: package
>> linux-libc-headers-yocto-2.6.37+git-
>1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7
>ba35e97db4cc3-r4:
>> task do_validate_branches: Started
>>
>> NOTE: package
>> linux-libc-headers-yocto-2.6.37+git-
>1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7
>ba35e97db4cc3-r4:
>> task do_validate_branches: Succeeded
>>
>> NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task
>do_populate_sysroot:
>> Started
>>
>> NOTE: Running task 2732 of 4771 (ID: 1998,
>> /home/tmelab/yocto/poky/poky-1.2_M2.final/meta/recipes-kernel/linux-
>libc-headers/linux-libc-headers-yocto_git.bb,
>> do_patch)
>>
>> NOTE: Running task 2733 of 4771 (ID: 4286,
>> /home/tmelab/yocto/poky/poky-1.2_M2.final/meta/recipes-
>devtools/gcc/gcc-cross-initial_4.6.bb,
>> do_package_write_rpm)
>>
>> ERROR: Task 152
>> (virtual:native:/home/tmelab/yocto/poky/poky-
>1.2_M2.final/meta/recipes-devtools/syslinux/syslinux_4.03.bb,
>> do_compile) failed with exit code '1'
>>
>> Waiting for 2 active tasks to finish:
>>
>> 0: mtools-native-4.0.17-r0 do_install (pid 53232)
>>
>> 1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid
>52951)
>>
>> Waiting for 3 active tasks to finish:
>>
>> 0: mtools-native-4.0.17-r0 do_install (pid 53232)
>>
>> 1:
>> linux-libc-headers-yocto-2.6.37+git-
>1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7
>ba35e97db4cc3-r4
>> do_patch (pid 53317)
>>
>> 2: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid
>52951)
>>
>> NOTE: package
>> linux-libc-headers-yocto-2.6.37+git-
>1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7
>ba35e97db4cc3-r4:
>> task do_patch: Started
>>
>> Waiting for 2 active tasks to finish:
>>
>> 0: mtools-native-4.0.17-r0 do_install (pid 53232)
>>
>> 1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid
>52951)
>>
>> NOTE: package
>> linux-libc-headers-yocto-2.6.37+git-
>1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7
>ba35e97db4cc3-r4:
>> task do_patch: Succeeded
>>
>> Waiting for 1 active tasks to finish:
>>
>> 0: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid
>52951)
>>
>> NOTE: package mtools-native-4.0.17-r0: task do_install: Succeeded
>>
>> Waiting for 2 active tasks to finish:
>>
>> 0: cdrtools-native-2.01-r2 do_populate_sysroot (pid 53310)
>>
>> 1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid
>52951)
>>
>> NOTE: package cdrtools-native-2.01-r2: task do_populate_sysroot:
>Started
>>
>> Waiting for 3 active tasks to finish:
>>
>> 0: gcc-cross-initial-4.6.2+svnr181430-r20 do_package_write_rpm (pid
>53320)
>>
>> 1: cdrtools-native-2.01-r2 do_populate_sysroot (pid 53310)
>>
>> 2: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid
>52951)
>>
>> NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task
>do_package_write_rpm:
>> Started
>>
>> Waiting for 2 active tasks to finish:
>>
>> 0: cdrtools-native-2.01-r2 do_populate_sysroot (pid 53310)
>>
>> 1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid
>52951)
>>
>> NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task
>do_package_write_rpm:
>> Succeeded
>>
>> Waiting for 1 active tasks to finish:
>>
>> 0: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid
>52951)
>>
>> NOTE: package cdrtools-native-2.01-r2: task do_populate_sysroot:
>Succeeded
>>
>> NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task
>do_populate_sysroot:
>> Succeeded
>>
>> ERROR:
>> 'virtual:native:/home/tmelab/yocto/poky/poky-
>1.2_M2.final/meta/recipes-devtools/syslinux/syslinux_4.03.bb'
>> failed
>>
>> Summary: There were 2 WARNING messages shown.
>>
>> Summary: There were 2 ERROR messages shown, returning a non-zero exit
>code.
>>
>> Thanks
>>
>> Kishore.
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

