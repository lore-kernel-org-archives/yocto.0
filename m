Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [180.151.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE802E00797
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2013 06:17:15 -0800 (PST)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 6994436B6B;
	Thu, 28 Nov 2013 19:46:54 +0530 (IST)
Received: from GUREXHT02.ASIAN.AD.ARICENT.COM (gurexht02.asian.ad.aricent.com
	[10.203.171.138])
	by jaguar.aricent.com (Postfix) with ESMTP id D11CE36B61;
	Thu, 28 Nov 2013 19:46:53 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT02.ASIAN.AD.ARICENT.COM ([10.203.171.138]) with mapi;
	Thu, 28 Nov 2013 19:46:53 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Date: Thu, 28 Nov 2013 19:46:53 +0530
Thread-Topic: Issue in compiliing libraries for toolchain
Thread-Index: Ac7qXtEZze1Jh3lBSYy7mQIn07fhPQAxII5gAEhISkA=
Message-ID: <17797116383D4341B029FDF34C22BF6A6C4D4977C2@GUREXMB01.ASIAN.AD.ARICENT.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: No
Subject: Re: Issue in compiliing libraries for toolchain
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
X-List-Received-Date: Thu, 28 Nov 2013 14:17:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_17797116383D4341B029FDF34C22BF6A6C4D4977C2GUREXMB01ASIA_"

--_000_17797116383D4341B029FDF34C22BF6A6C4D4977C2GUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please help me out!!!!

From: Rohit2 Jindal
Sent: Wednesday, November 27, 2013 9:17 AM
To: 'yocto@yoctoproject.org'; 'Paul Eggleton'
Subject: RE: Issue in compiliing libraries for toolchain

Humble Reminder!!!

From: Rohit2 Jindal
Sent: Tuesday, November 26, 2013 9:50 AM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>; 'Paul Eggleton'
Subject: Issue in compiliing libraries for toolchain

Hi ,

I am getting error while compiling libraries in my toolchain for lib32 mabi=
=3Dn32 or lib mabi=3D32 files for my bsp. Actually I want to point my libra=
ries to
/home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-pok=
y-linux/gcc/mips64-poky-linux/4.6.3/arch/el/libgcc.a but its default pointi=
ng to /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a as can be seen in t=
he logs. Can u suggest me the way I can set my library paths that it can po=
int to required library .

Regards,
Rohit Jindal

LOGS

/home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips64=
-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/buil=
d/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4=
.6.3/arch/libgcc.a(_addsub_tf.o): ABI is incompatible with that of the sele=
cted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_addsub_t=
f.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_mul_tf.o): ABI is incompatible with that of the selec=
ted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_mul_tf.o=
)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_div_tf.o): ABI is incompatible with that of the selec=
ted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_div_tf.o=
)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_eq_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_eq_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_ne_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ne_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_ge_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ge_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_lt_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_lt_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_le_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_le_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_si_to_tf.o): ABI is incompatible with that of the sel=
ected emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_si_to_tf=
.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_thenan_tf.o): ABI is incompatible with that of the se=
lected emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_thenan_t=
f.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_lshrdi3.o): ABI is incompatible with that of the sele=
cted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_lshrdi3.=
o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_ashldi3.o): ABI is incompatible with that of the sele=
cted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ashldi3.=
o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_pack_tf.o): ABI is incompatible with that of the sele=
cted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_pack_tf.=
o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_unpack_tf.o): ABI is incompatible with that of the se=
lected emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_unpack_t=
f.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_fpcmp_parts_tf.o): ABI is incompatible with that of t=
he selected emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_fpcmp_pa=
rts_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-p=
oky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_addsub_tf.o): In funct=
ion `_fpadd_parts':
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:622:(.text+0x80): relocation truncated to fi=
t: R_MIPS_GOT_DISP against `__thenan_tf'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:633:(.text+0xa4): relocation truncated to fi=
t: R_MIPS_CALL16 against `memcpy'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:662:(.text+0x10c): relocation truncated to f=
it: R_MIPS_CALL16 against `__lshrti3'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:665:(.text+0x128): relocation truncated to f=
it: R_MIPS_CALL16 against `__ashlti3'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:670:(.text+0x180): relocation truncated to f=
it: R_MIPS_CALL16 against `__lshrti3'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:670:(.text+0x19c): relocation truncated to f=
it: R_MIPS_CALL16 against `__ashlti3'
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-p=
oky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_addsub_tf.o): In funct=
ion `__addtf3':
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:749:(.text+0x3a8): relocation truncated to f=
it: R_MIPS_CALL16 against `__unpack_t'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:750:(.text+0x3cc): relocation truncated to f=
it: R_MIPS_CALL16 against `__unpack_t'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:752:(.text+0x3dc): relocation truncated to f=
it: R_MIPS_GOT_PAGE against `.text'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:752:(.text+0x3e8): relocation truncated to f=
it: R_MIPS_GOT_OFST against `.text'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:754:(.text+0x3f4): additional relocation ove=
rflows omitted from the output

/home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips64=
-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/buil=
d/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4=
.6.3/arch/libgcc.a(_addsub_tf.o): ABI is incompatible with that of the sele=
cted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_addsub_t=
f.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_mul_tf.o): ABI is incompatible with that of the selec=
ted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_mul_tf.o=
)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_div_tf.o): ABI is incompatible with that of the selec=
ted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_div_tf.o=
)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_eq_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_eq_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_ne_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ne_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_ge_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ge_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_lt_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_lt_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_le_tf.o): ABI is incompatible with that of the select=
ed emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_le_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_si_to_tf.o): ABI is incompatible with that of the sel=
ected emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_si_to_tf=
.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_thenan_tf.o): ABI is incompatible with that of the se=
lected emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_thenan_t=
f.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_lshrdi3.o): ABI is incompatible with that of the sele=
cted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_lshrdi3.=
o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_ashldi3.o): ABI is incompatible with that of the sele=
cted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ashldi3.=
o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_pack_tf.o): ABI is incompatible with that of the sele=
cted emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_pack_tf.=
o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_unpack_tf.o): ABI is incompatible with that of the se=
lected emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_unpack_t=
f.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xxx/test1/yocto/poky/bu=
ild/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux=
/4.6.3/arch/libgcc.a(_fpcmp_parts_tf.o): ABI is incompatible with that of t=
he selected emulation
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/libexec/mips=
64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed to merge target specif=
ic data of file /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/us=
r/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_fpcmp_pa=
rts_tf.o)
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-p=
oky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_addsub_tf.o): In funct=
ion `_fpadd_parts':
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:622:(.text+0x80): relocation truncated to fi=
t: R_MIPS_GOT_DISP against `__thenan_tf'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:633:(.text+0xa4): relocation truncated to fi=
t: R_MIPS_CALL16 against `memcpy'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:662:(.text+0x10c): relocation truncated to f=
it: R_MIPS_CALL16 against `__lshrti3'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:665:(.text+0x128): relocation truncated to f=
it: R_MIPS_CALL16 against `__ashlti3'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:670:(.text+0x180): relocation truncated to f=
it: R_MIPS_CALL16 against `__lshrti3'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:670:(.text+0x19c): relocation truncated to f=
it: R_MIPS_CALL16 against `__ashlti3'
| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-p=
oky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_addsub_tf.o): In funct=
ion `__addtf3':
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:749:(.text+0x3a8): relocation truncated to f=
it: R_MIPS_CALL16 against `__unpack_t'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:750:(.text+0x3cc): relocation truncated to f=
it: R_MIPS_CALL16 against `__unpack_t'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:752:(.text+0x3dc): relocation truncated to f=
it: R_MIPS_GOT_PAGE against `.text'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:752:(.text+0x3e8): relocation truncated to f=
it: R_MIPS_GOT_OFST against `.text'
| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-poky-linux/gcc-cross/4.6=
.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/mips64-poky-linux/arch/=
libgcc/../../.././gcc/tp-bit.c:754:(.text+0x3f4): additional relocation ove=
rflows omitted from the output




=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

--_000_17797116383D4341B029FDF34C22BF6A6C4D4977C2GUREXMB01ASIA_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Please help me out!!!!=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Rohit2 J=
indal
<br>
<b>Sent:</b> Wednesday, November 27, 2013 9:17 AM<br>
<b>To:</b> 'yocto@yoctoproject.org'; 'Paul Eggleton'<br>
<b>Subject:</b> RE: Issue in compiliing libraries for toolchain<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Humble Reminder!!!<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Rohit2 J=
indal
<br>
<b>Sent:</b> Tuesday, November 26, 2013 9:50 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org=
</a>; 'Paul Eggleton'<br>
<b>Subject:</b> Issue in compiliing libraries for toolchain<o:p></o:p></spa=
n></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi ,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am getting error while compiling libraries in my t=
oolchain for lib32 mabi=3Dn32 or lib mabi=3D32 files for my bsp. Actually I=
 want to point my libraries to &nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><b>/home/xxx/test1/yocto/poky/build/tmp/sysroots/i68=
6-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/el/libgc=
c.a</b> but its default pointing to
<b>/home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-=
poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a</b> as can be seen in =
the logs. Can u suggest me the way I can set my library paths that it can p=
oint to required library .<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Rohit Jindal<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">LOGS<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-l=
inux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xx=
x/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/=
gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_addsub_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_addsub_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_mul_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_mul_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_div_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_div_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_eq_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_eq_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ne_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_ne_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ge_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_ge_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_lt_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_lt_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_le_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_le_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_si_to_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_si_to_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_thenan_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_thenan_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_lshrdi3.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_lshrdi3.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ashldi3.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_ashldi3.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_pack_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_pack_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_unpack_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_unpack_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_fpcmp_parts_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_fpcmp_parts_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(=
_addsub_tf.o): In function `_fpadd_parts':<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:622:(.text&#43;0x80):=
 relocation truncated to fit: R_MIPS_GOT_DISP
 against `__thenan_tf'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:633:(.text&#43;0xa4):=
 relocation truncated to fit: R_MIPS_CALL16
 against `memcpy'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:662:(.text&#43;0x10c)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__lshrti3'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:665:(.text&#43;0x128)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__ashlti3'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:670:(.text&#43;0x180)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__lshrti3'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:670:(.text&#43;0x19c)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__ashlti3'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(=
_addsub_tf.o): In function `__addtf3':<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:749:(.text&#43;0x3a8)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__unpack_t'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:750:(.text&#43;0x3cc)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__unpack_t'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:752:(.text&#43;0x3dc)=
: relocation truncated to fit: R_MIPS_GOT_PAGE
 against `.text'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:752:(.text&#43;0x3e8)=
: relocation truncated to fit: R_MIPS_GOT_OFST
 against `.text'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:754:(.text&#43;0x3f4)=
: additional relocation overflows omitted
 from the output<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">/home/xxx/test1/yocto/poky/build/tmp/sysroots/i686-l=
inux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/xx=
x/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linux/=
gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_addsub_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_addsub_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_mul_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_mul_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_div_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_div_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_eq_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_eq_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ne_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_ne_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ge_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_ge_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_lt_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_lt_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_le_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_le_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_si_to_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_si_to_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_thenan_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_thenan_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_lshrdi3.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_lshrdi3.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_ashldi3.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_ashldi3.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_pack_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_pack_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_unpack_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_unpack_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: /home/=
xxx/test1/yocto/poky/build/tmp/sysroots/i686-linux/usr/lib/mips64-poky-linu=
x/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(_fpcmp_parts_tf.o):
 ABI is incompatible with that of the selected emulation<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/libexec/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/ld: failed=
 to merge target specific data of file /home/xxx/test1/yocto/poky/build/tmp=
/sysroots/i686-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/=
arch/libgcc.a(_fpcmp_parts_tf.o)<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(=
_addsub_tf.o): In function `_fpadd_parts':<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:622:(.text&#43;0x80):=
 relocation truncated to fit: R_MIPS_GOT_DISP
 against `__thenan_tf'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:633:(.text&#43;0xa4):=
 relocation truncated to fit: R_MIPS_CALL16
 against `memcpy'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:662:(.text&#43;0x10c)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__lshrti3'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:665:(.text&#43;0x128)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__ashlti3'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:670:(.text&#43;0x180)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__lshrti3'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:670:(.text&#43;0x19c)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__ashlti3'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/sysroots/i686=
-linux/usr/lib/mips64-poky-linux/gcc/mips64-poky-linux/4.6.3/arch/libgcc.a(=
_addsub_tf.o): In function `__addtf3':<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:749:(.text&#43;0x3a8)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__unpack_t'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:750:(.text&#43;0x3cc)=
: relocation truncated to fit: R_MIPS_CALL16
 against `__unpack_t'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:752:(.text&#43;0x3dc)=
: relocation truncated to fit: R_MIPS_GOT_PAGE
 against `.text'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:752:(.text&#43;0x3e8)=
: relocation truncated to fit: R_MIPS_GOT_OFST
 against `.text'<o:p></o:p></p>
<p class=3D"MsoNormal">| /home/xxx/test1/yocto/poky/build/tmp/work/mips64-p=
oky-linux/gcc-cross/4.6.3-r19/gcc-4.6.3/build.i686-linux.mips64-poky-linux/=
mips64-poky-linux/arch/libgcc/../../.././gcc/tp-bit.c:754:(.text&#43;0x3f4)=
: additional relocation overflows omitted
 from the output<o:p></o:p></p>
</div>
<br>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to http://www.aricent.com/legal/email_disclaimer.html<br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font>
</body>
</html>

--_000_17797116383D4341B029FDF34C22BF6A6C4D4977C2GUREXMB01ASIA_--
