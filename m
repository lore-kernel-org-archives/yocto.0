Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 298A5E00C02; Thu, 17 Mar 2016 05:38:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E5F8E00BF4
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 05:38:32 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id p65so115311637wmp.0
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 05:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=xroD40Vp/7I1ZyfekWZDBzGJitg6e7Enu+jqv5bVxP0=;
	b=oaQCvOrfY7ABAqwFeVcq5ZYD0xkkjNrNr/Nb3lkfZhAL87/zSrZxYSkaj6xrpNP1pV
	liYMUjjDgp3ImlPYOE/lhvg2oLLuUMXCRh/P63w7G3B2FLztgZ9PPtVWpeLlR+bCv/+E
	GCADoe+o8KA9S6/vQHubvqLcIwxmIVY/34NbUiLt/Jo1l5gbgkoLWCSvFALcFMsBjNJx
	+2eb7+vWCvopdeKzu/5scrSt4H3YZsmN0OK7XS8x57Ps2sRl78GKTJ5KP2oBFmXKdtFR
	uwmMUFXmQdunQv10YU/M6bIxp4RLrIP9397J1uGDRjZUFcYFUIAFeDrQt6lIgAYVxEvM
	+WsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=xroD40Vp/7I1ZyfekWZDBzGJitg6e7Enu+jqv5bVxP0=;
	b=j1o2LhDKA09MM9BPiZyn/i2BzM5Kka3IkhpdHnp4Tz+XQRDgXadpz3mTjwXFNXccPH
	qvjiaOaKFgi+ybd6YJAS/CUyGqWNTPkCqzAbcf7KZV4YRdTsgK84uri4AhsT23SDhv5R
	YagT/o8LOE1Y5tO2lS0194vqEta5ER4/YVyuNqvrqwSWiu/wnrtJVTcyC9tzIiNWjyog
	tpfc2yK5NvGAN+VQVn5clghD7VmduYMiZz6fTxUJ6mn5i7JtR07EDcqp6kf6VqO2WpS+
	P5D4vwW33oGddIszF+xfmG2K8fESaKeq2uDibOWkat7x8dR8nONxMl6fI/MxG6S33/bD
	JeLA==
X-Gm-Message-State: AD7BkJIHAjbw02m+tTJngvqeE0zNynJ7Bck9pshfnquL9O3X3iKE5yb9psz6eOCuHqswkFG8DKMatFP3hecnSA==
MIME-Version: 1.0
X-Received: by 10.28.158.149 with SMTP id h143mr10224011wme.61.1458218311204; 
	Thu, 17 Mar 2016 05:38:31 -0700 (PDT)
Received: by 10.194.201.104 with HTTP; Thu, 17 Mar 2016 05:38:31 -0700 (PDT)
In-Reply-To: <CAOorjZSr_N8rVLCs2wamXikSz-zB8v3DMYchoBqTVC3a65bebQ@mail.gmail.com>
References: <CAOorjZSr_N8rVLCs2wamXikSz-zB8v3DMYchoBqTVC3a65bebQ@mail.gmail.com>
Date: Thu, 17 Mar 2016 05:38:31 -0700
Message-ID: <CAJ86T=Up6VuOC3vYsyn+U9yuhT5BaVzSLaQtGQS8eaG8uc1a8w@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Compiling kernel 4.4
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
X-List-Received-Date: Thu, 17 Mar 2016 12:38:36 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 16, 2016 at 11:21 PM, SIVA SUBRAMANIAN.P <psiva87@gmail.com> wrote:
> Hi,
> While compiling linux kernel 4.4 for 96boards, I'm getting below error
> even though openssl headers are available in sysroot path.
>
> |   HOSTCC  scripts/selinux/mdp/mdp
> | /mnt/home/knagabhirava/hikey/build/tmp-glibc/work-shared/hikey/kernel-source/scripts/extract-cert.c:21:25:
> fatal error: openssl/bio.h: No such file or directory
> |  #include <openssl/bio.h>
> |                          ^
> | compilation terminated.
>
> ERROR: Task 6 (/mnt/home/knagabhirava/hikey/build/../meta-96boards/recipes-kernel/linux/linux-96boards_git.bb,
> do_compile) failed with exit code '1'

If extract-cert.c is being compiled with HOSTCC then the recipe should
probably depend on openssl-native (not openssl). Or maybe the
assumption is that openssl development libraries are installed on the
host (e.g. "apt-get install libssl-dev" for Debian based systems).

Either way, this isn't the right mailing list for meta-96boards questions...

> Any idea/pointers?
>
> Regards,
> Sivasubramanian
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

