Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5D76E00294
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 15:33:55 -0800 (PST)
Received: from mail-ia0-f200.google.com ([209.85.210.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 21 Nov 2012 15:33:55 -0800
Received: by mail-ia0-f200.google.com with SMTP id x26so16246829iak.11
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 15:33:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=evWKTmgWGBx8nXd/KV0gNkPhoZ0y/Cy6XOX0/NikMCs=;
	b=KRjn/wz6sg9rVTkzd0h6GjSzGb7L3qlokVRnR9FW64VGRJAqmiYAOIjdszlnrenbnc
	Kgx19pdcKHn3vGYuYQV7wdqFn7gqnAa+N9KFS054rS3EnM4fjUDmm7/MJNMeUi9ZwWD9
	HIwFNUSj01XM79aHLaaJvLya9tCMV0ZGgT1cvyWhIScRwnVTS4VzDC0SvAK7fk0uj9VH
	6Ib7k0hY9+UjFq7UZPPEbMlqewbebDmcgYPPaTOuvtWl8xovGNPqKvgAnncCmmU0UAP/
	U/5Ox4Dj4jlo2Z+BWtA89JqjYQo4lGlPhM+gY7WCU6FVaUhsCwJs8Wl4lyE4KOxAEXaG
	0HLA==
Received: by 10.60.172.178 with SMTP id bd18mr9170682oec.133.1353540834077;
	Wed, 21 Nov 2012 15:33:54 -0800 (PST)
Received: by 10.60.172.178 with SMTP id bd18mr9170674oec.133.1353540833937;
	Wed, 21 Nov 2012 15:33:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.154.37 with HTTP; Wed, 21 Nov 2012 15:33:33 -0800 (PST)
In-Reply-To: <CAOT3miJf7yh=1c-xxfZ-sxZt4RUvufcgVTMv0Dzw=kSbz5wXaA@mail.gmail.com>
References: <CAOT3miJ73uAvR0Qij3+-q3B6K46=J5ZoFZDzW79YCSUfPbLeAA@mail.gmail.com>
	<CAJTo0LYLf=296eEZznK7vnFTJZhAS_u1opuXdyJ=MUvRYF1Asw@mail.gmail.com>
	<CAOT3miJf7yh=1c-xxfZ-sxZt4RUvufcgVTMv0Dzw=kSbz5wXaA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Nov 2012 23:33:33 +0000
Message-ID: <CAJTo0LbCWQTs2aBBWvjeqXD-o6n48SfvBgBJCEFLN1kHtCPXiQ@mail.gmail.com>
To: Nicolas Dechesne <ndec13@gmail.com>
X-Gm-Message-State: ALoCoQl8007+Kj/CDGYZYe9th94xhRr7OhuYsAJnEEhpOstQxeIRDr0gnsSzq2Av2FNwu0+VyRYJi6fat6Qa2NfPJsMgN16W76Zd3QieR//8Hf5hYDs4dCcgqoaQNqI33FGwjC59os2/g96A+v/GNFzgVpudXh8a4A==
Cc: "meta-ti@yoctoproject.org" <meta-ti@yoctoproject.org>, rob@ti.com,
	yocto <yocto@yoctoproject.org>
Subject: Re: build failure with xf86-video-omap
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
X-List-Received-Date: Wed, 21 Nov 2012 23:33:55 -0000
Content-Type: text/plain; charset=UTF-8

On 21 November 2012 23:26, Nicolas Dechesne <ndec13@gmail.com> wrote:
>> As this is a genuine upstream bug (ARM-specific driver that doesn't
>> cross-compile?!) I've just filed fdo #57386.
>
> i suspect you opened a OE bug, since I can't find it in yocto BZ, however
> bugs.openembedded.org doesn't seem to answer at the moment..
>
> so, I checked our configure.ac , and clearly, that needs some love...
>
> Rob: any chance you can look into that? it's the xf86-video-omap
> configure.ac file that's wrong, we should mimic what's in the xf-video-intel
> one i guess..  otherwise i can try later this week.

fdo - https://bugs.freedesktop.org/show_bug.cgi?id=57386

I started replacing the AC_CHECK_FILE with PKG_CHECK_EXISTS, but now
I'm wondering why DRI_CFLAGS DRM_CFLAGS are being used without being
apparently defined.  Is this configure.ac needing a bit of a clean or
am I misunderstanding something?

Ross

