Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web10.3482.1601024082172461230
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 01:54:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=sOZeCrkf;
 spf=softfail (domain: sidebranch.com, ip: 209.85.222.174, mailfrom: leon@sidebranch.com)
Received: by mail-qk1-f174.google.com with SMTP id n133so2046060qkn.11
        for <yocto@lists.yoctoproject.org>; Fri, 25 Sep 2020 01:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zYSYvsAbe+MciqPZP1sS2NDD/Uie8vcCzFF9h7fAeuo=;
        b=sOZeCrkf29PHGspe3BkT2/P+1SP9+1QYG4n0SL/4RlLNZa+OeaDxUmoRDdqADEt06I
         6jpbC41GsM/P0tN/3119ASFpujOubRHSkDR2n0BxtP8if53ap1G4gsGeTVj4qNR1faYo
         kL4dmueVwa6Bx8GiaiR2ldJl6ptyvgBTIzLT/F8Me4I48bGWwbJYnheUSRZeNXeFvurb
         /u32oP9viXk2eZhS8cK4vjoOkNelBMvKznWh/c2oQgrN4TCppptVX9hId6EG58Qd7OXN
         wnXxCA7SW0eKiruV4jvCYQzS5kmHAeZ8SQJq3xFCkeZ5SOBZI5PotR2Gv8YSBkTI8R1S
         Djrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zYSYvsAbe+MciqPZP1sS2NDD/Uie8vcCzFF9h7fAeuo=;
        b=KmiMXzJQwdqBOF+b/oH1nC7UWTs0hspFdwJrGSMIuP7XK3fzwzCtt7+gLMhHBi1YYP
         qLM+MMU7pmJhMJw9VFSlkIazoDh9wzTmP32j80yPfpkVeHAG7mfhQSS1IKh+WtiJ20VL
         fttXBzDqhIHY5sCvugFTNIS4EOnxeSieM1Hf9Jbq2xdzmsYfFFsHmFGM9etntE+6Bzoq
         kbkWrNi//8aZ7pgUQPi0HwCxqb+nELmCuHq3PcCmiKZj9tJFZMLwfLBgqXcJdWlVVtks
         FVihycF97G43hvxnhybD47JNniX5GUw8Ev+IKSjldmJyHacdx+22RuQIdDvp9QPAjZ7A
         43nA==
X-Gm-Message-State: AOAM532c6Sifn6hojLgpKEnymOVPlhw25yN5R308oePWct4gPQLTg5Z8
	c2ebwPARDfBBLRYn5g2CxBL/jc98+qsNwS+dRpE1yA==
X-Google-Smtp-Source: ABdhPJzr+I+jGHaETtBbFRm36p1j8QVdBJpcMKVAsOJJrdvR3YvDk35dqrqpbFdS8gQWgkAGX0A0DHi9vuUsIKvavxg=
X-Received: by 2002:a05:620a:15c7:: with SMTP id o7mr3094581qkm.486.1601024081197;
 Fri, 25 Sep 2020 01:54:41 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1YKCHHsGGhq=7+y2fZ25G2KU+KKOha9pc+0=3Ucg=C0zQ@mail.gmail.com>
 <CAGAf8LzKyimthOQXbm6ryP6+tBMMc0abYe9z_a-9m3CzRSn62Q@mail.gmail.com>
In-Reply-To: <CAGAf8LzKyimthOQXbm6ryP6+tBMMc0abYe9z_a-9m3CzRSn62Q@mail.gmail.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Fri, 25 Sep 2020 10:54:30 +0200
Message-ID: <CAMjhiJhg2XYo+XG8WrnzehcGyUR_X=+OTVeoiwpPWeiABFXt8Q@mail.gmail.com>
Subject: Re: [yocto] SIGINT Issues with Zeus Migration
To: Zoran <zoran.stojsavljevic@gmail.com>
Cc: Aashik Aswin <thisisaash9698@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi Aashik, Zoran,


On Fri, Sep 25, 2020 at 10:02 AM Zoran <zoran.stojsavljevic@gmail.com> wrote:
>
> > ...that I am not able to send SIGINT to commands such as Ping, tail etc.\

Aashik, how are you sending the signal? Using CTRL-C or using the
"kill" command?

>
> Please, do the following: issue in zeus xterm the command: man signal
> and read it.
>
That reads to use sigaction() instead of signal() I would assume.

> Then execute the following code (ad-hoc from the top of my head):
> <...>
> This program serves the double purpose:
> [1] Gives you the address of the old SIGINT handler which was executed
> prior execution of this code;
> [2] After execution, repeat the routine (ping) and see if <ctrl c>
> terminates the ping process.
>

Zoran, are you suggesting that program will change the signal handler
to default even after it has exited, and for the subsequent ping
command?

Regards,

Leon.
