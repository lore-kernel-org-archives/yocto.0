Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.3408.1620186817864782141
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 May 2021 20:53:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GekFoWkB;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: chuckwolber@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id gq14-20020a17090b104eb029015be008ab0fso114814pjb.1
        for <yocto@lists.yoctoproject.org>; Tue, 04 May 2021 20:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=1+faAljLaR1Bqe7nV9DFY/WOmgQnTWo2QxR4koQJomU=;
        b=GekFoWkB3pkeW4mZSHOCBVUxxbezcLxuASGB5wwH89i8JzOwCbB7gzseHIbD/NlwMe
         ZbY22sI5Wp0ZNqMMk3o0UehxD9oXcg/zL/C9SiQNjEpbdwIcHGdyWrg8OycCKomqRrKt
         YsdHBZm3UEif7KmcDrotWmLVdy6FsHX7A8TInqY06B5DWVXhbcShEZDykOO2WGe6fK1c
         DGkM+ovbijWHU6WWzHzXw7UBy3RE8pDIttC2DgGhk3ZPgoMRFEHnzhQaX7G6ny+Du/DS
         GMIZ2qPz49aPf7oBxHkOGBUv17iUnaSfsCBxlKm4Livj2GAcQtYKmX3y6p/IxmhgIx3R
         PrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=1+faAljLaR1Bqe7nV9DFY/WOmgQnTWo2QxR4koQJomU=;
        b=kjRsJrQQtDpqjUMG3OBt241qrHj9YmloNTzSf1eARf4/4Kj7ZmZKvxXDPaImuSg/hS
         f2O8n5pu6k2qCZ0n4pk/UR1EV3ptME5gT0NwDLuci1uLGEXIAdJAAZSvDbqrpVp5h8EM
         j2NTvDUN6DJhokZ+0IN2u0stxyAovAhCTL2FyHEoY1QYcsGlgZOMfLOECHXrBdOuByAk
         Odm+sBtJJCu1OGpRzM6gGzOy3BhMN2YLFw6TU9TWHKoXl3CsqOe4QzQghW6p0Ipwjfhe
         /oOYTWTeyctLfAjbdynPyT6wz5lA9JlfGiC4hmB9bJ9LWZoDmojsblkga/lCuVIa8ofG
         IJ/Q==
X-Gm-Message-State: AOAM532/oLFbzLoQD6nTGHOKZrNj8IUv4+X0u+LvDSkLA9pY3JZnol5p
	yUtxsJzXTahMFWkhNyZpOKoZLd+pdl+646yduSSeqa6pwoS9lg==
X-Google-Smtp-Source: ABdhPJx+LWV/Wi/a/KhmZEfhFn+Kl/Vee9vhiYDsN1NciQymeeRmfTH67sc9tV01eXZuRxNUaDFfQ1r4cP9wAaTAO88=
X-Received: by 2002:a17:902:7888:b029:ee:cea7:6ff0 with SMTP id
 q8-20020a1709027888b02900eecea76ff0mr16296872pll.16.1620186816954; Tue, 04
 May 2021 20:53:36 -0700 (PDT)
MIME-Version: 1.0
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Tue, 4 May 2021 20:53:26 -0700
Message-ID: <CAB=6tBTHTskfSntQU61cEgN1ebw50w1f2zLfy=xETP6twVLb4Q@mail.gmail.com>
Subject: Hardknott - pseudo excluded from intercept_scripts
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b1c9a805c18d23ec"

--000000000000b1c9a805c18d23ec
Content-Type: text/plain; charset="UTF-8"

I was attempting an image build with Yocto Hardknott, and I ran into a
chown problem during do_rootfs(). I traced it down to
${WORKDIR}/intercept_scripts showing up in the PSEUDO_IGNORE_PATHS
environment variable.

This commit made the change:
https://git.openembedded.org/openembedded-core/commit/meta/classes/image.bbclass?id=9463be2292b942a1072eea88881b9644e55aadb9

I continued down the rabbit hole until I got here:
https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/package_manager/__init__.py#n173

Line 192 specifically is the smoking gun. The files are being copied from
poky/scripts/postinst-intercepts into the ${WORKDIR}/intercept_scripts
directory and immediately failing when the copyFile utility attempts to do
a chown.

Is there any logical explanation for this? Is this a bug or am I doing
something wrong? Is there a workaround?

..Ch:W..

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000b1c9a805c18d23ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>I was attempting an image build with Y=
octo Hardknott, and I ran into a chown problem during do_rootfs(). I traced=
 it down to ${WORKDIR}/intercept_scripts showing up in the PSEUDO_IGNORE_PA=
THS environment variable.</div><div><br></div><div>This commit made the cha=
nge:</div><div><a href=3D"https://git.openembedded.org/openembedded-core/co=
mmit/meta/classes/image.bbclass?id=3D9463be2292b942a1072eea88881b9644e55aad=
b9">https://git.openembedded.org/openembedded-core/commit/meta/classes/imag=
e.bbclass?id=3D9463be2292b942a1072eea88881b9644e55aadb9</a></div><div><br><=
/div><div>I continued down the rabbit hole until I got here:</div><div><a h=
ref=3D"https://git.openembedded.org/openembedded-core/tree/meta/lib/oe/pack=
age_manager/__init__.py#n173">https://git.openembedded.org/openembedded-cor=
e/tree/meta/lib/oe/package_manager/__init__.py#n173</a></div><div><br></div=
><div>Line 192 specifically is the smoking gun. The files are being copied =
from poky/scripts/postinst-intercepts into the ${WORKDIR}/intercept_scripts=
 directory and immediately failing when the copyFile utility attempts to do=
 a chown.<br></div><div><br></div><div>Is there any logical explanation for=
 this? Is this a bug or am I doing something wrong? Is there a workaround?<=
br></div><div><div><div><br></div><div>..Ch:W..<br></div><div><br></div>-- =
<br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_sign=
ature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quot=
;Perfection must be reached by degrees; she requires the slow hand of time.=
&quot; - Voltaire</span></b></div></div></div></div></div></div>

--000000000000b1c9a805c18d23ec--
