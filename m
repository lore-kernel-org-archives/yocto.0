Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
 by mx.groups.io with SMTP id smtpd.web08.5305.1615535669757273425
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 23:54:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qT8IpOeC;
 spf=pass (domain: gmail.com, ip: 209.85.166.49, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-io1-f49.google.com with SMTP id y20so6446187iot.4
        for <yocto@lists.yoctoproject.org>; Thu, 11 Mar 2021 23:54:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VVdKOWE7IO7kS91frOkq8Hjl535GB2O6If69gUm6U1Y=;
        b=qT8IpOeC9lvi98d/yvfd34S58q4n+q9o5AB/O8nGFZJ/HxoOFAMhd4B6uO3iBNhoLf
         PHySSSzP97dv5rTOPsi5lr+fXsDBEiDyVvblp6qlB5n+EV/mZ9yZdo9BC9aMs+LiELpw
         okhZmoCMe2RgMdERCrLEZ+KSmLjzDRpheKYMziJuAGpBN5UNZuzN0K8y5DQNiPOwqamK
         h+jPCw1t/rWmj2khgkvoW7aVUmPlGb25UtK0Uzbu26KvoZ1olKt80xJVYdNKiB3TETEC
         ENiE2WXJ6ML9a7Zz4iCXF7uIA7OGxK4ScZ6DYsHH9+fLg/jShMR8Hseam4WX+cvfWfoX
         7Nvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VVdKOWE7IO7kS91frOkq8Hjl535GB2O6If69gUm6U1Y=;
        b=B5uhJZR5VaAqbBR3j+qbunLCjfNfbaoGCtMENitOj9vYBHGXbwtXhE+aKH1tXfw0bd
         mgs2Ci+D8VpqAehbBsu17pIjO4KxnFhmN0tOFCm7qZ4XhNN2gAWvF+nDgrpKsXFjCgkW
         XPyqTgEWgKy+SqhdbCt1zq4dXKchBkU8IZsNK0yWFsD4DIfaLF1jvMMvyLENeEOZXsXI
         sFIToejJczoQbACbGfL1Aa1zoiJb2dbaXSSrebgwI4OCbstdv/lAeDcL1NgwKPJ9Ty11
         7DYo48+5Pi5fQqlrypvPf3sTutenws3Y00JXOFB3mu9i4EYIHJpm3bXtOevYgFxKRzEz
         8/9g==
X-Gm-Message-State: AOAM531RMzYc7Vhd+r+UkIm//IgDp4XEwyrVKo04HoTQxPnSHSzt8E95
	frpYF6Ymx5D6YLzwbsebtJg41GEhFFDp7XdwEWk=
X-Google-Smtp-Source: ABdhPJw+8+GdjL9WrxChg4zse9KU+AX/d9qHSi4UxBMppzqnHGVIR0dMEXaKrybZeyKdrkinj9gqO75kwDX0NR5pWko=
X-Received: by 2002:a05:6638:d4e:: with SMTP id d14mr7370045jak.103.1615535668850;
 Thu, 11 Mar 2021 23:54:28 -0800 (PST)
MIME-Version: 1.0
References: <omIF.1615528643524234946.wLUf@lists.yoctoproject.org>
In-Reply-To: <omIF.1615528643524234946.wLUf@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 12 Mar 2021 08:54:17 +0100
Message-ID: <CAGAf8LzznXnOz4_coyAvCFx3cYX=L9cq0T9O1UfbctrV27f-YQ@mail.gmail.com>
Subject: Re: [yocto] ttyS0 is not getting generated in my Raspberry-CM3 module.
To: prashantsingh@dialtronics.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> ...I'm not getting /dev/ttyS0 even after giving
> enable_uart=1 in config.txt file...

And what U R getting exactly? ls -al /dev | grep ttyS
And, also, could you do it for: ls -al /dev | grep ttyUSB (with
serial/USB cable plugged-in)?

Zee
_______

On Fri, Mar 12, 2021 at 6:57 AM <prashantsingh@dialtronics.com> wrote:
>
> Dear Team,
>
> I'm building linux-raspberry, in this I'm not getting getting /dev/ttyS0 even after giving enable_uart=1 in config.txt file.
> I'm building two different kernels i.e. 4.14 and 5.4 using poky-dunell and poky-sumo for each different kernel. In both of them I'm not getting ttyS0 terminal in /dev directory.
>
> I need to use this terminal for console purpose.
>
> Please assist me with this issue.
>
> Thanks and Regards.
> 
>
