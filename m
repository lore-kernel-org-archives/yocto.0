Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web08.4328.1609996059638090869
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 21:07:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vHNw12GG;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: jupiter.hce@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id k78so4984878ybf.12
        for <yocto@lists.yoctoproject.org>; Wed, 06 Jan 2021 21:07:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vCb+wA8ktVytvy1WZi6CGhdMBE6axxwyVH+7esvL6nI=;
        b=vHNw12GGUDfLPgpCfiH6LEii0jwpZfiTlCSJHrsHKR/7F396LFjUsV4y0tE+iVgd8y
         15zf/XsbE6mH08rr+jX9eloxS1Q2pU3iORzmIqppNavrrlnVb5syXD4SHO5EDJx4kuEm
         H5jE1E6hzZMjnl5aibKQIGlgfppYElmk7OhMsYGN04TWHl/OBm/2zJEvjvN/CwIdRvBc
         60PJCH1GJi2fUrw3MfyJImg4q1vdnkAgr1DwK9aol3KZZ74LSrlmLHlVQcU13eJLjOch
         Gyp24RtAPmlAGaGCLTElzlrTwNEz+M/Az3NxqTkAQl7qFSxqQNN2oKQ48TJi94bzv0UL
         SWnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vCb+wA8ktVytvy1WZi6CGhdMBE6axxwyVH+7esvL6nI=;
        b=s5kdgHmjYikcl/q42ZTMktoS0fsWh1g52Ti2ZYznYMf2SbfgpQOaQsAWtt/fzfGiQy
         PBPm8dMPdnqAbQRYQHvL4bKnoLIkhuNRUF1L9+TPdsBHYNq0bxuuPTUEQ2c8RNMZkiSf
         5OBWJ87/30Nn115V5kikUHlMjPixeYXm0R5aLQm0nSh7q456X+s6SUehwkR1vQydNo4K
         x5KJoOlFdJwn6J7PBhyMGDsM1NjW7X5AW6LpbkuCnI2fw/4LQ8uhPycPg0xTXlrB7qqL
         hm+bUrhTF0RXp+9wvASDGQooY5RsZXKQWTO6pEZ4e2fk46op0N3SDf2t1QgaE4654WAC
         J+hg==
X-Gm-Message-State: AOAM533ggxNJlm3KdC3CXl3+dPnt2D1nKXT26WNyWPSUNj36Gzg0k1wh
	Rkm8BRng2rbxUplSfrWLpWAgMxDf7U2//4seouE=
X-Google-Smtp-Source: ABdhPJxgmBmcjr8mPnaIBnOo2YpLDuhIZSDImInQAUTNMhchIDJ6ffyvjyPX49hLOAuFdsKprryqYk860c0BiWnoQT8=
X-Received: by 2002:a25:e646:: with SMTP id d67mr10815891ybh.405.1609996058904;
 Wed, 06 Jan 2021 21:07:38 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWT_1VcVaNHQChDvuDURL3j5hu_g6muF8_tssG4PDhrdkg@mail.gmail.com>
 <25055.1609935518791150987@lists.yoctoproject.org>
In-Reply-To: <25055.1609935518791150987@lists.yoctoproject.org>
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 7 Jan 2021 16:07:02 +1100
Message-ID: <CAA=hcWRgT3j9cwhHu4r-+x3_G8E_Yv3qPVKaFOn67-GOSRJh8Q@mail.gmail.com>
Subject: Re: [yocto] How to select Linux kernel version?
To: kapllaj.elvis@gmail.com
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Thanks kapllaj,

> It also may be overridden by some conf file. For example, if you are using a
> i.MX cpus, you may have some conf file on meta-freescale that override this
> variable with something like: PREFERRED_PROVIDER_virtual/kernel_imx = "some
> kernel"

It has linux-imx and ${IMX_DEFAULT_KERNEL}, but I could not find what
is defined for ${IMX_DEFAULT_KERNEL}

I defined IMX_DEFAULT_KERNEL = "5.10.%" in local.conf, still download 4.19,

> I had a situation like this on a imx6 xpu, and had to specify the "_imx"
> override in order to make it work.
>
> "bitbake - e virtual/kernel | grep PREFERRED_PROVIDER_virtual/kernel" is
> your friend.
> It will show you the current variable selected, and also the different
> overrides available.

Yes, I've done many times, there is no decisive definition for it, a
little bit weird.

Did not know it is that hard to just define a kernel version in Yocto ??


Thank you.

Kind regards,

- j
