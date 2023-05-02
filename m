Return-Path: <chezgi@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D57ECC77B73
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 07:01:28 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web10.122741.1683010883354571318
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 00:01:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ja2KxnUY;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: chezgi@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-b9a879cd49cso5145483276.0
        for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 00:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683010882; x=1685602882;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/x4phEUP8xXmsDEzbtJ1grnPEn1Fb2HSzoT3bF+Ek40=;
        b=ja2KxnUYXbyKLpom5M6pFavIMac95iwdqpec8syjRQwS7LJKUpoK66Qz3+kUeynakx
         e/nL0uR9LUCknzejW5whorU6IFqHv9DYf6yw3zPRe/9kzeaTyikfJ5DvjibHD46xdQSh
         7IVkzJUmMVrpJrIb+0EDxmAuhzKt8Cvyp4eTie4AcIchMVC4JYZbX1tElGxOk8iYdYtP
         A21iXy3eb6aPkzwY+KKcMk//9dHJrwe2mtqvxEV/uLvwaphiMUqFUhNoIR41Ukg/lRf1
         Ad6eKgBfGstwdkELiFTgowbzONp1L1zFkdKec+RQcuabA5DnwIYreXU4Nuy8xZC3aaFt
         4y6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683010882; x=1685602882;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/x4phEUP8xXmsDEzbtJ1grnPEn1Fb2HSzoT3bF+Ek40=;
        b=ZMnjgNp9ihB/HeVkPZ2iIE76FfdJQhuuOxUtjMHgfNO+lw0FOLFRI91LxLBJEzjycg
         1fBz05VIlYGKN2ChxyPaLMGxgtRNzcA3psGa9SPL0VwlK9aMyDHUF1T0c5y9q2avNEWg
         l7mijtpfrlKpLkpPznKdmLPP+/NYMZRnrafCJoCw1L6kd96H2JDXAZgdBet3PvtqJcsI
         feO5+CIN9n1gakQC1sK4bQ9Dj9dxSD9nFcDAvxfB9IqoD93vJyemb2YBc2hhBdRnfEf6
         5TUqXKnmaDIUhwa9hDSR0xeUOWfoFO6h4T9K8NO5+gg5l/BfYaJV7fKktg+aOrm9pY9V
         Vo4Q==
X-Gm-Message-State: AC+VfDxlNpdPdTE8gCMd6VRPIALVHL8ElSllaGfSJ3ZfxmcHwmuIiUic
	4Ue4F41/zlDO/ZKQdypsb7S87Y3j1xqmNjBUMjKZnmEp0L8esQ==
X-Google-Smtp-Source: ACHHUZ576/E6tToX6obVm+xE/zf+uBBlI0KgwzYp7i4tiBMfSLbEjPls3IyzNXv4kZR0JF3EKIk06VZByT3wk62UdMU=
X-Received: by 2002:a25:e703:0:b0:b96:7fa0:d9d9 with SMTP id
 e3-20020a25e703000000b00b967fa0d9d9mr14540246ybh.35.1683010882250; Tue, 02
 May 2023 00:01:22 -0700 (PDT)
MIME-Version: 1.0
From: abbas ali chezgi <chezgi@gmail.com>
Date: Tue, 2 May 2023 10:31:39 +0330
Message-ID: <CAHGyC84vaiQhpMAccbYDoLCVajUg8NpMUa-qoaWYca8UkW_s8w@mail.gmail.com>
Subject: build kernel libelf.h error
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ca2ef505fab08170"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 07:01:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59831

--000000000000ca2ef505fab08170
Content-Type: text/plain; charset="UTF-8"

hello everybody,
i want to compile kernel with `CONFIG_DEBUG_INFO_BTF=y`
it has errors:
```
| linker.c:17:10: fatal error: libelf.h: No such file or directory
|    17 | #include <libelf.h>
|       |          ^~~~~~~~~~
| compilation terminated.
| btf.c:18:10: fatal error: gelf.h: No such file or directory
|    18 | #include <gelf.h>
|       |          ^~~~~~~~
```

i also added to linux_%.bbappend:
```
DEPENDS = "elfutils elfutils-native"
```

how can i solve this problem?
thanks

--000000000000ca2ef505fab08170
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div>hello everybody,</div><div>i wan=
t=C2=A0to compile kernel with `<span style=3D"font-family:&quot;JetBrains M=
ono&quot;,&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-=
size:14px;white-space:pre;color:rgb(0,0,255)">CONFIG_DEBUG_INFO_BTF</span><=
span style=3D"color:rgb(0,0,0);font-family:&quot;JetBrains Mono&quot;,&quot=
;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-size:14px;white=
-space:pre">=3Dy`</span></div><div><span style=3D"color:rgb(0,0,0);font-fam=
ily:&quot;JetBrains Mono&quot;,&quot;Droid Sans Mono&quot;,&quot;monospace&=
quot;,monospace;font-size:14px;white-space:pre">it has errors:</span></div>=
<div><span style=3D"color:rgb(0,0,0);font-family:&quot;JetBrains Mono&quot;=
,&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-size:14px=
;white-space:pre">```</span></div><div>| linker.c:17:10: fatal error: libel=
f.h: No such file or directory<br>| =C2=A0 =C2=A017 | #include &lt;libelf.h=
&gt;<br>| =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~=
~~<br>| compilation terminated.<br>| btf.c:18:10: fatal error: gelf.h: No s=
uch file or directory<br>| =C2=A0 =C2=A018 | #include &lt;gelf.h&gt;<br>| =
=C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~<br></div>=
<div>```</div><div><br></div><div>i also added to linux_%.bbappend:</div><d=
iv>```</div><div><span style=3D"font-family:&quot;JetBrains Mono&quot;,&quo=
t;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-size:14px;whit=
e-space:pre;color:rgb(0,16,128)">DEPENDS =3D </span><span style=3D"font-fam=
ily:&quot;JetBrains Mono&quot;,&quot;Droid Sans Mono&quot;,&quot;monospace&=
quot;,monospace;font-size:14px;white-space:pre"><font color=3D"#000000">&qu=
ot;</font></span><span style=3D"font-family:&quot;JetBrains Mono&quot;,&quo=
t;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;font-size:14px;whit=
e-space:pre;color:rgb(163,21,21)">elfutils elfutils-native&quot;</span></di=
v><div><font color=3D"#a31515" face=3D"JetBrains Mono, Droid Sans Mono, mon=
ospace, monospace"><span style=3D"font-size:14px;white-space:pre">```</span=
></font></div><div><br></div><div><font color=3D"#a31515" face=3D"JetBrains=
 Mono, Droid Sans Mono, monospace, monospace"><span style=3D"font-size:14px=
;white-space:pre">how can i solve this problem?</span></font></div><div><fo=
nt color=3D"#a31515" face=3D"JetBrains Mono, Droid Sans Mono, monospace, mo=
nospace"><span style=3D"font-size:14px;white-space:pre">thanks</span></font=
></div><div><span style=3D"font-family:&quot;JetBrains Mono&quot;,&quot;Dro=
id Sans Mono&quot;,&quot;monospace&quot;,monospace;font-size:14px;white-spa=
ce:pre;color:rgb(163,21,21)"><br></span></div></div></div></div>

--000000000000ca2ef505fab08170--

