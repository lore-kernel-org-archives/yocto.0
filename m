Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D033E008C6; Wed, 30 Mar 2016 15:24:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74B24E00852
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 15:24:39 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id w104so46088191qge.3
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 15:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rpgtg0gI11IsbHZOHsZig5RUUPMdrDfLfZReA8yowHM=;
	b=oFP6lE9A8+ASJvjdcZE3lwSg9OPjaZYW3jqQ+mLXkDDicFHaGd8dvVQE+Z5nW0+ztK
	opCUeZ5us7gO2xGpibCyJ118MFzlPu7yY2Z51/xaL3OvdO7ZFy+jaLlMF8YTgKTS6UqG
	pv/b7wnKKPrQ5Iahx5v0X0TxwTEjtoIHNLbsBVIwieXVscpqBo2EtoRK3p5RXlA5k40f
	KzFFwsF+n+SHTAVwrZ0u7hd52eA3iZjEmjAwmPlbZF+d6uwtd3/CKKGvX3U8a5PeJyHL
	FTU3cRhOB/A0Yg+Qi3Gvi3tIvsvfPpJqw0yBj+3QPepeT+V4P66UaZbkqpvbzFyI+tLQ
	0w8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rpgtg0gI11IsbHZOHsZig5RUUPMdrDfLfZReA8yowHM=;
	b=H3wBpMhHltvRrK+s6kC7+wQfMHxBr33PdEieUFGtb8YepxCz+wRZxCWJwtoyqsrzox
	B4hVgb5l2rXmeJO0KAtEv5kxkeo8av8BTzqjH1cIy6yx0LnzG0SQU8RMbBWsPdVyLKrP
	rVmXkFXTVntnLaP9N+QT2sEOOkKj3OV6/R+okfMbR/YKHqDeZ+3a4j4bssREKAr3sgGV
	NnT5phXGBYqoIGUE4yHEBbgs3azHQGrtJ2aj0xtrDVsKUzKzW5dHs5pbCSDNuYehTLn3
	okjv+mibc+nAGjUEJ6tGuVKtBUxK+4+u3UUwXRQw1XrU65GxRgCwTuKN2eKgbhSpHMUk
	06Sg==
X-Gm-Message-State: AD7BkJLYCmpnaLy4B7RtMC4j+Q9oRMueQkDKDG9x9pLwiIAPci8YN3fDVbt/qiSJ0qaGY0IyuoKaAgfRrnrlew==
X-Received: by 10.141.4.135 with SMTP id g129mr13950066qhd.31.1459376678210;
	Wed, 30 Mar 2016 15:24:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Wed, 30 Mar 2016 15:24:08 -0700 (PDT)
In-Reply-To: <1459373958-13371-1-git-send-email-akuster808@gmail.com>
References: <1459373958-13371-1-git-send-email-akuster808@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Mar 2016 15:24:08 -0700
Message-ID: <CAMKF1sqSiobjWjnVc_yi5iH+m-a_uvEzbqeKbVrtDdXOx8spSA@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-security][V3][PATCH] paxctl: fix compile issue.
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
X-List-Received-Date: Wed, 30 Mar 2016 22:24:40 -0000
Content-Type: text/plain; charset=UTF-8

looks good.

On Wed, Mar 30, 2016 at 2:39 PM, Armin Kuster <akuster808@gmail.com> wrote:
> use CC from build not host via EXTRA_OEMAKE
>
> thanks khem
>
> this fixes the below error.
> WARNING: paxctl-0.9-r0 do_package_qa: QA Issue: /sbin/paxctl contained in package paxctl requires libc.so.6(GLIBC_2.3.4)(64bit), but no providers found in RDEPENDS_paxctl? [file-rdeps]
>
> minor recipe cleanup
>
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-security/paxctl/paxctl_0.9.bb | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
> index 8eadad1..d69219f 100644
> --- a/recipes-security/paxctl/paxctl_0.9.bb
> +++ b/recipes-security/paxctl/paxctl_0.9.bb
> @@ -8,13 +8,13 @@ LIC_FILES_CHKSUM = "file://paxctl.c;beginline=1;endline=5;md5=0ddd065c61020dda79
>                      file://paxctl-elf.c;beginline=1;endline=5;md5=99f453ce7f6d1687ee808982e2924813 \
>                    "
>
> -SRC_URI = "http://pax.grsecurity.net/paxctl-${PV}.tar.gz"
> +SRC_URI = "http://pax.grsecurity.net/${BP}.tar.gz"
> +
>  SRC_URI[md5sum] = "9bea59b1987dc4e16c2d22d745374e64"
>  SRC_URI[sha256sum] = "a330ddd812688169802a3ba29e5e3b19956376b8f6f73b8d7e9586eb04423c2e"
>
> +EXTRA_OEMAKE = "CC='${CC}' DESTDIR='${D}'"
> +
>  do_install() {
> -       oe_runmake 'DESTDIR=${D}' install
> +       oe_runmake install
>  }
> -
> -FILES_${PN} = "${base_sbindir}/paxctl"
> -FILES_${PN}-doc = "${mandir}/man1/paxctl.1"
> --
> 2.3.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

