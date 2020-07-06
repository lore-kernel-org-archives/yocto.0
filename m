Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.53348.1594022926490792659
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jul 2020 01:08:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qj4m/KOZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: shlomi.39sd@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id t25so39600533lji.12
        for <yocto@lists.yoctoproject.org>; Mon, 06 Jul 2020 01:08:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=VEPFh86PO9auuTZinkTH/F7Jlwsf/xOyPw09n/+mVME=;
        b=Qj4m/KOZvMjNP9OPREbBNdBHzhqIDbi2yffZODLOlGZCfnO8NiO5o7afB0dom7Qnsh
         na0NT2xLcbKYe4WKSyDpCdWmAhTOpVIRpK9+9I2RGY5ukfHU2IDggdCriEjeqyMZEFwy
         i0hyiK4AKGmlW2I9vCDg9cuuM2qV56WgmNlJw++0ekwCEcIO+dQUuFxQwunUjleTI1iw
         nAlg2C+XIZHAxhVUS7yUd7fP69BzisKPxzfAnDCQ2SAUIF7WN8vL7XXk3mEarfVSWltm
         GLBx1eM9Rld6MitwsA7GCEZxewpsgsGl/7n1HIZfCXEpOQHqVkuOsx8AdGcQBNL5m3M4
         adXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VEPFh86PO9auuTZinkTH/F7Jlwsf/xOyPw09n/+mVME=;
        b=pE6dUYpkC00SusNS8spY5aLqWgkYfv3rzxzi95FprA7Pi8SSc0G/X6oq0VolvWjb8j
         /4Qb5vUld8cQrO2qbKMDeNqf1NkudkuKN1jMEmG4BVGZsSixATSFm+XQ38TmlwYIEJvT
         xY652c6/zZWKat8QGf8pRvKIN3n+tloezkIN6UzvLIEt827zTdpEif0iBrUYWGg59/z8
         AwSq0wNRwcUR+Tc8vL3KPCl3R6LIwupG09NxNZ27s2yRRjmRxB2tj2QeDxRXtlC0JvGG
         VBPQ/upKMlWQ8HIwvlEwpfirGcz/3gLxKXFKiRYmX/sqVEKZhYYAZuHLVBaAN8zi10p9
         mpOQ==
X-Gm-Message-State: AOAM530o4PB4f4CaNFQoZLJVPygdvU4v4YJbn+HQ5m8nkUSzUR0TXfpd
	nopWiKY2gssvkLJ6nAgcW97m+ktw4YpP3NZR6wHX4QqP
X-Google-Smtp-Source: ABdhPJxh0da03fdZNUTfRUbhi88BH2otDm4qoZokayoylRSUHwU0I5tRVaCsLlJ4FUICV2e/kWDpxBBuvKfvZE6A2WQ=
X-Received: by 2002:a2e:8059:: with SMTP id p25mr10801213ljg.156.1594022924233;
 Mon, 06 Jul 2020 01:08:44 -0700 (PDT)
MIME-Version: 1.0
From: "Shlomi Vaknin" <shlomi.39sd@gmail.com>
Date: Mon, 6 Jul 2020 11:08:31 +0300
Message-ID: <CALxJ29R_QJEmQeXWc4JSy7vi2CC7tprMp5tfmFjV8uwpfjR9Hw@mail.gmail.com>
Subject: Building a clean image without using sstate-cache
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000029aede05a9c1627b"

--00000000000029aede05a9c1627b
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to run a clean build without using the sstate-cache shared
directory, so we can check that everything is working properly and also
update our sstate-cache shared folder every now and then.

I have the SSTATE_MIRRORS defined in my site.conf using "?=" operator.

When I try to export this variable as empty string and then build the
image, the image is built using the cache.

How can I override the SSTATE_MIRRORS when running bitbake or run a clean
build without using sstate-cache?

Thanks!

--00000000000029aede05a9c1627b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;m =
trying to run a clean build without using the sstate-cache shared directory=
, so we can check that everything is working properly and also update our s=
state-cache shared folder every now and then.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">I have the SSTATE_MIRRORS defined in my site.conf usi=
ng &quot;?=3D&quot; operator.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">When I try to export this variable as empty string and then build the=
 image, the image is built using the cache.</div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">How can I override the SSTATE_MIRRORS when running bitb=
ake or run a clean build without using sstate-cache?</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">Thanks!</div></div>

--00000000000029aede05a9c1627b--
