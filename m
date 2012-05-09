Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79785E013B7
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 07:27:56 -0700 (PDT)
Received: by obbef5 with SMTP id ef5so513191obb.35
	for <yocto@yoctoproject.org>; Wed, 09 May 2012 07:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=pqQNsrgoqpun4JNl3n7LcVkscJaLIHDBVa9UnQ9wcg8=;
	b=PjMX81IudHXNkWA+HhXjDTCZtzNUS50yvffV/4fONZmT+MTXLEr4iCYzTPWFZntyI3
	XqUSxBIVAbs+hYmkfFCUf1tI6dHAAYbK0z94lnsEF64Ha2gYhCgyNY+GnaUm+mN3KasL
	KmeJ2nJ1QZij5LpEnynuawAD8ze9LUkERxiluaYzbOM1sVAO0NKxoD0eTg66uyQ4TcDc
	7uhrPGAdSzQWVC4N1b1wANBxzbLpti8tpeSZckJGbVt8MOsrSK+mN1Lm1HLldttWmRXh
	f9/NNfNb1Eanv5a6xv1xQ+uILgj+hLww0Rz2R2SkJGkrcY0Fc/WBhAmYQWTyubvQOOYH
	QSRw==
MIME-Version: 1.0
Received: by 10.182.5.132 with SMTP id s4mr338642obs.65.1336573675881; Wed, 09
	May 2012 07:27:55 -0700 (PDT)
Received: by 10.60.11.98 with HTTP; Wed, 9 May 2012 07:27:55 -0700 (PDT)
In-Reply-To: <4FAA7BDE.10808@windriver.com>
References: <CACW_hTacgFqj2NQZ4aNuN5WBm2R9Ge3NS25XVJTKjmKm6spHKw@mail.gmail.com>
	<4FA7E0DB.7050508@windriver.com>
	<CACW_hTZj8W-eS0+3GzELu1J_kTww1dgLB4a17bvYtcmZ77ymaQ@mail.gmail.com>
	<4FA82443.10001@windriver.com>
	<CACW_hTbZze5nfCsuy097zUmyEs=0s6HT=y-q9af5fFd150bJRg@mail.gmail.com>
	<4FA914B1.3060602@windriver.com>
	<CACW_hTZ68+Ok8z+6diWZ=xToE9jPqZaoAAOdyYc6-xVsy7mszQ@mail.gmail.com>
	<4FA971E3.70904@windriver.com>
	<CACW_hTbj1tAMRs7phrGSe4Qx+8frf1Oy9utDc8r8Fq3PipTQFw@mail.gmail.com>
	<4FAA7BDE.10808@windriver.com>
Date: Wed, 9 May 2012 16:27:55 +0200
Message-ID: <CACW_hTZ=VNBcsX+LjcVpk+pOL9UhFqE1fzBiPg3uG+J_wsHg+A@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: modify a kernel patch
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
X-List-Received-Date: Wed, 09 May 2012 14:27:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/5/9 Bruce Ashfield <bruce.ashfield@windriver.com>:
> On 12-05-09 10:11 AM, Frans Meulenbroeks wrote:
>>

>>
>>
>> Bruce, thanks a lot for your help! Greatly appreciated!
>>
>> I've verified this at work and noticed that things are not exactly
>> working as expected (although I was able to create a decent patch).
>> The max7311.patch I have sent to you also creates a few new files.
>> Apparently after a quilt refresh of my patch these new files do not
>> appear in the patch any more (but files that are modified are
>> updated). Guess this is because the new files are unknown to git.
>
>
> Yes, that's a property of guilt. I used to carry a patch to git to
> actually fix that behaviour, but I was since educated on the subtleties
> about why it's better to have new files explicitly added by the
> user before git (and hence guilt) will pick them up.
>
>
>>
>> It might be that it is better to add new files in a separate patch (or
>> maybe even with something like file://xx.c)
>> Not sure though as I am not an expert in this area.
>
>
> When working with any rejected patch under git/guilt/git-am, I am now
> in the habit of checking git status, git adding the files I want, and
> then issuing the tag and guilt refresh. Scripts are great for this
> as well.
>
> That's my suggestion on how to deal with new files.
>
> Cheers,
>
> Bruce
>

Seems like a decent flow to me.
Actually I probably rework my patch to indeed add the new files
separately as files.

The good news is that after this exercise my kernel with most of the
patches added builds and works!
Only issue left seems to be 3 new locally added drivers that refer to
of_register_platform_driver and of_unregister_platform_driver
This used to be there in 2.6.38 but has been removed in (iirc) 2.6.39.
Guess I can/have to sort this out....

Best regards, Frans.

PS: probably we should in the wiki or manual or so have some howto's
to describe common tasks like the above one (the making of the kernel
patch that is).

