Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
 by mx.groups.io with SMTP id smtpd.web11.6690.1613564680648524492
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Feb 2021 04:24:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dp8k6X1K;
 spf=pass (domain: gmail.com, ip: 209.85.166.177, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f177.google.com with SMTP id q9so11096650ilo.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 Feb 2021 04:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=cB+Knn0/P/7Laz5BQVFfCwb5n2hNoRn+GopfTot21Pk=;
        b=Dp8k6X1KSKF0abVIP6dDHt4ab0ZdyMYoBxzdn5SD5dy+CynwowmFl5ugOn8C1puWG7
         sSXRTArZjF7DpET5i+I4ykgUw84qF46MCew6m+zx7bEhUgJ/dYsgMn5NOg6oAm2jofVz
         1yNQ6kEn/0dMX7BgH+/0d9QjeonDT7o6VKDwW60AYHU/U7+zFNdKywVY6E9MyGlH8plX
         fP20W/bVMTNBw61uFms2U+B+Bfcznjs8Zg+fsXIqQHXevSSGs//hSjCsiNwQDVjnLHJe
         gBcX4FF6k1Om4GbNidB6/D1+2HcIEN3Rc/SMPg5raIL7omxn7HAUzCFej8TOAc8/1IRX
         yOtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=cB+Knn0/P/7Laz5BQVFfCwb5n2hNoRn+GopfTot21Pk=;
        b=Z5hJKpjmeU8SIHW6jSG4fy0ZDluA+1FTSVDfEkYkwZOwHSMolzve0t36w2CTDrTQiR
         iuZCrg8oVzQm5zWsFQnPu6qOdGoy/AzpP9/jpNezECbYJAUihWSeR1zRmqX1olBmYNCd
         0tKu/Q3xYbPJ4FPva6jHn4Qv3st1biMBUhsDKAtCxXtDQqizGwM3BsA25VOlt1K5Jff5
         IM1/r6nbUyW7opF3VJq6g7Ja3oqsX4D/xxLHM+mYJnOz/Y+KnxJIh0nyVbr7yhdin8GF
         K1bHcf1HnhM6bI6e0NqszVPi6kcCGkCb0fXeTKxSkx5vOxVoxcMV73UBAYQKH4O1WNjo
         CQPw==
X-Gm-Message-State: AOAM533uTK5dhGWYXZX57NlyP9X6Jyv7qnSKQoKib/PgI3ozyvuAxAI1
	av9EQaEwL74blTJrVQciz7N26KebKRs9FhTxFWs=
X-Google-Smtp-Source: ABdhPJyGOOgHQpllsrfpKzD0TasyNXnGw+w0McjXGtbNIPSXV1y/Z+AYnPe5PTn46C57aDzIzfuKaxl0Mz5pyEKEwdM=
X-Received: by 2002:a05:6e02:194a:: with SMTP id x10mr20389220ilu.165.1613564680023;
 Wed, 17 Feb 2021 04:24:40 -0800 (PST)
MIME-Version: 1.0
References: <OHWd.1613555997180740145.8Ytp@lists.yoctoproject.org>
 <CAGAf8LxoGwaocSUq04jqar4hQH2NiZ2DdumN5dpnQm4dr2wkew@mail.gmail.com> <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
In-Reply-To: <CAEj=YVJ6z6etLaMrFUXREfeyFhaS-UvnnDh19zUor37eAPGnvQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 17 Feb 2021 13:24:28 +0100
Message-ID: <CAGAf8LyRvfu_iw+BQkiVYUuF6po0d0Pe0xqsVRjG8_bG-u75fA@mail.gmail.com>
Subject: Re: [yocto] #av1 #armv6 #raspberrypi #neon
To: safouane maaloul <maaloulsafouane@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

So, what is your MACHINE variable set to?

Maybe knowing that, somebody can help.

Zee
