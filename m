Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 218FEE0092C
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 16:26:46 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id h3so325202igd.5
	for <yocto@yoctoproject.org>; Thu, 27 Feb 2014 16:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Bimmvs6eVAm2CTWrgi1JqsVgQi2nWy6VfgCUyeYDDIk=;
	b=FknIG9lRCnN4YJ14cnz8cIR08nCGZVFJB+IA79HkvwRBS9EMmNJ99/+mkcJB/dWeSD
	6LbsldDEDKeRzGEmLrSy4k8EQtuZwf22w2cWW0SddoD6urLXP5F0y7vf5UUfY/bXGZ6t
	Np4a0JgEDjdZkr+WkerXp88N26FP9rqJorXoHgbXQbhHi+5lrMSKrJnJGcRTw91vsKKG
	abivMt9lWswb3SnA6inx5wAGYkpmhV0u86x6soAPZgowRp/9y2/l6oMZbGyGk2MizzHh
	s1a6oloMF3PZXVr7l4st+/Z0x3r+kyH9tKmcxuToaE2MW5PDn6fKIubxdKLvyRPaun5c
	pG1Q==
X-Received: by 10.42.92.194 with SMTP id u2mr8108349icm.19.1393547205653; Thu,
	27 Feb 2014 16:26:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.137 with HTTP; Thu, 27 Feb 2014 16:26:15 -0800 (PST)
In-Reply-To: <CAK8F28nj1CNzSGxJegJDjgP7f=OGAUbNPY9ak9ea+JoAOEKhYg@mail.gmail.com>
References: <CAK8F28nj1CNzSGxJegJDjgP7f=OGAUbNPY9ak9ea+JoAOEKhYg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Feb 2014 16:26:15 -0800
Message-ID: <CAMKF1srAGgNbQqE62_Jts+fUfOzq04nu1XFW7uABLg0QsaMgng@mail.gmail.com>
To: Ash Charles <ashcharles@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using MACHINE_EXTRA_RDEPENDS to install wifi Firmware
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
X-List-Received-Date: Fri, 28 Feb 2014 00:26:49 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 27, 2014 at 2:05 PM, Ash Charles <ashcharles@gmail.com> wrote:
> Hi,
>
> I'm seeing warnings like
> "
> WARNING: The recipe linux-firmware is trying to install files into a
> shared area when those files already exist. Those files and their
> manifest location are:
>    /home/ash/Store/Yocto/yocto/build/tmp/sysroots/overo/lib/firmware/whiteheat.fw
>    Matched in manifest-overo-linux-gumstix
> ...
> "
> when building a core-image-minimal.  It looks like the linux-firmware
> is getting pulled in resulting in these warnings because I have this
> line in my machine/overo.conf file:
> "
> ...
> MACHINE_EXTRA_RDEPENDS += "linux-firmware-sd8686"

it seems this module is installing/overwriting a file thats coming
from some other recipe
that you omitted from the errors above so cant tell which one exactly.

> ...
> "
>
> I added this to make sure the firmware for my wifi chip was getting
> installed as directed per [1] but I'm thinking that this is not
> correct.
>
> What is the correct way to ensure my firmware gets installed or will
> it anyway by virtue of the kernel being included in the build?
>
> Thanks,
> Ash
>
> [1] http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-MACHINE_EXTRA_RDEPENDS
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

