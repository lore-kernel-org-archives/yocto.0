Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D36B0E00997; Wed,  8 Apr 2015 04:47:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07F6DE0098A
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 04:47:45 -0700 (PDT)
Received: by wgin8 with SMTP id n8so85285740wgi.0
	for <yocto@yoctoproject.org>; Wed, 08 Apr 2015 04:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=sJTbmY5rskSC8o4++KMKE3qqEqIzSHbVeACg7tyTgok=;
	b=dMAkJ/yx9A2iiesXnGvFV1IN/2s3UuVoPqz8Abs9ckM0IqAPlpAgPpC9bJSv4leVjx
	l1KD7yPMAFZ+I6sj4IB5ZokrUqT5btjHuLCBBWRaS6ijvq9jVdDItMKsaofHr5lwoYPb
	jhA7Lf/444a9JSDl21idWAZyNryj/ku+RYTDmnG2UF2ZfwBEteEeJjebEaC7RUHCBJj4
	yQYfXPBVlXkeO3OU47JmeXmjVbrfGY8eH7Sxid5pX5896ZkHeD9zAr74KB8pxAIzC8Dt
	Sb6mq9rvwHcAw5EWzUqpS96ZdGDdkHTFasrM6n8Zz9tn60DZV4wzXgLK6u2Pyu60NQ9t
	/EEA==
X-Received: by 10.180.84.67 with SMTP id w3mr4225017wiy.68.1428493664214;
	Wed, 08 Apr 2015 04:47:44 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id
	ln8sm15268811wjc.18.2015.04.08.04.47.43
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Apr 2015 04:47:43 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 8 Apr 2015 13:47:46 +0200
To: praveen vattipalli <praveen.vatt@gmail.com>
Message-ID: <20150408114746.GE2337@jama>
References: <CA+pXca1siHggYUW5OMO0GM4KNSJ+qEV3-_A=VgkZNTk3H4Db-g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+pXca1siHggYUW5OMO0GM4KNSJ+qEV3-_A=VgkZNTk3H4Db-g@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 08 Apr 2015 11:47:47 -0000
X-Groupsio-MsgNum: 24370
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="k+G3HLlWI7eRTl+h"
Content-Disposition: inline

--k+G3HLlWI7eRTl+h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 08, 2015 at 12:39:56PM +0530, praveen vattipalli wrote:
> hi
> I am using 64 bit ubuntu12.04 and compiling coertexa9 arch arm  board. I
> could able to build core-image-minimal successfully. But when I am trying
> to build valgrind. I am getting do_compile_ptest_base error. If i remove
> ptest in valgrind_3.9.0.bb it is building without errors.

There are multiple issues in valgrind's ptest, in the end I've also
disabled ptest for valgrind:

Here is snippet of my distro config (with link to the same report 7 months =
ago):

# Work around FTBFS when building valgrind with ptest and thumb enabled
# valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/ldrt_arm.c
# {standard input}: Assembler messages:
# {standard input}:42: Error: cannot use post-indexing with this instructio=
n -- `ldrt r6,[r5],#+132'
# {standard input}:42: Error: cannot use post-indexing with this instructio=
n -- `ldrt r6,[r5],#132'
# ...
# ARM_INSTRUCTION_SET_pn-valgrind =3D "arm"
# and remove -O2 as work around for ICE:
# 3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_VFP.c:12:1: inter=
nal compiler error:
# Max. number of generated reload insns per insn is achieved (90)
# http://lists.openembedded.org/pipermail/openembedded-core/2014-September/=
097330.html
# both issues are still reproducible with 3.10.0 version imported from
# http://patchwork.openembedded.org/patch/83009/
# TARGET_CFLAGS_remove_pn-valgrind =3D "-O2"
PTEST_ENABLED_pn-valgrind =3D "0"


>=20
> I am using poky-dizzy.
>=20
> ERROR LOG:
>=20
> /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_=
VFP.c:
> In function 's32_to_f32_imm1':
> |
> /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/valgrind-3.9.0/none/tests/arm/vcvt_fixed_float_=
VFP.c:12:1:
> internal compiler error: Max. number of generated reload insns per insn is
> achieved (90)
> |
> |  }
> |  ^
> | Please submit a full bug report,
> | with preprocessed source if appropriate.
> | See <http://gcc.gnu.org/bugs.html> for instructions.
> | make[5]: *** [vcvt_fixed_float_VFP.o] Error 1
> | make[5]: Leaving directory
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
> | make[4]: *** [check-am] Error 2
> | make[4]: Leaving directory
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build/none/tests/arm'
> | make[3]: *** [check-recursive] Error 1
> | make[3]: Leaving directory
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build/none/tests'
> | make[2]: *** [check-recursive] Error 1
> | make[2]: Leaving directory
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build/none'
> | make[1]: *** [check-recursive] Error 1
> | make[1]: Leaving directory
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build'
> | make: *** [check] Error 2
> | make: Leaving directory
> `/home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-lin=
ux-gnueabi/valgrind/3.9.0-r8/build'
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile_ptest_base (log file is located at
> /home/praveenk/work/platform/build/tmp/work/cortexa9hf-vfp-neon-poky-linu=
x-gnueabi/valgrind/3.9.0-r8/temp/log.do_compile_ptest_base.11152)
> ERROR: Task 9 (/home/praveenk/work/platform/meta/recipes-devtools/valgrin=
d/
> valgrind_3.9.0.bb, do_compile_ptest_base) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 776 tasks of which 769 didn't need to be
> rerun and 1 failed.
> No currently running tasks (776 of 784)
>=20
> Summary: 1 task failed:
>   /home/praveenk/work/platform/meta/recipes-devtools/valgrind/
> valgrind_3.9.0.bb, do_compile_ptest_base
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>=20
> how can i solve this.
>=20
> Thanks
> Praveen

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--k+G3HLlWI7eRTl+h
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlUlFWIACgkQN1Ujt2V2gByrQQCgkFCH/ph8QWRgUTZOYbnZOY9G
0/8AniZssFgzA6SRJvV3Bgu+kGj6+BA5
=v6kM
-----END PGP SIGNATURE-----

--k+G3HLlWI7eRTl+h--
