Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.2865.1601020971662239428
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 01:02:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=V4n3ACg8;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id x14so2475155wrl.12
        for <yocto@lists.yoctoproject.org>; Fri, 25 Sep 2020 01:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Dv75S6jsKRsidLctrlXWn24SeCOAU6g7tCcOVT3q3Og=;
        b=V4n3ACg8BAAjNLjQyIyx2/+86oG7PhDs8+QR2dp7Mfa9hOxKmxgRn4pNFDlsr2PSCt
         uZBZ+b6pvztOZkAB15gzvgvqWIRIib6InuZjvD919wfOtGiMn2FQHTQ4FdcehwduZB9f
         QHlmTfVFViVR7eooDUEtt0yhq28PkmBCju/P48i2sR5simTKEA1V4teRPEWIOYZ5B+df
         iJVV5snRHg9AhBM6EMq+DaNHclUHWJSRoXNe2/QbQgQTbMaYY3aZ5Pz01RHcU8x7dMbY
         LC89xEpFezesQnlZuMgy0a+3yMh06HZb2YQ68sv7L0UtllfK9RLiWPOHe0nptnMJwvEH
         mdSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Dv75S6jsKRsidLctrlXWn24SeCOAU6g7tCcOVT3q3Og=;
        b=Lz5hXs5NgHPvkMTl8tbbMbp7wfIvSJWoh+2GdwYnZO1HiTl/ar61U7L4Iy2/BEtO7k
         FgEtlfRwoPSDFIGZa7U0sdwI9cx2dFGEjLgN0SStjkXUySIIQfll9tpTRHl+2Rwusm7G
         Vk8M8RqZMFF3tpJO9os3HrEG2vvrqv3YyQNcVlT1MAnm7n33OjvKhSe6+r4EgL8XfVS4
         ZabO++4Mafk0gAvvGJ3UBaaU3PG59+wEwzGg3REq3DfSbIojzy5bT73InA2LLBjXAr3W
         NyxU3l/K0kB3oMaQnIJJUEOta9v6ph59SXUZjTqxgn6VBxRbPTa9VeSeJS7tjkLY/xZa
         Ee1A==
X-Gm-Message-State: AOAM530OY0TIW9Ayb4Ygg68/lbpJnC72acr29PvJiFVTqMacbd0wT5UJ
	Z6uO2/wXgjX0p6CDn0PHsuDncKdBWcN7xURlyOQ=
X-Google-Smtp-Source: ABdhPJwPZiPgnYHur0hZNNEaf1inE37R9ukhaxFGsC8mSKDGHHsNVo0PfMnvSXl6puaN/Pe+P7UMgnoWTkvWIi19YUw=
X-Received: by 2002:a5d:4a4a:: with SMTP id v10mr3072191wrs.72.1601020969682;
 Fri, 25 Sep 2020 01:02:49 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1YKCHHsGGhq=7+y2fZ25G2KU+KKOha9pc+0=3Ucg=C0zQ@mail.gmail.com>
In-Reply-To: <CANVQz1YKCHHsGGhq=7+y2fZ25G2KU+KKOha9pc+0=3Ucg=C0zQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 25 Sep 2020 10:02:37 +0200
Message-ID: <CAGAf8LzKyimthOQXbm6ryP6+tBMMc0abYe9z_a-9m3CzRSn62Q@mail.gmail.com>
Subject: Re: [yocto] SIGINT Issues with Zeus Migration
To: Aashik Aswin <thisisaash9698@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> ...that I am not able to send SIGINT to commands such as Ping, tail etc.

Please, do the following: issue in zeus xterm the command: man signal
and read it.

Then execute the following code (ad-hoc from the top of my head):

#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

typedef void (*sighandler_t)(int);
sighandler_t signal_handler;
sighandler_t signal(int signum, sighandler_t handler);

int main() {
    signal_handler =3D signal(SIGINT, SIG_DFL);
    printf ("Old signal handler is 0x%x\n", signal_handler);
}

Where the following is also known:
        #define SIG_ERR  ((__sighandler_t) -1)  /* Error return.  */
        #define SIG_DFL  ((__sighandler_t)  0)  /* Default action. */
        #define SIG_IGN  ((__sighandler_t)  1)  /* Ignore signal. */

This program serves the double purpose:
[1] Gives you the address of the old SIGINT handler which was executed
prior execution of this code;
[2] After execution, repeat the routine (ping) and see if <ctrl c>
terminates the ping process.

All other comments are obvious (testing the Zeus SIGINT signal, yada
yada yada... ;-)

Zoran
_______

On Fri, Sep 25, 2020 at 6:48 AM Aashik Aswin <thisisaash9698@gmail.com> wr=
ote:
>
> Hello Developers,
>
> I recently migrated all my platform Recipes from Thud (Linux 4.19) to Ze=
us (5.4). I understand there might be compatibility issues and was able to =
fix most of them.
>
> However one issue I am facing is that in the newly migrated Zeus Image i=
s that I am not able to send SIGINT to commands such as Ping, tail etc. I a=
m only able to run them in non-interactive mode. I have to reboot the box i=
f I executed those above commands in interactive mode.
>
> Can anyone suggest which recipe/config can be a good starting point?
>
> Please let me know your suggestions.
>
> Thanks,
> Aashik
>
>=20
>
