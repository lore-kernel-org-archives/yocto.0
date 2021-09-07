Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web12.1001.1631029100079799473
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Sep 2021 08:38:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=o8gtf+my;
 spf=pass (domain: burtonini.com, ip: 209.85.128.42, mailfrom: ross@burtonini.com)
Received: by mail-wm1-f42.google.com with SMTP id z9-20020a7bc149000000b002e8861aff59so2227562wmi.0
        for <yocto@lists.yoctoproject.org>; Tue, 07 Sep 2021 08:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ML/6dYdKjRm7zMXdIKFnlSd+FAh+AgxG7byeNA2cyLY=;
        b=o8gtf+my7C9ij5kT6hXXceg6nBlMxcOS4FIhurBFKJzqeyuF4rG2yb1IpITev3uobG
         G4iSh1cdMnMkiiGG7yCoNKNiVUwdY8nlLrYbzClIFKgIDTI2ljoa95JbQgz6cDEIxYhl
         oDRNXEYvPUkeTY0/93PgOM0/rnZ8ngDmaQ2yCd8uEchoxNkq4p2BCQB27YHk4opQXZbm
         7pqRFbmzY5B7inAglr8SahooVD8YwyHHlTTQVup1PUQEhODfYIGFtci8bdgjznnnocIv
         +FHYcjplobauRPsrdZCi7ZtuywkMv2E9J8aAkCeSn9w0VqjIgwVkODC1D2+A5hRt7E9D
         sTNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ML/6dYdKjRm7zMXdIKFnlSd+FAh+AgxG7byeNA2cyLY=;
        b=DjMsS3kJq0zzWmuyMSK2ll2LKUA8Awkam6FglxDToSOYoqEFsWIUxNJUUfa1gIRYfR
         7SXlpZyCvnVYSDz7j9tlBEimm+yFCOsCS+G6CgjuNQldVcnGr95+zy6qXwXANu8fixzw
         qHFQ5VrtW4jQzePqQZEXJIXBWkSp5Nqm8K+RTg6rnP7Gi6VVX+5Xr6O4xLFp+BUJS6K2
         kkQVtbkbGeZpt05m9M54Uv59xhJ/Cgv49CUeuYGDppgkXey/rC0fls3vPaEgOGuiY3Jc
         UKeDGVuUvOnUpvBASrAz5NJ8BjmG62b2aZKbG7iZOGbeCbCmshLEUBuyN1YafQBu/OOS
         DBvg==
X-Gm-Message-State: AOAM531HZP/qsxjO/3Wee/9DJXi8wvG/NgtHypB8U/+J5SvMqWdbOjnn
	3UevUt9LtmsyM5iPblM66ezVnExczmkpqe2rUzKJcw==
X-Google-Smtp-Source: ABdhPJxTTjubf/SVf4jTv3x9Y4NNAXeh9B45hmDoXga9aGGNC0q+3HGLy6MnJfHFXdDSWaaok9e/5oTN8z+8qw6bWkA=
X-Received: by 2002:a05:600c:3b9c:: with SMTP id n28mr4523427wms.184.1631029098509;
 Tue, 07 Sep 2021 08:38:18 -0700 (PDT)
MIME-Version: 1.0
References: <1004181630942804@mail.yandex.com> <14250171630944633@sas8-bb4816e87b9b.qloud-c.yandex.net>
 <CAMKF1soTdYqd10biiQ0iDa74kAkwJRW94ouKJ-xGxVAQFTXnng@mail.gmail.com> <5553891631010112@vla3-6a5326aeb4ee.qloud-c.yandex.net>
In-Reply-To: <5553891631010112@vla3-6a5326aeb4ee.qloud-c.yandex.net>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 7 Sep 2021 16:38:07 +0100
Message-ID: <CAAnfSTukyWDu3Y=_bpWr4Jc-fM9byem0nKwcoBD28zovXP6X0Q@mail.gmail.com>
Subject: Re: [yocto] Debating best tool to use
To: KL <deco33000@yandex.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Sept 2021 at 11:22, KL <deco33000@yandex.com> wrote:
> Thanks does that mean that I can reshape the whole "everything is a file" under unix?
>
> I don't want /etc /var /usr (and any other premade structure you find in every linux distro...) but manage it differently via our db.
>
> You confirm that doable?

Doable? Yes, everything is open source.

Sensible?  Not really.  I'm not sure you've considered the scale of
what you're asking. For example, /etc/passwd and /etc/hosts are deeply
tied into large amounts of software.

You can make *your* software use whatever configuration database you
want, but you'll have a lot of work to do if you want to move the user
database or DNS resolver information out of /etc.

Ross
