Return-Path: <autif.mlist@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1007E00303
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 13:59:34 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfl13 with SMTP id fl13so1036406vcb.35
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2012 13:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=pK5vzKMyUAcUk0Ajr5ZcR6C9CLhqLfYRKmnOKONmDYg=;
	b=t+h17EiKYYGFghsWcnWqxed5VCugUkve8+IB2k1MipzUOgbnKyvqpMuzwr3CqWzeo2
	2dqgXE5YdqJtCVzIpqf+RbyTVaRUayJFB2UiNk2dlUNsSqemL0uh4iYJUj+rdllWm4Cb
	geJb6GdZhGvf9xwep7kc8NYficCkt83eYEXtk=
MIME-Version: 1.0
Received: by 10.220.155.147 with SMTP id s19mr2167787vcw.14.1325800774011;
	Thu, 05 Jan 2012 13:59:34 -0800 (PST)
Received: by 10.52.159.9 with HTTP; Thu, 5 Jan 2012 13:59:33 -0800 (PST)
In-Reply-To: <CADzUK1KR-tyiabskATGp1pH_yUN_AgiBA+EUv9mtsjuXfnB5uw@mail.gmail.com>
References: <CADzUK1KR-tyiabskATGp1pH_yUN_AgiBA+EUv9mtsjuXfnB5uw@mail.gmail.com>
Date: Thu, 5 Jan 2012 16:59:33 -0500
Message-ID: <CADzUK1+7--hex-bNQ_EdQndY1SSpsmUS3OB-uGA2y6UC-N25xw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Trying to compile mono on target for machine crownbay
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
X-List-Received-Date: Thu, 05 Jan 2012 21:59:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

I talked to a couple of mono developers (kangaroo and vargaz) - the
consensus is that "'auto' is hosed"

I am not an expert in auto tools, I just know how to configure, make,
make install.

I get by when I need to know my way around makefiles

I am a capable C/C++ developer - please advise or point me to right resources.

Thanks

Autif

On Thu, Jan 5, 2012 at 4:52 PM, autif khan <autif.mlist@gmail.com> wrote:
> I bitbaked core-image-sato-sdk, copied it to the target disk and tried
> to build mono natively on the target machine and I got the following
> error:
>
> libtool: link: cannot find the library `=/usr/lib/libglib-2.0.la' or
> unhandled argument `=/usr/lib/libglib-2.0.la'
>
> the filesystem does have a /usr/lib/libglib-2.0.la and it seems to be valid
>
> I am not sure why there is a leading '=' in the path. Needless to say
> - mono builds fine on ubuntu, so it is unlikely (not impossible) to be
> a mono build issue.
>
> Has anyone seen anything like this with mono or some other piece of software?
>
> Thanks
>
> Autif

