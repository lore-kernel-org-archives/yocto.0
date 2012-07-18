Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFE89E00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:01:18 -0700 (PDT)
Received: by qadz32 with SMTP id z32so1005003qad.14
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lbtRH0akEWghNepQlMO3pD6E7bme+qgWRqfS853lei8=;
	b=xQH6EL6XT+ocB/ldTrMu5yAYPN1ABzt5K3o/7dCuS8TQ6pkTnUpn7Zi6NNs0o0FlmP
	WuhQUJgtbbqNB0vWCVOQ43dpqxXx1Zg4HdYFpHb9ScknjVjEcJ0FNrSM1mIpkr+QJsZ9
	zo/uPMgbKxFgd7SzIHfVOYeHVT248sNjJwg91RKYDuxwWcmEwfRDpywbindV4lEJJYUV
	6MZoUG6NXZ7p+zgGEFYBFXNHT2p8b/JXzOf/n2IgZoieeG4ttXFRO+4INKBSw2NL+Dvs
	2MjnR8UiZKwQiR8sV5GMVqEq4gUQWWv+oinenHMgCitCx/SLRgwtGg9geR92hK7oOvV8
	EKqg==
MIME-Version: 1.0
Received: by 10.224.203.8 with SMTP id fg8mr5819449qab.38.1342616477866; Wed,
	18 Jul 2012 06:01:17 -0700 (PDT)
Received: by 10.229.8.78 with HTTP; Wed, 18 Jul 2012 06:01:17 -0700 (PDT)
In-Reply-To: <CANwz6nzm8mpMAhKBfHOcxvQdy-=xOnnS6Y5R3rw70TsTnOhLkg@mail.gmail.com>
References: <CANwz6nzm8mpMAhKBfHOcxvQdy-=xOnnS6Y5R3rw70TsTnOhLkg@mail.gmail.com>
Date: Wed, 18 Jul 2012 09:01:17 -0400
Message-ID: <CADkTA4PzZSk6xOzdXmnb8763kH1S6FQ9X7DCpxSVYE1Yh=4UEg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard not booting
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
X-List-Received-Date: Wed, 18 Jul 2012 13:01:19 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 18, 2012 at 7:27 AM, Edward Vidal <vidal.develone@gmail.com> wrote:
> Hello,
> Close to the USB I see a C and close to speaker XM I am assuming the This is
> XM-C
> What would be the process to use
>
> 3.4.x kernel and a mainline u-boot.
> I am new to poky and don't know much about bit bake and openembedded.

We are just about to update preferred version of the kernel for the
beagleboard to 3.4 .. but are just finishing with the other hardware
references first.

But everything you need for 3.4.x support is in the linux-yocto-3.4
standard/beagleboard
branch.

If you just change meta-yocto/conf/machine/beagleboard.conf to prefer
the 3.4 yocto
kernel, you are most of the way there, it currently points at 3.0

PREFERRED_VERSION_linux-yocto ?= "3.0%"

(you can also do this in your local.conf .. etc).

Cheers,

Bruce

>
> Can you suggest where to read about using a different kernel.
> Thanks every thing helps.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

