Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.7583.1580124685086783531
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 03:31:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HqNQUT5+;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jonatan.p@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7F22E0162F; Mon, 27 Jan 2020 03:31:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jonatan.p[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10A0BE01629
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 03:31:23 -0800 (PST)
Received: by mail-io1-f50.google.com with SMTP id h8so9557658iob.2
        for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 03:31:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=08WmJyV2lOOcwstonyshldRfOBT2P1hLqQH1X+VA8wY=;
        b=HqNQUT5+dYwYAaDfmNnASf9OciRc9hWlbOxSeKf3g1k/FbaWg7KqpYna12DO3l2iTF
         k0d7SbrDYCIe8fXw85OrcC+s9lbfwuJ49pLfXmlvkfDmF86deSwQitC7MBqyK8nyFcyr
         YhpIuwuHt2tbiDBY4yc5VzBYOKb4NmouF3ZINtIZfPQm7CuRT6+W1ykhgPqTh0VzWfUN
         BhoDVjEE7x9KL/fx4DcKrd9Lma4V5QZeOeB2DLi+nhdi9vBfobIKA1pOZHLLDRTT4E0c
         OiPQBQzGkGWEnsTMnDesJgA2R3g57B4HQLC67VOYKGRocgYG6w7C/OVB+HO6HSsMmofc
         FbdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=08WmJyV2lOOcwstonyshldRfOBT2P1hLqQH1X+VA8wY=;
        b=YTltmDW6tzOB0Q9KD6SCcdpQAA6oaoC9lZOkYqfQp1MUqDvkuz/y4UGVS+4s0nrmjT
         LCG3Mcg7XtAkQsWxBsfIZYhBH+cC2g9CB7FInYDZSEkR0Y0c7t4zZeDqteTdlPdLGBDg
         1txoPqROI4KBmbFlxJM/iyTvCjUvM3URGBp33Mj14Ci9pyVj8r4Ov4Dqx7aJat2WMPsE
         FhcdhfHBw+eSU5HMQpoRhHOYb+tMOpMw3BZ401AxPD+r65LOsBAWudlS5hrrDfV6gUZC
         nGb4Y8/HemQFx8izZa5Pkg8UhwGEH+5zql8WLEW7igP8SJWqz/FZDhFyx1MJcmDXtXi+
         QJ2A==
X-Gm-Message-State: APjAAAWd2yzbW+H7yO5N2YXB+NB6QzR3xRHgcZMQ9lXKObPWm5FfwXFp
	25h69SbwVP1Lp29/7E4jbYFCpahfeTLB+qDnvbM=
X-Google-Smtp-Source: APXvYqx89lmPB71nC7ZBYHmPf23NnGIOz49lY/7VWSeqqQWoME1x/1Yijm2P4Mk3aOEgEvKQBWyioVAgYm9NVbzxZ8s=
X-Received: by 2002:a6b:4e13:: with SMTP id c19mr11427468iob.58.1580124683359;
 Mon, 27 Jan 2020 03:31:23 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local> <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
In-Reply-To: <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
Date: Mon, 27 Jan 2020 12:31:11 +0100
Message-ID: <CAKm+giMoe=USkKPCvBvv_Jz+AVLHTqHkf-_wZwyOfNyzyLSceg@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: JH <jupiter.hce@gmail.com>
Cc: Andy Pont <andy.pont@sdcsystems.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, linux-mtd <linux-mtd@lists.infradead.org>, 
	connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"

Hello JH,

On Mon, Jan 27, 2020 at 12:13 PM JH <jupiter.hce@gmail.com> wrote:
>
> > If you look at the /bin directory (ls -la /bin/busy*) what do you see?
> > Have the files been deleted? Truncated? Zero length?
>
> Could not run ls or any shell commands when the busybox was missing.

Do you have the "ubifsls" command available in your u-boot? This
should allow you to look around in the file system from u-boot. See
here: https://gitlab.denx.de/u-boot/u-boot/blob/master/doc/README.ubi#L177
