Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1795.1604395063708606250
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Nov 2020 01:17:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=j4YDmLi/;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: jupiter.hce@gmail.com)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 06B6E38C08B7
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2020 01:17:43 -0800 (PST)
Received: by mail-yb1-f170.google.com with SMTP id h196so14239896ybg.4
        for <yocto@yoctoproject.org>; Tue, 03 Nov 2020 01:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=uZiuIwLR7Nl38rNFOX/06Gbyl/0YvN7AFCs38Kj8EOw=;
        b=j4YDmLi/xlTABuyiFpMuMH9UrCqq5x5LG7QxacsC9C8CMw9oklS0c1uLFmCc292SDS
         2tCy+amsit950oZfbBW0cflcqnqxwxM8txspFjWekq6k9+I3Z/E2fY0MJX8BZhee72ga
         0TWWG/OFvh33tay1ZKbOW1eD7mK0mNB+zxoycj8l+pANafEesEM2Cd+IAs642+vFqXlm
         BoFfZ7ZXhme1dNGqGBpFIfjOngs+aUPQbQ6C2+4WOsr8XmBIoVnVCfXufYupsyR3QVhk
         w+gNh3jBFPQpnqopBaxzCZY5OjHBLJhL+gQxBTPpb60x2FhamAoE7MBOY5ZsTZjgFZR8
         igRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=uZiuIwLR7Nl38rNFOX/06Gbyl/0YvN7AFCs38Kj8EOw=;
        b=VMU6AAlUZf4zdDAyYnZOGGPoiHihWeVJBIBiF73v9SC/nE7Ua7Ne6YYQTrGEYrbpMi
         k1Nl4iBO0v2oOmP0figBRvmNzjYjlOnb/ALW7miOb66e2v2otFLogkEiyBJYl4GV52+F
         mkz45dlotuS4wsqVrm//fbVty+pnlfkqKKdqVzV601fNkGteZh7PO/Wa1H9+TJI/eTCl
         3fg7BrnraV0RRlSCB7GePUaDS80w+Iuetd+67SP0WfOaNUqbWBCRutXdEuDLaSNgCmj5
         p7yb9PDN5NlsArFcFepLHLZjNjNtPxcPVcZaD3DX0Az5h59PguE1k87odyKkLffpg6iy
         R/0Q==
X-Gm-Message-State: AOAM533RR9+j5nj1kqIhK5GvCE03q9iyqa8yMCW0VXa4fTEvgnK4smMf
	r+8b+eGE+jt7r6Wl66jbVuhftIgXItE22IW1IdM=
X-Google-Smtp-Source: ABdhPJwbn1OK0+s8KZZ4adTUTaKaMGYIzw7mMy1kM6h6eoIBLTKbbgVZ9lsPCo9RuvGv9nuxCtQo5zIDErTTYLTnIOQ=
X-Received: by 2002:a25:4656:: with SMTP id t83mr15142462yba.65.1604395062105;
 Tue, 03 Nov 2020 01:17:42 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a25:a16a:0:0:0:0:0 with HTTP; Tue, 3 Nov 2020 01:17:41 -0800 (PST)
In-Reply-To: <3029789.gPz3SqCoUO@ada>
References: <CAA=hcWQnJ1yRTwPF+9kubSt6FQPxwCRYFwXcYR8RnVLs4LMb7A@mail.gmail.com>
 <2234110.ZDGxJVC3CD@ada> <CAA=hcWSAsKEcFaR1dCpCey_m2Z2zOxYT1N8NNjL6bNQxSrHj1A@mail.gmail.com>
 <3029789.gPz3SqCoUO@ada>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 3 Nov 2020 20:17:41 +1100
Message-ID: <CAA=hcWR9gMxtCbhDdMEbzJ0okZ7aYGHeaP6j7bkfqT4EVkO=Dw@mail.gmail.com>
Subject: Re: Install Yocto image and backup
To: Alexander Dahl <ada@thorsis.com>
Cc: linux-mtd@lists.infradead.org, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

Thanks for your clarification.

> If your kernel and rootfs partition is just one UBIFS in a bigger UBI volume,
> then no. Single bad blocks affecting the UBIFS partitions would be handled
> by  the underlying UBI. You should however consider using ubihealthd or
> something  similar to become aware of badblocks over time and handle them before it's
> too  late and you can not boot from the rootfs anymore, especially if it is read only and not
> touched for writing in normal operation.

Yes, I use one UBIFS for 4 partitions, RO rootfs, RO kernel, RO DTB
and RW application, no write for RO partitions, that should be safe, I
feel relieved.

> your device is somehow connected to a network. So what I suggested was having
> two rootfs partitions. One is active and the device boots from it (A), and the
> other one acts as inactive (B). When you update, write the new rootfs to the
> inactive partition and then just switch over and boot B instead. You might add
> a third partition for recovery or factory reset. Only the active partition
> would be used in the running system and can still be readonly there.

The reason we don't update kernel and rootfs because the size of
kernel and rootfs is too large, it is hard to download 60MB image OTA
via 4G CAT M1. If we are going to change to use 4G CAT1 or higher
speed, I'll use either RAUC or SWUpdate, which one is the most popular
for embedded system using uboot and UBFIS?

Thank you very much.

Kind regards,

- jupiter
