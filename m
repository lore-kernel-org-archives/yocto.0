Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.4462.1600398590600786318
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Sep 2020 20:09:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z4YX6XqD;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: chuckwolber@gmail.com)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9BD2B38C084F
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 20:09:49 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id z18so2536644pfg.0
        for <yocto@yoctoproject.org>; Thu, 17 Sep 2020 20:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6xhz8PB7P4XPbgfAr5UHaMhDdsxdC4tOLLZNdNKIh2I=;
        b=Z4YX6XqDVMLB7YDoUHum+yLO+N0vM2qiLfJr8AaWxb/DMumuQArS3K1QTvbGDiEUJD
         6nkaSfmVg04TNE6w05HJnG2Hlv0Hx87wmeSXB0Ulg8UuiqAyX8hsIwBZbL5vPAlUQqiY
         kV8CTLJfDj3ub350E3LLNASqUtmDd/6QMXfekqDxkU/2VnjYuBY69rfeNMLEB34ppx2V
         /se+deqjQATQNK3VnkN1OrVYtr55nsy46upgOJkO2/tAIjNBRw4j3ezPD78oUj8tsZCP
         2vas0slBqTJbOYHPB0WTC4mKagIFL4PbRFrZLNCxTEOsrfMgiq9iHgu2bu82QF5P9DIA
         ni9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6xhz8PB7P4XPbgfAr5UHaMhDdsxdC4tOLLZNdNKIh2I=;
        b=aIuTelBdZzAHIerOZCke+0INblPr7kPdApDQ30YZwQCHdfsY1DwJVyfhYrsMjmU0yk
         A4DabYHySbqvatpgxmn+WNYsbHhxVJvfTgzPERljz379HjBWAENSc1dlXee7bf8BUjly
         yQq8EldX1B2IPIhDVszOJWNZOx7Aq2wPuOuJDxxpYcy144wGbRr+QT/JRL8PrVv5p7PE
         h5o1TlDxq5ZS01RBoiV4Sz9jLIU0Q3C8vGEcAUPv0Eijf5PAhWfbBVyWzqoa6Ex9AWcn
         oaBP3icnxwp/d/qLJSHyLbMp5bh+N7zcXA+5BAeNvllTvNGLXODp1LR2JOTLc6zNGAM5
         HuNQ==
X-Gm-Message-State: AOAM531a6LaoxkEI6AYX+Fw0EYcMzYOmU9pOafgkCZ0NbnRWKJfgLJv3
	SKNnNzA+wNxO63lLWqioyL4JGwQLSieXFOmN2D+OEMz+BqAmVw==
X-Google-Smtp-Source: ABdhPJy0a1L1XF9x5YC3+wo+0evdfioXbJPfQ5Ebn4JscjW+/WrK8NQYnF6lvdNmBDzXxhHdjvTTz7ubdyB/+HaqbbM=
X-Received: by 2002:a62:fb1a:0:b029:142:2501:39f9 with SMTP id
 x26-20020a62fb1a0000b0290142250139f9mr13240688pfm.72.1600398588709; Thu, 17
 Sep 2020 20:09:48 -0700 (PDT)
MIME-Version: 1.0
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Thu, 17 Sep 2020 20:09:37 -0700
Message-ID: <CAB=6tBRCEGBX4nfSj1THDqnO3HDZBk33xHAm=V+3vRwO5MbZyg@mail.gmail.com>
Subject: do_unpack() ISO Image
To: Yocto-mailing-list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000610ff505af8dd501"

--000000000000610ff505af8dd501
Content-Type: text/plain; charset="UTF-8"

Hi all,

I have a need to unpack an ISO image during do_unpack. This does not appear
to be one of the extensions that is handled by default, so I am working out
a way to use xorriso to do this for me.

I can get this to work in the following way, but it involves calling an
executable running on the build host, which only works by luck since the
host executable is the same architecture as what I am currently building. I
would like to do this in a portable way that does not break when I try to
build for a different architecture.

DEPENDS += "xorriso"

do_unpack_append() {
    bb.build.exec_func('unpack_iso', d)
}

unpack_iso() {
   /usr/bin/xorriso -osirrox on -indev ${WORKDIR}/${PN}_${PV}.iso -extract
/ ${S}
}


From looking at base.bbclass, it _seems_ as if my solution involves
something like this:

d.appendVarFlag('do_unpack', 'depends', ' xorriso:do_populate_sysroot')

But it is unclear exactly where that would go within my recipe. Any
thoughts?

Thank you,

..Ch:W..

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000610ff505af8dd501
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hi all,<br></div><div><br></div><div>I=
 have a need to unpack an ISO image during do_unpack. This does not appear =
to be one of the extensions that is handled by default, so I am working out=
 a way to use xorriso to do this for me.</div><div><br></div><div>I can get=
 this to work in the following way, but it involves calling an executable r=
unning on the build host, which only works by luck since the host executabl=
e is the same architecture as what I am currently building. I would like to=
 do this in a portable way that does not break when I try to build for a di=
fferent architecture.<br></div><div><br></div><div>DEPENDS +=3D &quot;xorri=
so&quot;</div><div><br></div><div>do_unpack_append() {</div><div>=C2=A0=C2=
=A0=C2=A0 bb.build.exec_func(&#39;unpack_iso&#39;, d)</div><div>}</div><div=
><br></div><div>unpack_iso() {</div><div>=C2=A0=C2=A0 /usr/bin/xorriso -osi=
rrox on -indev ${WORKDIR}/${PN}_${PV}.iso -extract / ${S}</div><div>}</div>=
<div><br></div><div><br></div><div>From looking at base.bbclass, it _seems_=
 as if my solution involves something like this:</div><div><br></div><div>d=
.appendVarFlag(&#39;do_unpack&#39;, &#39;depends&#39;, &#39; xorriso:do_pop=
ulate_sysroot&#39;)</div><div><br></div><div>But it is unclear exactly wher=
e that would go within my recipe. Any thoughts?</div><div><br></div><div>Th=
ank you,</div><div><br></div><div>..Ch:W..<br></div><div><div><br></div>-- =
<br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_sign=
ature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospace">&quot=
;Perfection must be reached by degrees; she requires the slow hand of time.=
&quot; - Voltaire</span></b></div></div></div></div></div>

--000000000000610ff505af8dd501--
