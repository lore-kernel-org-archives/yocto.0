Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.7538.1580208022791736745
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 02:40:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=empNJ6YH;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42466E014B5; Tue, 28 Jan 2020 02:40:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DD45E00CA2
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 02:40:20 -0800 (PST)
Received: by mail-il1-f176.google.com with SMTP id i7so7031737ilr.7
        for <yocto@yoctoproject.org>; Tue, 28 Jan 2020 02:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Fbzp0z9c2cpO6Qts9603vm1zEHkNKZbxKyRMBFcLZGQ=;
        b=empNJ6YHLmRjbI37AK2oMSdVva6iRmvjX+PPsMgRgN2f2qCB0p4xhv0SkUmolYa4Mq
         geEFmhjntSfMqKHyf3umLjq3JweHDqP2jAHzr7qD3kMY0F/h27vnsc7b/vf54Ksbm+PQ
         Urv5iabqFRAoLAfGrPvnMCVSrw7yM9VD2j5x55eNf0CM1SRvcODbV4TzQXTH38yq60MA
         hhznvirdqOKk50rFeMMN1Eh/SoAptOylwPC+cXBhtZ01pC79U7gC9ErBZIYfz4WfAHSh
         z4Cz0E7I9iwtdFIhj9QS3zGLfbGNbrhoLQx8ETfmPaQ8/h1A10elKtVwDaibJE3qZWAv
         egCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Fbzp0z9c2cpO6Qts9603vm1zEHkNKZbxKyRMBFcLZGQ=;
        b=fiZeRcU28wWBIucVMA76O/XdWEXMIZ5ePCcsrJ1nclDBbUQOD++RqxHIcT7ScXZXwW
         MBNJ/35uQ6DL3B8R530JOaFU/iKdJPouBDIsyr5Q/XTdAIxkCx0be7R60j5FEW5tWIEX
         GfTXllf/iPhaS7RE22FHZqCXNd6Achj3zdvToHxTYzaFVysSy1uFBuoQ4vYpwYTpalY2
         inG9yI8cjwqCj4Nim/TqmnUMVrLGmBEI7lMxOXLQCYU8a6fWbfiftpIZl/+tbwhKkQgL
         CbVIbNtOhmzrAuxJ+dbZO0J0oxaX7BXFYKh6I7xuFR7r6EuWB05doY7SvcZHRV9F0oOY
         HgzA==
X-Gm-Message-State: APjAAAWgSiimAT+D1b6T73Pjb4mjldK30wl0I84b5qaG8VAZUmGq3LqU
	OMBgghs44ZnKPJLzdwBayyWAFNoQYlAzQOCXfAk=
X-Google-Smtp-Source: APXvYqxRf62ooccXSmnFz5mhkGPvORvPm2uumVaIEXcrACo1D0K9xJIkfAQNhXnzgRG2QqqOn4jRKEXPxqxbEWTsBo8=
X-Received: by 2002:a92:390d:: with SMTP id g13mr1225629ila.53.1580208020169;
 Tue, 28 Jan 2020 02:40:20 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Tue, 28 Jan 2020 02:40:19
 -0800 (PST)
In-Reply-To: <CAAx3WaA2uoCki+1AV9QFZybbszfS5wecWKf1PfDvgV5u9EVL=g@mail.gmail.com>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
 <20200127120638.2jpgvedxecwgwz6u@qschulz> <CAA=hcWSXrBKX=EbF5KHkWxmWQ+6Tcqvv4exxbWUOniDR6EDiRQ@mail.gmail.com>
 <CAAx3WaA2uoCki+1AV9QFZybbszfS5wecWKf1PfDvgV5u9EVL=g@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 28 Jan 2020 21:40:19 +1100
Message-ID: <CAA=hcWTxX5GrnEJzKCJFhbe9mFvy8A7hG+EXbmczZSafyspfpw@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, 
	Andy Pont <andy.pont@sdcsystems.com>, Yocto discussion list <yocto@yoctoproject.org>, 
	linux-mtd <linux-mtd@lists.infradead.org>, connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gabriele,

On 1/28/20, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> HI JH,
>
> - Can you stop on uboot and try "nand bad"? This will list the bad block=
s
> on your device.
=3D> nand bad

Device 0 bad blocks:


> - How do you flash your ubi partition(s)?

I boot zImage-initramfs kernel to Linux user space, then run:
ubidetach -p /dev/mtd5
ubiformat /dev/mtd5 -y
ubiattach -m 5
ubimkvol /dev/ubi0 -s 160MiB -N rootfs_data
mount -t ubifs ubi0:rootfs_data /mnt
cp -adr /yocto_rootfs/* /mnt

> - During boot, does ubifs layer complain about the partition is it tryin=
g
> to mount? It will in case of corrupted metadata and may result in a read
> only mount.

There is no partition involved during the boot, all partitions start
in user space after booting.

> - It's pretty weird that busybox has gone and the partition is intact.
> Didn't you messed with any script? Can you replicate on another board?

I don't think it was bad block problem, because it is a new version
hardware, which has some problem in power supply, could unstable or
insufficient power supply cause MTD / NAND crash?

Thank you Gabriele,

Kind regards,

- jh

>
> On Tue, Jan 28, 2020 at 7:25 AM JH <jupiter.hce@gmail.com> wrote:
>
>> On 1/27/20, Quentin Schulz <quentin.schulz@streamunlimited.com> wrote:
>> > Hi JH,
>> >
>> > On Mon, Jan 27, 2020 at 10:13:37PM +1100, JH wrote:
>> >> Hi Andy,
>> >>
>> >> Thanks for the response.
>> >>
>> >> On 1/27/20, Andy Pont <andy.pont@sdcsystems.com> wrote:
>> >> > JH wrote...
>> >> >
>> >> >>That the same problem of missing busybox was not just occurred
>> >> >> during
>> >> >>the device running in the middle of operation, it was also occurre=
d
>> >> >>during booting image from NAND, I saw several times that the first
>> >> >> and
>> >> >>second cycles of booting image from NAND were working well, then
>> >> >> some
>> >> >>following booting process would be crashed by missing busybox, the=
n
>> >> >>could not run whole shell commands. I have been pondering if it
>> >> >> could
>> >> >>be caused by NAND issue or network virus / fishy? Appreciate any
>> >> >>clues.
>> >> > The first step is for us to understand what =E2=80=9Cmissing=E2=80=
=
=9D means?  Have
>> >> > you
>> >> > got any mechanism (U-Boot, SD card boot, etc.) that will allow you
>> >> > to
>> >> > mount and look at the contents of the NAND file system?
>> >>
>> >> Means that busybox was not there anymore, it mysteriously lost, all
>> >> shell commands would no longer available. It cannot to run mount or
>> >> any shell commands. There was two scenarios when that happened:
>> >>
>> >> - In the middle of running, the device all of certain could not run
>> >> shell commands and failed mysteriously
>> >>
>> >> - During the u-boot booting kernel process, there were full errors o=
f
>> >> failing shell commands. Let me make it clear,  that booting error di=
d
>> >> not occur in the first or second kernel booting after the new image
>> >> installation, it happened in the following kernel booting, but there
>> >> was nothing to delete busybox accidentally, busybox was just
>> >> mysteriously disappeared. Because I could not run ls, I did not know
>> >> if there are other things missing. If you ask how I could know the
>> >> busybox was missing, I ran the zImage-initramfs to boot the linux in
>> >> RAM, then mount the ubi0 to find  out busybox was gone.
>> >>
>> >>
>> >> > If you look at the /bin directory (ls -la /bin/busy*) what do you
>> >> > see?
>> >> > Have the files been deleted? Truncated? Zero length?
>> >>
>> >> Could not run ls or any shell commands when the busybox was missing.
>> >>
>> >
>> > /bin/ls -la /bin/busy* ?
>> >
>> > Maybe something is messing with the PATH environment variable. Or
>> > something is removing the symlinks from some binaries to busybox.
>>
>> No, could not run /bin/ls as it was  linked to  /bin/busybox.nosuid,
>> the /bin/busybox.nosuid was damaged for some reason.
>>
>> >> > What file system are you using on the NAND flash?  How are the
>> >> > devices
>> >> > being reset during the various boot cycles?  If it is a hardware
>> >> > reset
>> >> > then some file systems are less resilient to it than others but I
>> would
>> >> > expect in that case more fundamental boot issues.
>> >>
>> >> UBIFS, most device reset or boot cycles were calling halt or reboot,
>> >> but it sometime it could just use power cycle.
>> >>
>> >
>> > IIRC, UBIFS is safe from power cycles.
>>
>> Good to know. Thank you.
>>
>> > Quentin
>> >
>>=20
>>
>
