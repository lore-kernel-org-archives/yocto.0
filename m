Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C08FBE006F9
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 23:32:12 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@googlemail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iakh37 with SMTP id h37so5928432iak.35
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 23:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qh0aMFxeBrIisTHI4XCTfUQuWLkYe9tThL94Uh6NCrw=;
	b=T8+6f9yUOTMfODbDHP+Dc0cV7xHVANRoY/7cVBFuCRqG9kt7kWEcIe+btC+1SNWcYt
	iimV02GvQ9d65COf1/bIwlqTXFFcNa/9oBTj8eiSL+gYeN1JIFf24+kyQIkjBeZrGLKj
	uFMI96gT7gXdvZOOXdgrVFWCbL1FNI9KBUVOY=
MIME-Version: 1.0
Received: by 10.42.166.9 with SMTP id m9mr2264393icy.54.1319783532103; Thu, 27
	Oct 2011 23:32:12 -0700 (PDT)
Received: by 10.42.240.66 with HTTP; Thu, 27 Oct 2011 23:32:12 -0700 (PDT)
In-Reply-To: <1319780499.10032.46.camel@localhost.localdomain>
References: <1319780499.10032.46.camel@localhost.localdomain>
Date: Fri, 28 Oct 2011 08:32:12 +0200
Message-ID: <CAGiJk9eo4FvhLZ6o9qdb75YyuZ5om19GYRLR6gDFEN_r0VWeuw@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: niqingliang@insigma.com.cn, 
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Cc: yocto@yoctoproject.org
Subject: Re: [OE-core] how to set time zone
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
X-List-Received-Date: Fri, 28 Oct 2011 06:32:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

2011/10/28 Ni Qingliang <niqingliang@insigma.com.cn>:
> Hello All:
>
> what is the right way to set timezone?
>
> I have added tzdata into my image, and can find some variables in the
> etc, e.g. 'TZ'.
>
> on my archlinux, I can set TIMEZONE in the rc.conf, which is used in
> rc.sysvinit (which will link the /etc/localtime using TIMEZONE).
>
> what is the right place to locate similar setting code (e.g. link
> the /etc/localtime) in the yocto?
>
> thanks!
>
>
>
> --
> Yi Qingliang
> niqingliang@insigma.com.cn
> http://niqingliang2003.wordpress.com
>
>
>
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core
>

Hi,

you could try the following:
http://www.rwhitby.net/blog/nslu2-linux/setting-the-openmoko-timezone.html

Well this is the first entry when using google with "openembedded time
zone", so please consider using search engines first next time.

Also this is the very same process like it is done on a desktop
computer, googling for "set time zone linux command line" gives this
result:
http://www.cyberciti.biz/faq/howto-linux-unix-change-setup-timezone-tz-variable/
Which shows more precise steps at the headline "Set timezone using
/etc/localtime configuration file [any Linux distro]".


(Sorry for cross posting, but this was carried over to the OE-Core list)

-- 
Regards
Samuel

