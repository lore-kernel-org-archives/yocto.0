Return-Path: <raj.khem@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71878E002AC
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 22:30:41 -0700 (PDT)
Received: by wgbdt10 with SMTP id dt10so393501wgb.11
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 22:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ndfKZOv/9jIwMNe2qUYZ96RrR/g+m/629uNxaCHfrU8=;
	b=hSsTd3z6d0ufOpkIqcVbvlhECSwayIEfw4pvENW4LNv9xe/xqJxoPZWNsRANsbw1BU
	FyKXM0nkHqod2LnJOuv9MS4G022c7aDI4ahnamMuwXNhmSQ1MbRCs3vCvV8fyjmxW7t+
	9ZZ2EiN270Ha/MIIaO/zAmsbEWFRn6vmWqCVB6Jh6GpTfidU/Sst53iTKllWwjH0CTsW
	q/sxqVJchiVpnZHik+zZh99MWLlIGd6JzGR0GpcneG6qE0U1S0f78kLIGG9Jw2YvXyKk
	ThDpP2VOkCzYcclJw+Jl2fxT5PlS/+y2j6TbT5PTi0JY8ZlnOy1PtfYamWQHY+ZNNuLw
	Ve/A==
Received: by 10.216.136.157 with SMTP id w29mr1049360wei.148.1348032640088;
	Tue, 18 Sep 2012 22:30:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.42.197 with HTTP; Tue, 18 Sep 2012 22:30:09 -0700 (PDT)
In-Reply-To: <CAB3sqtYJJFxPFNZZ1iR+paQD-AHO37=3_RXAsbVmkBQWHobp_Q@mail.gmail.com>
References: <CAB3sqtYJJFxPFNZZ1iR+paQD-AHO37=3_RXAsbVmkBQWHobp_Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 18 Sep 2012 22:30:09 -0700
Message-ID: <CAMKF1srM0n=OdWORA9RSRn7BNt8F2VtsYS_Cuntx7bBpoA5e-A@mail.gmail.com>
To: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Autotools CFLAGS & LDFLAGS
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
X-List-Received-Date: Wed, 19 Sep 2012 05:30:41 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 17, 2012 at 6:55 AM, Tarek El-Sherbiny
<tarek.elsherbiny@gmail.com> wrote:
> Hi All,
>
> What is the easiest way to add nonstandard directory paths for libraries and
> header files in a recipe that inherit autotools and pkgconfig?
>

Adding them to CFLAGS and LDFLAGS doesnt work ?

> Regards,
> Tarek
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

