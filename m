Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
 by mx.groups.io with SMTP id smtpd.web11.477.1591388637976825142
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jun 2020 13:23:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: kernel.crashing.org, ip: 76.164.61.194, mailfrom: mark.hatle@kernel.crashing.org)
Received: from Marks-MacBook-Pro-16.local ([76.164.61.198])
	(authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 055KNbli018501
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
	Fri, 5 Jun 2020 15:23:53 -0500
Subject: Re: [yocto] Yocto gdb build error on Microblaze platform
To: R Keith Beal <r@cmss.com>, yocto@lists.yoctoproject.org
References: <95d62cb9-5791-970e-4397-488c497afa61@CMSS.com>
From: "Mark Hatle" <mark.hatle@kernel.crashing.org>
Message-ID: <e5dc4586-d1a8-69e9-c3c5-9657637ccbc3@kernel.crashing.org>
Date: Fri, 5 Jun 2020 15:23:36 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <95d62cb9-5791-970e-4397-488c497afa61@CMSS.com>
X-MIME-Autoconverted: from 8bit to quoted-printable by kernel.crashing.org id 055KNbli018501
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

This could be an issue with your host if the host is too old.  Unfortunatel=
y
I've not worked with the releases that are that old.

However, Xilinx did just release their 'Zeus' based rel-v2020.1 version.  =
That
version should work on most modern hosts (ones that Zeus works against.)  =
Even
if you are debugging older code the newer debugger should work, so it migh=
t be
an option for you.

--Mark



On 6/5/20 3:02 PM, R Keith Beal wrote:
> Fellow Developers,
>=20
>=20
> I am attempting to add gdb to a Yocto project based on Yocto 2.3 (Pyro).
>=20
> The build complains about a missing libreadline.a.
>=20
>=20
> *| make[2]: Leaving directory
> '/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-=
cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/opcodes'*
>=20
> *| make[2]: Entering directory
> '/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-=
cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/gdb'*
>=20
> *| make[2]: *** No rule to make target '../readline/libreadline.a', need=
ed by
> 'gdb'.=C2=A0 Stop.*
>=20
> *| make[2]: *** Waiting for unfinished jobs....*
>=20
> =C2=A0
>=20
> I tried several solutions from related searches.
>=20
> https://www.yoctoproject.org/pipermail/yocto/2017-June/036676.html
> <http://url1567.cmss.com/ls/click?upn=3DTHw5ysdXae-2B-2Btp69CrkSktfnnmsB=
Moq2fcLowO1MzKn3wcqowiND-2FTX2Ck09GJGF11Hdqxt9-2BJySKGonPkx0-2FvLNAXTq0WYwT=
E0-2B6Uyz0Q0-3Ds3H8_onOgH4hKli5v9BePnk5WifnzSD-2FkMXWD4UBJN0NMhyEtRPVSpGiaa=
E75TdAV5HSL3C5-2Fi5n-2BDKHGDeEkTPVb-2Fb7gapUyik7iAzbey0Nv6Nh1PPsPq0e6zs-2FH=
GTQciMLMokCWW2i0XDtIP1PxZS-2FBaX9nG8vzU0xSEsOh5-2B-2BNrbSSvAUSyjTopTajwQc0O=
lCGBRmdkOAlI4rLI2-2FbXadatAeHM2ppplObheY876Um-2F7s-3D>
>=20
> https://yocto.yoctoproject.narkive.com/gUVw5u2k/failed-to-build-gdb
> <http://url1567.cmss.com/ls/click?upn=3DTHw5ysdXae-2B-2Btp69CrkSkhlnHi-2=
FYRYLnr3RlrnNZXmyK27CyplgiatU0F3nje-2FAXjDAERK7GpIYABqm2VrjansniTichrksQOsP=
zjrfGRnQ-3D3jnn_onOgH4hKli5v9BePnk5WifnzSD-2FkMXWD4UBJN0NMhyEtRPVSpGiaaE75T=
dAV5HSL3C5-2Fi5n-2BDKHGDeEkTPVb-2FROKHNngrTHmIDyLyzUDU4zrfMIpo78C2wBlDsxv8-=
2BZrviAWCn1byCAfT7YiEftQVK3DN3LssMFNwtjmKXL-2FfZ3nlLFAqjcUW5B7S21IzlkqE9-2B=
hkLOYjNKhAmXnXDCrWhn8go40EayViSLFCcW2bIE-3D>
>=20
> =C2=A0
>=20
> Tried *PACKAGECONFIG_remove_pn-gdb =3D "readline"* but it does not help.
>=20
> Tried adding *EXTRA_OECONF_append =3D " --without-system-readline"* to t=
he image
> recipe but it doesn=E2=80=99t help.**
>=20
> =C2=A0
>=20
> From
> /opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-c=
mp-mh-poky-linux/gdb/7.7.1-r0/gdb-7.7.1/gdb/Makefile.in
>=20
> *# Where is the READLINE library?=C2=A0 Typically in ../readline.*
>=20
> *READLINE_DIR =3D ../readline*
>=20
> *READLINE_SRC =3D $(srcdir)/$(READLINE_DIR)*
>=20
> *READLINE =3D @READLINE@*
>=20
> *READLINE_DEPS =3D @READLINE_DEPS@*
>=20
> *READLINE_CFLAGS =3D @READLINE_CFLAGS@*
>=20
> =C2=A0
>=20
> I tried adding *PACKAGECONFIG_remove_pn-gdb =3D "readline"* to the local=
.conf**
>=20
>=20
> As a test, I manually built gdb=E2=80=99s local copy of readline and I g=
et lots of
> compile errors that look like some sort of version skew with the thread =
library.
>=20
> *| In file included from ../../gdb-7.7.1/gdb/proc-service.c:28:0:*
>=20
> *| ../../gdb-7.7.1/gdb/gdb_proc_service.h:162:9: error: unknown type nam=
e
> 'gdb_fpregset_t'*
>=20
> *|=C2=A0 typedef gdb_fpregset_t gdb_prfpregset_t;*
>=20
> *|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~*
>=20
> *| ../../gdb-7.7.1/gdb/proc-service.c:151:1: warning: no previous protot=
ype for
> 'ps_lgetxregsize' [-Wmissing-prototypes]*
>=20
> *|=C2=A0 ps_lgetxregsize (gdb_ps_prochandle_t ph, lwpid_t lwpid, int *xr=
egsize)*
>=20
> *|=C2=A0 ^~~~~~~~~~~~~~~*
>=20
> *| ../../gdb-7.7.1/gdb/proc-service.c:161:1: warning: no previous protot=
ype for
> 'ps_lgetxregs' [-Wmissing-prototypes]*
>=20
> *|=C2=A0 ps_lgetxregs (gdb_ps_prochandle_t ph, lwpid_t lwpid, caddr_t xr=
egset)*
>=20
> *|=C2=A0 ^~~~~~~~~~~~*
>=20
> *| ../../gdb-7.7.1/gdb/proc-service.c:171:1: warning: no previous protot=
ype for
> 'ps_lsetxregs' [-Wmissing-prototypes]*
>=20
> *|=C2=A0 ps_lsetxregs (gdb_ps_prochandle_t ph, lwpid_t lwpid, caddr_t xr=
egset)*
>=20
> *|=C2=A0 ^~~~~~~~~~~~*
>=20
> *| ../../gdb-7.7.1/gdb/proc-service.c:180:1: warning: no previous protot=
ype for
> 'ps_plog' [-Wmissing-prototypes]*
>=20
> *|=C2=A0 ps_plog (const char *fmt, ...)*
>=20
> *|=C2=A0 ^~~~~~~*
>=20
> *| ../../gdb-7.7.1/gdb/proc-service.c:298:1: error: conflicting types fo=
r
> 'ps_lgetfpregs'*
>=20
> *|=C2=A0 ps_lgetfpregs (gdb_ps_prochandle_t ph, lwpid_t lwpid,*
>=20
> *|=C2=A0 ^~~~~~~~~~~~~*
>=20
> *| In file included from ../../gdb-7.7.1/gdb/gdb_proc_service.h:25:0,*
>=20
> *|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../../gdb-7.7.1/gdb/proc-service.c:=
28:*
>=20
> *|
> /opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-c=
mp-mh-poky-linux/gdb/7.7.1-r0/recipe-sysroot/usr/include/proc_service.h:61:=
17:
> note: previous declaration of 'ps_lgetfpregs' was here*
>=20
> *|=C2=A0 extern ps_err_e ps_lgetfpregs (struct ps_prochandle *,*
>=20
> *|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~*
>=20
> *| ../../gdb-7.7.1/gdb/proc-service.c:318:1: error: conflicting types fo=
r
> 'ps_lsetfpregs'*
>=20
> *|=C2=A0 ps_lsetfpregs (gdb_ps_prochandle_t ph, lwpid_t lwpid,*
>=20
> *|=C2=A0 ^~~~~~~~~~~~~*
>=20
> *| In file included from ../../gdb-7.7.1/gdb/gdb_proc_service.h:25:0,*
>=20
> *|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 from ../../gdb-7.7.1/gdb/proc-service.c:=
28:*
>=20
> *|
> /opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-c=
mp-mh-poky-linux/gdb/7.7.1-r0/recipe-sysroot/usr/include/proc_service.h:63:=
17:
> note: previous declaration of 'ps_lsetfpregs' was here*
>=20
> *|=C2=A0 extern ps_err_e ps_lsetfpregs (struct ps_prochandle *,*
>=20
> *|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~*
>=20
> *| ERROR: oe_runmake failed*
>=20
> *| Makefile:1011: recipe for target 'proc-service.o' failed*
>=20
> *| make[2]: *** [proc-service.o] Error 1*
>=20
> *| make[2]: *** Waiting for unfinished jobs....*
>=20
> *| In file included from ../../gdb-7.7.1/gdb/linux-thread-db.c:24:0:*
>=20
> *| ../../gdb-7.7.1/gdb/gdb_proc_service.h:162:9: error: unknown type nam=
e
> 'gdb_fpregset_t'*
>=20
> *|=C2=A0 typedef gdb_fpregset_t gdb_prfpregset_t;*
>=20
> *|=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ^~~~~~~~~~~~~~*
>=20
> *| Makefile:1011: recipe for target 'linux-thread-db.o' failed*
>=20
> *| make[2]: *** [linux-thread-db.o] Error 1*
>=20
> *| make[2]: Leaving directory
> '/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-=
cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux/gdb'*
>=20
> *| Makefile:8278: recipe for target 'all-gdb' failed*
>=20
> *| make[1]: *** [all-gdb] Error 2*
>=20
> *| make[1]: Leaving directory
> '/opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-=
cmp-mh-poky-linux/gdb/7.7.1-r0/build-microblazeel-poky-linux'*
>=20
> *| Makefile:832: recipe for target 'all' failed*
>=20
> *| make: *** [all] Error 2*
>=20
> *| WARNING:
> /opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-c=
mp-mh-poky-linux/gdb/7.7.1-r0/temp/run.do_compile.18533:1exit
> 1 from 'exit 1'*
>=20
> *| ERROR: Function failed: do_compile (log file is located at
> /opt/yocto/yocto-bwc/builds/microblazeel/tmp/work/microblazeel-v9.6-bs-c=
mp-mh-poky-linux/gdb/7.7.1-r0/temp/log.do_compile.18533)*
>=20
> *ERROR**: Task
> (/opt/yocto/poky/meta-xilinx/recipes-microblaze/gdb/gdb_7.7.1.bb:do_comp=
ile)
> failed with exit code '1'*
>=20
> =C2=A0
>=20
>=20
>=20
>=20
