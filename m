Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5359.1580190944190136415
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 21:55:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gIVX3ldy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAF6DE01594; Mon, 27 Jan 2020 21:55:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DDC0E0158A
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 21:55:42 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id h8so12924260iob.2
        for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 21:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0JuxovMN3RnVJSVvF1rN76R6py4FLWdilv57Ta+jaHk=;
        b=gIVX3ldyZAVk41QboDchvme88xyA0FbVcQHMjxc+1pQ9A94Vd8oYUJo+YvXEYttZw6
         fjnNRrL84EwnD8DvTW2zHCpMetrQBsrePiEIA+gLGPfESxrM5/lYz3h7dNQq1VuHM3k0
         yUTfgOH9xruIERVZ/mlsPC40gIDJukWq0lZZHm5M+xTzacWLgALNrJsq4MHI6fTeshKM
         nfIPw0AwKZp8e4qPd9sa7PHXNvNYJT3ATlfTwjqixfmd06umCJW0rfL5+wA6mCRd10VP
         0AUTBaneqwjN3fqqW8Sb7UjSh+3gSXh12n0tjaT+TjmxVAazhNkCr7FYCwSlfNdjb3X1
         I0YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0JuxovMN3RnVJSVvF1rN76R6py4FLWdilv57Ta+jaHk=;
        b=Xvqjm3zNBopEZcJLxxrlPBlk0L2//zwZrR8naQTshGffGazubAjR2ET9eD3svFGqxk
         hdWKbzyfCw7SuxbiZ5NA/EKzGoqNKjfHFJT/7WVRihVGQ+XmBEEb3NsUm5k+CuKA13hK
         JtkUFWF4NSZgn2lR304Fmg3Pgo0fSv7yKZyw2WT4+mZlwxt74t6f/OPS00yL6s1achVw
         XMukDzYFuQxRSpQnjxOEnD3nDbDBnKJLiw88qflnLZVcgDZkeV0OAFzVg2PtWlZC+FTK
         MuSbIY00d6gMqTBym95xuhi0GAszx43ei7Ikp1RwASFFueQHi+HJyAILnO5ec9jXJEpH
         2XYA==
X-Gm-Message-State: APjAAAWch/3R9CKZ5LeVXIbFCjsgO+mTVfdE82tHPyzT+LfUumgDBdfF
	CFMnjBuxJmQKDcA2QlKZAnoRhimVYDMx8z8E0TgpTbX5GPE=
X-Google-Smtp-Source: APXvYqzTK0WLI+cgbrW2j7oZECVLSwLpoObNqWAhA1kmnu+ZlXQfoalkbhbt3nMQ/HhmkBlHeO5ByRMCIpZq4VRYp9M=
X-Received: by 2002:a02:ac0e:: with SMTP id a14mr10958709jao.117.1580190941529;
 Mon, 27 Jan 2020 21:55:41 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 27 Jan 2020 21:55:40
 -0800 (PST)
In-Reply-To: <CAGbd71R_udrQxe4QcH0P0RR3Dg3GRHZdy6TBb2TQXtiXVLwW4g@mail.gmail.com>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
 <20200127120638.2jpgvedxecwgwz6u@qschulz> <CAGbd71R_udrQxe4QcH0P0RR3Dg3GRHZdy6TBb2TQXtiXVLwW4g@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 28 Jan 2020 16:55:40 +1100
Message-ID: <CAA=hcWSzXJr1eBxPWAK-aGDccwmJTBW-Zf6igUB+gf5LiPJB3Q@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, 
	Andy Pont <andy.pont@sdcsystems.com>, Yocto discussion list <yocto@yoctoproject.org>, 
	linux-mtd <linux-mtd@lists.infradead.org>, connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Laurent,

On 1/28/20, Laurent Gauthier <laurent.gauthier@soccasys.com> wrote:
> Hi JH,
>
> As you are not providing enough details in your request we have to
> guess the nature of
> the issue you are seeing.

Let me know what kind of details I haven't provided.

> I will just point out a few things that could help in your situation.
>
> If this is a failure that happens almost every time after you flash a
> new image it could be
> due to NAND blocks being bad.

There was one image, booted kernel fine for the first and second
cycle, then it got shell commands error due to lost busybox. I did see
NAND bad blocks list during booting, but that should be managed by
MTD, won't be a problem to case kernel crash or missing busybox,
right?


> As you mentioned that you have been working with this system for a
> year it could be that repeated
> flashing of UBI images has ended up causing some NAND blocks to go bad.

No, I mean I have been using Yocto to build image and to flash to the
NAND for a year, the devices I am currently using actually a new
revision hardware device, it was only used for the first time when the
new image was installed, the first and second booting was good, the
third got bad missing busybox and shell command, crashed kernel
booting.

> When using UBI it is a good idea to use a flashing procedure that will
> preserve UBI wear-levelling
> information. An example of such a procedure can be found in section
> 4.4 of the following page:
>
> http://variwiki.com/index.php?title=3DU-Boot_features#Flashing_UBIFS_to_=
NAND

Than you for the link, yes we have already been planing to work on a
new partition scheme to move MTD partitions to UBIFS volume
partitions. But I don't think the current problem is related to NAND
bad blocks.

> These instructions (ubi part/ubi remove/ubi create/ubi write) need to
> be adjusted for your specific
> hardware layout, but this can help. In short you should update
> individual UBIFS volumes in your UBI
> partition rather then reflash the whole UBI partition.
>
> Another option is to use ubiformat from the u-boot command line. For
> this you would need to research
> the subject by yourself.
>
> Updating your UBIFS volumes this way you should be able to extend
> greatly the life of your NAND if
> you are flashing your development board multiple times a day.
>
> I would like to also comment on a remark made by someone else about
> UBIFS being safe across
> power cycles:
>
> While the assertion that "UBIFS is safe across power-cycles" is true
> in theory in practice you probably
> should avoid to rely on it too much.

There is not practical we can avoid it, the device is an IoT device
installed and operated automatically, there is not practical we can
run command to turn it on and off.

> My recommendations to improve resistance to power-cycles would be the
> following:
>
> 1. If possible mount your UBIFS root-filesystem as read-only, and will
> avoid most issues. This means
>    you should use tmpfs for temporary/volatile filesystems.
> 2. If your root-filesystem cannot be read-only then remount it as
> read-only just before the final shutdown
>    (using for example "mount -o remount,ro /" followed by a "sync") as
> this will limit the possibility of a
>    corruption of the UBIFS occurring on the next reboot.
>
> I hope that you will find what your issue is.

> Kind Regards, Laurent.
>
> On Mon, Jan 27, 2020 at 1:53 PM Quentin Schulz
> <quentin.schulz@streamunlimited.com> wrote:
>>
>> Hi JH,
>>
>> On Mon, Jan 27, 2020 at 10:13:37PM +1100, JH wrote:
>> > Hi Andy,
>> >
>> > Thanks for the response.
>> >
>> > On 1/27/20, Andy Pont <andy.pont@sdcsystems.com> wrote:
>> > > JH wrote...
>> > >
>> > >>That the same problem of missing busybox was not just occurred duri=
ng
>> > >>the device running in the middle of operation, it was also occurred
>> > >>during booting image from NAND, I saw several times that the first
>> > >> and
>> > >>second cycles of booting image from NAND were working well, then so=
me
>> > >>following booting process would be crashed by missing busybox, then
>> > >>could not run whole shell commands. I have been pondering if it cou=
ld
>> > >>be caused by NAND issue or network virus / fishy? Appreciate any
>> > >>clues.
>> > > The first step is for us to understand what =E2=80=9Cmissing=E2=80=
=9D means?  Have
>> > > you
>> > > got any mechanism (U-Boot, SD card boot, etc.) that will allow you =
to
>> > > mount and look at the contents of the NAND file system?
>> >
>> > Means that busybox was not there anymore, it mysteriously lost, all
>> > shell commands would no longer available. It cannot to run mount or
>> > any shell commands. There was two scenarios when that happened:
>> >
>> > - In the middle of running, the device all of certain could not run
>> > shell commands and failed mysteriously
>> >
>> > - During the u-boot booting kernel process, there were full errors of
>> > failing shell commands. Let me make it clear,  that booting error did
>> > not occur in the first or second kernel booting after the new image
>> > installation, it happened in the following kernel booting, but there
>> > was nothing to delete busybox accidentally, busybox was just
>> > mysteriously disappeared. Because I could not run ls, I did not know
>> > if there are other things missing. If you ask how I could know the
>> > busybox was missing, I ran the zImage-initramfs to boot the linux in
>> > RAM, then mount the ubi0 to find  out busybox was gone.
>> >
>> >
>> > > If you look at the /bin directory (ls -la /bin/busy*) what do you
>> > > see?
>> > > Have the files been deleted? Truncated? Zero length?
>> >
>> > Could not run ls or any shell commands when the busybox was missing.
>> >
>>
>> /bin/ls -la /bin/busy* ?
>>
>> Maybe something is messing with the PATH environment variable. Or
>> something is removing the symlinks from some binaries to busybox.
>>
>> > > What file system are you using on the NAND flash?  How are the
>> > > devices
>> > > being reset during the various boot cycles?  If it is a hardware
>> > > reset
>> > > then some file systems are less resilient to it than others but I
>> > > would
>> > > expect in that case more fundamental boot issues.
>> >
>> > UBIFS, most device reset or boot cycles were calling halt or reboot,
>> > but it sometime it could just use power cycle.
>> >
>>
>> IIRC, UBIFS is safe from power cycles.
>>
>> Quentin
>>=20
>
>
>
> --
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com
>
