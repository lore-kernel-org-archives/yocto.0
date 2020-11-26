Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
 by mx.groups.io with SMTP id smtpd.web10.4468.1606394917089172964
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Nov 2020 04:48:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=KofXdmCD;
 spf=pass (domain: konsulko.com, ip: 209.85.167.169, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f169.google.com with SMTP id t143so2131280oif.10
        for <yocto@lists.yoctoproject.org>; Thu, 26 Nov 2020 04:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=U7N5GY4pfB6S2Fq48ob7yHTQNJozWjz18SQ59YRLaQg=;
        b=KofXdmCDHjOjhtdHjrL+YeZfXbpAyqSQMAn+UjJYbEHv2X6x9K+Env0Wihi9IZUOmf
         GKCj3LXDJCHHt7GNzVEqQ53dAiuPYMeYS7d1itzUj34gEGGrMr7hZtIdK4Uel+Qs8s+j
         C4nueGAW4nJGB313Zsu/Xj8UMBsA1XZADeBQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=U7N5GY4pfB6S2Fq48ob7yHTQNJozWjz18SQ59YRLaQg=;
        b=XwidxG2t59WYUbl6W8SnEfDKpxqwBmYakcryfhcKQbolGn/wQ2+XqSGeIalpMVIPka
         QRL5Auq+CAlWNsgqZ0Alr8ZwGci1L4zbpmO81f3ueZ7l97DwtNWGqGBme8nxUcDPZ239
         HYgBmQnLN+2pOn3PSF0dpR74cCIjJrMfaPiA/IRg3aNChtQVnxQpiiQCAvHg5TFs7z+3
         Rxeue4IOmD7bfxxP5dvQ5H/rymq7D6FZ0V/RO8NmAzPbq690t8rmL0IcxmXOZTQWMC0j
         fpeSGbhP8MB26/t4p6FFm61zCXrpOTEGCLYbjBacvBQR6eXg9tF8Q81p/eiMugDYDOh5
         EOlQ==
X-Gm-Message-State: AOAM532yQCj8fywHmfquNOyIteGrbkVlZB3E3gR/wEikR3N7sjh9TPHI
	5RzdB38opl5NfpOT+terQnc2uh15OtZkAOTQ2fVYLA==
X-Google-Smtp-Source: ABdhPJzywzuTfgx4KUbWyF+6j+JX8QFvQmHkZWyCdKN/lhzvq4ASGRZ+1/IXOL3/gQKRS0F4BSQO0lE7H5jSEm6kufQ=
X-Received: by 2002:aca:f3d6:: with SMTP id r205mr1901595oih.152.1606394916388;
 Thu, 26 Nov 2020 04:48:36 -0800 (PST)
MIME-Version: 1.0
References: <18AC.1606393594224214075.801I@lists.yoctoproject.org>
In-Reply-To: <18AC.1606393594224214075.801I@lists.yoctoproject.org>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Thu, 26 Nov 2020 12:48:25 +0000
Message-ID: <CAM9ZRVvR42LLAi-LES5VT=XYCQi3ZiuyzSwRkWw98VwHXjw8uA@mail.gmail.com>
Subject: Re: [yocto] Error during do_install for linux-libc-headers_5.8 recipe during 'bitbake core-image-minimal'
To: aloofbynature@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 26 Nov 2020 at 12:26, <aloofbynature@gmail.com> wrote:
>
> Hello,
>
> I am just starting using Yocto Project and I've been following along with=
 the getting started section of the mega manual. I am working on Ubuntu 20.=
04 LTS through WSL2 on Windows 10 (not sure if it matters but I'm running O=
S build 20231) trying to create an image using poky-yocto-3.2.
>
> I've followed all setup steps and made sure the host has all necessary pa=
ckages before cloning poky (I kept running into an error when trying to clo=
ne the repo because the connection was refused so I just extracted the poky=
-yocto-3.2 tarball). When I try to run 'bitbake core-image-minimal' I get a=
n error saying the following task failed with exit code 134:
> 'poky-yocto-3.2/meta/recipes-kernel/linux-libc-headers/linux-libc-headers=
_5.8.bb:do_install'
> All the other recipes are installed with no problems.
>
> The first time I tried this I changed local.conf in my build dir to build=
 for qemuarm and next try I left everything as the default configuration bu=
t still got the same result. Any help fixing this issue is appreciated, tha=
nks!

Could you share the command that you executed along with the full
output that was printed? There's not really enough information here to
diagnose the issue.

Thanks,

--=20
Paul Barker
Konsulko Group
