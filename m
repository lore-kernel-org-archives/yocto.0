Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9543.1579602258548541305
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 02:24:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=AHumCTKi;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28D0DE0144A; Tue, 21 Jan 2020 02:24:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com [209.85.167.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E03DAE011DB
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 02:24:14 -0800 (PST)
Received: by mail-oi1-f196.google.com with SMTP id c16so2078632oic.3
        for <yocto@yoctoproject.org>; Tue, 21 Jan 2020 02:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Uee2Ur/VinXM1Uktx1cxvVfaucE4JsR1iYTwP/5UlnM=;
        b=AHumCTKieNVShQ0MX2I1LtpwYiXHRxeLXidNkqJW6mKd3VZaeALsI6pYcRc+9hHeFP
         UFP+7lHPRKMHMHlLxTudFp8seok2ix4WS4wxpl6jWdlIK/kMBZa2S6hyPHBLWqKThG+c
         t7GQM4hawAQRQscJicPC6zs+ZIDZno6Co7LYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Uee2Ur/VinXM1Uktx1cxvVfaucE4JsR1iYTwP/5UlnM=;
        b=VaeJW85mdFO2Q9uTqzR7dD9TjHmtx2ezJUZM7o/TwgMRrunRlePqJdBdhOJPHcyzTN
         spEKS2USuZylrb6Ct4h+zZoQR3AIuWHCecz7qYALKzkOgtu3bSEhwDRXh/Ivg1eHCJWd
         ZKtxc7CONyAeC0yGKGck11gz2ltrpXurk79iwEVTyY19WCuV5cpUXhyDITDrB+d8xmO4
         KKnoVlDYMZ252oPcfujLdz6VYKMru42xyNC/nfdsEIEoJHSGPvnNJqQ3ZliUb3o8cWef
         oiExbA1WiuKmtxWsZqviWD69zwJUIYwypM0QnmM6vxE9VjkuLzvDnG/CdLHIwbbdGgqE
         pGug==
X-Gm-Message-State: APjAAAVaUYix3jFrebeQEuBB3Lfe5yBJbS0MqUmOTPG/7OfB0G+XGyaX
	9unI2j5x6czX0YJ2goUONXCVu57xEIb6E3WuoguwKg==
X-Google-Smtp-Source: APXvYqxkJKcvj+cdTla4iwx74H5HfICPEO4QbrsXme8GxyNyXPEic1XbJipo2iP7MRcrAQjtIFcHl8AZO/2gUf9hzbo=
X-Received: by 2002:aca:1b01:: with SMTP id b1mr2309257oib.6.1579602254090;
 Tue, 21 Jan 2020 02:24:14 -0800 (PST)
MIME-Version: 1.0
References: <20200121100732.1441871-1-stefan@agner.ch>
In-Reply-To: <20200121100732.1441871-1-stefan@agner.ch>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Tue, 21 Jan 2020 10:24:02 +0000
Message-ID: <CAM9ZRVt2P=yVkg9KgnoVYDthSStyqT3oU5ZK6HRxsQ=q_M2OvQ@mail.gmail.com>
Subject: Re: [yocto] [psplash][PATCH v2] add systemd support
To: Stefan Agner <stefan@agner.ch>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, Stefan Agner <stefan.agner@toradex.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 21 Jan 2020 at 10:07, Stefan Agner <stefan@agner.ch> wrote:
>
> From: Stefan Agner <stefan.agner@toradex.com>
>
> This adds optional systemd support. When enabled, an utility called
> psplash-systemd is built. This tool will connect to systemd using the
> system bus to obtain progress information and communicate that to
> psplash. Once full boot progress is reported by systemd psplash
> psplash is closed using the quit command.
>
> Signed-off-by: Stefan Agner <stefan.agner@toradex.com>

Looks like your email client or mail server has made a mess of this
one - it's "Content-Type: multipart/mixed" with quoted-printable
encoding for the text.

Could you try re-sending with `git send-email`? I'd like to test this
one out myself as I've been using psplash with systemd via a bodge
copied from AGL for a while now - that doesn't show proper progress
though it just spins the bar around.

Thanks,
Paul
