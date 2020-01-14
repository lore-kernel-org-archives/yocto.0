Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1975.1579041723865176623
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 14:42:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RFvF5MhG;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62B2BE0152F; Tue, 14 Jan 2020 14:42:03 -0800 (PST)
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
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02CCEE014DB
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 14:41:59 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id b10so15672796iof.11
        for <yocto@yoctoproject.org>; Tue, 14 Jan 2020 14:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=0hn4D8mwO4WIoBvHZrdvr7Qhs3uabfVQLskw6vlZVro=;
        b=RFvF5MhGnaBZ+D4aUxG3dLVEbhizenog4N2ziJa4mcYsZYZHFlNKciveLKv8NZozxE
         6sDg+AyXaKuEi0WjuMcgDXT6h1VOqkJW/65rh9Evl6Gg9JGcv5GbtYqgQ82fVp7koUNP
         vJvlanMZtxtwM0ixEENQ9au1QcLBsNdmobCZjd9FQw58A6K7uyQrOp7wT4s/AkX7IBp3
         GetiY4nV42HZHNiOw1V2PHUS1SMH4XtmxnPMjeBMQ0pi6KYZIr+8HHFS1T8m5INnkRY7
         I+UZM+PHaoIdibqK6jlG0sW1gCuIiFyerXjQlACnGA3zyrYnr6C7H3lHcAH0xAh2sBmq
         VsfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=0hn4D8mwO4WIoBvHZrdvr7Qhs3uabfVQLskw6vlZVro=;
        b=mbhoUPOh7iO8Z8Cpb5U5kn6FdtmZhAnfu4u8Kgc8COIwi8h173+6QpEoisza6hMWSl
         1xtS96SbiXeb94xFPaSV2tLR3Nan1BKPGLAbxcWZaSP0EK79BBLNbufetHVGFazrqAB+
         1OvvTIXWBfhLVU8uJKryX/dJz6vgCntEN4vHbqff0o8dgh+dXCdq1scQAFs1LV9WajTp
         UafJ3J1OD3gFt4YhRnDcptzVlB9oeqHfIUNWG/l4nm10aihhERM82NlTmv4PxPcqyg7b
         F58lwUxJzWcd762Z+gkr0FYAZE03XE77Fc6cuoiz383LkTXNYWjrrtaEiK1MpdrzDjzh
         01CA==
X-Gm-Message-State: APjAAAViuRFbZiv+dmq8k1+ZTAlqH954/UulCt+Lyzye6avcYPkYmh6W
	GDgj3d+9iz/Tc2s2W0rOzyUvSxLYPgvV/VtfBmw=
X-Google-Smtp-Source: APXvYqw0oyg0jhllGmxJx5XHjhZ99DBNHgbfa57uPsF73GPMxApS0k4ecGZf6UAaFwWEwpzXLNtiMVQRI4LiKYQ2yJY=
X-Received: by 2002:a02:ce8a:: with SMTP id y10mr3595759jaq.21.1579041719278;
 Tue, 14 Jan 2020 14:41:59 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ac0:e345:0:0:0:0:0 with HTTP; Tue, 14 Jan 2020 14:41:58
 -0800 (PST)
In-Reply-To: <CAGbd71TYX0bvyUfbW9jeHOw8oAan8rOXR5dQpGBv4XoFjrDqPA@mail.gmail.com>
References: <CAA=hcWQeNV4X2cxfX0FuVCCFhM-gQULO_z1bVw2JvgeZ7rdJWA@mail.gmail.com>
 <CAM9ZRVsSmb5QrgAjFh=qJKVohseLBEajb80higHnW9vBNmB=Kg@mail.gmail.com> <CAGbd71TYX0bvyUfbW9jeHOw8oAan8rOXR5dQpGBv4XoFjrDqPA@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Wed, 15 Jan 2020 09:41:58 +1100
Message-ID: <CAA=hcWT5Z6vGnit-yktDH=A0DUXc-nDr23FC=zSOFPV5ss6yVg@mail.gmail.com>
Subject: Re: [yocto] zeus build errors
To: Laurent Gauthier <laurent.gauthier@soccasys.com>
Cc: Paul Barker <pbarker@konsulko.com>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Thanks for all your responses. Sorry it seems a very rare my local
network glitch yesterday coincidentally happened the same time in the
middle of I changed to build zeus, made a lots of confusion. I run it
again today, all good now.

My apology.

Thank you.

Kind regards,

- jh

On 1/14/20, Laurent Gauthier <laurent.gauthier@soccasys.com> wrote:
> Hi there,
>
> On Tue, 14 Jan 2020 at 09:49, JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi,
>>
>> I had no problems to build thud, but after updating thud by zeus, I
>> was not able to build it, what I could be missing?
>
> Questions based on experience:
> * Doesn't your network require you to use a network proxy to access
> URLs that are external to your network?
>
> If so:
> * Do you have the right environment variables setup to use that proxy?
> (typically http_proxy/https_proxy or similar)
> * Is this proxy healthy and alive?
>
> Good luck, Laurent.
> --
> Laurent Gauthier
> Phone: +33 630 483 429
> http://soccasys.com
>
