Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe005.messaging.microsoft.com [216.32.180.188])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 426F7E013EB
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 12:00:53 -0700 (PDT)
Received: from mail79-co1-R.bigfish.com (10.243.78.236) by
	CO1EHSOBE012.bigfish.com (10.243.66.75) with Microsoft SMTP Server id
	14.1.225.23; Tue, 30 Oct 2012 19:00:52 +0000
Received: from mail79-co1 (localhost [127.0.0.1])	by mail79-co1-R.bigfish.com
	(Postfix) with ESMTP id AD7A5B404BF	for <yocto@yoctoproject.org>;
	Tue, 30 Oct 2012 19:00:52 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz98dI9371I936eI1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bhbe9i1155h)
Received: from mail79-co1 (localhost.localdomain [127.0.0.1]) by mail79-co1
	(MessageSwitch) id 1351623649554531_10287;
	Tue, 30 Oct 2012 19:00:49 +0000 (UTC)
Received: from CO1EHSMHS018.bigfish.com (unknown [10.243.78.232])	by
	mail79-co1.bigfish.com (Postfix) with ESMTP id 7AE173800DA	for
	<yocto@yoctoproject.org>; Tue, 30 Oct 2012 19:00:49 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS018.bigfish.com
	(10.243.66.28) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 30 Oct 2012 19:00:47 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.121]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0318.003; Tue, 30 Oct 2012 19:00:46 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Guo Chunrong-B40290 <B40290@freescale.com>
Thread-Topic: [yocto] [meta-fsl-ppc master] inetutils_1.8.bbappend:task
	do_configure and do_compile:failed
Thread-Index: AQHNttDeZWlLoz3bWUGaKDFZMK8VmA==
Date: Tue, 30 Oct 2012 19:00:46 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A737325@039-SN1MPN1-002.039d.mgd.msft.net>
References: <1351580158-13467-1-git-send-email-b40290@freescale.com>
In-Reply-To: <1351580158-13467-1-git-send-email-b40290@freescale.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc master] inetutils_1.8.bbappend:task do_configure and do_compile:failed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 Oct 2012 19:00:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <88DC3E9A60769741942F26981D0B6239@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 30, 2012 at 1:55 AM,  <b40290@freescale.com> wrote:
> From: Chunrong Guo <b40290@freescale.com>
>
>      fix inetutils task do_configure:failed and
>                    task do_compile:failed

At a minimum give some hint what the errors were.

> Signed-off-by: Chunrong Guo <b40290@freescale.com>
> ---
>  .../files/disable-pre-ANSI-compilers.patch         |   11 +++++++++++
>  recipes-append/inetutils/files/remove_gets.patch   |   13 +++++++++++++
>  recipes-append/inetutils/inetutils_1.8.bbappend    |    8 ++++++++
>  3 files changed, 32 insertions(+)
>  create mode 100644 recipes-append/inetutils/files/disable-pre-ANSI-compi=
lers.patch
>  create mode 100644 recipes-append/inetutils/files/remove_gets.patch
>  create mode 100644 recipes-append/inetutils/inetutils_1.8.bbappend

I think the patches belong in meta-openembedded not in meta-fsl-ppc.
Am I missing something here?

-M

>
> diff --git a/recipes-append/inetutils/files/disable-pre-ANSI-compilers.pa=
tch b/recipes-append/inetutils/files/disable-pre-ANSI-compilers.patch
> new file mode 100644
> index 0000000..b945f3a
> --- /dev/null
> +++ b/recipes-append/inetutils/files/disable-pre-ANSI-compilers.patch
> @@ -0,0 +1,11 @@
> +--- inetutils-1.8.org/configure.ac     2012-10-23 02:05:20.516386701 -05=
00
> ++++ inetutils-1.8/configure.ac 2012-10-25 21:31:10.602591484 -0500
> +@@ -569,7 +569,7 @@
> + IU_CHECK_MEMBERS([struct stat.st_blksize])
> +
> + ### Checks for compiler characteristics.
> +-AM_C_PROTOTYPES dnl FIXME: Does inetutils even compile on pre-ANSI comp=
ilers?
> ++#AM_C_PROTOTYPES dnl FIXME: Does inetutils even compile on pre-ANSI com=
pilers?
> + AC_C_CONST
> +
> + dnl See if `weak refs' are possible; these make it possible (with share=
d
> diff --git a/recipes-append/inetutils/files/remove_gets.patch b/recipes-a=
ppend/inetutils/files/remove_gets.patch
> new file mode 100644
> index 0000000..f8081a2
> --- /dev/null
> +++ b/recipes-append/inetutils/files/remove_gets.patch
> @@ -0,0 +1,13 @@
> +--- inetutils-1.8.org/lib/stdio.in.h   2010-05-15 06:35:16.000000000 -05=
00
> ++++ inetutils-1.8/lib/stdio.in.h       2012-10-25 22:56:43.198607472 -05=
00
> +@@ -138,8 +138,10 @@
> + /* It is very rare that the developer ever has full control of stdin,
> +    so any use of gets warrants an unconditional warning.  Assume it is
> +    always declared, since it is required by C89.  */
> ++#if defined gets
> + #undef gets
> + _GL_WARN_ON_USE (gets, "gets is a security hole - use fgets instead");
> ++#endif
> +
> + #if @GNULIB_FOPEN@
> + # if @REPLACE_FOPEN@
> diff --git a/recipes-append/inetutils/inetutils_1.8.bbappend b/recipes-ap=
pend/inetutils/inetutils_1.8.bbappend
> new file mode 100644
> index 0000000..c64f8cf
> --- /dev/null
> +++ b/recipes-append/inetutils/inetutils_1.8.bbappend
> @@ -0,0 +1,8 @@
> +FILESEXTRAPATHS_prepend_fsl :=3D "${THISDIR}/files:"
> +
> +SRC_URI_append_fsl +=3D "file://disable-pre-ANSI-compilers.patch \
> +                       file://remove_gets.patch \
> +                        "
> +
> +PR_fsl .=3D "+${DISTRO}"
> +
> --
> 1.7.9.7
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


