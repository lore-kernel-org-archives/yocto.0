Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web12.26552.1629736506091190324
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Aug 2021 09:35:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bj8rWru2;
 spf=pass (domain: gmail.com, ip: 209.85.210.52, mailfrom: darthtyranus666666@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id m7-20020a9d4c87000000b0051875f56b95so37848742otf.6
        for <yocto@lists.yoctoproject.org>; Mon, 23 Aug 2021 09:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=W9uCBnN1RI6LECXmvW+mxAlefkoucjFOfcLomRKU1/A=;
        b=Bj8rWru24xXPAPrWou96qQ82EhF7qxdXB20l1b5FUxFQdM1cCWQU9YL1wNHCgAbKj2
         qr18kyhD6+6Jc5fVrcJ7E8fzR4RAK6x0Scgix/vvs9Zv/k5k0jl5GCao1IeJGEuhjQZ2
         r3tuyUiKnKA30oYVNGoYSX8XilgzUHiFWPm0qugshnBu66gqwQEOvHdIvFyed0FesBUi
         kSGnBNNkuUvMhM6bTudBXh+ionxuJq+qEh09kdZLaOJsx3ljzt99Pe6TBglM9U2Lu+43
         rfdJn3lu2Hu2rCct+Fx8Ugvk5SRyAOnYvYdft/7XW6lsIwsie16oVnVUDAjFr7kjiIoL
         REqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=W9uCBnN1RI6LECXmvW+mxAlefkoucjFOfcLomRKU1/A=;
        b=AS7KY3diCByD+inC+poDhUPJbHwWeQtwucZ2Fy0A+/1w7A6Kdhq606erI+rs+QtWAv
         hNghnlbIVR9DOZsTzH6hU4g6NEKSd9uhsFegFmHjgCK+L8KxCs6QYVNLDPzWHfawjqkC
         0i8/MkqMZBCE7Y7rBwG10BWdMXE6QdcywwPFfmQlG/kjZwc2UcAP4ZK6IKuysAlxc0wX
         vFtcnblEjP7q5etIeCd+nHAz7Ze+Svt0pZxaQQi67eD022e0MZPkaksyMIl1P+QH1qdO
         kvImSzcEhu0nzPFpwHJ00aj0Y6oZqVLplCfsDYu2s5VPr/2/3Hni4G/5HnPHg4qDbbUW
         25Ww==
X-Gm-Message-State: AOAM531mnYUGX2+NBgq4sPVhk6oeMCDKz0WAgq4MlADBCbTsczGopqrR
	CmU2Kp+gPGeLDKCu1kiUgdA3EIB90DXi2BjlRdopymlmIoQ=
X-Google-Smtp-Source: ABdhPJwm82IL34y7NdMemWzT9GlmMmjB6iKNgVAndtYUcbBiHeHQdxB07/VIgoBKOhDYYMuvSK0QPMK0TfKklgWFx0U=
X-Received: by 2002:aca:bb09:: with SMTP id l9mr12842602oif.120.1629736505304;
 Mon, 23 Aug 2021 09:35:05 -0700 (PDT)
MIME-Version: 1.0
From: "d0ku" <darthtyranus666666@gmail.com>
Date: Mon, 23 Aug 2021 18:34:54 +0200
Message-ID: <CAAdfB0JOpUsNrn9ouZw45ApXvhkFaFa4P31fW7WF1aX5RgRybg@mail.gmail.com>
Subject: Extensible SDK - runtime packages installation
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000079e9ea05ca3c99e8"

--00000000000079e9ea05ca3c99e8
Content-Type: text/plain; charset="UTF-8"

Hi,

I've been playing with extensible SDK lately and got to a point, where I
want to create a minimal SDK installer and install all the required
packages in runtime via `devtool sdk-install`, so that every developer can
get only the stuff that's actually needed.

For the target part it works as expected, installing the content to
${OECORE_TARGET_SYSROOT}, however for the host part the content gets
installed to ${OECORE_NATIVE_SYSROOT}, but it's not visible in the PATH in
some cases. E.g. for perl-native the binaries are installed to `<native
sysroot>/bin/perl-native` and are not visible, unless I manually extend the
PATH with this directory, then it works fine.

So my questions are:
* Is the runtime installation of packages meant to run on host actually
supported? It surely works for e.g. compiler, so I assume it should be also
fine for other packages?
* Should I install `nativesdk-` or `-native` packages, if I want to use
them this way? Or can I actually do both? In the eSDK talk by Paul Eggerton
I saw that `nativesdk-cmake` was added, but the `nativesdk-` doesn't really
seem to fit `mini Yocto environment` that eSDK basically is.
* Am I possibly missing some configuration steps? In Yocto environment the
PATH gets expanded with `bin/perl-native` automatically, but I wasn't able
to pinpoint what file/task actually does it.

Best Regards and thanks in advance,
Jakub

--00000000000079e9ea05ca3c99e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br><div>I&#39;ve been playing with extensible SDK=
 lately and got to a point, where I want to create a minimal SDK installer =
and install all the required packages in runtime via `devtool sdk-install`,=
 so that every developer can get only the stuff that&#39;s actually needed.=
</div><div><br></div><div>For the target part it works as expected, install=
ing the content to ${OECORE_TARGET_SYSROOT}, however for the host part the =
content gets installed to ${OECORE_NATIVE_SYSROOT}, but it&#39;s not visibl=
e in the PATH in some cases. E.g. for perl-native the binaries are installe=
d to `&lt;native sysroot&gt;/bin/perl-native` and are not visible, unless I=
 manually extend the PATH with this directory, then it works fine.</div><di=
v><br></div><div>So my questions are:</div><div>* Is the runtime installati=
on of packages meant to run on host actually supported? It surely works for=
 e.g. compiler, so I assume it should be also fine for other packages?</div=
><div>* Should I install `nativesdk-` or `-native` packages, if I want to u=
se them this way? Or can I actually do both? In the eSDK talk by Paul Egger=
ton I saw that `nativesdk-cmake` was added, but the `nativesdk-` doesn&#39;=
t really seem to fit `mini Yocto environment` that eSDK basically is.</div>=
<div>* Am I possibly missing some configuration steps? In Yocto environment=
 the PATH gets expanded with `bin/perl-native` automatically, but I wasn&#3=
9;t able to pinpoint what file/task actually does it.</div><div><br></div><=
div>Best Regards and thanks in advance,<br></div><div><div>Jakub</div></div=
></div></div>

--00000000000079e9ea05ca3c99e8--
