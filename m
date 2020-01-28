Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.5382.1580191113233467164
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 21:58:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=R/CtQlYd;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EA35E0158B; Mon, 27 Jan 2020 21:58:30 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.50 listed in list.dnswl.org]
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com [209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 974B4E00CA2
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 21:58:29 -0800 (PST)
Received: by mail-io1-f50.google.com with SMTP id h8so12930392iob.2
        for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 21:58:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8joxOrqCoLHjZQ0z1WSEa4eCoFeCIuBuU79BlYwNU+o=;
        b=R/CtQlYdgfiiwzzt7Nhq7X52YWObwC5WX1xEI6U8XqwLfwvPvBxhpDlg+dGXf6eu9/
         zjv9CMklsLPffpEodLSWQHBik+S5KnIGJaRepKc/HN+8ZnsmkZkEnR93CvkLA5hIm8YT
         w/V8TEOOPKvWqFpsKLxpxieUArW7R2cLIasi5QOwjApBFo5p4y8OLA8QW24tR0YtVZNE
         JpAZb6YNtcbj1vF6E+am7ok/QjCiJA2Bc6N5uITeJYIYecA9Fu+iA4+X1WpHOaSOD+pB
         k5b6aJQQx/tQKcU7NK/NFE2ZWpFz83/Y4z3rlZ4/3WhUN2mh/Kvx8i6JUPc4cLiopoCF
         fqyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8joxOrqCoLHjZQ0z1WSEa4eCoFeCIuBuU79BlYwNU+o=;
        b=JwiM1DCmfdyxexDKzeDk0dpCRd1GYvhk94vgATytUIBD0l3/KRU3aceyQTo0W0O2p2
         ew3cMnTTTrvsMHRYmkCRATJB2g2i9bHRejHlexkF6yQNqoYoyTi1hH9r7lXlRYkiR1YW
         H1jSgbaHkbpXPFhSD+rBlvHE+ZiXlBkLLjAvFTSODLR5/XkbRPuoQjAM8Zp9Et2TX+tB
         8vMhJhU9XVm3kOhBL2nm1itWLy8rkYOyeQI3WQWzn1lUHpPQt0MxJPye9i/DXEhG5p72
         5louk2ZPPvetSwbqsp+hS+klOCgdmQd0qsPk8O6/sIcbHmlhmtOO5bk4TiEW8qlbB5NO
         toUg==
X-Gm-Message-State: APjAAAVJV0VDS+QNiTJKhR4zV/PiQPyEG74lJed8szBnV9nNO3OomwEI
	yF+YGhJP38UHImjezGhMk+aBpnLNZUBiYOPvg3s=
X-Google-Smtp-Source: APXvYqxrRdNMk11mYIDVbyCgmE5HeUc3lyXinqxnzTvouezJC9/uRz+qo2c/Qx+uRpvI8DfJafD5HiXsPOhfvHhXElw=
X-Received: by 2002:a02:6055:: with SMTP id d21mr17051686jaf.21.1580191109030;
 Mon, 27 Jan 2020 21:58:29 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 27 Jan 2020 21:58:28
 -0800 (PST)
In-Reply-To: <CAKm+giMoe=USkKPCvBvv_Jz+AVLHTqHkf-_wZwyOfNyzyLSceg@mail.gmail.com>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com> <CAKm+giMoe=USkKPCvBvv_Jz+AVLHTqHkf-_wZwyOfNyzyLSceg@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 28 Jan 2020 16:58:28 +1100
Message-ID: <CAA=hcWRb6Wcv1FpxMjwqVmiNPp+5UEydKw8sAELCrmGyFfgDPg@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: Jonatan Palsson <jonatan.p@gmail.com>
Cc: Andy Pont <andy.pont@sdcsystems.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, linux-mtd <linux-mtd@lists.infradead.org>, 
	connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"

On 1/27/20, Jonatan Palsson <jonatan.p@gmail.com> wrote:
> Hello JH,
>
> On Mon, Jan 27, 2020 at 12:13 PM JH <jupiter.hce@gmail.com> wrote:
>>
>> > If you look at the /bin directory (ls -la /bin/busy*) what do you see?
>> > Have the files been deleted? Truncated? Zero length?
>>
>> Could not run ls or any shell commands when the busybox was missing.
>
> Do you have the "ubifsls" command available in your u-boot? This
> should allow you to look around in the file system from u-boot. See
> here: https://gitlab.denx.de/u-boot/u-boot/blob/master/doc/README.ubi#L177
>

Thanks Jonatan for the link.

Kind regards,

- jh
