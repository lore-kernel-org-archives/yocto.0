Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id E79E64C80FA4
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 06:32:14 -0600 (CST)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id oAACWB2i026695;
	Wed, 10 Nov 2010 06:32:12 -0600
Mime-Version: 1.0 (Apple Message framework v1081)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D2271119D@shsmsx502.ccr.corp.intel.com>
Date: Wed, 10 Nov 2010 06:32:10 -0600
Message-Id: <401A3267-606A-4A1E-9F45-18F75B6B3FB7@kernel.crashing.org>
References: <BA703559-6EAC-43D9-BB84-E95DDCB1ED62@kernel.crashing.org>
	<625BA99ED14B2D499DC4E29D8138F1504D2271119D@shsmsx502.ccr.corp.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
X-Mailer: Apple Mail (2.1081)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: problem with fetching?
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
X-List-Received-Date: Wed, 10 Nov 2010 12:32:15 -0000
X-Groupsio-MsgNum: 227
Content-Type: multipart/mixed; boundary=Apple-Mail-3--299998003

--Apple-Mail-3--299998003
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


On Nov 10, 2010, at 6:20 AM, Tian, Kevin wrote:

>> From: Kumar Gala
>> Sent: Wednesday, November 10, 2010 2:42 PM
>>=20
>> I'm trying to build the MPC8135E RDB and have the following setup in co=
nf/local.conf:
>>=20
>> # Uncomment and set to allow bitbake to execute multiple tasks at once.
>> # For a quadcore, BB_NUMBER_THREADS =3D "4", PARALLEL_MAKE =3D "-j 4" w=
ould
>> # be appropriate.
>> BB_NUMBER_THREADS =3D "16"
>> # Also, make can be passed flags so it run parallel threads e.g.:
>> PARALLEL_MAKE =3D "-j 16"
>>=20
>> # The machine to target
>> MACHINE ?=3D "mpc8315e-rdb"
>>=20
>> ....
>>=20
>> $ bitbake  poky-image-minimal
>>=20
>> I see errors likes:
>>=20
>> Waiting for 1 active tasks to finish:
>> 1: linux-libc-headers-2.6.34-r1 do_fetch (pid 6952)
>> NOTE: package binutils-cross-2.20.1-r3: task do_unpack: Succeeded
>> NOTE: linux-libc-headers-2.6.34:
>> http://kernel.org/pub/linux/kernel/v2.6/linux-2.6.34.tar.bz2 has no ent=
ry in
>> conf/checksums.ini, not checking URI
>> NOTE: package linux-libc-headers-2.6.34-r1: task do_fetch: Succeeded
>> ERROR:
>> 'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtool=
s/gnu-config/gn
>> u-config_20080123.bb' failed
>>=20
>> ---
>>=20
>> if I re-run it gets further.  ideas on what's going on?
>>=20
>=20
> Could you post a full log about the error? We have a plan to improve the=
 error message
> but for now it's normally messed with other build outputs in a parallel =
build. You can=20
> perhaps grep those lines with "ERROR:".
>=20
> Normally there're two possible reasons for that:
> =09- poor parallel make support by the package, or
> =09- some missing dependency problem
>=20
> Above issues are usually worked around by re-run it, but it'd always goo=
d to figure out
> the exact failure. :-)
>=20
> Thanks
> Kevin

ERROR: Task failed: Fetch failed: Unable to fetch URL cvs://anonymous@cvs.=
sv.gnu.org/cvsroot/config;module=3Dconfig;method=3Dpserver;date=3D20080123 =
from any source.
NOTE: package gnu-config-native-0.1+cvs20080123-r1: task do_fetch: Failed
ERROR: Task 211 (virtual:native:/local/home/galak/poky-laverne-4.0/meta/re=
cipes-devtools/gnu-config/gnu-config_20080123.bb, do_fetch) failed with 1
ERROR: 'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-dev=
tools/gnu-config/gnu-config_20080123.bb' failed

Attached is the full log.

- k



--Apple-Mail-3--299998003
Content-Disposition: attachment;
	filename=err.log
Content-Type: application/octet-stream;
	name="err.log"
Content-Transfer-Encoding: 7bit

NOTE: Handling BitBake files: \ (0844/0844) [100 %]
Parsing of 844 .bb files complete (797 cached, 47 parsed). 969 targets, 62 skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        = "1.11.0"
METADATA_BRANCH   = "<unknown>"
METADATA_REVISION = "<unknown>"
TARGET_ARCH       = "powerpc"
TARGET_OS         = "linux"
MACHINE           = "mpc8315e-rdb"
DISTRO            = "poky"
DISTRO_VERSION    = "0.9"
TARGET_FPU        = "spe"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing setscene Tasks
NOTE: We can skip tasks set([])
NOTE: Executing runqueue
NOTE: Full skip list set([])
NOTE: Running task 10 of 1609 (ID: 211, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb, do_fetch)
NOTE: Running task 102 of 1609 (ID: 962, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-support/mpfr/mpfr_3.0.0.bb, do_patch)
NOTE: Running task 106 of 1609 (ID: 842, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-core/readline/readline_6.1.bb, do_patch)
NOTE: Running task 107 of 1609 (ID: 854, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/tcltk/tcl_8.5.8.bb, do_patch)
NOTE: Running task 108 of 1609 (ID: 160, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-support/sqlite/sqlite3_3.6.23.1.bb, do_patch)
NOTE: Running task 117 of 1609 (ID: 1021, /local/home/galak/poky-laverne-4.0/meta/recipes-core/eglibc/cross-localedef-native_2.12.bb, do_unpack)
NOTE: Running task 118 of 1609 (ID: 220, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils_0.148.bb, do_patch)
NOTE: Running task 119 of 1609 (ID: 878, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/bison/bison_2.4.2.bb, do_patch)
NOTE: Running task 120 of 1609 (ID: 866, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/flex/flex_2.5.35.bb, do_patch)
NOTE: Running task 121 of 1609 (ID: 986, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-support/libmpc/libmpc_0.8.2.bb, do_patch)
NOTE: Running task 122 of 1609 (ID: 950, /local/home/galak/poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-cross_2.20.1.bb, do_patch)
NOTE: Running task 123 of 1609 (ID: 1322, /local/home/galak/poky-laverne-4.0/meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb, do_patch)
NOTE: Running task 126 of 1609 (ID: 1009, virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-extended/gperf/gperf_3.0.4.bb, do_unpack)
NOTE: Running task 127 of 1609 (ID: 769, /local/home/galak/poky-laverne-4.0/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.34.bb, do_patch)
NOTE: Running task 129 of 1609 (ID: 1565, /local/home/galak/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb, do_fetch)
NOTE: Running task 131 of 1609 (ID: 1433, /local/home/galak/poky-laverne-4.0/meta/recipes-core/eglibc/eglibc-initial_2.12.bb, do_fetch)
NOTE: package gnu-config-native-0.1+cvs20080123-r1: task do_fetch: Started
NOTE: fetch http://anonymous@pokylinux.org/sources/config_cvs.sv.gnu.org__20080123.tar.gz
NOTE: fetch http://anonymous@autobuilder.pokylinux.org/sources/config_cvs.sv.gnu.org__20080123.tar.gz
NOTE: package mpfr-native-3.0.0-r0: task do_patch: Started
NOTE: package mpfr-native-3.0.0-r0: task do_patch: Succeeded
NOTE: package readline-native-6.1-r0: task do_patch: Started
NOTE: Applying patch 'configure-fix.patch' (../poky-laverne-4.0/meta/recipes-core/readline/files/configure-fix.patch)
NOTE: package tcl-native-8.5.8-r3: task do_patch: Started
NOTE: Applying patch 'tcl-add-soname.patch' (../poky-laverne-4.0/meta/recipes-devtools/tcltk/tcl/tcl-add-soname.patch)
NOTE: package tcl-native-8.5.8-r3: task do_patch: Succeeded
NOTE: package sqlite3-native-3.6.23.1-r1: task do_patch: Started
NOTE: Applying patch 'libtool.patch' (../poky-laverne-4.0/meta/recipes-support/sqlite/sqlite3/libtool.patch)
NOTE: package cross-localedef-native-2.12-r0: task do_unpack: Started
NOTE: Unpacking /local/home/galak/poky-4.0-build/downloads/eglibc-2_12_www.eglibc.org_.svn.branches._10809_.tar.gz to /local/home/galak/poky-4.0-build/tmp/work/x86_64-linux/cross-localedef-native-2.12-r0/
NOTE: package elfutils-native-0.148-r1: task do_patch: Started
NOTE: Applying patch 'redhat-portability.diff' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/redhat-portability.diff)
NOTE: package bison-native-2.4.2-r0: task do_patch: Started
NOTE: Applying patch 'm4.patch' (../poky-laverne-4.0/meta/recipes-devtools/bison/bison/m4.patch)
NOTE: package flex-native-2.5.35-r1: task do_patch: Started
NOTE: package flex-native-2.5.35-r1: task do_patch: Succeeded
NOTE: Fetch cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123
ERROR: Task failed: Fetch failed: Unable to fetch URL cvs://anonymous@cvs.sv.gnu.org/cvsroot/config;module=config;method=pserver;date=20080123 from any source.
NOTE: package gnu-config-native-0.1+cvs20080123-r1: task do_fetch: Failed
ERROR: Task 211 (virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb, do_fetch) failed with 1
NOTE: package readline-native-6.1-r0: task do_patch: Succeeded
NOTE: package sqlite3-native-3.6.23.1-r1: task do_patch: Succeeded
Waiting for 3 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
3: bison-native-2.4.2-r0 do_patch (pid 29610)
NOTE: Applying patch 'redhat-robustify.diff' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/redhat-robustify.diff)
Waiting for 2 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
NOTE: package bison-native-2.4.2-r0: task do_patch: Succeeded
Waiting for 3 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
3: libmpc-native-0.8.2-r0 do_patch (pid 29612)
NOTE: package libmpc-native-0.8.2-r0: task do_patch: Started
Waiting for 2 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
NOTE: package libmpc-native-0.8.2-r0: task do_patch: Succeeded
Waiting for 3 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
3: binutils-cross-2.20.1-r3 do_patch (pid 29615)
NOTE: package binutils-cross-2.20.1-r3: task do_patch: Started
NOTE: Applying patch 'binutils-uclibc-100-uclibc-conf.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-uclibc-100-uclibc-conf.patch)
Waiting for 4 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
3: binutils-cross-2.20.1-r3 do_patch (pid 29615)
4: unifdef-native-2.6.18+git-r0 do_patch (pid 29618)
NOTE: package unifdef-native-2.6.18+git-r0: task do_patch: Started
Waiting for 3 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
3: binutils-cross-2.20.1-r3 do_patch (pid 29615)
NOTE: package unifdef-native-2.6.18+git-r0: task do_patch: Succeeded
NOTE: Applying patch '110-arm-eabi-conf.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/110-arm-eabi-conf.patch)
Waiting for 4 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
3: binutils-cross-2.20.1-r3 do_patch (pid 29615)
4: gperf-native-3.0.4-r0 do_unpack (pid 29747)
NOTE: package gperf-native-3.0.4-r0: task do_unpack: Started
NOTE: Unpacking /local/home/galak/poky-4.0-build/downloads/gperf-3.0.4.tar.gz to /local/home/galak/poky-4.0-build/tmp/work/x86_64-linux/gperf-native-3.0.4-r0/
Waiting for 5 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
3: binutils-cross-2.20.1-r3 do_patch (pid 29615)
4: gperf-native-3.0.4-r0 do_unpack (pid 29747)
5: linux-libc-headers-2.6.34-r1 do_patch (pid 29755)
NOTE: package linux-libc-headers-2.6.34-r1: task do_patch: Started
NOTE: Applying patch 'hppa_backend.diff' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/hppa_backend.diff)
NOTE: Applying patch 'arm_backend.diff' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/arm_backend.diff)
NOTE: Applying patch 'binutils-uclibc-300-001_ld_makefile_patch.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-uclibc-300-001_ld_makefile_patch.patch)
Waiting for 4 active tasks to finish:
1: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
2: elfutils-native-0.148-r1 do_patch (pid 29609)
3: binutils-cross-2.20.1-r3 do_patch (pid 29615)
4: linux-libc-headers-2.6.34-r1 do_patch (pid 29755)
NOTE: package gperf-native-3.0.4-r0: task do_unpack: Succeeded
Waiting for 5 active tasks to finish:
1: gcc-cross-initial-4.5.0-r10 do_fetch (pid 29883)
2: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
3: elfutils-native-0.148-r1 do_patch (pid 29609)
4: binutils-cross-2.20.1-r3 do_patch (pid 29615)
5: linux-libc-headers-2.6.34-r1 do_patch (pid 29755)
NOTE: package gcc-cross-initial-4.5.0-r10: task do_fetch: Started
NOTE: Applying patch 'hayes-gone.patch' (../poky-laverne-4.0/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/hayes-gone.patch)
NOTE: Applying patch 'ppc_glibc_build_fix.patch' (../poky-laverne-4.0/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/ppc_glibc_build_fix.patch)
NOTE: Applying patch 'connector-msg-size-fix.patch' (../poky-laverne-4.0/meta/recipes-kernel/linux-libc-headers/linux-libc-headers/connector-msg-size-fix.patch)
NOTE: Applying patch 'mips_backend.diff' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/mips_backend.diff)
NOTE: Applying patch 'binutils-uclibc-300-006_better_file_error.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-uclibc-300-006_better_file_error.patch)
NOTE: Applying patch 'binutils-uclibc-300-012_check_ldrunpath_length.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-uclibc-300-012_check_ldrunpath_length.patch)
NOTE: fetch ftp://ftp.gnu.org/gnu/gcc/gcc-4.5.0/gcc-4.5.0.tar.bz2
Waiting for 4 active tasks to finish:
1: gcc-cross-initial-4.5.0-r10 do_fetch (pid 29883)
2: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
3: elfutils-native-0.148-r1 do_patch (pid 29609)
4: binutils-cross-2.20.1-r3 do_patch (pid 29615)
NOTE: package linux-libc-headers-2.6.34-r1: task do_patch: Succeeded
NOTE: Applying patch 'm68k_backend.diff' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/m68k_backend.diff)
NOTE: Applying patch 'binutils-uclibc-gas-needs-libm.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-uclibc-gas-needs-libm.patch)
NOTE: Applying patch 'binutils-x86_64_i386_biarch.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-x86_64_i386_biarch.patch)
Waiting for 5 active tasks to finish:
1: gcc-cross-initial-4.5.0-r10 do_fetch (pid 29883)
2: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
3: elfutils-native-0.148-r1 do_patch (pid 29609)
4: binutils-cross-2.20.1-r3 do_patch (pid 29615)
5: eglibc-initial-2.12-r9 do_fetch (pid 29905)
NOTE: package eglibc-initial-2.12-r9: task do_fetch: Started
Waiting for 4 active tasks to finish:
1: gcc-cross-initial-4.5.0-r10 do_fetch (pid 29883)
2: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
3: elfutils-native-0.148-r1 do_patch (pid 29609)
4: binutils-cross-2.20.1-r3 do_patch (pid 29615)
NOTE: package eglibc-initial-2.12-r9: task do_fetch: Succeeded
NOTE: Applying patch 'do-autoreconf.diff' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/do-autoreconf.diff)
NOTE: Applying patch 'testsuite-ignore-elflint.diff' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/testsuite-ignore-elflint.diff)
NOTE: Applying patch 'binutils-mips-pie.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-mips-pie.patch)
NOTE: Applying patch 'binutils-libtool.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-libtool.patch)
NOTE: Applying patch 'elf_additions.diff' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/elf_additions.diff)
NOTE: Applying patch 'libiberty_path_fix.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/libiberty_path_fix.patch)
NOTE: Applying patch 'elfutils-fsize.patch' (../poky-laverne-4.0/meta/recipes-devtools/elfutils/elfutils-0.148/elfutils-fsize.patch)
Waiting for 3 active tasks to finish:
1: gcc-cross-initial-4.5.0-r10 do_fetch (pid 29883)
2: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
3: binutils-cross-2.20.1-r3 do_patch (pid 29615)
NOTE: package elfutils-native-0.148-r1: task do_patch: Succeeded
NOTE: Applying patch 'binutils-poison.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-poison.patch)
NOTE: Applying patch 'binutils-2.16.1-e300c2c3.patch' (../poky-laverne-4.0/meta/recipes-devtools/binutils/binutils-2.20.1/binutils-2.16.1-e300c2c3.patch)
Waiting for 2 active tasks to finish:
1: gcc-cross-initial-4.5.0-r10 do_fetch (pid 29883)
2: cross-localedef-native-2.12-r0 do_unpack (pid 29608)
NOTE: package binutils-cross-2.20.1-r3: task do_patch: Succeeded
Waiting for 1 active tasks to finish:
1: gcc-cross-initial-4.5.0-r10 do_fetch (pid 29883)
NOTE: package cross-localedef-native-2.12-r0: task do_unpack: Succeeded
NOTE: gcc-cross-initial-4.5.0: ftp://ftp.gnu.org/gnu/gcc/gcc-4.5.0/gcc-4.5.0.tar.bz2 has no entry in conf/checksums.ini, not checking URI
NOTE: package gcc-cross-initial-4.5.0-r10: task do_fetch: Succeeded
ERROR: 'virtual:native:/local/home/galak/poky-laverne-4.0/meta/recipes-devtools/gnu-config/gnu-config_20080123.bb' failed
[galak@right poky-4.0-build]$ ERROR^C
[galak@right poky-4.0-build]$ 


--Apple-Mail-3--299998003--
