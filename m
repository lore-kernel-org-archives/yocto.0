Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 191AEE00CA1; Tue, 10 Jul 2018 12:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 489E7E00874
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 12:41:25 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id j11-v6so13129047vke.8
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 12:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SWh/QEb7VNthgmf5eSPx4rK2jkJQ53XUbd1TlOOdZd4=;
	b=jjYyngVgv6rfvg16wYwqxYGFtteH1vHJHKn8/f3vAWfBaXPrkLWgb8wyKtWILA8vvJ
	SNp6PGjzP5mz5APMw1uSlnbTo9l1K+QAP9ftVBx38CWT36iuD5SeYApmgJuXrcEs8Rut
	T89SxbWoCjpsdt4ZoqD7psmEmDq9q5iJK7FuKih8izDj7E6/Yt4htqbP50TbaJu6Vr3m
	gJQLcS8D7KcT5gAJf4J+mDCJqsEbVnELWZlLXA/8zft3F49s761hzHAZ8orEQDgprzEW
	0tPgh2hUVMRhkMHtN4kvEBbkSeMnDrh3ctVjzL09ZfHH5uoJQUznOlFvvT691x/gpaw+
	+IgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SWh/QEb7VNthgmf5eSPx4rK2jkJQ53XUbd1TlOOdZd4=;
	b=m1vO1fnIpRBA9UIhOW6VGY24CYkAvdVn3C9hUEe3Z5EPSy0x6oQfRhONvaR3/Gwnc7
	YZu+C0X0bZHZczLX1YBiEhkhrMMKqKg6/ng6FDySfSI7WFxajTOK1T3Dobr0/GFbmZ8K
	yW1TVMrZX4vI8M8ZzgQ/WETimo7ggdwnwPvZjOV4xde8o6G1feRtwbjJqxF2TCWnJh+E
	DQapu2tDDZsMUWygDMVpCyfomImV9co7IObsoONqcWrEy/nNu2rxRo9E3GtwfxdRiidO
	lHGy8qwh0Vx4p8UKrxEJexJYC8mpZbQKv4+3gC8+qQDtaLDubT5Cj/KSQ80nO4NdUhX9
	TzvA==
X-Gm-Message-State: APt69E3iDjElAgaxc/PUPOo6FMiCkzfnOZsq+Pfv6c7abwXYwC4Z92Xf
	NLOSbfux7ZVyNEt+e0DLEOK6VUTn2aHn9FiPRQY=
X-Google-Smtp-Source: AAOMgpd1wKQCr95g1aDTf6vUPyTzpr4hXpw7S5zo1+D3U02cJcBE7EzUrymtYlCOAlpJY9uInucy21/iHqZHc89O1JA=
X-Received: by 2002:a1f:3b43:: with SMTP id
	i64-v6mr14832856vka.2.1531251684565; 
	Tue, 10 Jul 2018 12:41:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Tue, 10 Jul 2018 12:41:23 -0700 (PDT)
In-Reply-To: <CALcgO_6Wr2WhXSXwYeE3dQZZfmTtfP2sTQuC=PGVd2-w3Yg=9Q@mail.gmail.com>
References: <CALcgO_4bg5JX1Zf93fJY671GnCLk_sDR6qesPBcym9q3QiACbw@mail.gmail.com>
	<CAJ86T=Wea6yCsqxn+ZfMQ=tXC2d8FWxGv9b7TFZ1E57FLBhyjA@mail.gmail.com>
	<CALcgO_5bC0R6+KbkvGzUWasA89iV4eWb71xyV_qj9qzFeytz-g@mail.gmail.com>
	<CAJ86T=U7SaXgaoPc4sYJf3FeVvAY2rqHEkZ=9Z92nzn3vH2KDQ@mail.gmail.com>
	<CALcgO_7c3OdgMiDQuHwDDr-YTrqibkZ0J6UEBYy++vKjGtq6HQ@mail.gmail.com>
	<CALcgO_6Wr2WhXSXwYeE3dQZZfmTtfP2sTQuC=PGVd2-w3Yg=9Q@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 10 Jul 2018 12:41:23 -0700
Message-ID: <CAJ86T=Uj_uUjGDiQkzY3rUTYgRuC8A92BMeTmj9Xgf75Mn+bOw@mail.gmail.com>
To: Michael Allwright <michael.allwright@ulb.ac.be>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Including a header from an external kernel module
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
X-List-Received-Date: Tue, 10 Jul 2018 19:41:26 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 10, 2018 at 12:11 AM, Michael Allwright
<michael.allwright@ulb.ac.be> wrote:
> Am I correct in expecting that, if I do everything correctly, my header file
> from module-a should end up in
> ~/poky/build/tmp/work-shared/machine/kernel-source/include/linux/mfd

No, the kernel-source directory is for the kernel recipe and other
recipes can't generally add anything too it (if you want a header to
show up in the kernel source directory then you could patch the kernel
sources though).

Other (ie non-kernel) recipes share headers etc via sysroot, which
with OE 2.3 and above is created for each recipe in the
"recipe-sysroot" subdirectory in the recipe's WORKDIR.

From what you've said so far, I guess module-a's header file is in
module-b's sysroot directory under /usr/include, but when module-b is
compiled the include path isn't setup to find it.

Since /usr/include in sysroot contains headers for user space it's
quite correct that it shouldn't be in the include path when building a
kernel module (e.g. to prevent accidentally including user space
string.h instead of the kernel version, etc, etc). When the kbuild
Makefiles call the compiler they will not pass a --sysroot option etc.

If module-a is sharing a header in a subdirectory of sysroot, you will
need to somehow manually add that directory as an extra include path
when module-b is compiled (don't try to add the whole of sysroot
/usr/include - just the specific subdirectory you need).

A possible alternative approach might be to create one recipe which
builds all your kernel modules. That would make the build self more
contained as each module can find headers from other modules somewhere
in ${S}.

