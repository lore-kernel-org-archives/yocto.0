Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web11.5319.1604012020238494292
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Oct 2020 15:53:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.ro header.s=google header.b=Luc54DnQ;
 spf=none, err=SPF record not found (domain: gherzan.ro, ip: 209.85.219.174, mailfrom: andrei@gherzan.ro)
Received: by mail-yb1-f174.google.com with SMTP id b138so3546846yba.5
        for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2020 15:53:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gherzan.ro; s=google;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=uMMR3kyshxB1Rklcvf7EvMkM9IoapcjaavLQrsnvkc0=;
        b=Luc54DnQ/Gt3kfa4TJA3n2omAFmXBEi+9+88++tVFBfyL10Cp0g0ltZzpGrU1RHjIB
         4ewKflz4H5K+YmCmjs3wjh+kWzaiNucEw8RrPqfGjHqMVr1jtzfM81YBV85Z0Mo2ypff
         8vQ6Zmmt4KAgX5IWigqaptOna8n57yrqEP43xWV9L2JkQYvD7Vu0zbSd3FN0mwYfQhZR
         xhwdNKBePExCZMXBHs1oKpPYB47+PsTdDn9myOwwD4dfW8mJ0bymwBVhhjDTKZNnS4kv
         NClSSrI+2ZIVLke+nn+Wb3ULqtTZgMerh0CQW4X0xKZAnS36wykgfgOeffZBD0xkRZ5r
         GNzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=uMMR3kyshxB1Rklcvf7EvMkM9IoapcjaavLQrsnvkc0=;
        b=tdSk9578yHbXYwhEmWgHPOuv261/SxvPWJl6CPGiciuUMUnMC6BgvJ4wvl+nQilSTo
         2ll4BoLb2FZcBXBX+dwnnVjFM17MXGrQV0M8+jd8xWmlsA9R0dPrg2J6YVQ+9S8FTPEL
         o7w9sXhMXMcS31mAJWS+uwdUcwisWlNBjReYLxh1oEXf9K2ziuL7pWPtnrz1h8GI53hg
         eEjMmdekhjxbOUT3NURD0A/1GDRfUQU3riSg5xD/JctJT8XOAcLuh0FB/aI8B64K7wyA
         uh/iy0nUhQayHZSlFKgXwKFMDD6ielD3nEKPcd1MZHPxUFSQHgDPcNq2MdvEsGsTjZOx
         lRhw==
X-Gm-Message-State: AOAM531OalDGIlMo9VJGJm1AyEkKPMNG9/ri6W+QZeNQnV2OnvVkctYR
	n4U7lahJMEZlEKk8BEpqhSjpWPDHVq7q19XBvzSmh9IwnWYrez35
X-Google-Smtp-Source: ABdhPJxUXO/IwtLkyL/6uBGx3PcHmzHwZr3eNb2Cadx1gzvOZuKPXbqfiIcxfK0pHhwqyBApTGJf/vMLSrJDcOFBIcc=
X-Received: by 2002:a25:32c3:: with SMTP id y186mr9838381yby.71.1604012019244;
 Thu, 29 Oct 2020 15:53:39 -0700 (PDT)
MIME-Version: 1.0
From: "Andrei Gherzan" <andrei@gherzan.ro>
Date: Thu, 29 Oct 2020 22:53:03 +0000
Message-ID: <CAK18fxFr_Td=9sG=G2npGg4G6Dooff6vOym1_rdkunQj6W3dqQ@mail.gmail.com>
Subject: musl and reproducible builds
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Cc: raj.khem@gmail.com
Content-Type: multipart/alternative; boundary="0000000000009f78d205b2d7269e"

--0000000000009f78d205b2d7269e
Content-Type: text/plain; charset="UTF-8"

Hi,

I've hit lately a known issue regarding reproducible builds for which we
added a workaround in the case of having glibc as the libc provider[1].

Some context. ARM binaries in a Yocto build contain references to the
absolute path of libc C runtime objects `crti.o` and `crtn.o`. Here is an
example:

readelf -sW helloworld | grep crt
[...]
35: 00000000     0 FILE    LOCAL  DEFAULT  ABS
[...]/yocto//tmp/work/armv7vet2hf-neon-poky-linux-musleabi/hello/1.0-r0/recipe-sysroot/usr/lib/crti.o
38: 00000000     0 FILE    LOCAL  DEFAULT  ABS
[...]/yocto//tmp/work/armv7vet2hf-neon-poky-linux-musleabi/hello/1.0-r0/recipe-sysroot/usr/lib/crtn.o

After stripping the respective binary, these paths end up into the debug
symbols but the stripped binary still contains the `.gnu_debuglink`
section. This section includes, along with the filename of the debugging
information file, a CRC value computed on the respective debugging file[2].
This CRC value makes, in turn, the stripped binary, not reproducible.

IA platforms are not affected by this issue.

I am looking for a fix/workaround when using musl as the libc provider. The
fix mentioned above for glibc landed in `thud` so since then, this bug is
mitigated when using glibc. But, when musl is preferred, the issue is still
reproducible on current master's HEAD[3]. This behaviour can easily be
reproduced using the qemuarm/qemux86 machines along with a dummy recipe
like the one in our documentation[4].

Has anyone looked into this in the past? It very much sounds to me like a
linker bug.

[1]
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=cd158dd197a3a41a91679107a94c6f213476921c
[2] https://sourceware.org/gdb/onlinedocs/gdb/Separate-Debug-Files.html
[3] 7231c104303f72c5d72f837de114d4f5a633c7cd
[4]
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/documentation/ref-manual/examples/hello-single

Regards,
--
Andrei

--0000000000009f78d205b2d7269e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;ve hit lately a kn=
own issue regarding reproducible builds for which we added a workaround in =
the case of having glibc as the libc provider[1].</div><div><br></div><div>=
Some context. ARM binaries in a Yocto build contain references to the absol=
ute path of libc C runtime objects `crti.o` and `crtn.o`. Here is an exampl=
e:</div><div><br></div><div>readelf -sW helloworld | grep crt<br>[...]<br>3=
5: 00000000 =C2=A0 =C2=A0 0 FILE =C2=A0 =C2=A0LOCAL =C2=A0DEFAULT =C2=A0ABS=
 [...]/yocto//tmp/work/armv7vet2hf-neon-poky-linux-musleabi/hello/1.0-r0/re=
cipe-sysroot/usr/lib/crti.o<br>38: 00000000 =C2=A0 =C2=A0 0 FILE =C2=A0 =C2=
=A0LOCAL =C2=A0DEFAULT =C2=A0ABS [...]/yocto//tmp/work/armv7vet2hf-neon-pok=
y-linux-musleabi/hello/1.0-r0/recipe-sysroot/usr/lib/crtn.o</div><div><br><=
/div><div>After stripping the respective binary, these paths end up into th=
e debug symbols but the stripped binary still contains the `.gnu_debuglink`=
 section. This section includes, along with the filename of the debugging i=
nformation file, a CRC value computed on the respective debugging file[2]. =
This CRC value makes, in turn, the stripped binary, not reproducible.<br></=
div><div><br></div><div>IA platforms are not affected by this issue.</div><=
div><br></div><div></div><div></div><div>I am looking for a fix/workaround =
when using musl as the libc provider. The fix mentioned above for glibc lan=
ded in `thud` so since then, this bug is mitigated when using glibc. But, w=
hen musl is preferred, the issue is still reproducible on current master&#3=
9;s HEAD[3]. This behaviour can easily be reproduced using the qemuarm/qemu=
x86 machines along with a dummy recipe like the one in our documentation[4]=
.</div><div><br></div><div>Has anyone looked into this in the past? It very=
 much sounds to me like a linker bug.<br></div><div><br></div><div>[1] <a h=
ref=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Dcd158dd1=
97a3a41a91679107a94c6f213476921c">http://git.yoctoproject.org/cgit/cgit.cgi=
/poky/commit/?id=3Dcd158dd197a3a41a91679107a94c6f213476921c</a></div><div>[=
2] <a href=3D"https://sourceware.org/gdb/onlinedocs/gdb/Separate-Debug-File=
s.html">https://sourceware.org/gdb/onlinedocs/gdb/Separate-Debug-Files.html=
</a></div><div>[3] 7231c104303f72c5d72f837de114d4f5a633c7cd</div><div>[4] <=
a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/documentation=
/ref-manual/examples/hello-single">http://git.yoctoproject.org/cgit/cgit.cg=
i/poky/tree/documentation/ref-manual/examples/hello-single</a></div><div><b=
r></div><div>Regards,<br></div><div><div><div dir=3D"ltr" class=3D"gmail_si=
gnature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div>--</div>Andrei<br></div></div></div></div></div></div></div>

--0000000000009f78d205b2d7269e--
