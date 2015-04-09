Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBE89E008EC; Thu,  9 Apr 2015 00:18:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4485E007A0
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 00:18:08 -0700 (PDT)
Received: by paboj16 with SMTP id oj16so141059128pab.0
	for <yocto@yoctoproject.org>; Thu, 09 Apr 2015 00:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=mMHlwe1UXa6G0JFYb+LK0FgvbMHYMFc2LLsAr8unPTI=;
	b=nR9lI6xhE3ybefu8wyqVUWCWtn57j8UjZtr4OoxfyupaarS/tWSBZpxOzkwZfbMgxC
	xD2awwzh4MUZ9AenuXXsqwrP40aosSxGt6pE1WuduvPMgR/CBJpDCboTRDZUk6y0cpCQ
	i9XAMGRbK/scrxqlpA2DcNbEhu+p27aJI4AA+4vaknnSJq28e4PYb80dx55C3BqvE5kz
	3iybkBRIAj8SYIHLbc1pabUtOjF4kTR9k0KrHXpYnWyQ746NeW6JjpG8QU5HsLnE0PCQ
	RvmgkJW+zHy5ONUacbbufzyDr3+m1TBZk4aIzP7STLzwiERAoQUjQXs8UoRVe1JppihT
	KMSg==
X-Received: by 10.66.129.198 with SMTP id ny6mr54816407pab.67.1428563887701;
	Thu, 09 Apr 2015 00:18:07 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:68c8:2a57:ea69:48da?
	([2601:9:3580:84c:68c8:2a57:ea69:48da])
	by mx.google.com with ESMTPSA id
	fs16sm8134640pdb.12.2015.04.09.00.18.06
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 09 Apr 2015 00:18:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20150408114746.GE2337@jama>
Date: Thu, 9 Apr 2015 00:18:05 -0700
Message-Id: <38761C20-F4B2-402A-861C-2C9EB01A4825@gmail.com>
References: <CA+pXca1siHggYUW5OMO0GM4KNSJ+qEV3-_A=VgkZNTk3H4Db-g@mail.gmail.com>
	<20150408114746.GE2337@jama>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: yocto@yoctoproject.org, praveen vattipalli <praveen.vatt@gmail.com>
Subject: Re: do_compile_ptest_base error (valgrind) in dizzy
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
X-List-Received-Date: Thu, 09 Apr 2015 07:18:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Apr 8, 2015, at 4:47 AM, Martin Jansa <martin.jansa@gmail.com> =
wrote:
>=20
> On Wed, Apr 08, 2015 at 12:39:56PM +0530, praveen vattipalli wrote:
>> hi
>> I am using 64 bit ubuntu12.04 and compiling coertexa9 arch arm  =
board. I
>> could able to build core-image-minimal successfully. But when I am =
trying
>> to build valgrind. I am getting do_compile_ptest_base error. If i =
remove
>> ptest in valgrind_3.9.0.bb it is building without errors.
>=20
> There are multiple issues in valgrind's ptest, in the end I've also
> disabled ptest for valgrind:
>=20
> Here is snippet of my distro config (with link to the same report 7 =
months ago):
>=20
> # Work around FTBFS when building valgrind with ptest and thumb =
enabled
> # valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/ldrt_arm.c
> # {standard input}: Assembler messages:
> # {standard input}:42: Error: cannot use post-indexing with this =
instruction -- `ldrt r6,[r5],#+132'
> # {standard input}:42: Error: cannot use post-indexing with this =
instruction -- `ldrt r6,[r5],#132'
> # ...
> # ARM_INSTRUCTION_SET_pn-valgrind =3D "arm"
> # and remove -O2 as work around for ICE:
> # 3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c:12:1: =
internal compiler error:
> # Max. number of generated reload insns per insn is achieved (90)
> # =
http://lists.openembedded.org/pipermail/openembedded-core/2014-September/0=
97330.html
> # both issues are still reproducible with 3.10.0 version imported from
> # http://patchwork.openembedded.org/patch/83009/
> # TARGET_CFLAGS_remove_pn-valgrind =3D "-O2"
> PTEST_ENABLED_pn-valgrind =3D =E2=80=9C0"

For gcc ICE please test out =
http://git.openembedded.org/openembedded-core-contrib/commit/?h=3Dkraj/mas=
ter&id=3D5ea11b4fa4e02f079aa9209e482e4922ad90f8de


>=20
>=20
>>=20
>> I am using poky-dizzy.
>>=20
>> ERROR LOG:
>>=20
>> =
/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux=
-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_=
VFP.c:
>> In function 's32_to_f32_imm1':
>> |
>> =
/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux=
-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_=
VFP.c:12:1:
>> internal compiler error: Max. number of generated reload insns per =
insn is
>> achieved (90)
>> |
>> |  }
>> |  ^
>> | Please submit a full bug report,
>> | with preprocessed source if appropriate.
>> | See <http://gcc.gnu.org/bugs.html> for instructions.
>> | make[5]: *** [vcvt_fixed_float_VFP.o] Error 1
>> | make[5]: Leaving directory
>> =
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
>> | make[4]: *** [check-am] Error 2
>> | make[4]: Leaving directory
>> =
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
>> | make[3]: *** [check-recursive] Error 1
>> | make[3]: Leaving directory
>> =
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/build/none/tests'
>> | make[2]: *** [check-recursive] Error 1
>> | make[2]: Leaving directory
>> =
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/build/none'
>> | make[1]: *** [check-recursive] Error 1
>> | make[1]: Leaving directory
>> =
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/build'
>> | make: *** [check] Error 2
>> | make: Leaving directory
>> =
`/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/build'
>> | ERROR: oe_runmake failed
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_compile_ptest_base (log file is located =
at
>> =
/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linux=
-gnueabi/valgrind/3.9.0-r8/temp/log.do_compile_ptest_base.11152)
>> ERROR: Task 9 =
(/home/praveenk/work/platform/meta/recipes-devtools/valgrind/
>> valgrind_3.9.0.bb, do_compile_ptest_base) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 776 tasks of which 769 didn't need to =
be
>> rerun and 1 failed.
>> No currently running tasks (776 of 784)
>>=20
>> Summary: 1 task failed:
>>  /home/praveenk/work/platform/meta/recipes-devtools/valgrind/
>> valgrind_3.9.0.bb, do_compile_ptest_base
>> Summary: There was 1 ERROR message shown, returning a non-zero exit =
code.
>>=20
>> how can i solve this.
>>=20
>> Thanks
>> Praveen
>=20
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
> --=20
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


