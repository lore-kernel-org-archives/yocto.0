Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76F92E0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 10:47:45 -0700 (PDT)
Received: by eabd1 with SMTP id d1so745769eab.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 10:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=CypexPCB/4lo/QW91y39FUeneEi1Hd0bwt8n+HodSaA=;
	b=aQ5/WEMZ2WjrjCu9ixDs33Ya5SNgOChhzSM7QUGzBEXWOZDfouz/fg2dfQKHkQ4H3K
	osbbdmSCWHcIqX/X7OFET4HHxPs2n99CbJvVW5FlfgoXgJujowN7aoIuZME6T4sz1TaF
	wzSlY3qKuvM7PfthhA2KX1JQ+EUQHLf4xXNod+sdnIHrP4Wkv45RjMF9gJyYeLPfHB2s
	y5nAjlflnGv1L3caYvq6ezTcqFCFNZSq0rxajO/hnLk3xhqFiMxqpkRNME4folbJUxCA
	cxtm71iW+2HblxRmZ4QR7H6dkUYgREpR2Nd0ONynUO91MYWYdbss/Cb19Jqgea1fQ4Fn
	6Y3g==
Received: by 10.14.5.67 with SMTP id 43mr7652024eek.15.1344707264114; Sat, 11
	Aug 2012 10:47:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.225.6 with HTTP; Sat, 11 Aug 2012 10:47:13 -0700 (PDT)
In-Reply-To: <E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 11 Aug 2012 10:47:13 -0700
Message-ID: <CAMKF1sorMqJH6i1P_kjui7SBcPPkXEp_9O3wUkGaHZ05xZgwrw@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 11 Aug 2012 17:47:45 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Aug 11, 2012 at 10:23 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi Khem,
>                   I just noticed that libquadmath was disabled in the gcc-4.7.inc recipe.
>
> EXTRA_OECONF_INITIAL = "--disable-libmudflap \
>                         --disable-libgomp \
>                         --disable-libssp \
>                         --disable-libquadmath \
>                         --with-system-zlib \
>                         --disable-lto \
>                         --disable-plugin \
>                         --enable-decimal-float=no"
>
> Isn't that required for powerpc targets, since it ends up using quads for floats?
>

thats only for bootstrap stage 1. Its not final cross gcc.

> Best regards,
>
> Elvis Dowson

