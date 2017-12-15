Return-Path: <andrea.adami@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45457E00DA8; Fri, 15 Dec 2017 00:30:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (andrea.adami[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEC2BE00AD7
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 00:30:39 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id 9so15809706wme.4
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 00:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VSrvYKQLNo3ek+EpR8bZWOgh6/YvEy7Zjjwls+EZfk0=;
	b=spE9pyDnaVr5wsRJUkdiorQVeelqLjD3QLrtV3k9f7NJx8LpOcQZW0C+j9iZ9dF3qk
	iUlFkO6WA3gPqlDfp0BzrTXvA/Hi4LZWpbP6+tBG6UA7vCMpv2BKcm7W7rP5b25JhTAQ
	syEZQPwoDDu/Q1UhLjoxtEZVFjlE4mNCliPuhpY8hgUIY8uhX2Z8AvyTRP1TaPjR3DcI
	hKs7j/ctntpGLrRaoRPNP9kvLjgo0i2QrX83IBvc3N2IhnfFYYbGsiy/VCWJIhMKlinz
	Gs8lgLhCqvUzywEKdMisw8ClYcomtBV4GwRYn85bhMb/WlOPpVHNzXwIpGiWAaMQPbmH
	fseg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VSrvYKQLNo3ek+EpR8bZWOgh6/YvEy7Zjjwls+EZfk0=;
	b=L0XzMT2OknETQARQaaljFsaFC6J9su8zlweqyFyGvR5Xhst+7otdTi9KDyr2ZEM5Wx
	l4CGxeLY31+LezOf9quz5tKX3W1WWZHXngEJbnge5XNRgqVw1W9t77Zg2SRTqFkV5Dam
	MsT/xiSD9vi3U8QLp7y6TluGwKtZyYHuD4hn4GovyYC0wYl0gVLDuc0xxl2rHxfxb5B/
	M1Gvc/T0EyE0f+19Xz4oB6gh0INJg8CXyhptyhk6DAE8AjpukJ12oUlJwMoDZ/11w0pQ
	5psVOYr/VYskg0OxVllIKD3YEcIf9gk19edcR8NV3KFQn9JP9N58RFv0PrEyKoWHGtnL
	0mOg==
X-Gm-Message-State: AKGB3mJ8zl2pZyaxy7IA4snaODXq9fYGYmAB8T3BkI/54jv2NIKryds1
	N9MRZZ9Ru1OHbwDAW3oX/Zjeisa/wwdSqTnOMUfDjQ==
X-Google-Smtp-Source: ACJfBot1Qa0+9mseOIpE3dNCPrRTUtr4iU1nNzVfYDeQ1yz+wf/PMSmkKQVhRyEz0chC8EEXxSAccYyasG4sEOj5spc=
X-Received: by 10.80.166.222 with SMTP id f30mr16194670edc.278.1513326638667; 
	Fri, 15 Dec 2017 00:30:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.178.38 with HTTP; Fri, 15 Dec 2017 00:30:38 -0800 (PST)
In-Reply-To: <9fd139ef-c89b-7340-80b7-1d3c02ae9b62@nedap.com>
References: <9fd139ef-c89b-7340-80b7-1d3c02ae9b62@nedap.com>
From: Andrea Adami <andrea.adami@gmail.com>
Date: Fri, 15 Dec 2017 09:30:38 +0100
Message-ID: <CAAQYJAsK=O-+Gn2rAodRVP+0qd4cm0EjGEpFAtn0nn3i_sb+4g@mail.gmail.com>
To: Jaap de Jong <jaap.dejong@nedap.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [poky][PATCH] kernel.bbclass: Fix kernel size checking
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
X-List-Received-Date: Fri, 15 Dec 2017 08:30:40 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 15, 2017 at 9:16 AM, Jaap de Jong <jaap.dejong@nedap.com> wrote:
> From 4d542a5a37210b4fc8c8e894554a75ba6b9be0af Mon Sep 17 00:00:00 2001
> From: Jaap de Jong <jaap.dejong@nedap.com>
> Date: Fri, 15 Dec 2017 08:58:09 +0100
> Subject: [poky][PATCH] kernel.bbclass: Fix kernel size checking
> To: yocto@yoctoproject.org
>
> ---
>  meta/classes/kernel.bbclass | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index 7ef4f47..f41c3e4 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -601,12 +601,12 @@ do_sizecheck() {
>         if [ ! -z "${KERNEL_IMAGE_MAXSIZE}" ]; then
>                 invalid=`echo ${KERNEL_IMAGE_MAXSIZE} | sed 's/[0-9]//g'`
>                 if [ -n "$invalid" ]; then
> -                       die "Invalid KERNEL_IMAGE_MAXSIZE:
> ${KERNEL_IMAGE_MAXSIZE}, should be an integerx (The unit is Kbytes)"
> +                       die "Invalid KERNEL_IMAGE_MAXSIZE:
> ${KERNEL_IMAGE_MAXSIZE}, should be an integer (The unit is Kbytes)"
>                 fi
>                 for type in ${KERNEL_IMAGETYPES} ; do
>                         size=`du -ks ${B}/${KERNEL_OUTPUT_DIR}/$type | awk
> '{print $1}'`
>                         if [ $size -ge ${KERNEL_IMAGE_MAXSIZE} ]; then
> -                               warn "This kernel $type (size=$size(K) >
> ${KERNEL_IMAGE_MAXSIZE}(K)) is too big for your device. Please reduce the
> size of the kernel by making more of it modular."
> +                               die "This kernel $type (size=$size(K) >
> ${KERNEL_IMAGE_MAXSIZE}(K)) is too big for your device. Please reduce the
> size of the kernel by making more of it modular."
>                         fi
>                 done
>         fi
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi,

there has been a discussion about do_sizecheck and there is already a
pending patch:

http://lists.openembedded.org/pipermail/openembedded-core/2017-December/145376.html

thanks
Andrea

