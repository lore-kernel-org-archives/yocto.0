Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A97E7E006B5; Tue, 29 Jul 2014 09:09:40 -0700 (PDT)
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
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BBEAE003FA
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 09:09:31 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id x19so8957606ier.34
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 09:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/D2n9N77ftFYT6pJqm060euQ7tKWfDUhbhdY4Kuf/Hg=;
	b=Y7ybHyLGouER9aeN/VfFWNmYkBLyZEG1AZdId9hYzDd26qTjWIdTXBQ2oazSWIEWHJ
	1p+FuuQ4AFXGxNKVxqC9dqfISSRqq331f07PIf7CTBK2yJfTRY1ll8XaoqqEK99EaRZo
	WB3NabGIfbiW5c1ALIuQpjHc/EjYxmejOgaUFxjUWKDu/S1cZd/hyTMN2CyI8L5pQWzf
	CQWOGHUFmqndNYX0g9hjWqQrm6NqsAuAomxYvh/EJBaOZ5MIsA3SYrshvxCZhOeFFxHU
	x+7mSs6MgAelKT0mZurlQT6eL8P9thEF0lkQ8JOf3bvoqQmL7d1sLnwyV9s5mG0EzwJJ
	2z/Q==
MIME-Version: 1.0
X-Received: by 10.42.90.74 with SMTP id j10mr6752004icm.29.1406650170681; Tue,
	29 Jul 2014 09:09:30 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 29 Jul 2014 09:09:30 -0700 (PDT)
Received: by 10.50.78.105 with HTTP; Tue, 29 Jul 2014 09:09:30 -0700 (PDT)
In-Reply-To: <1406649546-22992-1-git-send-email-dwatkins@sierrawireless.com>
References: <1406649546-22992-1-git-send-email-dwatkins@sierrawireless.com>
Date: Tue, 29 Jul 2014 09:09:30 -0700
Message-ID: <CAMKF1spOAFq0XJfZLjPqGhd6DBOk6Hz3Bg5Qz0Vd0hYAbzSiqg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] binutils: Add fix for recent patch on older gcc
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
X-List-Received-Date: Tue, 29 Jul 2014 16:09:40 -0000
Content-Type: multipart/alternative; boundary=90e6ba53b27cbf46c904ff5743ee

--90e6ba53b27cbf46c904ff5743ee
Content-Type: text/plain; charset=UTF-8

On Jul 29, 2014 9:05 AM, "Darcy Watkins" <dwatkins@sierrawireless.com>
wrote:
>
> From: Darcy Watkins <dwatkins>
>
> The recent bintuils patch update breaks on older gccs such as CentOS 6.
> Backport a patch to address this.
>
> (From master: 540b7a196a00c4dc1bf8f7c87e68e80ab310756e)
> (From OE-Core rev: 76f65e73081f52cea718ef164f9d1d7a5c65d537)
>

send it to openembedded core mailing list and have daisy in the subject.

> Signed-off-by: Darcy Watkins <dwatkins@sierrawireless.com>
> ---
>  meta/recipes-devtools/binutils/binutils-2.24.inc   |  1 +
>  .../binutils/binutils-uninitialised-warning.patch  | 50
++++++++++++++++++++++
>  2 files changed, 51 insertions(+)
>  create mode 100644
meta/recipes-devtools/binutils/binutils/binutils-uninitialised-warning.patch
>
> diff --git a/meta/recipes-devtools/binutils/binutils-2.24.inc
b/meta/recipes-devtools/binutils/binutils-2.24.inc
> index ef6a4eb..8f3216f 100644
> --- a/meta/recipes-devtools/binutils/binutils-2.24.inc
> +++ b/meta/recipes-devtools/binutils/binutils-2.24.inc
> @@ -31,6 +31,7 @@ SRC_URI = "\
>       file://fix-pr16428.patch \
>       file://replace_macros_with_static_inline.patch \
>
file://0001-Fix-MMIX-build-breakage-from-bfd_set_section_vma-cha.patch \
> +     file://binutils-uninitialised-warning.patch \
>       "
>
>  SRC_URI[md5sum] = "e0f71a7b2ddab0f8612336ac81d9636b"
> diff --git
a/meta/recipes-devtools/binutils/binutils/binutils-uninitialised-warning.patch
b/meta/recipes-devtools/binutils/binutils/binutils-uninitialised-warning.patch
> new file mode 100644
> index 0000000..2feb80c
> --- /dev/null
> +++
b/meta/recipes-devtools/binutils/binutils/binutils-uninitialised-warning.patch
> @@ -0,0 +1,50 @@
> +From f9c316c4d75be236bbaa8464ef803ed2d3859d6d Mon Sep 17 00:00:00 2001
> +From: H.J. Lu <hjl.tools@gmail.com>
> +Date: Wed, 15 Jan 2014 07:43:19 -0800
> +Subject: [PATCH 1/1] Silence uninitialized warning on ehdr_start_save
> +
> +Older GCC, like 4.1/4.2, will issue an uninitialized warning on
> +ehdr_start_save.  This patch silences by using
> +
> +struct bfd_link_hash_entry ehdr_start_save = ehdr_start_save;
> +
> +       * emultempl/elf32.em (gld${EMULATION_NAME}_before_allocation):
> +       Silence uninitialized warning on ehdr_start_save with older
> +       GCC.
> +
> +Upstream-Status: Backport
> +---
> + ld/ChangeLog          |    6 ++++++
> + ld/emultempl/elf32.em |    2 +-
> + 2 files changed, 7 insertions(+), 1 deletions(-)
> +
> +#diff --git a/ld/ChangeLog b/ld/ChangeLog
> +#index eaa6b93..91055de 100644
> +#--- a/ld/ChangeLog
> +#+++ b/ld/ChangeLog
> +#@@ -1,3 +1,9 @@
> +#+2014-01-15  H.J. Lu  <hongjiu.lu@intel.com>
> +#+
> +#+     * emultempl/elf32.em (gld${EMULATION_NAME}_before_allocation):
> +#+     Silence uninitialized warning on ehdr_start_save with older
> +#+     GCC.
> +#+
> +# 2014-01-15  Alan Modra  <amodra@gmail.com>
> +#
> +#      * emultempl/elf32.em (gld${EMULATION_NAME}_before_allocation):
Define
> +diff --git a/ld/emultempl/elf32.em b/ld/emultempl/elf32.em
> +index 13f86f0..569c7f7 100644
> +--- a/ld/emultempl/elf32.em
> ++++ b/ld/emultempl/elf32.em
> +@@ -1481,7 +1481,7 @@ gld${EMULATION_NAME}_before_allocation (void)
> +   asection *sinterp;
> +   bfd *abfd;
> +   struct elf_link_hash_entry *ehdr_start = NULL;
> +-  struct bfd_link_hash_entry ehdr_start_save;
> ++  struct bfd_link_hash_entry ehdr_start_save = ehdr_start_save;
> +
> +   if (is_elf_hash_table (link_info.hash))
> +     {
> +--
> +1.7.1
> +
> --
> 1.7.12.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--90e6ba53b27cbf46c904ff5743ee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On Jul 29, 2014 9:05 AM, &quot;Darcy Watkins&quot; &lt;<a href=3D"mailto:dw=
atkins@sierrawireless.com">dwatkins@sierrawireless.com</a>&gt; wrote:<br>
&gt;<br>
&gt; From: Darcy Watkins &lt;dwatkins&gt;<br>
&gt;<br>
&gt; The recent bintuils patch update breaks on older gccs such as CentOS 6=
.<br>
&gt; Backport a patch to address this.<br>
&gt;<br>
&gt; (From master: 540b7a196a00c4dc1bf8f7c87e68e80ab310756e)<br>
&gt; (From OE-Core rev: 76f65e73081f52cea718ef164f9d1d7a5c65d537)<br>
&gt;</p>
<p dir=3D"ltr">send it to openembedded core mailing list and have daisy in =
the subject.</p>
<p dir=3D"ltr">&gt; Signed-off-by: Darcy Watkins &lt;<a href=3D"mailto:dwat=
kins@sierrawireless.com">dwatkins@sierrawireless.com</a>&gt;<br>
&gt; ---<br>
&gt; =C2=A0meta/recipes-devtools/binutils/binutils-2.24.inc =C2=A0 | =C2=A0=
1 +<br>
&gt; =C2=A0.../binutils/binutils-uninitialised-warning.patch =C2=A0| 50 +++=
+++++++++++++++++++<br>
&gt; =C2=A02 files changed, 51 insertions(+)<br>
&gt; =C2=A0create mode 100644 meta/recipes-devtools/binutils/binutils/binut=
ils-uninitialised-warning.patch<br>
&gt;<br>
&gt; diff --git a/meta/recipes-devtools/binutils/binutils-2.24.inc b/meta/r=
ecipes-devtools/binutils/binutils-2.24.inc<br>
&gt; index ef6a4eb..8f3216f 100644<br>
&gt; --- a/meta/recipes-devtools/binutils/binutils-2.24.inc<br>
&gt; +++ b/meta/recipes-devtools/binutils/binutils-2.24.inc<br>
&gt; @@ -31,6 +31,7 @@ SRC_URI =3D &quot;\<br>
&gt; =C2=A0 =C2=A0 =C2=A0 file://fix-pr16428.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 file://replace_macros_with_static_inline.patch \<=
br>
&gt; =C2=A0 =C2=A0 =C2=A0 file://0001-Fix-MMIX-build-breakage-from-bfd_set_=
section_vma-cha.patch \<br>
&gt; + =C2=A0 =C2=A0 file://binutils-uninitialised-warning.patch \<br>
&gt; =C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;<br>
&gt; =C2=A0SRC_URI[md5sum] =3D &quot;e0f71a7b2ddab0f8612336ac81d9636b&quot;=
<br>
&gt; diff --git a/meta/recipes-devtools/binutils/binutils/binutils-uninitia=
lised-warning.patch b/meta/recipes-devtools/binutils/binutils/binutils-unin=
itialised-warning.patch<br>
&gt; new file mode 100644<br>
&gt; index 0000000..2feb80c<br>
&gt; --- /dev/null<br>
&gt; +++ b/meta/recipes-devtools/binutils/binutils/binutils-uninitialised-w=
arning.patch<br>
&gt; @@ -0,0 +1,50 @@<br>
&gt; +From f9c316c4d75be236bbaa8464ef803ed2d3859d6d Mon Sep 17 00:00:00 200=
1<br>
&gt; +From: H.J. Lu &lt;<a href=3D"mailto:hjl.tools@gmail.com">hjl.tools@gm=
ail.com</a>&gt;<br>
&gt; +Date: Wed, 15 Jan 2014 07:43:19 -0800<br>
&gt; +Subject: [PATCH 1/1] Silence uninitialized warning on ehdr_start_save=
<br>
&gt; +<br>
&gt; +Older GCC, like 4.1/4.2, will issue an uninitialized warning on<br>
&gt; +ehdr_start_save. =C2=A0This patch silences by using<br>
&gt; +<br>
&gt; +struct bfd_link_hash_entry ehdr_start_save =3D ehdr_start_save;<br>
&gt; +<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 * emultempl/elf32.em (gld${EMULATION_NAME}_befo=
re_allocation):<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 Silence uninitialized warning on ehdr_start_sav=
e with older<br>
&gt; + =C2=A0 =C2=A0 =C2=A0 GCC.<br>
&gt; +<br>
&gt; +Upstream-Status: Backport<br>
&gt; +---<br>
&gt; + ld/ChangeLog =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =C2=A0 =C2=A06 ++++=
++<br>
&gt; + ld/emultempl/elf32.em | =C2=A0 =C2=A02 +-<br>
&gt; + 2 files changed, 7 insertions(+), 1 deletions(-)<br>
&gt; +<br>
&gt; +#diff --git a/ld/ChangeLog b/ld/ChangeLog<br>
&gt; +#index eaa6b93..91055de 100644<br>
&gt; +#--- a/ld/ChangeLog<br>
&gt; +#+++ b/ld/ChangeLog<br>
&gt; +#@@ -1,3 +1,9 @@<br>
&gt; +#+2014-01-15 =C2=A0H.J. Lu =C2=A0&lt;<a href=3D"mailto:hongjiu.lu@int=
el.com">hongjiu.lu@intel.com</a>&gt;<br>
&gt; +#+<br>
&gt; +#+ =C2=A0 =C2=A0 * emultempl/elf32.em (gld${EMULATION_NAME}_before_al=
location):<br>
&gt; +#+ =C2=A0 =C2=A0 Silence uninitialized warning on ehdr_start_save wit=
h older<br>
&gt; +#+ =C2=A0 =C2=A0 GCC.<br>
&gt; +#+<br>
&gt; +# 2014-01-15 =C2=A0Alan Modra =C2=A0&lt;<a href=3D"mailto:amodra@gmai=
l.com">amodra@gmail.com</a>&gt;<br>
&gt; +#<br>
&gt; +# =C2=A0 =C2=A0 =C2=A0* emultempl/elf32.em (gld${EMULATION_NAME}_befo=
re_allocation): Define<br>
&gt; +diff --git a/ld/emultempl/elf32.em b/ld/emultempl/elf32.em<br>
&gt; +index 13f86f0..569c7f7 100644<br>
&gt; +--- a/ld/emultempl/elf32.em<br>
&gt; ++++ b/ld/emultempl/elf32.em<br>
&gt; +@@ -1481,7 +1481,7 @@ gld${EMULATION_NAME}_before_allocation (void)<b=
r>
&gt; + =C2=A0 asection *sinterp;<br>
&gt; + =C2=A0 bfd *abfd;<br>
&gt; + =C2=A0 struct elf_link_hash_entry *ehdr_start =3D NULL;<br>
&gt; +- =C2=A0struct bfd_link_hash_entry ehdr_start_save;<br>
&gt; ++ =C2=A0struct bfd_link_hash_entry ehdr_start_save =3D ehdr_start_sav=
e;<br>
&gt; +<br>
&gt; + =C2=A0 if (is_elf_hash_table (link_info.hash))<br>
&gt; + =C2=A0 =C2=A0 {<br>
&gt; +--<br>
&gt; +1.7.1<br>
&gt; +<br>
&gt; --<br>
&gt; 1.7.12.4<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--90e6ba53b27cbf46c904ff5743ee--
