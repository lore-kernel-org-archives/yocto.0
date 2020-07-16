Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.19639.1594918068360751244
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Jul 2020 09:47:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lru5g+EW;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id h17so3011645qvr.0
        for <yocto@lists.yoctoproject.org>; Thu, 16 Jul 2020 09:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=upXsfA2uM/uBqlupFHCRo2hcAvyGtC4Q9OhyCV/REqE=;
        b=Lru5g+EW9Fb01tTacoti6I0B6g2tvSUUd4+/M6YEux/G+ErwP4BUmJsINarPVvlT2e
         qHViejtXLaWWSEdkwY8gYvXb8bMPKBXA0itkrRYKhWrsMuxE/RSp39AgQ0RE6hv1SyKi
         0mjl/Sww+dy3h24O96ijKn+bUdv5+R75c7DJoM78poUiw7GHpSEVlAa6kGmQ545H4fJe
         XleFge7BlW3CiWdj1k0A+56tLoN0k6Yg5mifGm5Uw6BnbteExl6h5MPS8zi/G6IVQ18t
         0lE39pvUGiSBFv2phegE1t9qMdXgyExLUqE9vccHUqk7viH1DBS0qfQ65rGciXI+ki8z
         Fc1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=upXsfA2uM/uBqlupFHCRo2hcAvyGtC4Q9OhyCV/REqE=;
        b=L6nSNDuYuSqhnUaP0U6UwrktV/LfogVPeCJMj99KyY7kT+0gn738Pc3lQPAGt9dgkA
         PJ8EcfNTibZYbHsBaUZ4WgsBUg7lXUpQE1HlSKKFnqXwKYqL0pIs4jZtU1JWCIkU65XL
         0kM2qBP1WiK3Ndl9DsXAETl4qa/q2mZobWWRZoVrDb9ERmf7pldGODOQkcbs0nUWY+zx
         W98AanJgejI6VMogpiEDn6Ax8oPSWWyKqgmis7l4NpwjY/P/Tl6nYSo6krb9Xuv5dBKV
         f6+HDuqNVD8fbIz+N5mTffPVncPwvohuJHPms+OF9O0kVj7mF/T+ilgBrSX7tRKpXxS+
         QQSg==
X-Gm-Message-State: AOAM533hLO1Po8YEN1jeJffTVJIPlW1GC6wWGPdFEVmd2HXAkW+A1Wpz
	ZI5RXuV5eD/GVzSn9c9SKa93dtUMcpsed94Nn/A=
X-Google-Smtp-Source: ABdhPJzIOQ2W01Rv0QeRao3Hp/wusNU8ZQrTuDDozKLxqVujAlPAg/n2qtV4DR2LQXvnfDnBwzkzUJluCs4rBiSudnY=
X-Received: by 2002:a0c:aa15:: with SMTP id d21mr4873287qvb.155.1594918067239;
 Thu, 16 Jul 2020 09:47:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LwLB2zD8CHRTA3FxptWa94BDrN3AAO2XbGUQ+EOotZK1Q@mail.gmail.com>
 <13583.1594914798470723766@lists.yoctoproject.org>
In-Reply-To: <13583.1594914798470723766@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 16 Jul 2020 18:47:35 +0200
Message-ID: <CAGAf8LxJri5bfSpKg5BESA2oCQ5kZH_cbrZ=+E=sT0sNw+-3bQ@mail.gmail.com>
Subject: Re: [yocto] openssh_8.0p1 on zeus - sshd.service not starting #yocto
To: srijan.nandi@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

From the source config file:
> ExecStart=@SBINDIR@/sshd -D $OPTIONS

From your reply:
> But if I run the /usr/sbin/sshd -f /etc/ssh/sshd_config, it starts fine.

If you run the command: /usr/sbin/sshd -D -f /etc/ssh/sshd_config, I
bet it'll fail again!

So, I have no idea what -D option does mean (lazy to investigate),
seems that this was the main cause of the problem:
https://unix.stackexchange.com/questions/390224/openssh-server-start-failed-with-result-timeout

Please, read this link carefully.

Best Regards,
Zoran
_______

On Thu, Jul 16, 2020 at 5:53 PM <srijan.nandi@gmail.com> wrote:
>
> Hello Zoran,
>
> I started the service and then ran journalctl -u sshd.service -r -n 10
>
> This is what I see:
>
> sshd.service Failed with result 'timeout'
> sshd.service: start operation timed out. Terminating.
>
> But if I run the /usr/sbin/sshd -f /etc/ssh/sshd_config, it starts fine.
>
> Thanks,
> -=Srijan Nandi 
