Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DB88C3DA49
	for <webhook@archiver.kernel.org>; Thu, 11 Jul 2024 13:06:51 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.11351.1720703208535169438
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jul 2024 06:06:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E5mnPx2+;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ee9b098bd5so11789161fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 06:06:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720703207; x=1721308007; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZQekEUH9xs+NShSGg8D6LtG5Sh10MFZr1xZIwlAooRI=;
        b=E5mnPx2+h5r/vohw4q86SgI6Zv389Kq57JpjUH0KupgRyTq3WU6VnBh5WlOnuSbbFK
         HKmdTcfUL6v9R40gGUrrRL9JIQe4nQkuu4ElaDnthIgW7Lr2YcEoRsxZfdS18Pkkb5YR
         VrqMKy9HQMTS2Lm2Sg93vpeZMvJW9U6NQTHd1aoGSMLYYpCtuqfKBv8YmJ9EK1D6MzoR
         giQ1COKXPEwJnUYcwn71slMjJJVLb1E4b8//EZ1nGRA+sIdTCTcAr30oNWATt5jJait6
         5JXuX4ajKCOaX7ATkSPbyJ7fmQyfotzbFX02yhliWOhYNSs87y+1uerbwrBPnTKBrJrP
         GPww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720703207; x=1721308007;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZQekEUH9xs+NShSGg8D6LtG5Sh10MFZr1xZIwlAooRI=;
        b=mpr3VuIoFud7uZVWhF4c236VILy/dFPogM8AzeO6kRG6dbUE07PnFHKwYt6n63fbvv
         E26bIropXYXD/1ICSI2pCSBBilZHcVTacWixhIfNLR+/G8w8MB300quEKjYXNB2MEucr
         qccWSk/Md0grPdKOG5wWJ5IpAAN4MUa7yLD4z7ov8d9pCkB4zORzJ3Kkdlhk9q9FM7xh
         Aytr6TYPqDW8vvzZoC+uDgchBfc5hF47zAKe0jjOHBwdE1X5ATZpHALTiFj0/qMhJU+h
         eHRCkZXIFMR/1aONa6RzpPiQiH7p2Gsz+bBgv1py5/9yvWh80qRHNTtkRPLsDqD7C5Km
         btGw==
X-Gm-Message-State: AOJu0Yy4911iYffNfinj6gH8/q2j7pJchjk8hB2dkrBCK7NX3M6ILwXL
	TdzWi2Ch4BNiFfOkIndIGoQMecqeyPA2BfNOaWYt4vitw7y1a6cBIRPLvR8F9F57LcelQGURJ+z
	pmUvTsARuygdZyo+TSDtYA3fa9IA=
X-Google-Smtp-Source: AGHT+IEyYHi5ggYW5zrtZq0GQ57rtwxR0DNp4wbuXgEv5cZFhuZQbOxq+j9tlvHlk0YQ1ZyOa39wn/NM0i0AAy4mnX4=
X-Received: by 2002:a2e:82c9:0:b0:2ee:7c88:63a2 with SMTP id
 38308e7fff4ca-2eeb318dc03mr61148191fa.44.1720703206408; Thu, 11 Jul 2024
 06:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_y5cxE0JmWrm359bsE1GMNmF2P7fG4DGR6gRh1ZfZuwA@mail.gmail.com>
 <18500.1720702460212059531@lists.yoctoproject.org>
In-Reply-To: <18500.1720702460212059531@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 11 Jul 2024 15:06:33 +0200
Message-ID: <CANNYZj_0hyZLGxrdyNZ7c3XTKYtcX5ub4HGaP9dnwQNQFD_CMw@mail.gmail.com>
Subject: Re: [yocto] "usermod command did not succeed" while building image
To: jguittet.opensource@witekio.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 13:06:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63472

Come to think of it, a less hacky way to do this from a bbappend is to
place the unneeded binaries into a separate package, and then not
install that package. That way, you can still add them to images when
needed, but if they're deleted already in do_install, you can't.

Alex

On Thu, 11 Jul 2024 at 14:54, Joel GUITTET via Lists.Yoctoproject.Org
<jguittet.opensource=witekio.com@lists.yoctoproject.org> wrote:
>
> Of course! Thanks for this reminder Alex!

