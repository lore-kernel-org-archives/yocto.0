Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5609.1580192732915264260
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 22:25:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t8PThJNe;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ECD6E01644; Mon, 27 Jan 2020 22:25:32 -0800 (PST)
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
	*      [209.85.166.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58DA7E013EF
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 22:25:31 -0800 (PST)
Received: by mail-io1-f48.google.com with SMTP id e7so12973226iof.11
        for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 22:25:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=K/jdq6tpZHwG0Rqhvb/QrWB27nnZRReDB1vtxSpHIZs=;
        b=t8PThJNeo6jE0ymluR2dt3G9Mjc3VkwIgwmqgXLwtlOBTnpAUGvKGyB+tYgi69hasJ
         Vtr4Vggj9fz4Os1wrBrBK1ruq+H2peziIysbu1D3tS5Aw3pu8qHPw90Cyive1+FJjDxa
         tBSNz4Mrc/GoHXmx/Z70o+dyIKmScwa0xjljqhNLorEXGmQyEH8MV+QFDbTWNv5zYV+W
         KQCDwo2vlXxsFL6O16/Bm63mfIXEndH6l8G8xStOsZcFAxHvSB4fQutxz52usptB7mZI
         Ul9an1pjEvG/rq9Mo/M5N6GSLY9wPqc5/u5H2Hw3O2kaMwur+8iuCnvGMMG5OfVi/254
         z8Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=K/jdq6tpZHwG0Rqhvb/QrWB27nnZRReDB1vtxSpHIZs=;
        b=sFd8HGzJ14mgmxeZ9M8OriM6TzHHzNaS4q2mSCSpTouKM5kDOLyxJs37EeuLMGvUt4
         i1n4AOAuoGpdhH3aqh3Wq2cQQZtgCVam/IZgrb1US0wBgANEFgQWCs8Nd2FPt/yXwTe1
         YX2PMqG5YEXjcTkF6TZgIRbbgxpjAA2ws9hrTdPGVDlNHU9LJEkktfYhc95ZCPhMbRVM
         SETigRDcHGeqmOh5BGegSyvHM21UeYN5nIxodzaIdvL1W8+H5bbh0JIdn8wp0/DD2W9T
         q2d+8seb8OHrCPY6TtL2IBypDwVchkpLAz5Y/7nKCofqf2ShfZZQQRCoNUXPxfnPhySz
         zQvw==
X-Gm-Message-State: APjAAAVvxOACC6V9fz5oLyX2ctKHZvngBJzzY2OPkwniZuO+bQI/0qii
	XCitR7AWS5piwBoobMXOC+y/97i8cnugRUbksmI=
X-Google-Smtp-Source: APXvYqyUwtKwdVKOxQpRxh/wA/rGMshRTD6gcKBzTHZSFXVZZBaFFYLwiTZzXq7LZsy5oW1uup7vHju+yM2m9Mc05RQ=
X-Received: by 2002:a02:6055:: with SMTP id d21mr17127557jaf.21.1580192730380;
 Mon, 27 Jan 2020 22:25:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 27 Jan 2020 22:25:29
 -0800 (PST)
In-Reply-To: <20200127120638.2jpgvedxecwgwz6u@qschulz>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com> <20200127120638.2jpgvedxecwgwz6u@qschulz>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 28 Jan 2020 17:25:29 +1100
Message-ID: <CAA=hcWSXrBKX=EbF5KHkWxmWQ+6Tcqvv4exxbWUOniDR6EDiRQ@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Andy Pont <andy.pont@sdcsystems.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, linux-mtd <linux-mtd@lists.infradead.org>, 
	connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 1/27/20, Quentin Schulz <quentin.schulz@streamunlimited.com> wrote:
> Hi JH,
>
> On Mon, Jan 27, 2020 at 10:13:37PM +1100, JH wrote:
>> Hi Andy,
>>
>> Thanks for the response.
>>
>> On 1/27/20, Andy Pont <andy.pont@sdcsystems.com> wrote:
>> > JH wrote...
>> >
>> >>That the same problem of missing busybox was not just occurred during
>> >>the device running in the middle of operation, it was also occurred
>> >>during booting image from NAND, I saw several times that the first and
>> >>second cycles of booting image from NAND were working well, then some
>> >>following booting process would be crashed by missing busybox, then
>> >>could not run whole shell commands. I have been pondering if it could
>> >>be caused by NAND issue or network virus / fishy? Appreciate any
>> >>clues.
>> > The first step is for us to understand what =E2=80=9Cmissing=E2=80=9D =
means?  Have you
>> > got any mechanism (U-Boot, SD card boot, etc.) that will allow you to
>> > mount and look at the contents of the NAND file system?
>>
>> Means that busybox was not there anymore, it mysteriously lost, all
>> shell commands would no longer available. It cannot to run mount or
>> any shell commands. There was two scenarios when that happened:
>>
>> - In the middle of running, the device all of certain could not run
>> shell commands and failed mysteriously
>>
>> - During the u-boot booting kernel process, there were full errors of
>> failing shell commands. Let me make it clear,  that booting error did
>> not occur in the first or second kernel booting after the new image
>> installation, it happened in the following kernel booting, but there
>> was nothing to delete busybox accidentally, busybox was just
>> mysteriously disappeared. Because I could not run ls, I did not know
>> if there are other things missing. If you ask how I could know the
>> busybox was missing, I ran the zImage-initramfs to boot the linux in
>> RAM, then mount the ubi0 to find  out busybox was gone.
>>
>>
>> > If you look at the /bin directory (ls -la /bin/busy*) what do you see?
>> > Have the files been deleted? Truncated? Zero length?
>>
>> Could not run ls or any shell commands when the busybox was missing.
>>
>
> /bin/ls -la /bin/busy* ?
>
> Maybe something is messing with the PATH environment variable. Or
> something is removing the symlinks from some binaries to busybox.

No, could not run /bin/ls as it was  linked to  /bin/busybox.nosuid,
the /bin/busybox.nosuid was damaged for some reason.

>> > What file system are you using on the NAND flash?  How are the devices
>> > being reset during the various boot cycles?  If it is a hardware reset
>> > then some file systems are less resilient to it than others but I woul=
d
>> > expect in that case more fundamental boot issues.
>>
>> UBIFS, most device reset or boot cycles were calling halt or reboot,
>> but it sometime it could just use power cycle.
>>
>
> IIRC, UBIFS is safe from power cycles.

Good to know. Thank you.

> Quentin
>
