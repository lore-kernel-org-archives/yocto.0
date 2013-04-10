Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82064E014BC
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 08:36:07 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id o19so350342qap.5
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 08:36:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type:content-transfer-encoding;
	bh=YfRo50jbT770DnYo4UPfT6joXhkAZgM7QctHE+GnfWU=;
	b=uyEXZOvY2dLtEncgzGXYk/lFIFGBuQ52nzJfgaRynw+HyQdoTMm/+pLtb8/Ti6JmVL
	PqCf3kJ/GrQPHKPEBQmKKNeMvAJxtwH/PkRW+uln8G3IWPYfJ7UUz2CFNmV4Rzwo4iTv
	VIq2Fui9PghLxannhXeHObJnWkIlZwvecrJRd4swGQiKY3ASPRWNeotPmDvhUlNb1iRz
	2IFKquCYt6nMS2ZoqU26dokIANzEhRwZk6zpxosggWFawq6Q1FWfB6DWlyNrjg5gm4SE
	95tldvu+Vr+Z9g8qVwaRxn8C5Pd9dYGdRVj5KN0fZEvfQLyvAowdbX91LHVH6WE5NL31
	oSrg==
MIME-Version: 1.0
X-Received: by 10.224.115.210 with SMTP id j18mr2956359qaq.16.1365608166991;
	Wed, 10 Apr 2013 08:36:06 -0700 (PDT)
Received: by 10.49.35.140 with HTTP; Wed, 10 Apr 2013 08:36:06 -0700 (PDT)
In-Reply-To: <CAFyqS9ojF7ivNqUhZ5EcD1TGTeuMTju20LHksQe4-pWj3+wM=g@mail.gmail.com>
References: <CAFyqS9ojF7ivNqUhZ5EcD1TGTeuMTju20LHksQe4-pWj3+wM=g@mail.gmail.com>
Date: Wed, 10 Apr 2013 17:36:06 +0200
Message-ID: <CAFyqS9rndgCOi+b=fJ3tEOyTGQnVgNRGWOwZg4oYSd3Ru70siA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bootlogd error at startup
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
X-List-Received-Date: Wed, 10 Apr 2013 15:36:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Just for follow-up.
The solution to this problem is to make sure CONFIG_LEGACY_PTYS=3Dy in
the kernel config.

Hans

On Fri, Feb 22, 2013 at 4:50 PM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> I am running the default minimal image on an ARM based board and get
> the followig error from bootlogd at startup
>
> <...>
> INIT: version 2.88 booting
> Starting udev
> udev[661]: starting version 164
> Starting Bootlog daemon: bootlogd: cannot allocate pseudo tty: No such
> file or directory
> bootlogd.
> Configuring network interfaces... udhcpc (v1.20.2) started
> Sending discover...
> Sending discover...
> Sending discover...
> No lease, failing
> Running postinst /etc/rpm-postinsts/100...
> INIT: Entering runlevel: 5
> Starting syslogd/klogd: done
> Stopping Bootlog daemon: bootlogd.
> <...>
>
> After login and checking /dev there *is* a /dev/tty. Also, if starting
> bootlogd manually using '/etc/init.d/bootlogd start' there is no
> error.
> So my guess is that /dev was not yet populated properly when bootlogd
> was started by the init process. IIRC is this not that something that
> udev should do when started?
>
> Is this a known bug or is there something I have missed in my configurati=
on?
>
> Here is my /etc/inittab (default except from SERIAL_DEVICE)
>
> # /etc/inittab: init(8) configuration.
> # $Id: inittab,v 1.91 2002/01/25 13:35:21 miquels Exp $
>
> # The default runlevel.
> id:5:initdefault:
>
> # Boot-time system configuration/initialization script.
> # This is run first except when booting in emergency (-b) mode.
> si::sysinit:/etc/init.d/rcS
>
> # What to do in single-user mode.
> ~~:S:wait:/sbin/sulogin
>
> # /etc/init.d executes the S and K scripts upon change
> # of runlevel.
> #
> # Runlevel 0 is halt.
> # Runlevel 1 is single-user.
> # Runlevels 2-5 are multi-user.
> # Runlevel 6 is reboot.
>
> l0:0:wait:/etc/init.d/rc 0
> l1:1:wait:/etc/init.d/rc 1
> l2:2:wait:/etc/init.d/rc 2
> l3:3:wait:/etc/init.d/rc 3
> l4:4:wait:/etc/init.d/rc 4
> l5:5:wait:/etc/init.d/rc 5
> l6:6:wait:/etc/init.d/rc 6
> # Normally not reached, but fallthrough in case of emergency.
> z6:6:respawn:/sbin/sulogin
> S:2345:respawn:/sbin/getty 115200 ttyPS0
> # /sbin/getty invocations for the runlevels.
> #
> # The "id" field MUST be the same as the last
> # characters of the device (after "tty").
> #
> # Format:
> #  <id>:<runlevels>:<action>:<process>
> #
>
> 1:2345:respawn:/sbin/getty 38400 tty1
>
>
> Hans

