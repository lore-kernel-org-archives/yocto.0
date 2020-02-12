Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
 by mx.groups.io with SMTP id smtpd.web09.4225.1581513199561444875
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 05:13:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q029F7BP;
 spf=pass (domain: gmail.com, ip: 209.85.167.172, mailfrom: onea.alex@gmail.com)
Received: by mail-oi1-f172.google.com with SMTP id q84so1949802oic.4
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 05:13:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=xfMm4ymSATWzhls/mhHj7BuCMwG/ziyxIUZheOkYFjI=;
        b=Q029F7BPag3fyIE/kGSYejmuvZaPohjkoNLq+GRf/uv1LBbOfccbW3DPBInVkjqWnu
         rceaILut6zv+FGmomSirxbzEhvEbIJ0g9sPk4b0kk5yhYxlGjIiVrOuiTQGhCBYJu86c
         K/SSIR41WDHNOyYtGeUM/Rc/YRRuq+Qt93vYryPByYNmcZqJbzj0DuCWsKbkau2MQlMh
         r2jqC++Zy5qDrq3Tpg15rmQHqJdBzCYyRCqK0NjalNkEAG/OrlypidNcR9L11G8ASq9Q
         dwfihh8U8ALk5YPYsfZyFDnlh36CbzLPnNnMIOqjoqabG26xWt4CPH6WHq9Er3KBxrbR
         /Hrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=xfMm4ymSATWzhls/mhHj7BuCMwG/ziyxIUZheOkYFjI=;
        b=ZnI48VjwGMKUko2Mj8LkZmdWKkvBlkwCvjROlAUuzJQ2+zHL8Ep0EimqcFyskA4pXT
         WxvMbBPvpTi8pYCNNgzOGukK5woH13ChxfOk2q3MmD9OY9Pb9Z1KQe21ytVPYJtnIpAy
         cZ6rykOw9yxpTnyDsf+pABDgUen9r7wO2gDE+YeF3kzbmyhYGKQqjGjZxigAD+LYZ124
         CqoHbapRcjqoSkFuxj5qXEYhUwzIlX6FWdDRwCHbkFG7e06RSDTFCNGsbOU2qMGWAW6k
         tx9jpIahKI1l1mg/X4lDC8rmb4GgrRJHdPYONG+Xv0KBBd+P7ySQ9jPRgYhLt7Hjqxy0
         KWIQ==
X-Gm-Message-State: APjAAAWeehb7tH342VmTQKucbOiznPYTVVmMDZQA3lX2zkJVS+PfipDP
	804RmRt3MIZSxNzWA8WooBLm9K7ZCvCv35BR0S1k6O2x
X-Google-Smtp-Source: APXvYqy109/ANmcV2M3AAg+yIgBk76e4fvWxMolJ8LSniWzQjJVCkpOMie1d7OtmNEIng7npedZays0vtI/5DI9bXt4=
X-Received: by 2002:aca:e084:: with SMTP id x126mr5949803oig.97.1581513195256;
 Wed, 12 Feb 2020 05:13:15 -0800 (PST)
MIME-Version: 1.0
From: "Alexandru N. Onea" <onea.alex@gmail.com>
Date: Wed, 12 Feb 2020 15:10:06 +0200
Message-ID: <CAJgSc4x2c_Kn_e3icH-wgyJvjTVtsnQwTpqh938QkgxabbTyrA@mail.gmail.com>
Subject: [yocto] [kernel] Why is do_kernel_metadata before do_patch?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000036007c059e60bc40"

--00000000000036007c059e60bc40
Content-Type: text/plain; charset="UTF-8"

Hello community,

I have noticed that do_kernel_metadata is always executed before do_patch.
What is the reason for this ordering?

In my setup, I have a patch that changes some options in the in-tree
defconfig that I want to use (set using KBUILD_DEFCONFIG) and, due to the
ordering mentioned above, the changes are not taken into account. Is there
another way to apply changes to an in-tree defconfig before the effect of
do_kernel_metadata takes place?

Best regards,
Alexandru Onea

--00000000000036007c059e60bc40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello community,<div><br></div><div>I have noticed=C2=A0th=
at do_kernel_metadata is always executed before do_patch. What is the reaso=
n for this ordering?</div><div><br></div><div>In my setup, I have a patch t=
hat changes some options in the in-tree defconfig that I want to use (set u=
sing KBUILD_DEFCONFIG) and, due to the ordering mentioned above, the change=
s are not taken into account. Is there another way to apply changes to an i=
n-tree defconfig before the effect of do_kernel_metadata takes place?</div>=
<div><br></div><div>Best regards,<br clear=3D"all"><div><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
>Alexandru Onea</div></div></div></div></div>

--00000000000036007c059e60bc40--
