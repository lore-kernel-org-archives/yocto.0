Return-Path: <francesco@valla.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 870D410AB82B
	for <webhook@archiver.kernel.org>; Thu, 26 Mar 2026 22:19:57 +0000 (UTC)
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.10])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.59817.1774563593088787422
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Mar 2026 15:19:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@antispam.mailspamprotection.com header.s=default header.b=xKeu7pLQ;
 dkim=pass header.i=@valla.it header.s=default header.b=Bqs2CffU;
 spf=pass (domain: valla.it, ip: 185.56.87.10, mailfrom: francesco@valla.it)
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-d0m4.prod.antispam.mailspamprotection.com; s=arckey; t=1774563593;
	 b=KyTRVSdhpwoatlkvf2h8kX2BwuwbDt/ybhSOKdPEt5jxRFybAXM1Gxk+RqZxVpg6J4z6FPPvk7
	  gBkrQSKiU8uPikynuCHkltECLm84b+dS0INin77V61dlUJmh0xiZ+IIjGBzNocFDWaLlL/aTH/
	  brXohRLE9ucolNKNhxS4NkHSAMZz4IUSBDNsb+E+Ad/NTdx111aeW1HM1mto37ube1a2gTvYJC
	  NR6S6F0hOTASQziPo3kgPnkzJShZtXOzrbnOh+Tg5lLnMpkhqzHyQ2Zhuyxf2XW3URFhfZDHS8
	  vbqQQqFky8EEiiVBRUY1t+Yr51XSnaKVFQzN2M5EhUJbEg==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-d0m4.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-d0m4.prod.antispam.mailspamprotection.com; s=arckey; t=1774563593;
	bh=9ri4pkj91iy6RPfOQhK2KDcDK7MGatusJX1UYb4lBxc=;
	h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	  Message-ID:Subject:Cc:To:From:Date:DKIM-Signature:DKIM-Signature;
	b=LP1DhYzj81Hw55RB5wAsTdCyhR1jkKNZ9jOXDhaRoDR9jtLAAqa8T+x1zAPLDoMd3jF5NidoIo
	  0N+5w0gBW9MAXL7idAehTAwZLkY4N0fp7wvu4WtiIGHChA9LIP8Ys01sl6WY0BBrGCyxTaRGGu
	  nce4V4Q8AmpEFsUtar6C3amNJ2xt24yZfeUEku7nQx2RjJt9lWG3uK++d1f4vXPveQ0EwM6boX
	  Axp4CaUaDffFhHP5Q3n/6pSAymiR3frJryi6PXz8tOTOMeSbZWMzwh7XkicpciPpgWVVJ0rt1Z
	  Lg+Y+WYdBGQ3BxVfn2/cO2eDY6eYvsKmHWWh7YoavIpquA==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc:To
	:From:Date:Reply-To:List-Unsubscribe;
	bh=gDE+MOn8myfq+CumdDUksiqT9t7WA/pkF1rgWDy/oM0=; b=xKeu7pLQ6mgS++Fq92x3Th0Sgk
	3c1tj+L159258WzOOHahUTx7oF+TfZXIGtdfcGK4vw7EF4SkqMl5CwjxT00hoOTlyDHynCIy0ybKv
	CV8iBHAK6Z26cgQQabcEprv6mssraiErxQBhneYBagW4L7QUFLRkXiIb1L9CekcXsIMs=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-d0m4.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1w5t3M-0000000DJD0-0UX4
	for yocto@lists.yoctoproject.org;
	Thu, 26 Mar 2026 22:19:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Subject:Cc:To:From:Date:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=gDE+MOn8myfq+CumdDUksiqT9t7WA/pkF1rgWDy/oM0=; b=Bqs2CffUCZy9zKI0wHhI398iGM
	bUGL2w1b5sGSj1M7UAy2fFBNXpi9w1kguGx29B/3fTJnbWDYEhecZKsXd52Ps5ArH8Nd+h8RhfwwU
	59vS51j99CEATE7QVB+sgMJsxITR2utZ6txURncf4ZyrYtiiQmhTV3iAE1EJncWp0MnE=;
Received: from [95.248.129.24] (port=62701 helo=bywater)
	by esm19.siteground.biz with essmtpa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <francesco@valla.it>)
	id 1w5t3D-000000004UJ-3hNQ;
	Thu, 26 Mar 2026 22:19:39 +0000
Date: Thu, 26 Mar 2026 23:19:38 +0100
From: Francesco Valla <francesco@valla.it>
To: michael.opdenacker@rootcommit.com
Cc: yocto@lists.yoctoproject.org, Vyacheslav Yurkov <uvv.mail@gmail.com>
Subject: Re: [yocto] overlayfs-etc on top of dm-verity?
Message-ID: <acWttty52EgZmIn5@bywater>
References: <bfaae86a-5b66-4abf-95ef-0fd345ffcada@rootcommit.com>
 <aab17025-f0f2-4c04-b370-8789624eb571@rootcommit.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aab17025-f0f2-4c04-b370-8789624eb571@rootcommit.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: ea5c3d968e482beae248400cc31ab157
X-AntiAbuse: ID - ea5c3d968e482beae248400cc31ab157
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1w5t3M-0000000DJD0-0UX4-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-d0m4.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Mar 2026 22:19:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66357

Hi Michael,

On Thu, Mar 26, 2026 at 09:56:21AM +0000, Michael Opdenacker via lists.yoctoproject.org wrote:
> Greetings,
> 
> On 3/25/26 10:20 PM, Michael Opdenacker wrote:
> > Hi Slava and community,
> > 
> > Do you know if overlayfs and in particular our overlayfs-etc class works
> > when /etc is on a dm-verity root filesystem?
> > 
> > Without dm-verity (regular ext4 or erofs root filesystem), everything
> > looks all right:
> > # mount | grep overlay
> > /data/overlay-etc/upper on /etc type overlay (rw,relatime,lowerdir=/etc,upperdir=/data/overlay-etc/upper,workdir=/data/overlay-etc/work,uuid=on)
> > 
> > When /etc is on /dev/mapper/rootfs (dm-verity), everything seems messed
> > up:
> > # mount | grep overlay
> > overlay on /var/cache type overlay (rw,relatime,lowerdir=/var/cache,upperdir=/var/volatile/cache,workdir=/var/volatile/.cache-work,uuid=on)
> > overlay on /var/lib type overlay (rw,relatime,lowerdir=/var/lib,upperdir=/var/volatile/lib,workdir=/var/volatile/.lib-work,uuid=on)
> > overlay on /var/spool type overlay (rw,relatime,lowerdir=/var/spool,upperdir=/var/volatile/spool,workdir=/var/volatile/.spool-work,uuid=on)
> > overlay on /srv type overlay (rw,relatime,lowerdir=/srv,upperdir=/var/volatile/srv,workdir=/var/volatile/.srv-work,uuid=on)
> > 
> > Systemd may be messing up, as only in this case, it does:
> > � � � � �Starting Bind mount volatile /var/cache...
> > � � � � �Starting Bind mount volatile /var/lib...
> > � � � � �Starting Bind mount volatile /var/spool...
> > � � � � �Starting Bind mount volatile /srv...
> > 
> > But these bind mounts show up as overlay mounts!
> > 
> > Has anyone already encountered such an issue?
> 
> I eventually managed to get /etc mounted as an overlay. It seems that
> /sbin/init was started instead of /sbin/preinit as specified in the kernel
> command line.
> I hardcoded the call to /sbin/preinit by customizing
> openembedded-core/meta/recipes-core/initrdscripts/initramfs-framework/finish
> (in a bbappend file, of course).
> 
> The code looks right though, I need to understand why this happens.
> 
> Another weirdness that remains is these volatile mounts for /var/cache/,
> /var/lib, /var/spool and /srv, which I didn't have with a regular read-only
> root filesystem.

AFAIK, this should be the regular behavior on a read-only root
filesystem. The overlayfs mounts are created by services generated by:

  meta/recipes-core/volatile-binds/volatile-binds.bb

depending on the content of the VOLATILE_BINDS variable. For each couple
of upperdir-lowerdir specified there, a service is generated that
starts only if upperdir's parent is writable and lowerdir is not.

E.g.:
  lowerdir=/srv
  upperdir=/var/volatile/srv

In a vanilla openembedded-core system, a tmpfs is mounted on /var/volatile
by the fstab (that is, by the fstab systemd generator), so the
upperdir's parent directory (which is the same /var/volatile) is writable.

You can force a copy+bind behavior setting AVOID_OVERLAYFS=1.

> I'll keep you posted.
> Cheers
> Michael.
> 
> -- 
> Root Commit
> Embedded Linux Training and Consulting
> https://rootcommit.com
> 

Best regards,
Francesco


