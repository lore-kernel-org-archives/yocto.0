Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D182E00997; Wed,  8 Apr 2015 00:09:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE21EE0098A
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 00:09:57 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so105383787pac.1
	for <yocto@yoctoproject.org>; Wed, 08 Apr 2015 00:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZQxuWbfLxvu1pFQNwGBSx6WRsBZ6GGJUtmxdi2i6MWc=;
	b=unZaowp6GYjS4W25N9cCsbZt9S7vIzEP3Ve2DA7XONAXHeSCpWaFRYO+NVNgKGnXdh
	XEdHioPzWVhyLCphFwuvpLJpSYDbS1g5vfWeelFm7DNj/dkq0gd3kWD69WyuhIzN1yfV
	zNDWBK+uChdmwGThhHmoelNenGKQ5X6hzx1KhHU2g0+nuKBqWihcwsi/NS9JEaai4+/v
	whH4uSPBVaZuWmMPl7MhNFVLXLG7KifhUCS37tvAM3uQGSiZEdLlL28nIpi7ZkuhkGWs
	CZA4/JdnsyGMvsBMRvLBgYn1T2Ya7kDIwb+bQ0uSgmTz8Sn5NpPzqTE9XfW4x5MOnga0
	FaAQ==
MIME-Version: 1.0
X-Received: by 10.70.90.16 with SMTP id bs16mr43494094pdb.76.1428476996628;
	Wed, 08 Apr 2015 00:09:56 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Wed, 8 Apr 2015 00:09:56 -0700 (PDT)
Date: Wed, 8 Apr 2015 12:39:56 +0530
Message-ID: <CA+pXca1siHggYUW5OMO0GM4KNSJ+qEV3-_A=VgkZNTk3H4Db-g@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: yocto@yoctoproject.org
Subject: do_compile_ptest_base error (valgrind) in dizzy
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
X-List-Received-Date: Wed, 08 Apr 2015 07:09:59 -0000
Content-Type: multipart/alternative; boundary=e89a8fb207a2f435330513313792

--e89a8fb207a2f435330513313792
Content-Type: text/plain; charset=UTF-8

hi
I am using 64 bit ubuntu12.04 and compiling coertexa9 arch arm  board. I
could able to build core-image-minimal successfully. But when I am trying
to build valgrind. I am getting do_compile_ptest_base error. If i remove
ptest in valgrind_3.9.0.bb it is building without errors.

I am using poky-dizzy.

ERROR LOG:

/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c:
In function 's32_to_f32_imm1':
|
/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c:12:1:
internal compiler error: Max. number of generated reload insns per insn is
achieved (90)
|
|  }
|  ^
| Please submit a full bug report,
| with preprocessed source if appropriate.
| See <http://gcc.gnu.org/bugs.html> for instructions.
| make[5]: *** [vcvt_fixed_float_VFP.o] Error 1
| make[5]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
| make[4]: *** [check-am] Error 2
| make[4]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
| make[3]: *** [check-recursive] Error 1
| make[3]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests'
| make[2]: *** [check-recursive] Error 1
| make[2]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none'
| make[1]: *** [check-recursive] Error 1
| make[1]: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build'
| make: *** [check] Error 2
| make: Leaving directory
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build'
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile_ptest_base (log file is located at
/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/temp/log.do_compile_ptest_base.11152)
ERROR: Task 9 (/home/praveenk/work/platform/meta/recipes-devtools/valgrind/
valgrind_3.9.0.bb, do_compile_ptest_base) failed with exit code '1'
NOTE: Tasks Summary: Attempted 776 tasks of which 769 didn't need to be
rerun and 1 failed.
No currently running tasks (776 of 784)

Summary: 1 task failed:
  /home/praveenk/work/platform/meta/recipes-devtools/valgrind/
valgrind_3.9.0.bb, do_compile_ptest_base
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

how can i solve this.

Thanks
Praveen

--e89a8fb207a2f435330513313792
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>hi <br></div>I am using 64 bit ubuntu1=
2.04 and compiling=20
coertexa9 arch arm=C2=A0 board. I could able to build core-image-minimal=20
successfully. But when I am trying to build valgrind. I am getting=20
do_compile_ptest_base error. If i remove ptest in <a href=3D"http://valgrin=
d_3.9.0.bb" target=3D"_blank">valgrind_3.9.0.bb</a> it is building without =
errors. <br><br></div><div>I am using poky-dizzy. <br></div><div><br></div>=
<div>ERROR LOG:<br><br>/home/praveenk/work/platform/build/tmp/work/cortexa9=
hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/=
arm/vcvt_fixed_float_VFP.c: In function &#39;s32_to_f32_imm1&#39;:<br>| /ho=
me/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnu=
eabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c=
:12:1: internal compiler error: Max. number of generated reload insns per i=
nsn is achieved (90)<br>| <br>|=C2=A0 }<br>|=C2=A0 ^<br>| Please submit a f=
ull bug report,<br>| with preprocessed source if appropriate.<br>| See &lt;=
<a href=3D"http://gcc.gnu.org/bugs.html" target=3D"_blank">http://gcc.gnu.o=
rg/bugs.html</a>&gt; for instructions.<br>| make[5]: *** [vcvt_fixed_float_=
VFP.o] Error 1<br>| make[5]: Leaving directory `/home/praveenk/work/platfor=
m/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/b=
uild/none/tests/arm&#39;<br>| make[4]: *** [check-am] Error 2<br>| make[4]:=
 Leaving directory `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-=
vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm&#39;<br>=
| make[3]: *** [check-recursive] Error 1<br>| make[3]: Leaving directory `/=
home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-g=
nueabi/valgrind/3.9.0-r8/build/none/tests&#39;<br>| make[2]: *** [check-rec=
ursive] Error 1<br>| make[2]: Leaving directory `/home/praveenk/work/platfo=
rm/build/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/=
build/none&#39;<br>| make[1]: *** [check-recursive] Error 1<br>| make[1]: L=
eaving directory `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vf=
p-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build&#39;<br>| make: *** [chec=
k] Error 2<br>| make: Leaving directory `/home/praveenk/work/platform/build=
/tmp/work/cortexa9hf-vfp-neon-poky-linux-gnueabi/valgrind/3.9.0-r8/build&#3=
9;<br>| ERROR: oe_runmake failed<br>| WARNING: exit code 1 from a shell com=
mand.<br>| ERROR: Function failed: do_compile_ptest_base (log file is locat=
ed at /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-=
linux-gnueabi/valgrind/3.9.0-r8/temp/log.do_compile_ptest_base.11152)<br>ER=
ROR: Task 9 (/home/praveenk/work/platform/meta/recipes-devtools/valgrind/<a=
 href=3D"http://valgrind_3.9.0.bb" target=3D"_blank">valgrind_3.9.0.bb</a>,=
 do_compile_ptest_base) failed with exit code &#39;1&#39;<br>NOTE: Tasks Su=
mmary: Attempted 776 tasks of which 769 didn&#39;t need to be rerun and 1 f=
ailed.<br>No currently running tasks (776 of 784)<br><br>Summary: 1 task fa=
iled:<br>=C2=A0 /home/praveenk/work/platform/meta/recipes-devtools/valgrind=
/<a href=3D"http://valgrind_3.9.0.bb" target=3D"_blank">valgrind_3.9.0.bb</=
a>, do_compile_ptest_base<br>Summary: There was 1 ERROR message shown, retu=
rning a non-zero exit code.<br><br></div>how can i solve this.<br><br></div=
>Thanks <br></div>Praveen<br></div>

--e89a8fb207a2f435330513313792--
