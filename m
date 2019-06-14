Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A48A5E00E14; Fri, 14 Jun 2019 02:00:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16FE9E00E07
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 02:00:36 -0700 (PDT)
Received: by mail-qt1-f196.google.com with SMTP id 33so1594125qtr.8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 02:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=us2qGkoyKDNhoz6y3RXS+U3tARTLzcj8AbSGTqzJdIE=;
	b=uMV8Lt1iIzDKvGbRegX7uiAMDHc05M9K0iOXfCe8Cz13G+h3cTCbHUw5URCd/MG1+/
	Xuk92EM4T/J/gqRbMnUCFYZmyrHX+J9XpQ3/OkhpcOw/L5wMyZb2jQN/Uthz7Evse35W
	Dk3GuFmiJ1e0iU9M8NDDP8Tz5Ci2AEgBMqr8LLFL2vdRsSyRNbPS9U9KgckhgYk/nX6u
	5apbiUOslg8JggW6gHbN1w0oZRQgmDhoxVeUMOj4fr4yOG4JnrbfNd3m1tzwKqTUnyTK
	Y8jfDdG1Z+eVyvbvlQn229XxpaXuYBUrvKQCnmQohpKVzAXZiPcd9AFjPD8f8IWlvtIC
	VMIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=us2qGkoyKDNhoz6y3RXS+U3tARTLzcj8AbSGTqzJdIE=;
	b=Br/9zXB65VtqvqfuKC0fJg7lfiynMNC3kgXDjc4sNhnun+YZLR8ynWsQ80Y/TBvlTj
	qlAwKyeJTolVEkQ2Ly6NGkNZzALJ3Qb7ZP1xVWZ1YCE+EQZsmLxBB2j48J93c3uOw4Yb
	m4Xaa1aU7su4DsFqrCRshPj+/5yf3pvzQEYVvjxh/06N4JLy80SWt8pREGqod/FP5Ip0
	8IS8KdAQQYvLFpf7NCZdAIJjeG8quNsGizqLWi0FBs23Zxd006SNj0nYzYQy9ZU1dAc0
	Pd0z0NoV5uMFkkBEG13STPitDlMplxasjIWaSvzIK6e8QriHRzFlRhe0RfnNs7HpQdo4
	J9kg==
X-Gm-Message-State: APjAAAXB8zDEVCXK87NoRcwmKyCGaoKIMHJCCG4q6HYjpOj1lDRF80C4
	SNXmLIUOjYxl0eXAvxs7c5FXjg4qq9QEzuIYN68=
X-Google-Smtp-Source: APXvYqxTiYEnWuO1qC/IsaPylVDSNTjyD5T7BFzDR591Q+o/4IpW4rMebB/vCS/tA9xC316Jd3AL/Yt4CUBKuTb6rSc=
X-Received: by 2002:ac8:877:: with SMTP id x52mr80079726qth.328.1560502836457; 
	Fri, 14 Jun 2019 02:00:36 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
In-Reply-To: <trinity-b159ef9f-c6c8-4d3e-bd0b-ca88d3c5596e-1560500116612@3c-app-gmx-bs53>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 14 Jun 2019 11:00:24 +0200
Message-ID: <CAGAf8LzTzOPr8p0Jf61tOu2U50fVafFiwV1X3WTVtPEYtv+BXg@mail.gmail.com>
To: Moritz Porst <Moritz.Porst@gmx.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-swupdate] failed update leads to kernel panic
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
X-List-Received-Date: Fri, 14 Jun 2019 09:00:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> However if I abort the update while running (i.e. simulating a power cut)
> and then reboot I end up in a kernel panic: "Unable to mount rootfs on
> unknown block". My understanding is that I should at least end up in a
> busybox or that the update is retried, but this does not happen.

You missed to attach failed dmesg while the system booted and aborted.
Nevertheless, I expect problem with your defconfig, which does NOT
have options set for initramfs. These ones:
https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/config-i=
nitramfs

Please, could you add these one to your current .config, this might
very well solve your problem.

Best Regards,
Zoran
_______

On Fri, Jun 14, 2019 at 10:15 AM Moritz Porst <Moritz.Porst@gmx.de> wrote:
>
> Hello,
>
> I am currently having trouble to get swupdate working properly.
> My problem:
> I can execute swupdate -i normally and if the update fits I have no probl=
em. However if I abort the update while running (i.e. simulating a power cu=
t) and then reboot I end up in a kernel panic: "Unable to mount rootfs on u=
nknown block". My understanding is that I should at least end up in a busyb=
ox or that the update is retried, but this does not happen.
> I receive 1 error when updating which does not stop the update: "Could no=
t find MTD".
>
> My configuration:
> I have a single rootfs and a separate boot partition. I build the initram=
fs using:
> ---
> IMAGE_INSTALL =3D "base-files \
>                base-passwd \
>                swupdate \
>                busybox \
>                libconfig \
>                util-linux-sfdisk \
>                mtd-utils \
>                mtd-utils-ubifs \
>                ${@bb.utils.contains('SWUPDATE_INIT', 'tiny', 'virtual/ini=
tscripts-swupdate', 'initscripts sysvinit', d)} \
>                 "
> ---
> This is taken from swupdate-image. I include the same packages (via _appe=
nd) in my base image, is this necessary ?
> I bundle the initramfs with my image using INITRAMFS_IMAGE_BUNDLE =3D "1"
>
> Can you see a mistake I made ?
>
> Best regards
> Moritz
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

