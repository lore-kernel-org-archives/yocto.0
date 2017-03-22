Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E901E0098A; Wed, 22 Mar 2017 07:37:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B40FAE0098A
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 07:37:00 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id u108so27051802wrb.2
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 07:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2AtrIVMeWdcIIqVVldWdQzDFKuYkY2r8/GeMTa6sEmM=;
	b=QHDZ8BRgLmhxHvUwrbwwuu1lO8FAxFqQipspBp61iiggNI1tk/rsTBQ0zHM3eMVndS
	vBNdbLB/ynNDvKPfBCgbytSpFZ2U4TlmEcNgOzCPThAhwnpGZvJI0bv1cTSrMd8gylmY
	v45OD4yYcJUDLmcngOC3c2h3i6HW70cYhkIrBQOMbbcuYxEqib8/cO3O7HxIgpD5Mg+h
	3uPxwvtd/h+VnJmIMbKAF+hX68TcV2Tkzve5JrtcHoJE0HVpZcL6wnixuY/Q+/k+zMo1
	T3zT48KuIZCs57XfGO1SVHVHg0cjcrM8VUd0WTJ4oXGosi9qyoZ/7S8I9mvZKzfKxAzn
	vqxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2AtrIVMeWdcIIqVVldWdQzDFKuYkY2r8/GeMTa6sEmM=;
	b=c2dTcpjvFvdV6uqS6rw6I4n4Ofl4WwWjdCQZzB/M+I9PHiHJv0caqvx42pZI2GYwbx
	6qROKudYeqOAt123NReXVHvEKbt8llcXGR+avbmil0ZaP9JCDU88kLIDzNBLyGPKCu05
	ucb22V2S54fwUAazeTii+6hX/3kDn+6XI9+caGAesNfojKjDEnb3pqAy1SM74DAfVthQ
	p2mklZJJb2tcLTRxDFgj+9iVtfSqoIqLRc4OcyJfMdoGNLmN0Cl5FrZCb53bGI7vHtrV
	V4dWuVD4jKxBg5DHnv+RH4XLM7wTgfYrsfh3C3sT5bI9DYJJpw+wHBU6ChlX0S0ScPwS
	BMqw==
X-Gm-Message-State: AFeK/H0WQaebzp2YcuakQAH5C08DrkqK4WKdxlv5afQOmuIL5Pzksg4gvHJEaN5DPZGpVRSDIxhrLxhx64HjbA==
X-Received: by 10.223.134.44 with SMTP id 41mr36076108wrv.26.1490193419193;
	Wed, 22 Mar 2017 07:36:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.162 with HTTP; Wed, 22 Mar 2017 07:36:28 -0700 (PDT)
In-Reply-To: <1490186804-22928-4-git-send-email-akuster808@gmail.com>
References: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
	<1490186804-22928-4-git-send-email-akuster808@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Mar 2017 07:36:28 -0700
Message-ID: <CAMKF1spntA0vq1y5CHr4mDX08a-HNwS7PoYV9SmFG2XEVdCcKw@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][PATCH 4/6] samhain: fix build issues when using musl
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
X-List-Received-Date: Wed, 22 Mar 2017 14:37:02 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 5:46 AM, Armin Kuster <akuster808@gmail.com> wrote:
> musl does not supply malloc.

it does provide malloc but it does not provide mallinfo() which is
glibc specific

> also c99 fix
>
> x_dnmalloc.c:563:26: error: return type is an incomplete type
> | #define public_mALLINFo mallinfo
> | ^
> | x_dnmalloc.c:1689:17: note: in expansion of macro 'public_mALLINFo'
> | struct mallinfo public_mALLINFo() {
>
> and
> _dnmalloc.c:5527:17: error: unknown type name 'u_int'
> | u_int rnd[(128 - 2*sizeof(struct timeval)) / sizeof(u_int)];
> | ^~~~~
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/samhain/files/c99_dnmalloc.patch | 27 +++++++++++++++++++++++
>  recipes-security/samhain/samhain.inc              |  1 +
>  2 files changed, 28 insertions(+)
>  create mode 100644 recipes-security/samhain/files/c99_dnmalloc.patch
>
> diff --git a/recipes-security/samhain/files/c99_dnmalloc.patch b/recipes-security/samhain/files/c99_dnmalloc.patch
> new file mode 100644
> index 0000000..397a1f1
> --- /dev/null
> +++ b/recipes-security/samhain/files/c99_dnmalloc.patch
> @@ -0,0 +1,27 @@
> +samhain: musl build fix
> +
> +Upstream-Status: Submitted
> +Signed-off-by: Armin Kuster <akuster@mvista.com>
> +
> +Index: samhain-4.2.0/src/dnmalloc.c
> +===================================================================
> +--- samhain-4.2.0.orig/src/dnmalloc.c
> ++++ samhain-4.2.0/src/dnmalloc.c
> +@@ -821,7 +821,7 @@ extern Void_t*     sbrk();
> + /* On *BSD, malloc.h is deprecated, and on some *BSD including
> +  * it may actually raise an error.
> +  */
> +-#if defined(HAVE_MALLOC_H) && !defined(__OpenBSD__) && !defined(__FreeBSD__) && !defined(__NetBSD__)
> ++#if defined(HAVE_MALLOC_H) && !defined(__OpenBSD__) && !defined(__FreeBSD__) && !defined(__NetBSD__) && defined(__GLIBC__)
> + #include <malloc.h>
> + #else
> +
> +@@ -5524,7 +5524,7 @@ arc4_stir(void)
> +         struct {
> +                 struct timeval tv1;
> +                 struct timeval tv2;
> +-                u_int rnd[(128 - 2*sizeof(struct timeval)) / sizeof(u_int)];
> ++                unsigned char rnd[(128 - 2*sizeof(struct timeval)) / sizeof(unsigned char)];
> +         } rdat;
> + #if !defined(__FreeBSD__) && !defined(__OpenBSD__) && !defined(__NetBSD__)
> +         ssize_t sz = 0;
> diff --git a/recipes-security/samhain/samhain.inc b/recipes-security/samhain/samhain.inc
> index 789150b..e69bb35 100644
> --- a/recipes-security/samhain/samhain.inc
> +++ b/recipes-security/samhain/samhain.inc
> @@ -7,6 +7,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
>  SRC_URI = "http://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
>            file://${INITSCRIPT_NAME}.init \
>            file://${INITSCRIPT_NAME}.default \
> +           file://c99_dnmalloc.patch \
>           "
>
>  SRC_URI[md5sum] = "d98a55646b14f9419fcedde909d1bf02"
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

