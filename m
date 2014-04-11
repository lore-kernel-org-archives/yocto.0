Return-Path: <wpdster@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7459AE00CC1
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 17:21:47 -0700 (PDT)
Received: by mail-pb0-f41.google.com with SMTP id jt11so4677260pbb.28
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 17:21:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wMY3Y3JmzKWI7ShFc5QxE1hTWXEO7nhvgEwIMfjXB1Q=;
	b=BMj7+VTg92O2kHekLKt88/M4EBJRUtPXxQY3Z9GlmVf4UDtwItv2k3YO6YvTEAeiJD
	77aoQg64/nzNpwgTHQHUtWFwmKAdqD8fsW/yn01WgbXxelmQ7vyfXE0WlqgZhEEZO8X6
	9iWv7wZVXK0Nr+SbKNGwetjXhSPVf4qxbUw4Bm3FItUA+dmLKZ8YQknJeG4V8D77OZpe
	MK/RtVqU5xaZ4qVU49Dg3h23/WmrZsh8Tjqjgal9F/WRawhCOAgmj1oYY2dHq/KX+gOt
	7Zbj6WzkWQTYVbjXeEou3YvC3Bj2AQ9jQ7DUyjoFl+GhrHoUszC9oS7/m/cvKTBLpQlL
	0OTA==
X-Received: by 10.66.141.144 with SMTP id ro16mr22952049pab.131.1397175707831; 
	Thu, 10 Apr 2014 17:21:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.32.161 with HTTP; Thu, 10 Apr 2014 17:21:17 -0700 (PDT)
In-Reply-To: <CABcZANncV5nWPhA1XR4ydhbkk=MLOmFFDdYO830D_DWyqYU_+A@mail.gmail.com>
References: <CAF_dkJAi700hXNbRQc=1UVTRY7VVwwf+UJyQ5EJm=+FoxQvC9A@mail.gmail.com>
	<CABcZAN=BAXcbK87929P34zCeT9Y4o3nUm12P99N+=4Gy31zSxw@mail.gmail.com>
	<CAF_dkJBdofKM1WNEKyMw1Bg3A4o5DBaYwbjbXaU5SYrFyGb7wg@mail.gmail.com>
	<CABcZANncV5nWPhA1XR4ydhbkk=MLOmFFDdYO830D_DWyqYU_+A@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Thu, 10 Apr 2014 20:21:17 -0400
Message-ID: <CAF_dkJCr68rXkpDY_XFgvQPPB4aeCOsUmiWMMFd2_eaCT+86aw@mail.gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Confusion about autotools
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
X-List-Received-Date: Fri, 11 Apr 2014 00:21:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

ok, thanks.

I do get a "Hello World" message out of do_unpack().  Weird.

Thanks.

--wpd


On Thu, Apr 10, 2014 at 8:15 PM, Chris Larson <clarson@kergoth.com> wrote:
>
> On Thu, Apr 10, 2014 at 5:12 PM, Patrick Doyle <wpdster@gmail.com> wrote:
>>
>> ok, that makes sense.  Trying to pattern match against too many
>> patterns, and not spending enough time understanding the underlying
>> technology.  Thank you for the explanation.
>>
>> If you don't mind, I'll move on to my next question...
>>
>> I now have a "do_fetch()" task that looks like this:
>>
>> do_fetch () {
>> bberror "Hello World"
>> exit 1
>> }
>>
>> Where would I see "Hello World" pop out?  I don't see it in the log file.
>
>
> It should show up in the do_fetch log (not the cooker log), which lives next
> to the run script. That said, it's possible you're hitting an issue due to
> the base.bbclass fetch implementation being python, not shell.
>
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics

