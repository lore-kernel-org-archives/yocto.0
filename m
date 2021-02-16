Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web11.16653.1613516558416753871
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Feb 2021 15:02:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LG/sLR33;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: jonas.vautherin@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id v3so8309623qtw.4
        for <yocto@lists.yoctoproject.org>; Tue, 16 Feb 2021 15:02:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=eKlD0SbWlsgJAkFmJRjd21+DZisl3xmhirWiSWt5R5E=;
        b=LG/sLR33WuKilAcELZKYSuJNcaryDA/bjFSh8CdWuNqxt104As4UtH1kuWZRwc3TlL
         S2MKL1m5vWYtZrew5Cl0mpdRxJZeo3qaad14X/yQbnp5oP+27bNU3oZKNpThNkKPBeBn
         ZZ3DLleABwNRDAFeQUwf27SfLhUoRUmktAtkngsdVzpYY7mUYr1btX7bUl6levUqRwMr
         GgEWjeJEMbzbBkkt1EJ4XWElz4Epe/5rzdropbafydzduljb7wSzbEkrKfB5eWEFpNcz
         ua6ltDQG5dlobKJzlBpu126emt7NhZywPzCsN9Iv062rXigE7SqLNsMeL6rrWQw+UJBr
         5PhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eKlD0SbWlsgJAkFmJRjd21+DZisl3xmhirWiSWt5R5E=;
        b=OZoDqqDVnAAYrAHBhGa8MQC/h4qZKTdggypZDKJmheQK8bX0N0XqhiFLlHdzNCshaH
         knh5D4g9J/2t9dqwPjKAWIMG39YuRtAv90rmFtFFJrFy4s18XZ9dcXikf0jp2+MAexuI
         s5lzgoWanLATaeE1oru47U3WLNsinHFcfGAXhDArekqQ9+80vCceUXjtk01WwS6jjHjW
         QM9TxLPXop0GIj3s1yUKBR1x27wSKl3a+JwrVGnPWwTnp1jw84Kn1Pkxysi0WUmxM701
         YhzXsBElmH+b+55R9M8E6rrs/DjANyV1k0x2k/DPrwfm04N1YOwRH8/eavylR6YFam7x
         eV0g==
X-Gm-Message-State: AOAM533zHLPhUg3Vj0Z9kie2niy/g4j+zr5IqUrUWSjd1ZfN9w4ltxDb
	+NZpxaID09lOqiTwZNWn/ity08zG8xVeC5PhWL6xKuUFKIIvKQ==
X-Google-Smtp-Source: ABdhPJw4kD3Iz9Hr5hMcJ31q9LgrzVCVcUrEWUeaaeatHOEE2pKQ4J9SqLsz/RoSjOm/QvI2hXlS3jeEBy02Wc6sZ/Q=
X-Received: by 2002:ac8:5447:: with SMTP id d7mr5245288qtq.56.1613516557314;
 Tue, 16 Feb 2021 15:02:37 -0800 (PST)
MIME-Version: 1.0
From: "Jonas Vautherin" <jonas.vautherin@gmail.com>
Date: Wed, 17 Feb 2021 00:02:26 +0100
Message-ID: <CAEyb4nGKD+YCsmxH4-B43JjDAToWe0CysMh78Z9m6R5Wq_p4Dg@mail.gmail.com>
Subject: Keep .bbappend for older Yocto version
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003ced6d05bb7c197c"

--0000000000003ced6d05bb7c197c
Content-Type: text/plain; charset="UTF-8"

Good evening,

I am using Yocto Gatesgarth, and I was just updating a layer that was
written for Dunfell. In the `conf/layer.conf`, I can simply add
"gatesgarth" to `LAYERSERIES_COMPAT_pocketbeagle`, like so:

```
LAYERSERIES_COMPAT_pocketbeagle = "dunfell gatesgarth"
```

However, this does not seem to work for a `.bbappend`. Let me use this
particular layer as an example: it is a BSP that defines
`linux-yocto_4.19.bbappend` for Dunfell. In my case, I want to define
`linux-yocto_5.4.bbappend` for Gatesgarth. When building with Dunfell, I
would like it to use the former, and when building with Gatesgarth, I would
like it to use the latter.

However, if I keep both `linux-yocto_4.19.bbappend`
and `linux-yocto_5.4.bbappend` and try to build with Gatesgarth, it fails
with:

```
ERROR: No recipes in default available for:
  /path/to/recipes-kernel/linux/linux-yocto_4.19.bbappend
```

Which makes sense: Gatesgarth does not provide `linux-yocto_4.19`.

Is there a way to keep both `*.bbappend` and have Yocto ignore the ones
that do not correspond to its version? Or would that be bad practice anyway?

Best Regards,
Jonas

--0000000000003ced6d05bb7c197c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good evening,<div><br></div><div>I am using Yocto Gatesgar=
th, and I was just updating a layer that was written for Dunfell. In the `c=
onf/layer.conf`, I can simply add &quot;gatesgarth&quot; to `LAYERSERIES_CO=
MPAT_pocketbeagle`, like so:</div><div><br></div><div>```</div><div>LAYERSE=
RIES_COMPAT_pocketbeagle =3D &quot;dunfell gatesgarth&quot;<br></div><div>`=
``</div><div><br></div><div>However, this does not seem to work for a `.bba=
ppend`. Let me use this particular layer as an example: it is a BSP that de=
fines `linux-yocto_4.19.bbappend` for Dunfell. In my case, I want to define=
 `linux-yocto_5.4.bbappend` for Gatesgarth. When building with Dunfell, I w=
ould like it to use the former, and when building with Gatesgarth, I would =
like it to use the latter.</div><div><br></div><div>However, if I keep both=
 `linux-yocto_4.19.bbappend` and=C2=A0`linux-yocto_5.4.bbappend` and try to=
 build with Gatesgarth, it fails with:</div><div><br></div><div>```</div><d=
iv>ERROR: No recipes in default available for:<br>=C2=A0 /path/to/recipes-k=
ernel/linux/linux-yocto_4.19.bbappend<br></div><div>```</div><div><br></div=
><div>Which makes sense: Gatesgarth does not provide `linux-yocto_4.19`.</d=
iv><div><br></div><div>Is there a way to keep both `*.bbappend` and have Yo=
cto ignore the ones that do not correspond to its version? Or would that be=
 bad practice anyway?</div><div><br></div><div>Best Regards,</div><div>Jona=
s</div></div>

--0000000000003ced6d05bb7c197c--
