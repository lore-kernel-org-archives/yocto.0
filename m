Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.web11.5289.1595594676687005747
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 05:44:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cpeJtYyX;
 spf=pass (domain: gmail.com, ip: 209.85.217.50, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f50.google.com with SMTP id p25so4822816vsg.4
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jul 2020 05:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=9HneZZcaDsKdtT5wiYE5CCp69yWI1NmVsU6lfz0e9wY=;
        b=cpeJtYyXtmOx1HsCnAj34goaNOuW3sXO81UhXWY6McbbX7VndJtS2pAa7U8JcGoliq
         8C2zhU5vmfjB3N04F2PGq22KljzaGG/CkhNwXJZDWi73qXJ/PCLa6BlBmQjTPpbKaOMV
         ipUEjiupT8OVrxlVyeZ4Aftl+arlBlCRlYH5CmY8wOb3Bfc8cXuB/ZlmwIiWR5+X2EKy
         9k8e0NSxTM4Dcytu18djuEK8kB98RwyI7KIhEKnpZTi5PfpY1s+yJ+HF1vE9ACCQDZpK
         fRnmi+75cxpUC3oyTuw7ZgWecEuamlY+edxv+9ylqiP37i/ojN5FZ8vdRSTY4g6O0iHF
         KMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=9HneZZcaDsKdtT5wiYE5CCp69yWI1NmVsU6lfz0e9wY=;
        b=lc0WVZL5B/vskLZCVdcFayn21WCTvNd70Yj69rCZ2Nqkd424AGz+zujTL8h4kqaafA
         zdmtwt8T+7aeDZsMWmIwjg+OyD2DrwRB0nT1BDBJf7nk57pwNlwVtTTbU9Ce+o0iqBZW
         sKLef6GJGaEFMIKwt/hkSzw6fMRhkra23LxaG/tWx0B5WN6nD4usOEv+ZlDl18xSwmOW
         GmMwnsjiAc4bdaTLtwHzpPSvFt++aJuy2JIXJdCGIzehV5YaGMYe+e2jnjxHk4+OAUrI
         p332PVgg65IHzcgUPSAxRCuJ9bDJRKB+KUJqs3wOlDrdBx69Tcz220zhB3IMTfVSc+oH
         SlyA==
X-Gm-Message-State: AOAM532klr9OV8Z4HEQoIpk3U++mB+ryBSp9H6yPJyXtemQgFqLdIwUf
	VuJ2TKVgmLM5XVtOyYkaRzen5ZF7PZ/CZazc1oc5yFNfJ1U=
X-Google-Smtp-Source: ABdhPJxbHVOA8nhVIWEQeJRjtwBcRgPwEBVVTJ3MIQEGTph+Psd0RWT47Wx+5qgOeZe8pCTZ9dZh/A1Hb8rqj91xeU0=
X-Received: by 2002:a67:7047:: with SMTP id l68mr516926vsc.102.1595594675446;
 Fri, 24 Jul 2020 05:44:35 -0700 (PDT)
MIME-Version: 1.0
From: nikhilvp29@gmail.com
Date: Fri, 24 Jul 2020 18:14:24 +0530
Message-ID: <CAJw=dJ_yy8+A6JWoB39rRB0+FbQX+LGFgFmnn9dTWcqPFN2ruQ@mail.gmail.com>
Subject: Remove connman package from yocto sdk.
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d5e63905ab2f5534"

--000000000000d5e63905ab2f5534
Content-Type: text/plain; charset="UTF-8"

Hi team,
          We want to use NetworkManager to access internet using LTE module
. but connman and Networkmaanger both are installed.

          I struggled so much to remove connman,  I tried as follows :-
           1) Added IMAGE_INSTALL_remove = "connman"  in local.conf
                            but it still come with sato image.

            2) Added DISTRO_FEATURE_remove = "connman"  in local.conf
                            but it still come with sato image.

    By default connman is coming in image , how to remove connman ?

--000000000000d5e63905ab2f5534
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi team,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 We want to=
 use NetworkManager to access internet using LTE module . but connman and N=
etworkmaanger both are installed.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I str=
uggled so much to remove connman,=C2=A0 I tried as follows=C2=A0:-</div><di=
v>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01) Added IMAGE_INSTALL_remove =
=3D &quot;connman&quot;=C2=A0 in local.conf</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 but it still come with sato image.</div><div><br></div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2) Added DISTRO_FEATURE_remove =3D &quot;co=
nnman&quot;=C2=A0 in local.conf</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 but it s=
till come with sato image.</div><div>=C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =
By default connman is coming in image , how to remove connman ?</div><div>=
=C2=A0 =C2=A0 =C2=A0=C2=A0</div></div>

--000000000000d5e63905ab2f5534--
