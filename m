Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.7228.1580123620377526705
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 03:13:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pRTW1asu;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0B71E0162F; Mon, 27 Jan 2020 03:13:39 -0800 (PST)
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
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D054CE01629
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 03:13:38 -0800 (PST)
Received: by mail-io1-f54.google.com with SMTP id m25so9489702ioo.8
        for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 03:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=V8vcT4YutXP/sUVywb1o6Lueba1AoRIlFBsljNK2Njg=;
        b=pRTW1asuIxRmEZ63mWYQ0ZPDEnlJvQJ9HpWNQDOlMmfz5CVodxrFlyZ+pVIxRdjlBV
         tBBWjW4ZspC6Z/cHJ12ItGu7NsgT5A14ryUR5wjSRbZ6o0aHewOqt7dlW0HsmC90ZmSY
         C2w2u0lVm0KGd+8iJrfemyT5qAnPCiRjsp2fcCdEDRyM7YEF3L/lttvGZx3pfSfpEj5Z
         AFqAa69pjhOCdpqbDmX6ypWBC28gNSp8qq6Irmsecd826Y4+S/4R+AWPuN07CyIXX+hr
         kzqJqxuvUMf/ruO93NoY8QP4cVClmgqUeVoANHK3svG3oDHhB/9RDFaCPipHScyViQ++
         5YMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=V8vcT4YutXP/sUVywb1o6Lueba1AoRIlFBsljNK2Njg=;
        b=mP50N45o1BhdoXdo2RwHcbuoQEZXqNPHyQRfQE0a1rpE5VZFPKUXyip6z/xSB/QGAw
         jsKB7ki58/N8gWOW28wt86f/yZFg6bIvtO6JL130UgQTOrgpPhx5cJCgOlTiz/bBYikg
         TDdp75yuUUqqjqK2KcXl0nJ9QLxcfGSDuseM3h6xLjg44w4VzXA/zmJd8fXEXyC6DPRH
         y32bsmboT/a+AOSREYySz6tAvZ0zMKx2bRVwdd336Bwsb+dmDmH5dQXd3XVRVVoIaIRh
         Z5BfCeV/qRtwksn3zWV04iTAhywhdKtTpuvOGEP8g8QSX/WZ6eODI/sd+/jYWzCC8ivW
         ckyQ==
X-Gm-Message-State: APjAAAVCYhv4Z/gPGPrlALiffiVtMT11Ixlx+h0bjirymA+osnl1ySev
	O7M5iwUO+dEYq0tux1MLzOO9UP17P2l3zEKuct0iiXuAxiI=
X-Google-Smtp-Source: APXvYqxhQhBDORo21vvjLKLPPdQ+QuNpuXzHFA0a22MbXlMEnaLFmBq4MjY0nHP/lhRg6Lnr43X9Ii91cHLINS6NrS4=
X-Received: by 2002:a6b:6e18:: with SMTP id d24mr12342010ioh.301.1580123618152;
 Mon, 27 Jan 2020 03:13:38 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 27 Jan 2020 03:13:37
 -0800 (PST)
In-Reply-To: <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com> <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 27 Jan 2020 22:13:37 +1100
Message-ID: <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: Andy Pont <andy.pont@sdcsystems.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, linux-mtd <linux-mtd@lists.infradead.org>, 
	connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andy,

Thanks for the response.

On 1/27/20, Andy Pont <andy.pont@sdcsystems.com> wrote:
> JH wrote...
>
>>That the same problem of missing busybox was not just occurred during
>>the device running in the middle of operation, it was also occurred
>>during booting image from NAND, I saw several times that the first and
>>second cycles of booting image from NAND were working well, then some
>>following booting process would be crashed by missing busybox, then
>>could not run whole shell commands. I have been pondering if it could
>>be caused by NAND issue or network virus / fishy? Appreciate any
>>clues.
> The first step is for us to understand what =E2=80=9Cmissing=E2=80=9D mea=
ns?  Have you
> got any mechanism (U-Boot, SD card boot, etc.) that will allow you to
> mount and look at the contents of the NAND file system?

Means that busybox was not there anymore, it mysteriously lost, all
shell commands would no longer available. It cannot to run mount or
any shell commands. There was two scenarios when that happened:

- In the middle of running, the device all of certain could not run
shell commands and failed mysteriously

- During the u-boot booting kernel process, there were full errors of
failing shell commands. Let me make it clear,  that booting error did
not occur in the first or second kernel booting after the new image
installation, it happened in the following kernel booting, but there
was nothing to delete busybox accidentally, busybox was just
mysteriously disappeared. Because I could not run ls, I did not know
if there are other things missing. If you ask how I could know the
busybox was missing, I ran the zImage-initramfs to boot the linux in
RAM, then mount the ubi0 to find  out busybox was gone.


> If you look at the /bin directory (ls -la /bin/busy*) what do you see?
> Have the files been deleted? Truncated? Zero length?

Could not run ls or any shell commands when the busybox was missing.

> What file system are you using on the NAND flash?  How are the devices
> being reset during the various boot cycles?  If it is a hardware reset
> then some file systems are less resilient to it than others but I would
> expect in that case more fundamental boot issues.

UBIFS, most device reset or boot cycles were calling halt or reboot,
but it sometime it could just use power cycle.

Thank you.

Kind regards,

- jh
