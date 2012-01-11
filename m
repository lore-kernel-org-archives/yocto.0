Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 999E1E0072A
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 12:57:36 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkvi18 with SMTP id i18so1133427bkv.35
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 12:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bbdeiGzfWt6GOvm0FQv6mhSlSsUx6lWu653h2kvtLI8=;
	b=xFafAQXmd6cUZYoky4JU4VosKF7AnxjnQCG674oU9gc3UeNsiVJEczwf4jmA5RXA55
	Q8u+NRiVcuG/r+bpWRhXpuH9ZcAqUFRzBYcb6d4NOa+ywXB/IHv4o45AYWwU8sbek6Y2
	kLLLjOMEiLVTyufJvgAwbZ0a4ZGuuCoqqjSQk=
MIME-Version: 1.0
Received: by 10.204.141.14 with SMTP id k14mr187941bku.67.1326315455634; Wed,
	11 Jan 2012 12:57:35 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Wed, 11 Jan 2012 12:57:35 -0800 (PST)
In-Reply-To: <4F0DF55E.4030605@linux.intel.com>
References: <CAFZh4h-oJeiWFcM1mowKDwmF0gqT3Y0DBMFZ0WEcjJchUS+N4A@mail.gmail.com>
	<4F0DF55E.4030605@linux.intel.com>
Date: Wed, 11 Jan 2012 15:57:35 -0500
Message-ID: <CAFZh4h_JA8Oq3U=9HkrhXsyOB86dHV2u3XxY25UQDFgJpFg=Ug@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Does Edison work with Beagleboard & linux-yocto-3.0 kernel?
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
X-List-Received-Date: Wed, 11 Jan 2012 20:57:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 11, 2012 at 3:47 PM, Joshua Lock <josh@linux.intel.com> wrote:

> In meta-yocto/conf/distro/poky.conf there's a line which sets:
>
> PREFERRED_VERSION_linux-yocto ?= "2.6.37+git%"
>
> Which is then overridden for the qemu machines to:
>
> PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.0%"
>
> If you add a similar line for beagleboard to a conf file, such as
> local.conf, it would look for a 3.0 kernel version and use your tree.
>
> PREFERRED_VERSION_linux-yocto_beagleboard ?= "3.0%"
>
> I know you've switched to master but I wanted to help you understand the
> system is doing what it is.
>

Ah, very good!  Yes, good to know information.  I'm coming from
OE-Angstrom/Arago and so far most things have been pretty familiar but
it always helps to know how it fits together.  I need to make several
BSP's for TI processors and this helps me understand things a bit
better.

I still have an old checkout that has 2.6.37 so I might play with that
more.  I had working images there I didn't want to mess up (edison).

Regards,

Brian

