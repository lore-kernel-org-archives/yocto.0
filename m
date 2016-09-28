Return-Path: <adi@adirat.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9055E00CCC; Wed, 28 Sep 2016 07:07:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87C9BE00815
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 07:07:43 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id b184so6140050wma.3
	for <yocto@yoctoproject.org>; Wed, 28 Sep 2016 07:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=adirat-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:in-reply-to:references:date:message-id
	:mime-version; bh=pxJLy4I9D/2G6uwpLU1xRfPTsM12lyTxqHUL7ipc/uw=;
	b=N2vXn29fLT4k+KfAM2A6l1vz895ee0HBiURvtGfVVTcaQ4wtuLLpvwEq2MQMITeSK2
	cR+mWrHkhyeJV54xdXzbq1MOWaLSewCtlU2HVPM9x+00dVxwDbwPLhpe2xw9E3C7Ihi1
	JXiwVC3+cfnoNAffJUJ7iQkDgQKfw8IVorE0O2CL8w535FfyYlVZosyloPzF4NWp251N
	6kN9WFH8ywaNY4VzXQRcivO+jFvAzNlqzAKnxvx9oUIgs9AYFwNnJJ+1SNLBVTqDFvjr
	5v812ceSYoahaXZ/vmfRhNaUUVhZ0AzMQYrxFDY333phnK3UEDPZuQ2QLy67BNowXkJC
	r1Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
	:message-id:mime-version;
	bh=pxJLy4I9D/2G6uwpLU1xRfPTsM12lyTxqHUL7ipc/uw=;
	b=FJOZ7eFnlpDlF3kqVH5psGKuoiKw6XnLHqUA5rQdAM0bI8nLfZ2BwVzvAYWkJU4wlF
	WFOOfRN4Lk2R9h9G/Kv2+CI2MI1DbhV+jVfY5tiarj0wqW6KRGRSM4K5jO2g1+wwhvot
	dKrErACuNltOCB9sZtcpF2pqVdC0SooNhivdlrAFgmtfioLfKtU7SCQ0E/UVQxFcfhmm
	Xqjj19ufJVnp4uVCCpVPgXxwyFkre9BbUrhb0x4h5FrHrrNlsIdVDkd4eig0FFNRpLSG
	pA66HcCiBIPfIhoWMVOw7w3T4/POOoIGkdcjghoeVY/d1T7jn+CZ4Z26hhgXhDRwFcEb
	JFCQ==
X-Gm-Message-State: AA6/9RlBCryNqNyM+RhFQ9uun+tXUN7tlqT1Mz/hkeSIPE0uxcP/bx5c2ku9kS6hDj5t6w==
X-Received: by 10.28.101.139 with SMTP id z133mr8083079wmb.126.1475071662999; 
	Wed, 28 Sep 2016 07:07:42 -0700 (PDT)
Received: from adi-pc-linux ([80.97.64.55]) by smtp.gmail.com with ESMTPSA id
	l206sm22686384wmf.15.2016.09.28.07.07.41
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 28 Sep 2016 07:07:42 -0700 (PDT)
From: Ioan-Adrian Ratiu <adi@adirat.com>
To: Juro Bystricky <juro.bystricky@intel.com>, yocto@yoctoproject.org
In-Reply-To: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
References: <1471716241-7010-1-git-send-email-juro.bystricky@intel.com>
Date: Wed, 28 Sep 2016 17:06:05 +0300
Message-ID: <87r3845dbm.fsf@adirat.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 28 Sep 2016 15:41:17 -0700
Subject: Re: [meta-mingw][PATCH 0/7] Updates for krogoth/master
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
X-List-Received-Date: Wed, 28 Sep 2016 14:07:48 -0000
Content-Type: text/plain

On Sat, 20 Aug 2016, Juro Bystricky <juro.bystricky@intel.com> wrote:
> Krogoth recipes fail to cross-compile for Windows using meta-mingw layer.
> In particular, the following should/used to work (jethro with meta-mingw layer):
>
> SDKMACHINE="i686-mingw32"
> MACHINE="qemux86"
> TCLIBC="baremetal"
> bitbake gcc-cross-canadian-i586
>
> SDKMACHINE="i686-mingw32"
> MACHINE="qemux86"
> bitbake meta-toolchain
>
> This patchset updates meta-mingw layer so the above work for krogoth as well.
> There is no "krogoth" branch for meta-mingw, these patches should go there once the
> branch exists.
> FWIW, I tested these patches with the current poky master as well, and succeed in cross-compiling
> of the most common recipes (for both SDKMACHINE=i686-mingw32 and SDKMACHINE=x86_64-mingw32)
> such as:
>     bitbake gcc-cross-canadian-i586
>     bitbake gdb-cross-canadian-i586
>     bitbake meta-toolchain
>     bitbake core-image-minimal -c populate_sdk
>
> [YOCTO#10143]

Ping? Any info when this series will be integrated?

Thank you,
Ionel

>
>
>
> Juro Bystricky (7):
>   *-mingw32.conf: Upgrade for krogoth
>   gettext_0.19.4.bbappend: Update for later versions
>   binutils-cross-canadian_2.25%.bbappend: Work with all 2.2* versions
>   gcc-runtime: Drop libitm for mingw32 runtime
>   gmp_6.0.0.bbappend: Removed
>   mpfr_3.1.3.bbappend: Work with all 3.1.% versions
>   gdb-cross-canadian_7.9.1: Work with all 7.% versions
>
>  conf/machine-sdk/i686-mingw32.conf                               | 7 ++++++-
>  conf/machine-sdk/x86_64-mingw32.conf                             | 7 ++++++-
>  recipes-core/gettext/gettext_0.19.%.bbappend                     | 6 ++++++
>  recipes-core/gettext/gettext_0.19.4.bbappend                     | 2 --
>  recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend  | 5 +++++
>  recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend | 5 -----
>  recipes-devtools/gcc/gcc-runtime_%.bbappend                      | 1 +
>  recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend             | 7 +++++++
>  recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend           | 5 -----
>  recipes-support/gmp/gmp_6.0.0.bbappend                           | 3 ---
>  recipes-support/mpfr/mpfr_3.1.%.bbappend                         | 1 +
>  recipes-support/mpfr/mpfr_3.1.3.bbappend                         | 1 -
>  12 files changed, 32 insertions(+), 18 deletions(-)
>  create mode 100644 recipes-core/gettext/gettext_0.19.%.bbappend
>  delete mode 100644 recipes-core/gettext/gettext_0.19.4.bbappend
>  create mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
>  delete mode 100644 recipes-devtools/binutils/binutils-cross-canadian_2.25%.bbappend
>  create mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.%.bbappend
>  delete mode 100644 recipes-devtools/gdb/gdb-cross-canadian_7.9.1.bbappend
>  delete mode 100644 recipes-support/gmp/gmp_6.0.0.bbappend
>  create mode 100644 recipes-support/mpfr/mpfr_3.1.%.bbappend
>  delete mode 100644 recipes-support/mpfr/mpfr_3.1.3.bbappend
>
> -- 
> 2.7.4
>
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

