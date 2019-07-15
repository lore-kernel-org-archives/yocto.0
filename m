Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48492E00D30; Mon, 15 Jul 2019 10:51:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95D3CE00BF7
	for <yocto@lists.yoctoproject.org>;
	Mon, 15 Jul 2019 10:51:53 -0700 (PDT)
Received: by mail-io1-f68.google.com with SMTP id j6so3217523ioa.5
	for <yocto@lists.yoctoproject.org>;
	Mon, 15 Jul 2019 10:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Eft1HJlWDYTTTTSo4YqiCD0SGXK4xMCBgqQt1lOpU1k=;
	b=wJeE03aaij14KOzYG3PzUMKo23cMMcNx0IpB6h6XqboOM81iob44ahoaK9kHDzAmfM
	IuOnlPooeFNZno/8yrvHT3WZNToNkV4F5lbcfkpUG0ahPFDeGRcmjEYUI4OU22HfdQGM
	isLoD1NIDx5E5fRWyh501Uj/quP+W2BMdvP32rgwjAxH6c3RnmOIrxI1YAWL5sBHx2Pe
	pgbkxrnRPfWj4mhQHeU5UHz/kKXvqNSKwg+PHiSwk27KvcNqMZvHxfgm1ivae8olS3z2
	PLlkDvshOr1q1A6kBtSQQXNf9UjTE5V00c2GG2icmuOTp6miziP9dBh61YeaX8OR+FG2
	BKwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Eft1HJlWDYTTTTSo4YqiCD0SGXK4xMCBgqQt1lOpU1k=;
	b=oLpI3E86Yw1wN3/zsB5EGD2PKRCMriOkuygbH+iCXHGomWoTfnt9yakvKhB77Z006m
	TZzFVUXoDKURFuyyVBmfq62fAGZZ3c0mnbpkrQTAG/YdnWdshl+Wi1ESvEv9qfaO8PFL
	Our6LCL3K/AD3/g08x92QeWwDJ9DLfQF3izIuvntGRNw4s5uPCaSksENW5DIhcLR/LcL
	jF+q6/ncNwXre95I0zq1Fbiw8nPYm8hzyIuAQmxiB4lcQ59dmQvhLOtAC19IAzaxToKH
	6vF/IfwvliLTA8WTMwfyompeCTgSxzK4q2C0I4DAA4+ccZJ6gvsodsqnSDIQgvrOWqOU
	Wg2Q==
X-Gm-Message-State: APjAAAUNJvEgNoP9S/RzSWnJLOiEmo+NkALGAXjMY+/qxrKFNkodSr4S
	2ol2Hst11Tj8FLL07aPL+8wLPmHup9H3jkWMytT/BA==
X-Google-Smtp-Source: APXvYqy6Nf04Hq6UogsK8LVSQKtaH8Pt0I6MWMu3IYfZtFnHpOMekMxVUu8rvLwRGKKFn4xgkHTfs1z1my1BbXrVPpU=
X-Received: by 2002:a5e:c744:: with SMTP id g4mr25080730iop.187.1563213112123; 
	Mon, 15 Jul 2019 10:51:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190702155105.28148-1-JPEWhacker@gmail.com>
In-Reply-To: <20190702155105.28148-1-JPEWhacker@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Jul 2019 18:51:40 +0100
Message-ID: <CAJTo0LZY3rr9yjHqtJkVO4AVgStsm3LTZW2p6g-uvH5ruj4gOA@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-gplv2][PATCH] gnupg: Enable native build support
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
X-List-Received-Date: Mon, 15 Jul 2019 17:51:54 -0000
Content-Type: text/plain; charset="UTF-8"

Merged.

Ross

On Tue, 2 Jul 2019 at 17:03, Joshua Watt <jpewhacker@gmail.com> wrote:
>
> Adds support for building gnupg as a -native recipe.
>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  recipes-support/gnupg/gnupg_1.4.7.bb | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
> index 85636ab..a7fbd11 100644
> --- a/recipes-support/gnupg/gnupg_1.4.7.bb
> +++ b/recipes-support/gnupg/gnupg_1.4.7.bb
> @@ -84,6 +84,7 @@ EXTRA_OECONF = "--disable-ldap \
>                 "
>
>  # Force gcc's traditional handling of inline to avoid issues with gcc 5
> +BUILD_CFLAGS += "-fgnu89-inline"
>  CFLAGS += "-fgnu89-inline"
>
>  do_install () {
> @@ -95,6 +96,8 @@ do_install () {
>
>  # split out gpgv from main package
>  RDEPENDS_${PN} = "gpgv"
> +RDEPENDS_${PN}_class-native = ""
> +
>  PACKAGES =+ "gpgv"
>  FILES_gpgv = "${bindir}/gpgv"
>
> @@ -104,3 +107,5 @@ FILES_${PN} = "${bindir}/* ${datadir}/${BPN} ${libexecdir}/${BPN}/*"
>  PACKAGECONFIG ??= ""
>  PACKAGECONFIG[curl] = "--with-libcurl=${STAGING_LIBDIR},--without-libcurl,curl"
>  PACKAGECONFIG[libusb] = "--with-libusb=${STAGING_LIBDIR},--without-libusb,libusb-compat"
> +
> +BBCLASSEXTEND += "native"
> --
> 2.21.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

