Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0A3BE00310
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 12:38:09 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id hz10so1499349vcb.38
	for <yocto@yoctoproject.org>; Wed, 01 May 2013 12:38:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=vP+ZVocj6N52tfUdDjVtKtIXVcd0YpHO8AQoSqIWogI=;
	b=Ogyt8I7HXBu2xGGdlAPyrZELxkXIf03iz8sntya9HgPCobNsCnhpY40YwUsjFb+pvd
	R5tzKsyhAou+tc6algMGvx2T9UtKa26BddnZ+WOPKnaLR1HGfxkTx0jv2jcT+4nDB8qd
	07N5DTC16na7OIIye7d7GQ5RHBm/sCnSvCIzepvUDOB25w+AQHgFNnlXuzw6EArnvFYc
	UVnTZblVbkWKYEFO+sA3M+OwrSLxxTXcmu4ZMS16dZRvU3Tm2zjZmM9nHI4ZwS7x1YT4
	lGZsSsInm2csSk+2aC+4kXek0mQDX56vPx6s4MSe0tt8zd0rQLv7XoLny7L6TWph7XG5
	cE3A==
X-Received: by 10.52.171.13 with SMTP id aq13mr1029865vdc.64.1367437089277;
	Wed, 01 May 2013 12:38:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 1 May 2013 12:37:49 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 1 May 2013 21:37:49 +0200
Message-ID: <CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQll5Io0KxOp+fuU+TePH3z5hPGqYDwn+dMJIMZ0ujmJxjWVC4HKKlFSQH2gXXhJNXidxM6W
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Wed, 01 May 2013 19:38:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Apr 27, 2013 at 05:14:22PM +0100, Paul Barker wrote:
> rpi-first-run-wizard depends on zenity, which is in meta-gnome.
> However the README file for meta-raspberrypi says only oe-core and
> meta-oe layers are required (lines 105 and 106 of the current README).
>
> I'd say the 2 possible solutions are either listing meta-gnome as a
> layer dependency or re-writing rpi-first-run-wizard to use something
> else. I can write a patch for the former, the latter isn't really my
> area of expertise.

That's something we should take a look at. It was introduced before me taking
this layer and we need to tweak it a little bit (dependency too). If you cat
take a loot at it would be great. Never tested it on board actually. And we
need to make it work with systemd too somehow. I have it in my queue.

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12

