Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web11.4856.1601029595564435781
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 03:26:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=toj36Azk;
 spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id e11so1571152wme.0
        for <yocto@lists.yoctoproject.org>; Fri, 25 Sep 2020 03:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=J2b8x2wJ8ilnsb4ByMP8Dcs8qhNrnf4g7mMNJKithE8=;
        b=toj36AzkZ7JQ8eVjJCjNMPlM9I/2ko8MXWuUxSViXOQFZjLELx0KNxvUBIh1YhCdRW
         YWeLGjvJ+XV/Dbr0fMR7fmqd8xxJY+AcOaOAqwt1E5VBJl2jtnuRoUJV7+V71GAprSLh
         08Ke+TAJPMyPotFqzYtuQ547aoF0v2WVRjZfEjE9hjyAyqQ9/QNzQp9XwLlcxmW2Isf2
         gegWs760P+JuWSxBT/dw2BW1pTyfPAkCP4Jx4Af8vE3aspgXSGyFVx0eA8YE/CUYTiyH
         ezGLFrKMMYsvAqJjAM7MZja6smGYBwIiuTMhxFx+QBjZtlxH8/jZZY+3OUsJyJmIXLlR
         K6Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=J2b8x2wJ8ilnsb4ByMP8Dcs8qhNrnf4g7mMNJKithE8=;
        b=ovCsPWHnukqWfC+zxRyLtD1wzzCiD5emvjXUwZfyDpTyNEwFJdnirzF/zrUVOGA5zu
         b1KRcpD9XNTUtggas6vz3B7wxVberMMuq7upgIHr3Hu8G5tLNpNTgohsRjjb3RvXqyog
         vm3PHn3naAHB3fG5c6Fb7R/2/erXirXPMHVigJ6EH6psFQXQOuc08iwO1rO/FC714+0o
         jC4k2y/qaPRGprK954T3f8Ff1Lcih3AhNW2BH+QNCRBggYOne6+eto0iYOqsnWMLnil+
         yCYOhLkxoN7hvzwZ4JC41ssR76l6Uuw/zy2e++J6zgCysFjjWY82X+TgAeRXcSpN4CCp
         hd4A==
X-Gm-Message-State: AOAM532Mt6UXtU1XlKcLDQ5CGaZLmSMIyY+e6r2Q/wbMTdmyeJ/pPfqt
	ZKUWHle9GAj+bWB9g74eIidA/qYY/sjt/V8Y05s=
X-Google-Smtp-Source: ABdhPJw+/l4MTWCHigT2FOrM5e/WpxGXPVhe8pqxsupuomZjqkuq2W/9i95RPFYbhzWaxi/gH65oE0J5HnN55mJm7vI=
X-Received: by 2002:a1c:35c5:: with SMTP id c188mr2431457wma.11.1601029593809;
 Fri, 25 Sep 2020 03:26:33 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1YKCHHsGGhq=7+y2fZ25G2KU+KKOha9pc+0=3Ucg=C0zQ@mail.gmail.com>
 <CAGAf8LzKyimthOQXbm6ryP6+tBMMc0abYe9z_a-9m3CzRSn62Q@mail.gmail.com> <CAMjhiJhg2XYo+XG8WrnzehcGyUR_X=+OTVeoiwpPWeiABFXt8Q@mail.gmail.com>
In-Reply-To: <CAMjhiJhg2XYo+XG8WrnzehcGyUR_X=+OTVeoiwpPWeiABFXt8Q@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 25 Sep 2020 12:26:22 +0200
Message-ID: <CAGAf8LwmqDatvGwCfsTOBWE0eajOAKaNUVqc+-_psV6S5EETuw@mail.gmail.com>
Subject: Re: [yocto] SIGINT Issues with Zeus Migration
To: Leon Woestenberg <leon@sidebranch.com>
Cc: Aashik Aswin <thisisaash9698@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hello Leon,

> Aashik, how are you sending the signal? Using CTRL-C or
> using the "kill" command?

This is a good suggestion for the test. To open another terminal and
issue: kill -SIGINT <ping PID>.

I should add that this MUST work: kill -SIGKILL <ping PID>, since
SIGKILL handler is un-preemptable.

If it does not, something is very wrong... I suggest, Aashik, you
write YOCTO bugzilla for Zeus.

> Zoran, are you suggesting that the program will change the signal
> handler to default even after it has exited, and for the subsequent
> ping command?

Yes, I do. Then, the ping command should be issued again, and my best
guess is, it should terminate the ping process.

Leon, you should try to write another C f-n and to install other
SIGINT handler (replacing SIG_DFL), then test it with my original C:

void  myhandler(int signum) {
        if (SIGINT == signum)
                printf("\nHey, I got SIGINT: %d\n\n",signum);
}

Zoran
_______

On Fri, Sep 25, 2020 at 10:54 AM Leon Woestenberg <leon@sidebranch.com> wrote:
>
> Hi Aashik, Zoran,
>
>
> On Fri, Sep 25, 2020 at 10:02 AM Zoran <zoran.stojsavljevic@gmail.com> wrote:
> >
> > > ...that I am not able to send SIGINT to commands such as Ping, tail etc.\
>
> Aashik, how are you sending the signal? Using CTRL-C or using the
> "kill" command?
>
> >
> > Please, do the following: issue in zeus xterm the command: man signal
> > and read it.
> >
> That reads to use sigaction() instead of signal() I would assume.
>
> > Then execute the following code (ad-hoc from the top of my head):
> > <...>
> > This program serves the double purpose:
> > [1] Gives you the address of the old SIGINT handler which was executed
> > prior execution of this code;
> > [2] After execution, repeat the routine (ping) and see if <ctrl c>
> > terminates the ping process.
> >
>
> Zoran, are you suggesting that program will change the signal handler
> to default even after it has exited, and for the subsequent ping
> command?
>
> Regards,
>
> Leon.
