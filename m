Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D59BEE00348
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 10:08:06 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id jz10so2078540veb.3
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 10:08:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=evTDGP0p2IsQnKKxAcsr/npCtZCh34JdlwG6SgS0nCw=;
	b=WIFY8viOIhQypAaDzWoiZqgd4yOYTYfXCufBg6AMKBrKbXkZf3y79h3d1vthUU2+WF
	AuoXIJhnih9I2/QC6NKsiFduy7PVnzCkaDjBBiZeDk10BzrQKHGXofD5dD2fO4KD6iXC
	Zg9RjtYs8v72hWtHrJZ0Uv2GIo3kPKMkC+RXix7Q14AKt1UH12MJNWILt0qmAzXEKMSR
	clnFytHGpII6d5HUha0VUt+ARwCoMmT7yIHVuEY0JO+l9rNiJkjIJkWnbgVsLdlKY54S
	gdndchGmHgfbH7I5cB0ugHush9rFtHQAtl4TiyY6SM3K6+G7nQ3TGig+EwkQ/hEmQyWb
	0VOQ==
X-Received: by 10.220.192.4 with SMTP id do4mr5780166vcb.91.1372439285413;
	Fri, 28 Jun 2013 10:08:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Fri, 28 Jun 2013 10:07:45 -0700 (PDT)
In-Reply-To: <51CDC1EF.5020803@windriver.com>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
	<76247853.lJbnn8TcbK@helios>
	<CANyK_8d7jphmfZq2Pz5hp=jJ_OZ_c5PU67angHeZY5PZ55BqLw@mail.gmail.com>
	<CAJTo0LZV0dUDb9XqyTuiwCGMUEyVFX1qX5=ngUp+zbxVYFV-hQ@mail.gmail.com>
	<51CDC1EF.5020803@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 28 Jun 2013 18:07:45 +0100
Message-ID: <CAJTo0LaaxnYU8N4-RoYyrqA=9O=rVTyZt=scwfTAWwvyp_Kc3w@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Gm-Message-State: ALoCoQmJ7ZUrE/f/JiZlknsA77+YLMHwyiyhIoBZ99jyh4n5hiatqUDjY2k9kjbe4yaEv4qBGKHf
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Fri, 28 Jun 2013 17:08:07 -0000
Content-Type: text/plain; charset=UTF-8

On 28 June 2013 18:03, Mark Hatle <mark.hatle@windriver.com> wrote:
> Fedora 16 and newer
> Arch Linux
> Debian Experimental
>
> I wouldn't be surprised if there are others.
>
> (I filed a bug for Fedora, so FC 18 and FC 19 will be fixed if they're not
> already.)

I'm pretty sure FC17 onwards is fixed.

Ross

