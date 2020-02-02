Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.11211.1580656597676669321
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Feb 2020 07:16:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=PGs62GA9;
 spf=none, err=permanent DNS error (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 353CDE014DA; Sun,  2 Feb 2020 07:16:37 -0800 (PST)
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
	*      [209.85.208.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56444E00C29
	for <yocto@yoctoproject.org>; Sun,  2 Feb 2020 07:16:36 -0800 (PST)
Received: by mail-lj1-f176.google.com with SMTP id d10so11945917ljl.9
        for <yocto@yoctoproject.org>; Sun, 02 Feb 2020 07:16:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5Lda976lZsNsu/cceyXosaCgaGeAKHNcc3Y4ERhCAog=;
        b=PGs62GA9wISivIj6EvVcDyaTuH12WvHZbjojUahUClboXZ/pPN+kijYHt7N1kL2Ad1
         k0HGvwYCg+2ivGjIvSWWP0uTe+cWlt7SYTwm+h4UF4EWTxnbvL3BE9TYgPSaAmvQrg2e
         kfHLaTSIZJkmuRutaJAoPfvVCqHw9LwvfEIrlUU1sEfiZbnAQgBcLHari1ORcrOQv5LW
         m2Q1G9CS6App5MedfEfpou44TQozsxfAlqB5vraa0XKtG+mB5Ck4bu61WPWyNb5736rf
         F7LypTl9PJxYBNMvQgQRl0PqRP6HWNImptI7l1kXzGruTXzmRHcCrJnSQrSndj77GuGR
         dt7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5Lda976lZsNsu/cceyXosaCgaGeAKHNcc3Y4ERhCAog=;
        b=YKLtItFAUrofyXVJFVrK5bSTNBnFWyrcdVCX99J2+EbG9A2dE4fXXwRkqn5De1pV71
         C42LlxrZOEPOH3sYa9fe80a0KrVk9Min26F9Cpubba67spZce/qf9JeW4XM4QpxXz4w7
         3c8Er0zr31Ds35JBhSFP+9ttpKcgPphkwTMCMGdJrAAD+bpRIqGBHv/zbDXPpINFB1rA
         M1jxSqtjlQC3LLOE3eKwCUocYEkeCkN9PPvFXbG7UpUSoGQxoYSFo+PH1QXx0UhTvXs+
         ivJSssdYR5oKpeMquGRbD6MW0SeixkHJTaP1RBPy2OI0jXTCJZfYDW/OpBpfnhoxvrrG
         dpMA==
X-Gm-Message-State: APjAAAUNrkI620R/bT3a/WC9BNU6N8QHycRuky9th4+Sd7ka4vBF8YDK
	1ElSCU1n42eSYvM3B+06Fq+E1hNiiUvcev9YcvsSfw==
X-Google-Smtp-Source: APXvYqwg5SK4LLhggByx4feZJdVO36bl5eiR3EMFkUIid1MlqELDcHRos51GuiOk6Z9UqjeTKCbAp2HiAXNSBWhE3AU=
X-Received: by 2002:a05:651c:327:: with SMTP id b7mr10482154ljp.22.1580656595182;
 Sun, 02 Feb 2020 07:16:35 -0800 (PST)
MIME-Version: 1.0
References: <086201d5d5f4$307b2150$917163f0$@gmail.com> <20200202132840.GA6805@localhost>
In-Reply-To: <20200202132840.GA6805@localhost>
From: "Ross Burton" <ross@burtonini.com>
Date: Sun, 2 Feb 2020 15:16:24 +0000
Message-ID: <CAAnfSTvkfE-e6EqoX7gzQ5QqOHzd81xZLQOV7+8cSo9GyVAWBQ@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Status WW04'20
To: Adrian Bunk <bunk@stusta.de>
Cc: Stephen Jolley <sjolley.yp.pm@gmail.com>, yocto@yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 2 Feb 2020 at 13:35, Adrian Bunk <bunk@stusta.de> wrote:
> Would it be possible to also create a yocto-devel or yocto-core
> mailing list for discussing development of Yocto?

What would it cover that isn't already covered in other lists?

Ross
