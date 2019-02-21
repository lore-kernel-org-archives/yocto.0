Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B81AE00CB9; Thu, 21 Feb 2019 03:29:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 906F1E00B92
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:29:19 -0800 (PST)
Received: by mail-it1-f193.google.com with SMTP id l66so22250475itg.3
	for <yocto@yoctoproject.org>; Thu, 21 Feb 2019 03:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=nkpWW08oJjqm1jVEGk0KGF5yTFwyo0c5WH5CSyvKa64=;
	b=Ha+lJDAotNy5D4tyVLLs50mDh/Y+lYI6GUMH5v/O+HmHfIfsqQAmRrwa5NqtN0tnb9
	rA9XAXMRT/NzY+WH+ZYRDMi59ziqc28dKV48Cor5I0agFfBu+yMbxv0ZI+7FIVqBs4M4
	6UFbezbzjh5tEgIsJhDUOzHQfoROJhz3vzprlp5D+cDUJcg8tC2h/gZGzuRvHUxMWFek
	Y7W16cIfv0bUHK/NQ/RhodrZvR7YsKh07/KouvAYPEgjdzYp8S0aCtLFAAPU4hB/faFQ
	MPwcgp7bLFEG7BNQRdMWdlL42ZVesFgpbzD3A4ONfcwT9525vbxShmHOwYPh04TMgusa
	Ghig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=nkpWW08oJjqm1jVEGk0KGF5yTFwyo0c5WH5CSyvKa64=;
	b=FJvk5P+G0TTDgoT7gdlpKG7bZ0B3WX6FSfH33J7+wcvn7L23gB17N9jwkjxA/iF2V8
	kIRKCVC2MIvkLd2GtVYun8tp5kDzn1/Drm+RcPiuygVXQSylRs02QWfiW9qbu5dX6/P9
	3TYrzQZWA0Lp0ER0hGDuTsWeDuKhZkOGYvXsqQzsSc5wM4Mx3AAco1FjEV2a5fQWD0SK
	wkhhEHfta+w49zQX8+pQQcmiLV9DlgtMrkL3wyEjZrnfIJKZSF5hvws77cRBYn1AppU/
	mvQA/KgJ7z9GgWzpMPA/IDwrPjOxngb40Gmk1bPZnsorv8MZGO0L5hzG4zrzDKIoMa7r
	4Frw==
X-Gm-Message-State: AHQUAubk/0NK3wOlhm2xMokvqJurwS/9XFGeihYS/8iaye+7ezM5Gxdn
	Uy2LC8UnDst7+mov3fKALNA7rL2/z+83hCgjF/HdWA==
X-Google-Smtp-Source: AHgI3IZ2kLaj+y1BVnpv0rAuRFBzqIpuP96x4pmSkoxcJoLWZpPRpeu7b9RMHp6kzYYT7kRWH1ZlKJUXdxBjfWEd8oI=
X-Received: by 2002:a24:13c4:: with SMTP id 187mr8518334itz.130.1550748558966; 
	Thu, 21 Feb 2019 03:29:18 -0800 (PST)
MIME-Version: 1.0
References: <20190220180643.4112-1-JPEWhacker@gmail.com>
	<20190220211417.22113-1-JPEWhacker@gmail.com>
In-Reply-To: <20190220211417.22113-1-JPEWhacker@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Feb 2019 11:29:06 +0000
Message-ID: <CAJTo0LahvQfzP_n-zzBbKu8XL_0ZdbwY1Wd=b-rPVpx_KzRiuw@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][PATCH] diffutils: Upgrade to 3.7
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
X-List-Received-Date: Thu, 21 Feb 2019 11:29:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Looks good to me, feel free to push.

Ross

On Wed, 20 Feb 2019 at 21:14, Joshua Watt <jpewhacker@gmail.com> wrote:
>
> Upgrade diffutils from 3.6 to 3.7. The upstream made several fixes so
> the local patches are no longer necessary, but the gnulib-tests need to
> be dropped since they do not compile properly. Since there are no more
> local patches, the bbappend can be made to match all versions.
>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  .../diffutils/diffutils/sdiff-no-kill.patch   | 32 -------------------
>  .../diffutils/diffutils_%.bbappend            | 14 ++++++++
>  .../diffutils/diffutils_3.6.bbappend          | 18 -----------
>  3 files changed, 14 insertions(+), 50 deletions(-)
>  delete mode 100644 recipes-extended/diffutils/diffutils/sdiff-no-kill.pa=
tch
>  create mode 100644 recipes-extended/diffutils/diffutils_%.bbappend
>  delete mode 100644 recipes-extended/diffutils/diffutils_3.6.bbappend
>
> diff --git a/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch b/r=
ecipes-extended/diffutils/diffutils/sdiff-no-kill.patch
> deleted file mode 100644
> index c9fbc24..0000000
> --- a/recipes-extended/diffutils/diffutils/sdiff-no-kill.patch
> +++ /dev/null
> @@ -1,32 +0,0 @@
> -Upstream-Status: Backport
> -Signed-off-by: Ross Burton <ross.burton@intel.com>
> -
> -From 56225ecca4f9598c0c9dbd7c46a51dd4816a383f Mon Sep 17 00:00:00 2001
> -From: Paul Eggert <eggert@cs.ucla.edu>
> -Date: Fri, 20 Apr 2018 13:39:15 -0700
> -Subject: sdiff: port to mingw
> -MIME-Version: 1.0
> -Content-Type: text/plain; charset=3DUTF-8
> -Content-Transfer-Encoding: 8bit
> -
> -Problem reported by Ross Burton (Bug#31218).
> -* src/sdiff.c (checksigs): Use =E2=80=98raise=E2=80=99, not =E2=80=98kil=
l=E2=80=99.
> ----
> - src/sdiff.c | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/src/sdiff.c b/src/sdiff.c
> -index 1b23a0c..b08bc74 100644
> ---- a/src/sdiff.c
> -+++ b/src/sdiff.c
> -@@ -805,7 +805,7 @@ checksigs (void)
> -
> -       /* Yield an exit status indicating that a signal was received.  *=
/
> -       untrapsig (s);
> --      kill (getpid (), s);
> -+      raise (s);
> -
> -       /* That didn't work, so exit with error status.  */
> -       exit (EXIT_TROUBLE);
> ---
> -cgit v1.0-41-gc330
> diff --git a/recipes-extended/diffutils/diffutils_%.bbappend b/recipes-ex=
tended/diffutils/diffutils_%.bbappend
> new file mode 100644
> index 0000000..2c54a55
> --- /dev/null
> +++ b/recipes-extended/diffutils/diffutils_%.bbappend
> @@ -0,0 +1,14 @@
> +FILESEXTRAPATHS_prepend_mingw32 :=3D "${THISDIR}/${BPN}:"
> +
> +# Add some definitions for POSIX signals..
> +CFLAGS_append_mingw32 =3D " -DSIGALRM=3D14 -DSIGHUP=3D1 -DSIGQUIT=3D3 -D=
SIGPIPE=3D13 -DSIGTSTP=3D18 -DSIGSTOP=3D17 "
> +
> +do_configure_prepend_mingw32 () {
> +    # Remove building of "man" and "gnulib-tests". The tests don't
> +    # cross-compile for mingw, but we aren't using them anyway
> +    sed -i \
> +        -e 's:^SUBDIRS =3D\(.*\) man\>:SUBDIRS =3D \1 :g' \
> +        -e 's:^SUBDIRS =3D\(.*\) gnulib-tests\>:SUBDIRS =3D \1 :g' \
> +        ${S}/Makefile.am
> +}
> +
> diff --git a/recipes-extended/diffutils/diffutils_3.6.bbappend b/recipes-=
extended/diffutils/diffutils_3.6.bbappend
> deleted file mode 100644
> index f301349..0000000
> --- a/recipes-extended/diffutils/diffutils_3.6.bbappend
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -
> -FILESEXTRAPATHS_prepend_mingw32 :=3D "${THISDIR}/${BPN}:"
> -
> -SRC_URI_remove_mingw32 =3D "file://0001-explicitly-disable-replacing-get=
opt.patch"
> -SRC_URI_append_mingw32 =3D " file://sdiff-no-kill.patch"
> -
> -CACHED_CONFIGUREVARS_append_mingw32 =3D " ac_cv_header_getopt_h=3Dyes "
> -
> -# Add some definitions for POSIX signals..
> -CFLAGS_append_mingw32 =3D " -DSIGALRM=3D14 -DSIGHUP=3D1 -DSIGQUIT=3D3 -D=
SIGPIPE=3D13 -DSIGTSTP=3D18 -DSIGSTOP=3D17 "
> -
> -do_configure_prepend_mingw32 () {
> -    # Remove building of "man"
> -    sed -i -e 's:^SUBDIRS =3D lib src tests doc man po gnulib-test:SUBDI=
RS =3D lib src tests doc po gnulib-test:g' ${S}/Makefile.am
> -}
> -
> -
> -
> --
> 2.20.1
>

