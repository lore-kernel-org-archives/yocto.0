Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web12.662.1632424942042478579
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 12:22:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=3qOsAe4s;
 spf=softfail (domain: sakoman.com, ip: 209.85.221.50, mailfrom: steve@sakoman.com)
Received: by mail-wr1-f50.google.com with SMTP id d6so20091326wrc.11
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 12:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ykKpG65P45W+Dn5Mm8rtJqWOLOqCKDOZddACy9DRhes=;
        b=3qOsAe4s9EI7jP7icwev7+4RFbbJUDqS+/g4nPdhIgxBTnnesogctLbafT2bQes4tH
         9dxIXBMVjclAxh7CDT6AyytqUsuo78+JUuFZVgKrypEMZFfOJSt0083QUse/nBdIIpNI
         e17Vi7ICNwOcB9WY9zeDNFv3NglnNnyaZu6gzMN6buclUOZwSQhKYNYj9/QsWvfPSRRt
         8GgsZAR1aTTqqJyE7jqbJ9ygWx6ykjS5yc2C21bDkDEtXjU+7K9BtYB5/XmL8n5TJ/OS
         AFHTzvelmsJdlw5ZK7WVLpLn+w4UcSPkfO/qrt+WKLCM/wQO3Bd+bFyL1Uis+1I2bkaR
         iLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ykKpG65P45W+Dn5Mm8rtJqWOLOqCKDOZddACy9DRhes=;
        b=m4JE/UUFyVczomr1nJAVd1Qtxmt6UEfrPsuG64mvwN9bpxDXwuLHCZQqok4o6nBChM
         Zn0p9FI5zMYeVHtsSnmqMF7YKe/ePY7ESfEPExmvasMu8yBne5v/kBDeCpKPgPeyCnkV
         3zSvIijV4gR7p+xO5GdGvSo2w9LcAONFepLKcWT9RtVoHdwoUDstMzbtlSH0nnIImrYy
         RaJcCr/i2nOQgo61n0QJ4jiis0lt0tH/f/QU8xKW8Rr99+GuSRdv3/x1opGipZERyjZz
         1cUz3aeGn+wxzCG1gxGGXAgo6nOImEBwtUv1SjZNnyxsr3S0LME2gIW4H8vEqdUAlSgM
         SDEA==
X-Gm-Message-State: AOAM533nPvik2kWowAR1sY388TiyaNJy2VFrArtEVYxH01/w0EWJvh1r
	8S1XThn8A7HTOyhOUUiTKog5TO3S/GwR7sAvs6Cgmw==
X-Google-Smtp-Source: ABdhPJzzy741jsoFj+aC0P198pw1UMSW8cXV2hlpmSD6PnLjeWVzHV9H374nnglKc8Z+OZsCv1S3Y7i6VyX4LNyTHFY=
X-Received: by 2002:a05:600c:19d4:: with SMTP id u20mr17447307wmq.28.1632424940218;
 Thu, 23 Sep 2021 12:22:20 -0700 (PDT)
MIME-Version: 1.0
References: <85d19597-9cd6-cef1-83cd-e2926b851e61@windriver.com>
In-Reply-To: <85d19597-9cd6-cef1-83cd-e2926b851e61@windriver.com>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Thu, 23 Sep 2021 09:22:09 -1000
Message-ID: <CAOSpxdZQqtW4Jn4v=t1YPBtcChWnkGKBW8s_13dNx42G9X1ing@mail.gmail.com>
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 9/23/2021
To: Trevor Gamblin <trevor.gamblin@windriver.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	"sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Ross Burton <ross@burtonini.com>, "Wold, Saul" <saul.wold@windriver.com>, 
	"Surendran, Kiran" <kiran.surendran@windriver.com>, Bruce Ashfield <bruce.ashfield@gmail.com>, 
	"MacLeod, Randy" <Randy.MacLeod@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 23, 2021 at 5:40 AM Trevor Gamblin
<trevor.gamblin@windriver.com> wrote:
>
> Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> Attendees: Alex, Bruce, Kiran, Randy, Richard, Ross, Saul, Stephen, Steve=
, Trevor
>
> ARs:
>
> - Steve to review failure logs for 14557 and post any that might be usefu=
l

I was looking at two issues prior to the meeting.  Sadly, due to
inadequate caffeine blood levels and the early hour I confused the
two. So this explains why I couldn't find the logs during the meeting.
So nothing to post  :-(

Steve

>
> - Richard to have a look at bug 11801
>
>
> Notes:
>
> - (carried over) Steve encountered build failures such as the one in http=
s://errors.yoctoproject.org/Errors/Details/593109/ when attempting to run d=
unfell builds with the PARALLEL_MAKE load averaging added. WR is testing/in=
vestigating on internal Autobuilder instance - Trevor is still planning on =
looking into this!
>
> Medium+ 3.4 Unassigned Enhancements/Bugs: 68 (No change)
>
> Medium+ 3.5 Unassigned Enhancements/Bugs: 10 (No change)
>
> Medium+ 3.99 Unassigned Enhancements/Bugs: 39 (Last week 38)
>
> AB-INT Bugs: 54 (Last week 49)
