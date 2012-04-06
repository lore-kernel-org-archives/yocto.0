Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BEBFE0059A
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 07:00:13 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so3404493pbb.35
	for <yocto@yoctoproject.org>; Fri, 06 Apr 2012 07:00:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HWXw6sjrOFLQPmcpecjA7OJczsOWWGjPf8bgEH/KaSA=;
	b=ZtVnuv0u62xqNbEUY3NVtdSQYNhS3N82n9XRfOjILVjFfUZN7C65breOdk5CCgAb20
	a+1hV5E8kGQNf34fiGzIY70q3XHlg0nsgggvTcIjk2AMOiDgmrX4plkaBPDAZKhvUO6H
	CLlordow5wph8DtUL7TW6f8AZ9sKGbd4s0eFogw3A27DTIqlPC2Ro9HDYjHQwYPHRuvM
	a+RXCTJFFH6vcS8KVPODJMkW0t1qDOmnAOu+nWcDRxa9kGQw8/wjjSwXc9qqJHuGBvwW
	lwMuZtoJPe224HN4Xd/zDNMix5kWDkAKIAmd76IrQHh3yommu46Jx9zu2Q8gHxbS2amB
	EL4Q==
MIME-Version: 1.0
Received: by 10.68.231.138 with SMTP id tg10mr15511595pbc.57.1333720813056;
	Fri, 06 Apr 2012 07:00:13 -0700 (PDT)
Received: by 10.68.60.5 with HTTP; Fri, 6 Apr 2012 07:00:13 -0700 (PDT)
In-Reply-To: <4F7EB894.3040308@r-finger.com>
References: <4F7EB894.3040308@r-finger.com>
Date: Fri, 6 Apr 2012 10:00:13 -0400
Message-ID: <CADkTA4NSRYufQ50zOKFswmFkATYcZfmHwOWLBxUkrXeBVVLy9Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using and auditing kernel config fragments
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
X-List-Received-Date: Fri, 06 Apr 2012 14:00:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Apr 6, 2012 at 5:34 AM, Tomas Frydrych
<tf+lists.yocto@r-finger.com> wrote:
> Hi,
>
> I am trying to add a kernel config fragment to the yocto 2.6.37 kernel
> for BeagleBoard, because I need a driver for a rt2800usb dongle.
>
> For some reason which I cannot work out, the rt2800usb options are
> removed (rather then disabled) from the yocto kernel config, i.e., if I
> run 'bitbake -c menuconfig linux-yocto', there is very little under
> Drivers->Net->WLAN. If I run menuconfig in the devshell, there are lots
> more WLAN drivers available, including the rt2800.
>
> So, I created custom fragment with the appropriate options, which works
> to the extent it gets picked up, but then the options are removed during
> the kernel_configme process and end up in the missing_required.cfg, and
> there is no information I can find anywhere in the logs as to why this
> is the case. Any ideas how to find out what the problem is?

If they end up in missing_required.cfg, it almost always means that a
dependency of the options listed in your fragment haven't been specified
and hence the option tossed out by lkc.

Looking via menuconfig or via the Kconfigs should show you what
the dependencies are, and your .config will show you what was specified
and ended up in the configuration. If dependencies are missing, add them
to your fragment .. and they should make it to the end.

Cheers,

Bruce

>
> (I am using yocto master)
>
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

