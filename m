Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.9910.1580137711386998543
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 07:08:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=uCO5xWWe;
 spf=softfail (domain: soccasys.com, ip: 140.211.169.56, mailfrom: laurent.gauthier@soccasys.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAE6AE01275; Mon, 27 Jan 2020 07:08:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60C53E010E6
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 07:08:29 -0800 (PST)
Received: by mail-vk1-f172.google.com with SMTP id y184so2627338vkc.11
        for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 07:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=41ojCr9EwsXvCMEoibRpVv7YYj4pDfBtKGzHFnP+gnE=;
        b=uCO5xWWeCVwlgCmYm9ZdbWl3SfhsbcUilQz84sGcM+eqnxCmVnv9K16B+hlG36CAfw
         SKzh5UG/O1cTrPFFjhi7aq47gTtJeZfXt58tLJPuvztn5pDZo3rhdvK1rUooyqjHakMl
         aK4qQrnH03ABH7hBrRAwirCxdTB3E7ANE7yEl5+5R26Xbp7wo2z+Zh19Kto+EnG5CBxv
         5k0P4q1jMQUSHtIpd9qdhxY3VlxAliFdRfcWdKIw/b7W4hW3DkfeFIQm22kSrFpuHctl
         WaD+hRxEcFhRB0NfP0RcuJfOhdLi5YT9aetlLd2k9Z1kU5X3H6J1pUcHR0dLm0OQYQ/2
         YnUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=41ojCr9EwsXvCMEoibRpVv7YYj4pDfBtKGzHFnP+gnE=;
        b=qpytwNtwCjN8EcKRCi71PvZjCzVwexRhzl+LWrNfbb9YWDyryhMbV4hsyEkO76pvBy
         QqLoRtHhQ9mUAgYHGE1qhKPVusUsm6IJgWozmrst7pTQTk4asCuN86BunSVSDMintu/Q
         STHZxw6QnWSRkq4+qtjvgj0tyzP26mRBLWAbExaNdRmxnN7DNXlYRtr3xJPmRiwJn2Vq
         9bPDT1ZeRsaEy9ix+spoUEyalq9qmF64SEryQ0iCn6sv4iCpmhX7MgO301WfUZC5vRrP
         AlBuLcpQXDb1j3EXBz8Yy5S9KDN/W68aCOhPgHu56SCuajooiSBX6ueq1YVx/1XXX0u/
         vEEg==
X-Gm-Message-State: APjAAAWrf6euWiaAtYCGqc41KUxGMcy9IhrKd/Ps8XvvnLT7qPpBrpz5
	SXbxW+4jlb5jIabL5EgpcnTFvFHYzYCbsWHRjTOZRg==
X-Google-Smtp-Source: APXvYqwCoL2UHIWOx2gMiic2cO/mp3BdsZaqvuFrMN5un4KaL7AplGYhsSZiAjZba7B1o1/8BbYrxcPq0qJ+Ef/4+dY=
X-Received: by 2002:ac5:c64c:: with SMTP id j12mr10227207vkl.11.1580137708100;
 Mon, 27 Jan 2020 07:08:28 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com> <20200127120638.2jpgvedxecwgwz6u@qschulz>
In-Reply-To: <20200127120638.2jpgvedxecwgwz6u@qschulz>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Mon, 27 Jan 2020 16:04:40 +0100
Message-ID: <CAGbd71R_udrQxe4QcH0P0RR3Dg3GRHZdy6TBb2TQXtiXVLwW4g@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: JH <jupiter.hce@gmail.com>, Andy Pont <andy.pont@sdcsystems.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, linux-mtd <linux-mtd@lists.infradead.org>, 
	connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi JH,

As you are not providing enough details in your request we have to
guess the nature of
the issue you are seeing.

I will just point out a few things that could help in your situation.

If this is a failure that happens almost every time after you flash a
new image it could be
due to NAND blocks being bad.

As you mentioned that you have been working with this system for a
year it could be that repeated
flashing of UBI images has ended up causing some NAND blocks to go bad.

When using UBI it is a good idea to use a flashing procedure that will
preserve UBI wear-levelling
information. An example of such a procedure can be found in section
4.4 of the following page:

http://variwiki.com/index.php?title=3DU-Boot_features#Flashing_UBIFS_to_NA=
ND

These instructions (ubi part/ubi remove/ubi create/ubi write) need to
be adjusted for your specific
hardware layout, but this can help. In short you should update
individual UBIFS volumes in your UBI
partition rather then reflash the whole UBI partition.

Another option is to use ubiformat from the u-boot command line. For
this you would need to research
the subject by yourself.

Updating your UBIFS volumes this way you should be able to extend
greatly the life of your NAND if
you are flashing your development board multiple times a day.

I would like to also comment on a remark made by someone else about
UBIFS being safe across
power cycles:

While the assertion that "UBIFS is safe across power-cycles" is true
in theory in practice you probably
should avoid to rely on it too much.

My recommendations to improve resistance to power-cycles would be the foll=
owing:

1. If possible mount your UBIFS root-filesystem as read-only, and will
avoid most issues. This means
   you should use tmpfs for temporary/volatile filesystems.
2. If your root-filesystem cannot be read-only then remount it as
read-only just before the final shutdown
   (using for example "mount -o remount,ro /" followed by a "sync") as
this will limit the possibility of a
   corruption of the UBIFS occurring on the next reboot.

I hope that you will find what your issue is.

Kind Regards, Laurent.

On Mon, Jan 27, 2020 at 1:53 PM Quentin Schulz
<quentin.schulz@streamunlimited.com> wrote:
>
> Hi JH,
>
> On Mon, Jan 27, 2020 at 10:13:37PM +1100, JH wrote:
> > Hi Andy,
> >
> > Thanks for the response.
> >
> > On 1/27/20, Andy Pont <andy.pont@sdcsystems.com> wrote:
> > > JH wrote...
> > >
> > >>That the same problem of missing busybox was not just occurred durin=
g
> > >>the device running in the middle of operation, it was also occurred
> > >>during booting image from NAND, I saw several times that the first a=
nd
> > >>second cycles of booting image from NAND were working well, then som=
e
> > >>following booting process would be crashed by missing busybox, then
> > >>could not run whole shell commands. I have been pondering if it coul=
d
> > >>be caused by NAND issue or network virus / fishy? Appreciate any
> > >>clues.
> > > The first step is for us to understand what =E2=80=9Cmissing=E2=80=
=9D means?  Have you
> > > got any mechanism (U-Boot, SD card boot, etc.) that will allow you t=
o
> > > mount and look at the contents of the NAND file system?
> >
> > Means that busybox was not there anymore, it mysteriously lost, all
> > shell commands would no longer available. It cannot to run mount or
> > any shell commands. There was two scenarios when that happened:
> >
> > - In the middle of running, the device all of certain could not run
> > shell commands and failed mysteriously
> >
> > - During the u-boot booting kernel process, there were full errors of
> > failing shell commands. Let me make it clear,  that booting error did
> > not occur in the first or second kernel booting after the new image
> > installation, it happened in the following kernel booting, but there
> > was nothing to delete busybox accidentally, busybox was just
> > mysteriously disappeared. Because I could not run ls, I did not know
> > if there are other things missing. If you ask how I could know the
> > busybox was missing, I ran the zImage-initramfs to boot the linux in
> > RAM, then mount the ubi0 to find  out busybox was gone.
> >
> >
> > > If you look at the /bin directory (ls -la /bin/busy*) what do you se=
e?
> > > Have the files been deleted? Truncated? Zero length?
> >
> > Could not run ls or any shell commands when the busybox was missing.
> >
>
> /bin/ls -la /bin/busy* ?
>
> Maybe something is messing with the PATH environment variable. Or
> something is removing the symlinks from some binaries to busybox.
>
> > > What file system are you using on the NAND flash?  How are the devic=
es
> > > being reset during the various boot cycles?  If it is a hardware res=
et
> > > then some file systems are less resilient to it than others but I wo=
uld
> > > expect in that case more fundamental boot issues.
> >
> > UBIFS, most device reset or boot cycles were calling halt or reboot,
> > but it sometime it could just use power cycle.
> >
>
> IIRC, UBIFS is safe from power cycles.
>
> Quentin
>=20



--=20
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com
