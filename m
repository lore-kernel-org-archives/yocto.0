Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58FD1E00D43; Wed, 15 Jun 2016 13:43:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFEFCE00D35
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:43:25 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id ts6so2154164pac.0
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 13:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=N/UQ26bfVwByBcCWKHhDkjXiY/FJ5JVQu//IE3UKVG4=;
	b=uA+d99ejJyJJ4N1qIZs2jgRH00jk9ioZcOTbe1YLpV79pmA9TjehiHNRwtaFZiOWCy
	+uXrqdaTuWuyWmzVh4g3xkl5jTeWkzy0P4rSklEzee1+UAOhoVaDlENx+Ny0N10ttH2u
	SxdP22wNOz3ZiWKK+Ll+Rfe3QOT61Lnwsg0ZLpWsiEe1Jb2TbAPWHoexu+WQY4NWH9zn
	r2SBgOSqFrWkbf+oRqpbfzNzPhSARxODwyHR+fyi+1aoCdFDCcg9D5AJYn7NGo3yvxZw
	2qlMT6V01NydL8kOe6Eoi57Xa45w0uFZOSk8y8bj850Al2Fg7DDPKlYIHEH+MMU1mPVR
	Txkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=N/UQ26bfVwByBcCWKHhDkjXiY/FJ5JVQu//IE3UKVG4=;
	b=W7TJHYzEZ0dqQPWa9BOXeDtPBDip3fbPDSRx43LICEzedN5+RyKR+VPZ0fGpA9p8Xd
	yxSmBPpwkV+XjB8EtfqXkkloZrFrepCoepftJ6xgo236T+4849Dz0QjZ6NxcZvw5KHCw
	Dc4yIXdDVC60pxn9ERv3FlFbRrdRfHK25Vt58JxNV54PTW31JAERCgAXyzyJ542BCxaZ
	3MbFIIZL4do/EPQk2uhW53dAqpEKUY85A2gZvlvmL4RbJ+ramp59uij2aTXjkQ2rYFIe
	6K8fspm6ySWDCJnU7TcWeNG4lXQGaTLkQdM3fiLxCBOEQIFKPQCsBUhY3FfOGngZkXOL
	H0nA==
X-Gm-Message-State: ALyK8tKVVRKv1DLbRCgnK8/0shfM7+qby2X38Ow27vtSZffF/1lqzjqAbW19ykCHsN27Ig==
X-Received: by 10.66.161.73 with SMTP id xq9mr737776pab.6.1466023404757;
	Wed, 15 Jun 2016 13:43:24 -0700 (PDT)
Received: from [10.0.0.112] ([76.126.209.57]) by smtp.gmail.com with ESMTPSA id
	ih15sm55057957pab.38.2016.06.15.13.43.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 15 Jun 2016 13:43:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1465948220-31466-2-git-send-email-andrei@gherzan.ro>
Date: Wed, 15 Jun 2016 13:43:23 -0700
Message-Id: <B8ABF74A-BFC7-4623-86BB-187DDA582ADF@gmail.com>
References: <1465948220-31466-1-git-send-email-andrei@gherzan.ro>
	<1465948220-31466-2-git-send-email-andrei@gherzan.ro>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/2] linux-raspberrypi: Fix v4.1 with GCC6
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
X-List-Received-Date: Wed, 15 Jun 2016 20:43:27 -0000
X-Groupsio-MsgNum: 30563
Content-Type: multipart/signed;
	boundary="Apple-Mail=_AFF1AC00-785B-48E4-A279-0902765FC179";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_AFF1AC00-785B-48E4-A279-0902765FC179
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_D98087F1-EA33-4EB8-9D8B-CEF36DACB0BB"

--Apple-Mail=_D98087F1-EA33-4EB8-9D8B-CEF36DACB0BB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



On Tue, Jun 14, 2016 at 4:50 PM, Andrei Gherzan <andrei@gherzan.ro> =
wrote:
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
> ...ove-unused-sm_cache_map_vector-definition.patch | 31 +++++++++
> .../linux-raspberrypi-4.1/0003-fix-gcc6.patch      | 78 =
++++++++++++++++++++++
> recipes-kernel/linux/linux-raspberrypi_4.1.bb      |  2 +
> 3 files changed, 111 insertions(+)
> create mode 100644 =
recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cach=
e_map_vector-definition.patch
> create mode 100644 =
recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
>=20
> diff --git =
a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_ca=
che_map_vector-definition.patch =
b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_ca=
che_map_vector-definition.patch
> new file mode 100644
> index 0000000..8d4a900
> --- /dev/null
> +++ =
b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_ca=
che_map_vector-definition.patch
> @@ -0,0 +1,31 @@
> +The code using it also ifdef'ed with 0, anyyd gcc 6
> +complains
> +
> +error: 'sm_cache_map_vector' defined but not used
> +
> +The code using it also ifdef'ed out
> +
> +Upstream-status: Denied =
[https://github.com/raspberrypi/linux/pull/1528]
> +
> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
> +---
> + drivers/char/broadcom/vc_sm/vmcs_sm.c | 2 ++
> + 1 file changed, 2 insertions(+)
> +
> +--- a/drivers/char/broadcom/vc_sm/vmcs_sm.c
> ++++ b/drivers/char/broadcom/vc_sm/vmcs_sm.c
> +@@ -197,12 +197,14 @@ struct SM_STATE_T {
> + static struct SM_STATE_T *sm_state;
> + static int sm_inited;
> +
> ++#if 0
> + static const char *const sm_cache_map_vector[] =3D {
> +       "(null)",
> +       "host",
> +       "videocore",
> +       "host+videocore",
> + };
> ++#endif
> +
> + /* ---- Private Function Prototypes =
-------------------------------------- */
> +
> diff --git =
a/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch =
b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
> new file mode 100644
> index 0000000..61ec2fb
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch
> @@ -0,0 +1,78 @@
> +Fix compile with GCC6
> +
> +Upstream-status: Denied =
[https://github.com/raspberrypi/linux/pull/1528]
> +
> +Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> +
> +Index: source/include/linux/compiler-gcc6.h
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- /dev/null
> ++++ source/include/linux/compiler-gcc6.h
> +@@ -0,0 +1,67 @@
> ++#ifndef __LINUX_COMPILER_H
> ++#error "Please don't include <linux/compiler-gcc5.h> directly, =
include <linux/compiler.h> instead."
> ++#endif
> ++
> ++#define __used                                =
__attribute__((__used__))
> ++#define __must_check                  =
__attribute__((warn_unused_result))
> ++#define __compiler_offsetof(a, b)     __builtin_offsetof(a, b)
> ++
> ++/* Mark functions as cold. gcc will assume any path leading to a =
call
> ++   to them will be unlikely.  This means a lot of manual unlikely()s
> ++   are unnecessary now for any paths leading to the usual suspects
> ++   like BUG(), printk(), panic() etc. [but let's keep them for now =
for
> ++   older compilers]
> ++
> ++   Early snapshots of gcc 4.3 don't support this and we can't detect =
this
> ++   in the preprocessor, but we can live with this because they're =
unreleased.
> ++   Maketime probing would be overkill here.
> ++
> ++   gcc also has a __attribute__((__hot__)) to move hot functions =
into
> ++   a special section, but I don't see any sense in this right now in
> ++   the kernel context */
> ++#define __cold                        __attribute__((__cold__))
> ++
> ++#define __UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), =
__COUNTER__)
> ++
> ++#ifndef __CHECKER__
> ++# define __compiletime_warning(message) =
__attribute__((warning(message)))
> ++# define __compiletime_error(message) =
__attribute__((error(message)))
> ++#endif /* __CHECKER__ */
> ++
> ++/*
> ++ * Mark a position in code as unreachable.  This can be used to
> ++ * suppress control flow warnings after asm blocks that transfer
> ++ * control elsewhere.
> ++ *
> ++ * Early snapshots of gcc 4.5 don't support this and we can't detect
> ++ * this in the preprocessor, but we can live with this because =
they're
> ++ * unreleased.  Really, we need to have autoconf for the kernel.
> ++ */
> ++#define unreachable() __builtin_unreachable()
> ++
> ++/* Mark a function definition as prohibited from being cloned. */
> ++#define __noclone     __attribute__((__noclone__))
> ++
> ++/*
> ++ * Tell the optimizer that something else uses this function or =
variable.
> ++ */
> ++#define __visible __attribute__((externally_visible))
> ++
> ++/*
> ++ * GCC 'asm goto' miscompiles certain code sequences:
> ++ *
> ++ *   http://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D58670
> ++ *
> ++ * Work it around via a compiler barrier quirk suggested by Jakub =
Jelinek.
> ++ *
> ++ * (asm goto is automatically volatile - the naming reflects this.)
> ++ */
> ++#define asm_volatile_goto(x...)       do { asm goto(x); asm (""); } =
while (0)
> ++
> ++#ifdef CONFIG_ARCH_USE_BUILTIN_BSWAP
> ++#define __HAVE_BUILTIN_BSWAP32__
> ++#define __HAVE_BUILTIN_BSWAP64__
> ++#define __HAVE_BUILTIN_BSWAP16__
> ++#endif /* CONFIG_ARCH_USE_BUILTIN_BSWAP */
> ++

should you back port below commit from upstream instead ?

=46rom cb984d101b30eb7478d32df56a0023e4603cba7f Mon Sep 17 00:00:00 2001
From: Joe Perches <joe@perches.com <mailto:joe@perches.com>>
Date: Thu, 25 Jun 2015 15:01:02 -0700
Subject: [PATCH] compiler-gcc: integrate the various compiler-gcc[345].h =
files

As gcc major version numbers are going to advance rather rapidly in the
future, there's no real value in separate files for each compiler
version.

Deduplicate some of the macros #defined in each file too.

Neaten comments using normal kernel commenting style.


> ++#define KASAN_ABI_VERSION 4
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb =
b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> index 79fac66..87c77b8 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> @@ -5,6 +5,8 @@ LINUX_VERSION ?=3D "4.1.21"
> SRCREV =3D "ff45bc0e8917c77461b2901e2743e6339bb70413"
> SRC_URI =3D =
"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi-4.1.y =
\
>            file://0001-dts-add-overlay-for-pitft22.patch \
> +           =
file://0002-vmcs-Remove-unused-sm_cache_map_vector-definition.patch \
> +           file://0003-fix-gcc6.patch \
>           "
>=20
> require linux-raspberrypi.inc
> --
> 2.8.2
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail=_D98087F1-EA33-4EB8-9D8B-CEF36DACB0BB
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;"><br =
class=3D""><br class=3D"">On Tue, Jun 14, 2016 at 4:50 PM, Andrei =
Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro" =
class=3D"">andrei@gherzan.ro</a>&gt; wrote:<br class=3D""><blockquote =
type=3D"cite" class=3D"">Signed-off-by: Andrei Gherzan &lt;<a =
href=3D"mailto:andrei@gherzan.ro" class=3D"">andrei@gherzan.ro</a>&gt;<br =
class=3D"">---<br class=3D""> =
...ove-unused-sm_cache_map_vector-definition.patch | 31 +++++++++<br =
class=3D""> .../linux-raspberrypi-4.1/0003-fix-gcc6.patch =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| 78 ++++++++++++++++++++++<br class=3D""> =
recipes-kernel/linux/linux-raspberrypi_4.1.bb =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;2 +<br class=3D""> 3 files =
changed, 111 insertions(+)<br class=3D""> create mode 100644 =
recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_cach=
e_map_vector-definition.patch<br class=3D""> create mode 100644 =
recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch<br =
class=3D""><br class=3D"">diff --git =
a/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_ca=
che_map_vector-definition.patch =
b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_ca=
che_map_vector-definition.patch<br class=3D"">new file mode 100644<br =
class=3D"">index 0000000..8d4a900<br class=3D"">--- /dev/null<br =
class=3D"">+++ =
b/recipes-kernel/linux/linux-raspberrypi-4.1/0002-vmcs-Remove-unused-sm_ca=
che_map_vector-definition.patch<br class=3D"">@@ -0,0 +1,31 @@<br =
class=3D"">+The code using it also ifdef'ed with 0, anyyd gcc 6<br =
class=3D"">+complains<br class=3D"">+<br class=3D"">+error: =
'sm_cache_map_vector' defined but not used<br class=3D"">+<br =
class=3D"">+The code using it also ifdef'ed out<br class=3D"">+<br =
class=3D"">+Upstream-status: Denied [<a =
href=3D"https://github.com/raspberrypi/linux/pull/1528" =
class=3D"">https://github.com/raspberrypi/linux/pull/1528</a>]<br =
class=3D"">+<br class=3D"">+Signed-off-by: Khem Raj &lt;<a =
href=3D"mailto:raj.khem@gmail.com" =
class=3D"">raj.khem@gmail.com</a>&gt;<br class=3D"">+---<br class=3D"">+ =
drivers/char/broadcom/vc_sm/vmcs_sm.c | 2 ++<br class=3D"">+ 1 file =
changed, 2 insertions(+)<br class=3D"">+<br class=3D"">+--- =
a/drivers/char/broadcom/vc_sm/vmcs_sm.c<br class=3D"">++++ =
b/drivers/char/broadcom/vc_sm/vmcs_sm.c<br class=3D"">+@@ -197,12 =
+197,14 @@ struct SM_STATE_T {<br class=3D"">+ static struct SM_STATE_T =
*sm_state;<br class=3D"">+ static int sm_inited;<br class=3D"">+<br =
class=3D"">++#if 0<br class=3D"">+ static const char *const =
sm_cache_map_vector[] =3D {<br class=3D"">+ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"(null)",<br class=3D"">+ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"host",<br class=3D"">+ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"videocore",<br class=3D"">+ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"host+videocore",<br class=3D"">+ =
};<br class=3D"">++#endif<br class=3D"">+<br class=3D"">+ /* ---- =
Private Function Prototypes -------------------------------------- */<br =
class=3D"">+<br class=3D"">diff --git =
a/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch =
b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch<br =
class=3D"">new file mode 100644<br class=3D"">index 0000000..61ec2fb<br =
class=3D"">--- /dev/null<br class=3D"">+++ =
b/recipes-kernel/linux/linux-raspberrypi-4.1/0003-fix-gcc6.patch<br =
class=3D"">@@ -0,0 +1,78 @@<br class=3D"">+Fix compile with GCC6<br =
class=3D"">+<br class=3D"">+Upstream-status: Denied [<a =
href=3D"https://github.com/raspberrypi/linux/pull/1528" =
class=3D"">https://github.com/raspberrypi/linux/pull/1528</a>]<br =
class=3D"">+<br class=3D"">+Signed-off-by: Andrei Gherzan &lt;<a =
href=3D"mailto:andrei@gherzan.ro" class=3D"">andrei@gherzan.ro</a>&gt;<br =
class=3D"">+<br class=3D"">+Index: =
source/include/linux/compiler-gcc6.h<br =
class=3D"">+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br =
class=3D"">+--- /dev/null<br class=3D"">++++ =
source/include/linux/compiler-gcc6.h<br class=3D"">+@@ -0,0 +1,67 @@<br =
class=3D"">++#ifndef __LINUX_COMPILER_H<br class=3D"">++#error "Please =
don't include &lt;linux/compiler-gcc5.h&gt; directly, include =
&lt;linux/compiler.h&gt; instead."<br class=3D"">++#endif<br =
class=3D"">++<br class=3D"">++#define __used =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;__attribute__((__used__))<br =
class=3D"">++#define __must_check =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;__attribute__((warn_unused_result))<br =
class=3D"">++#define __compiler_offsetof(a, b) =
&nbsp;&nbsp;&nbsp;&nbsp;__builtin_offsetof(a, b)<br class=3D"">++<br =
class=3D"">++/* Mark functions as cold. gcc will assume any path leading =
to a call<br class=3D"">++ &nbsp;&nbsp;to them will be unlikely. =
&nbsp;This means a lot of manual unlikely()s<br class=3D"">++ =
&nbsp;&nbsp;are unnecessary now for any paths leading to the usual =
suspects<br class=3D"">++ &nbsp;&nbsp;like BUG(), printk(), panic() etc. =
[but let's keep them for now for<br class=3D"">++ &nbsp;&nbsp;older =
compilers]<br class=3D"">++<br class=3D"">++ &nbsp;&nbsp;Early snapshots =
of gcc 4.3 don't support this and we can't detect this<br class=3D"">++ =
&nbsp;&nbsp;in the preprocessor, but we can live with this because =
they're unreleased.<br class=3D"">++ &nbsp;&nbsp;Maketime probing would =
be overkill here.<br class=3D"">++<br class=3D"">++ &nbsp;&nbsp;gcc also =
has a __attribute__((__hot__)) to move hot functions into<br class=3D"">++=
 &nbsp;&nbsp;a special section, but I don't see any sense in this right =
now in<br class=3D"">++ &nbsp;&nbsp;the kernel context */<br =
class=3D"">++#define __cold =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;__attribut=
e__((__cold__))<br class=3D"">++<br class=3D"">++#define =
__UNIQUE_ID(prefix) __PASTE(__PASTE(__UNIQUE_ID_, prefix), =
__COUNTER__)<br class=3D"">++<br class=3D"">++#ifndef __CHECKER__<br =
class=3D"">++# define __compiletime_warning(message) =
__attribute__((warning(message)))<br class=3D"">++# define =
__compiletime_error(message) __attribute__((error(message)))<br =
class=3D"">++#endif /* __CHECKER__ */<br class=3D"">++<br =
class=3D"">++/*<br class=3D"">++ * Mark a position in code as =
unreachable. &nbsp;This can be used to<br class=3D"">++ * suppress =
control flow warnings after asm blocks that transfer<br class=3D"">++ * =
control elsewhere.<br class=3D"">++ *<br class=3D"">++ * Early snapshots =
of gcc 4.5 don't support this and we can't detect<br class=3D"">++ * =
this in the preprocessor, but we can live with this because they're<br =
class=3D"">++ * unreleased. &nbsp;Really, we need to have autoconf for =
the kernel.<br class=3D"">++ */<br class=3D"">++#define unreachable() =
__builtin_unreachable()<br class=3D"">++<br class=3D"">++/* Mark a =
function definition as prohibited from being cloned. */<br =
class=3D"">++#define __noclone =
&nbsp;&nbsp;&nbsp;&nbsp;__attribute__((__noclone__))<br class=3D"">++<br =
class=3D"">++/*<br class=3D"">++ * Tell the optimizer that something =
else uses this function or variable.<br class=3D"">++ */<br =
class=3D"">++#define __visible __attribute__((externally_visible))<br =
class=3D"">++<br class=3D"">++/*<br class=3D"">++ * GCC 'asm goto' =
miscompiles certain code sequences:<br class=3D"">++ *<br class=3D"">++ =
* &nbsp;&nbsp;<a =
href=3D"http://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D58670" =
class=3D"">http://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D58670</a><br =
class=3D"">++ *<br class=3D"">++ * Work it around via a compiler barrier =
quirk suggested by Jakub Jelinek.<br class=3D"">++ *<br class=3D"">++ * =
(asm goto is automatically volatile - the naming reflects this.)<br =
class=3D"">++ */<br class=3D"">++#define asm_volatile_goto(x...) =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do { asm goto(x); asm (""); } while =
(0)<br class=3D"">++<br class=3D"">++#ifdef =
CONFIG_ARCH_USE_BUILTIN_BSWAP<br class=3D"">++#define =
__HAVE_BUILTIN_BSWAP32__<br class=3D"">++#define =
__HAVE_BUILTIN_BSWAP64__<br class=3D"">++#define =
__HAVE_BUILTIN_BSWAP16__<br class=3D"">++#endif /* =
CONFIG_ARCH_USE_BUILTIN_BSWAP */<br class=3D"">++<br =
class=3D""></blockquote><br class=3D"">should you back port below commit =
from upstream instead ?<div class=3D""><br class=3D""></div><div =
class=3D""><span style=3D"font-family: FiraMono-Regular;" class=3D"">=46ro=
m cb984d101b30eb7478d32df56a0023e4603cba7f Mon Sep 17 00:00:00 =
2001</span><br style=3D"font-family: FiraMono-Regular;" class=3D""><span =
style=3D"font-family: FiraMono-Regular;" class=3D"">From: Joe Perches =
&lt;</span><a href=3D"mailto:joe@perches.com" style=3D"font-family: =
FiraMono-Regular;" class=3D"">joe@perches.com</a><span =
style=3D"font-family: FiraMono-Regular;" class=3D"">&gt;</span><br =
style=3D"font-family: FiraMono-Regular;" class=3D""><span =
style=3D"font-family: FiraMono-Regular;" class=3D"">Date: Thu, 25 Jun =
2015 15:01:02 -0700</span><br style=3D"font-family: FiraMono-Regular;" =
class=3D""><span style=3D"font-family: FiraMono-Regular;" =
class=3D"">Subject: [PATCH] compiler-gcc: integrate the various =
compiler-gcc[345].h files</span><br style=3D"font-family: =
FiraMono-Regular;" class=3D""><br style=3D"font-family: =
FiraMono-Regular;" class=3D""><span style=3D"font-family: =
FiraMono-Regular;" class=3D"">As gcc major version numbers are going to =
advance rather rapidly in the</span><br style=3D"font-family: =
FiraMono-Regular;" class=3D""><span style=3D"font-family: =
FiraMono-Regular;" class=3D"">future, there's no real value in separate =
files for each compiler</span><br style=3D"font-family: =
FiraMono-Regular;" class=3D""><span style=3D"font-family: =
FiraMono-Regular;" class=3D"">version.</span><br style=3D"font-family: =
FiraMono-Regular;" class=3D""><br style=3D"font-family: =
FiraMono-Regular;" class=3D""><span style=3D"font-family: =
FiraMono-Regular;" class=3D"">Deduplicate some of the macros #defined in =
each file too.</span><br style=3D"font-family: FiraMono-Regular;" =
class=3D""><br style=3D"font-family: FiraMono-Regular;" class=3D""><span =
style=3D"font-family: FiraMono-Regular;" class=3D"">Neaten comments =
using normal kernel commenting style.</span></div><div class=3D""><br =
class=3D""></div><div class=3D""><br style=3D"font-family: =
FiraMono-Regular;" class=3D""><blockquote type=3D"cite" =
class=3D"">++#define KASAN_ABI_VERSION 4<br class=3D"">diff --git =
a/recipes-kernel/linux/linux-raspberrypi_4.1.bb =
b/recipes-kernel/linux/linux-raspberrypi_4.1.bb<br class=3D"">index =
79fac66..87c77b8 100644<br class=3D"">--- =
a/recipes-kernel/linux/linux-raspberrypi_4.1.bb<br class=3D"">+++ =
b/recipes-kernel/linux/linux-raspberrypi_4.1.bb<br class=3D"">@@ -5,6 =
+5,8 @@ LINUX_VERSION ?=3D "4.1.21"<br class=3D""> SRCREV =3D =
"ff45bc0e8917c77461b2901e2743e6339bb70413"<br class=3D""> SRC_URI =3D =
"<a =
href=3D"git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3Drpi=
-4.1.y" =
class=3D"">git://github.com/raspberrypi/linux.git;protocol=3Dgit;branch=3D=
rpi-4.1.y</a> \<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a =
href=3D"file:///0001-dts-add-overlay-for-pitft22.patch" =
class=3D"">file://0001-dts-add-overlay-for-pitft22.patch</a> \<br =
class=3D"">+ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a =
href=3D"file:///0002-vmcs-Remove-unused-sm_cache_map_vector-definition.pat=
ch" =
class=3D"">file://0002-vmcs-Remove-unused-sm_cache_map_vector-definition.p=
atch</a> \<br class=3D"">+ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a =
href=3D"file:///0003-fix-gcc6.patch" =
class=3D"">file://0003-fix-gcc6.patch</a> \<br class=3D""> =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"<br =
class=3D""><br class=3D""> require linux-raspberrypi.inc<br =
class=3D"">--<br class=3D"">2.8.2<br class=3D""><br class=3D"">--<br =
class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></blockquote></div></body></html>=

--Apple-Mail=_D98087F1-EA33-4EB8-9D8B-CEF36DACB0BB--

--Apple-Mail=_AFF1AC00-785B-48E4-A279-0902765FC179
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldhvesACgkQuwUzVZGdMxRhIgCfYH2/0r9Dvp4Pok9jCFvpBELI
UhoAnA7c2gZKVrtSs11IQcrgynuHpAup
=oiAD
-----END PGP SIGNATURE-----

--Apple-Mail=_AFF1AC00-785B-48E4-A279-0902765FC179--
