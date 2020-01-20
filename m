Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6745.1579496841130553991
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jan 2020 21:07:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YgyITEk0;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72279E015B8; Sun, 19 Jan 2020 21:07:20 -0800 (PST)
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
	*      [209.85.166.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C293E01426
	for <yocto@yoctoproject.org>; Sun, 19 Jan 2020 21:07:19 -0800 (PST)
Received: by mail-il1-f173.google.com with SMTP id t17so26194247ilm.13
        for <yocto@yoctoproject.org>; Sun, 19 Jan 2020 21:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=CE4W4uEr4O1QuLEItAJf2FAgjsHKe4Re/ECQLTSq0J4=;
        b=YgyITEk0omotd1OdqtaPD50X/wNidWyv2yXk/+5cveLYN/tWOUb53UOQQMdW2oBgEc
         /bU4i+qkMpaBl+RVzEOcGLw14VzaeXqzXtVewKexVOdGu13o78/HP4MtiHNe+9u8ompv
         SYxsSQxFBpM1Le8JpzqzveEwLdwaHSjUBitoGjgES1jkzjsppqkf8kNXTBwf1uWQCtuQ
         lvofFyaCXqqIFFjXZW8fj/jbtq/JuUsmw8I4sxablD32cmWSqom7XT8I5O50P9zcCrUV
         CiLCgmQ3hI8WDEriNT53Sqq50oDz78VaEfNs/glC3xomaH0YE1hRIfkA+QJE8RxVg5KP
         yJ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=CE4W4uEr4O1QuLEItAJf2FAgjsHKe4Re/ECQLTSq0J4=;
        b=aG3VFv3jOFAKudd6+L+0k215XBgQyDJV3bPF9u0nvAQcwsJMl+mFB34+2FMUBid8By
         8a9kEbmjsrXa5jA+rldDMq+KbSmrDdxygyF6FrXquqNlT1HpgHXUh4biRey0DfwjxCyf
         HYAftdzzA+4idqA6EsciD5HmZSS2Oq87oQdAAHqB5rhv4Qb/fJmERy6H6Bd1wE2Q3ozu
         Do4jTyIMhI4wWeytFkiikxMNWflmXS50T9uo+kPtd4vBwaE+SsTGPE9nTf12EE5xTZ0v
         al5HWgZjFtfnM6I5HXVei/86r8Hw0zUoqlgxGVE0gd2xZ5YYcw4MfJ8chD/XZSWgjmsX
         ottg==
X-Gm-Message-State: APjAAAX9qJ1ToeUNx5ldroZxKNl3j2NtERZah6Bg0pJWrEYUNQZsoAUV
	YQ37U1nBKpC0WkeuuLxK3q7V0vvnfd8S6EeVdHmzEn2a
X-Google-Smtp-Source: APXvYqz4zECEPVd94JZtGHo4prj7xl5anK0REEDCUrrNnEj25akMbqYFJfaGa1PpsMJnpY18Abt6hKWsKEMaJ6VH2hE=
X-Received: by 2002:a92:d5cf:: with SMTP id d15mr9077681ilq.306.1579496839361;
 Sun, 19 Jan 2020 21:07:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:e345:0:0:0:0:0 with HTTP; Sun, 19 Jan 2020 21:07:18
 -0800 (PST)
In-Reply-To: <CAA=hcWT9A0rmV1B6-Jz0H2cOcn6Sp_eaRdAyF=8=v543+GudBw@mail.gmail.com>
References: <CAA=hcWT9A0rmV1B6-Jz0H2cOcn6Sp_eaRdAyF=8=v543+GudBw@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 20 Jan 2020 16:07:18 +1100
Message-ID: <CAA=hcWTiyJbOuLOW0qoQVwHHNZUR11ouS=94ihcZY8aKkXiZoA@mail.gmail.com>
Subject: Re: WiFi network failure after updating thud to zeus
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: OE Core mailing list <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I sent following message several days ago, the problem is that connman
sent DHCP request messages but no DHCP response received, something is
got wrong in network, could anyone advise what have been changed in
zeus?

I saw another email of eth failure after updating from thud to zeus, I
am not clear if it is the same problem of DHCP response or not, but
seems something is going on in zeus, appreciate your kindly advice.

Thank you.

Kind regards,

- jh

On 1/16/20, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I was using thud version to build image to run on imx6, it was working
> perfectly except I was told a bug in connman version 3.15, I need to
> build connman version 3.17. I could hot use thud to build connman
> 3.17, so I upgraded Yocto to zeus.
>
> After installing new image built from zeus, now I have a very weird
> WiFi network problem, it could not get IP address from WiFi router
> DHCP initially, after a while, the WiFi got an IP address
> 169.254.203.142 which is not my WiFi router subnet 192.168.0.x, it
> could not connect to the Internet either.
>
> My first suspicion was the new updated connman version 3.17, but when
> replaced connman 3.17 to connman 3.15 in an old version system which
> image was built from thud, it was no problem at all. Apparently
> something got wrong in the image built from zeus. Has anyone aware of
> that issue?
>
> Thank you.
>
> Kind regards,
>
> - jh
>
