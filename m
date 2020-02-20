Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3160.1582161393153439726
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 17:16:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HYiSZgrE;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88204E015FC; Wed, 19 Feb 2020 17:16:32 -0800 (PST)
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
	*      [209.85.166.41 listed in list.dnswl.org]
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 137E3E01432
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 17:16:31 -0800 (PST)
Received: by mail-io1-f41.google.com with SMTP id s24so2807589iog.5
        for <yocto@yoctoproject.org>; Wed, 19 Feb 2020 17:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=u1n0EYdmy9eKwfDtcFQLU6evbJmQlM6zbI8Xf966vC0=;
        b=HYiSZgrE5MgYtUXG9sDEzoqCXvht7t1JrkFu1Fgc3TWRUEmkpFxK3Irs8HECRIodw/
         SeNxi6yd+dVktjRMKoErbQ4QtuW0OrbAbcXE1G288KGS0K+xAayGWJFllNRnoVLJXPNU
         KskTPR7DuhuKGkJkybbGSPQl+nsVbamqi6SDZQ0jgF4OTyflywZ0x9ecqI/w1PA9CUnY
         TtOCEEIGMMWWpbfnwFy4PxV3kaU5p3Gy0aXBl6S2+fjz90pmj19xex3xLMgvSEa19Rno
         PHIery9ZRDS+a7xffkc+U1K9ULGVEURap1UptcqVJfJ1HsEFwIQ3W7cM8xa2nnuFoK9U
         jRVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=u1n0EYdmy9eKwfDtcFQLU6evbJmQlM6zbI8Xf966vC0=;
        b=dERYe7ADSYUaBpjdX4gE4vOorLJ3cwSzv4i7qJFpenegpHpdC8NrdGDNd7hWuotYfn
         3sOaVemScVpEL+BwoIP8ReZNJ8oP0sY2VHIvoZFQmNnFMoLT2Utfs6QbTd2padhNb4Ps
         wyXLO6v79gGjY55PWHBbZpLsmR9K7ahyW97QmVjjsb1Hj2PLvYF9YMZ470gqIaz5aVTZ
         rdzali1kU7jBpE7zsW+PK/XHi6203rE8sQu3WtwP1fsio/u0tQxr911178SVjNQLoKjA
         /UU7toYb2YGmifaQlfS8DHQ76Mq9GTfJh7/1FFfZFqyGzHX1OgVovzcD5Q50NDqghYXk
         oFNQ==
X-Gm-Message-State: APjAAAW5y7ZUE235r+j5DnJR7CVfGTvnX0dfrHs3L8zo4HuCkHIv9ja2
	DTUL8wV23o7kp8MbNAOU1NqU1GBOoHwmJUpwxnc=
X-Google-Smtp-Source: APXvYqyxc/YPX0M/jb4lscOxQIZPFQECpsoQKRlNMkLhHQvhe4qIc0F2v7b2oIlBAj/4brlo2RmC668RNIp92scZk1k=
X-Received: by 2002:a5d:87ca:: with SMTP id q10mr22893180ios.192.1582161391240;
 Wed, 19 Feb 2020 17:16:31 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Wed, 19 Feb 2020 17:16:30
 -0800 (PST)
In-Reply-To: <CAA=hcWS60Jr0aQ+qVqMoxyU90VPvC_cUyWKjsujqkWxPXLL8NQ@mail.gmail.com>
References: <CAA=hcWS60Jr0aQ+qVqMoxyU90VPvC_cUyWKjsujqkWxPXLL8NQ@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 20 Feb 2020 12:16:30 +1100
Message-ID: <CAA=hcWS=gMW0giYSqks=gMKE_b=xQuufj5=yRd=zFYe1tWA=Ew@mail.gmail.com>
Subject: Re: You advice to append environment set up to local root shell profile
To: Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

May be I should append to shells script.

On 2/20/20, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I want to setup export LD_LIBRARY_PATH and export PATH to the
> /home/root shell profile, the oe-core base-files has a profile file,
> is it a right way to copy that file to my application layer, to extend
> it and to add new path to export LD_LIBRARY_PATH and export PATH? I'll
> handle it by a base-files_%.bbappend in my application layer.
>
> Thank you.
>
> Kind regards,
>
> - jh
>
