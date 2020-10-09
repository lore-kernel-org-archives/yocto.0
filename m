Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.16244.1602256579873316219
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 08:16:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20150623.gappssmtp.com header.s=20150623 header.b=xOxmihNZ;
 spf=pass (domain: smile.fr, ip: 209.85.218.43, mailfrom: arthur.courtel@smile.fr)
Received: by mail-ej1-f43.google.com with SMTP id lw21so13605553ejb.6
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 08:16:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=KU+ktpKSKTVYFFOfSEZ+NH3L7fPLa4oIaL2tA62zxcA=;
        b=xOxmihNZH/5UOrKPheQhoAQjelYaJAB/GdxZj2ZwdgFJ5hbGGvsfcmvHpZtIFAf5It
         0bxm0/EBdYebuhONbXsS+3HokoYM55Hn6Hl2sSAWCTLEdVSAt/rcvygajglAe9QnVmtK
         zZUdFX/gi+f9X4W6baONKOa/LX49Sl6Mk+8694ohfOQQxJIhQjcUsI+1LiaChGzZFqO9
         ezxC4v9Wlg8tE3bL+5FDpizG4VSF4eG2oyXUYY66V/vRneHsREJffD9b45brRm4hcHzz
         eaSKSOtNB+cfSqLdHMJVpeALUG35b3yElwzsPpf2ogXmH7VBNSVsOGum6Z04HRec0jXm
         WYKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=KU+ktpKSKTVYFFOfSEZ+NH3L7fPLa4oIaL2tA62zxcA=;
        b=O6lY1AyQ1eUYhcltv4xvEwqk9QC26nE/nZi9sjEUAIdnDR99DohIq1J5LXohcgJgs3
         MBWUpfxYFsfjGqda6+xbggGr+yN/uGtjFE1b4S+UfPvelsNJNSNHzSvAJvX/HdHJJVKN
         qQQvWBOu49x9pEserVFtgykVxMOjk2PnpLNOfpSjkO6NHNr89dV2mmpHs7lqvKBokRDS
         fYhgWVygIKfIUKWaR54FXWX+rwOGyPrtB28vUXhEqj7a3cCxQgXzLqZnI33Vt3t+DiTD
         FKTULC3juFSXVwKeKz2VzUasL8XwtH5sRY+pYoLR3M4sjLjtGmXfBhJopO3T1H0wC9mY
         ZHCg==
X-Gm-Message-State: AOAM532Aei9DYejhKPjGiF5pesKglEu78AoxfYjh9yCa9phoRbGyhmHg
	MIJ8atkjz3JvxphhwKqy6bfd8+O+JB0gq51VUDoSRBToXDJvHw==
X-Google-Smtp-Source: ABdhPJwJpepl+FGgRy1kcoBiqHv5wfdtzHT4SZbVdiHggu6f980c/XRTej+C5b9iwokQjGixocaG6STiea3KrlLRkZM=
X-Received: by 2002:a17:906:f252:: with SMTP id gy18mr13588308ejb.7.1602256577839;
 Fri, 09 Oct 2020 08:16:17 -0700 (PDT)
MIME-Version: 1.0
From: "Arthur COURTEL" <arthur.courtel@smile.fr>
Date: Fri, 9 Oct 2020 17:16:08 +0200
Message-ID: <CAL=Sv2Jmks03QQBBoSmr7Ed2y=HEyi4d5Q6E=1Oz_yQp0j2-EA@mail.gmail.com>
Subject: Cleanup populate_sdk artefacts
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000029626805b13e6ee5"

--00000000000029626805b13e6ee5
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm working with a yocto Dunfell (3.1) on my embedded system.
I successfully built the SDK install script for my image recipe with: bitbake
my-image -c populate_sdk
However, the other day when I stopped the SDK generation before completing
(CTRL-C) and resumed it a couple of minutes after, bitbake was not able to
finish generating the SDK, saying:

*Exception: FileNotFoundError: [Errno 2] No such file or directory:
'/home/yoctouser/build/tmp/work/colibri_imx7_emmc-tdx-linux-gnueabi/my-image/1.0-r1/sdk/image/opt/machine-fb/5.0.0-devel-20200924080856+build.0/sysroots/x86_64-tdxsdk-linux/usr/lib/locale'*

I was able to determine that bitbake uses the variable DISTRO_VERSION for
building some paths during the generation.
My DISTRO_VERSION changes for each generation because it is built on
starting time generation.
I had to remove all my work folder in order for bitbake to restart the SDK
generation from scratch... Which takes some time...

Do you know if there is a way to cleanup the SDK generation properly in
case of a halt in the middle of the generation ?

Thank you for your time, have a great day!

Arthur Courtel

--00000000000029626805b13e6ee5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font size=3D"2">Hi all,</font></div><div><font size=
=3D"2"><br></font></div><div><font size=3D"2">I&#39;m working with a yocto =
Dunfell (3.1) on my embedded system.</font></div><div><font size=3D"2">I su=
ccessfully built the SDK install script for my image recipe with:<span styl=
e=3D"font-family:&quot;trebuchet ms&quot;,sans-serif">=C2=A0bitbake my-imag=
e -c populate_sdk<code></code><code><br></code></span></font></div><div><fo=
nt size=3D"2">However, the other day when I stopped the SDK generation befo=
re completing (CTRL-C) and resumed it a couple of minutes after, bitbake wa=
s not able to finish generating the SDK, saying:<br></font></div><div><i><f=
ont size=3D"2"><br></font></i></div><div><i><font size=3D"2">Exception: Fil=
eNotFoundError: [Errno 2] No such file or directory: &#39;/home/yoctouser/b=
uild/tmp/work/colibri_imx7_emmc-tdx-linux-gnueabi/my-image/1.0-r1/sdk/image=
/opt/machine-fb/5.0.0-devel-20200924080856+build.0/sysroots/x86_64-tdxsdk-l=
inux/usr/lib/locale&#39;</font></i></div><div><font size=3D"2"><br></font><=
/div><div><font size=3D"2">I was able to determine that bitbake uses the va=
riable DISTRO_VERSION for building some paths during the generation.<br></f=
ont></div><div><font size=3D"2">My DISTRO_VERSION changes for each generati=
on because it is built on starting time generation.<br></font></div><div><f=
ont size=3D"2">I had to remove all my work folder in order for bitbake to r=
estart the SDK generation from scratch... Which takes some time...<br></fon=
t></div><div><font size=3D"2"><br></font></div><div><font size=3D"2">Do you=
 know if there is a way to cleanup the SDK generation properly in case of a=
 halt in the middle of the generation ?</font></div><div><br></div><div>Tha=
nk you for your time, have a great day!<font color=3D"#888888"><font color=
=3D"#888888"><br></font></font></div><font color=3D"#888888"><div><br></div=
><div>Arthur Courtel</div></font><div><br></div></div>

--00000000000029626805b13e6ee5--
