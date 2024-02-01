Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DC5BC4828F
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 14:34:52 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.16902.1706798082334943288
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 06:34:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YPComxht;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d0512f6e32so13019761fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 06:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706798080; x=1707402880; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=994dg2B+OZzKqYIpc6bpPDuAArm66D7mJsIjv3ljLqQ=;
        b=YPComxhtrWSbmYGDVAYbwQaJZy29AChzRMD0wcEoRO4y3zFHZeB6q/9CPnNMSIpysM
         lDj9dtQPonXX3nJq0llvnE/Xh61mVDElXZGY6QdZx5vY5aB5hNrcZk+cxxh62bsx0DA9
         XQNQ29N9qZR4vvfeMaFkJ7wSIi89JZbpkcvS3W1TBW9dwGmsswikwPDEtElVR2eW/I3B
         ZX70E7s7AfWPPGiM7/KhcIZYDYsDhse7LePdq/tB+i0ktoj7b4hviA0uC8dSu/LsKP4z
         SKAUF3TAA5sp4SjSIuoUso9rIh7w73voY3hWY+iYlt9Mo2dR+s2Av9wVUXSBJDr/vR4z
         LDyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706798080; x=1707402880;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=994dg2B+OZzKqYIpc6bpPDuAArm66D7mJsIjv3ljLqQ=;
        b=mePoNKWwbrjKdQLc/4Ofd1AzQqffEM+JWlLs1pI31IgzAA9muDsRWYHLZvXY6afr2+
         7jpLi92UVqirwYDvaOvlklVy4nWh/RlyrTAYwdyeNxI7xYerV0bp6Koa9ewePOyYjEFP
         tZBFQE4cy/lOQaG9xfZ/jzQbK81hDpWUCaefkRUK98yfk++LcMDrnn1dyWKkwTlwUGyx
         hfqAPA3RdGZ5Oe+/Rhso5ZGYVg8c5k6w/QKHG02iwefwoIJwxOAtqTwFVooJNlgSg3Q/
         xRek1sYlVicHft2EaxvxMbbbLaL3gHA/srRJVVitq43JZPri6hTaZNIT892fWdgkEqkX
         2Hdg==
X-Gm-Message-State: AOJu0Yy/Lteaj2a3X7wVqkRRMoVi/yGT3BJB1y0ROGVaETNeoNyUXB3n
	D7mhOvtszDsdipkClYlp3Ifj9CRLdfvKc5bzo2CZPi052FA2x3N+5sXW4R1ofdnHMLafFS7VeX7
	+AAnLld8G/nif1azQwyTvj9vFp7I/T+Yfisc=
X-Google-Smtp-Source: AGHT+IEGx0N191J9STlLXnLv5K4GIlOpz67JtPioqAr6PjGv+4Y3Mw9iSqopUFtHswhd76o2KWin4FL26LjpvtchAWc=
X-Received: by 2002:a2e:7c19:0:b0:2cc:89f4:15a3 with SMTP id
 x25-20020a2e7c19000000b002cc89f415a3mr1557730ljc.49.1706798079928; Thu, 01
 Feb 2024 06:34:39 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 1 Feb 2024 15:34:28 +0100
Message-ID: <CAAfyv35xxBau9cj1e6d-a-ggoQmvg=5Fjw2pxm9MXY6Z4hhZgQ@mail.gmail.com>
Subject: kirkstone bus error golang
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000041ebb6061052e5b0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 14:34:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62367

--00000000000041ebb6061052e5b0
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm testing following code on rpi3 board (taken from
https://github.com/golang/go/issues/58548) :
main.go:
package main

func main() {
}

main.c:
#include <stdio.h>
#include <stdlib.h>
#include <dlfcn.h>

int main(int argc, char** argv)
{
    void *handle = dlopen("./libtest.so", RTLD_LAZY);
    if (!handle) {
        fprintf(stderr, "Error: %s\n", dlerror());
        return EXIT_FAILURE;
    }

    dlclose(handle);
    return EXIT_SUCCESS;
}

I'm cross compiling using yocto sdk:

go build -buildmode=c-shared -o libtest.so main.go
$ gcc -g main.c -o main
and when run main on target I'm hitting bus error:

$ ./main
  389.087824] Alignment trap: not handling instruction f9420a1f at
[<b6e5caa6>]
[  389.095171] 8<--- cut here ---
[  389.098249] Unhandled fault: alignment exception (0x811) at 0xbeaca374
[  389.104881] pgd = d43e80f0
[  389.107602] [beaca374] *pgd=be8ba831
[  389.134496] audit: type=1701 audit(1706797456.639:2): auid=4294967295
uid=0 gid=0 ses=4294967295 pid=2544 comm="main" exe="/home/root/main" sig=7
res=1
Bus error

I've tried glibc2.34 and also 2.36 (in kirkstone is 2.35) as described in
golang issu but no luck, it still behaves the same.

Any ideas what else to check please? Updating to the latest poky is not the
case unfortunately.

BR,

marek


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--00000000000041ebb6061052e5b0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m testing following=C2=A0code=
 on rpi3 board (taken from <a href=3D"https://github.com/golang/go/issues/5=
8548">https://github.com/golang/go/issues/58548</a>) :</div><div>main.go:<b=
r>package main<br><br>func main() {<br>}</div><div><br></div><div>main.c:<b=
r>#include &lt;stdio.h&gt;<br>#include &lt;stdlib.h&gt;<br>#include &lt;dlf=
cn.h&gt;<br><br>int main(int argc, char** argv)<br>{<br>=C2=A0 =C2=A0 void =
*handle =3D dlopen(&quot;./libtest.so&quot;, RTLD_LAZY);<br>=C2=A0 =C2=A0 i=
f (!handle) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(stderr, &quot;Error: %=
s\n&quot;, dlerror());<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return EXIT_FAILURE;<=
br>=C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 dlclose(handle);<br>=C2=A0 =C2=A0 r=
eturn EXIT_SUCCESS;<br>}</div><div><br></div><div>I&#39;m cross compiling=
=C2=A0using yocto sdk:</div><div><br></div><div>go build -buildmode=3Dc-sha=
red -o libtest.so main.go<br>$ gcc -g main.c -o main</div><div>and when run=
 main on target I&#39;m hitting bus error:</div><div><br>$ ./main<br>=C2=A0=
 389.087824] Alignment trap: not handling instruction f9420a1f at [&lt;b6e5=
caa6&gt;]<br>[ =C2=A0389.095171] 8&lt;--- cut here ---<br>[ =C2=A0389.09824=
9] Unhandled fault: alignment exception (0x811) at 0xbeaca374<br>[ =C2=A038=
9.104881] pgd =3D d43e80f0<br>[ =C2=A0389.107602] [beaca374] *pgd=3Dbe8ba83=
1<br>[ =C2=A0389.134496] audit: type=3D1701 audit(1706797456.639:2): auid=
=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 pid=3D2544 comm=3D&quot;main=
&quot; exe=3D&quot;/home/root/main&quot; sig=3D7 res=3D1<br>Bus error<br></=
div><div><br></div><div>I&#39;ve tried glibc2.34 and also 2.36 (in kirkston=
e is 2.35) as described in golang issu but no luck, it still behaves the sa=
me.</div><div><br></div><div>Any ideas what else to check please? Updating =
to the latest poky is not the case unfortunately.<br clear=3D"all"><div><br=
></div><div>BR,</div><div><br></div><div>marek</div><div><br></div><div><br=
></div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr=
" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">as simple an=
d primitive as possible<br>------------------------------------------------=
-<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova V=
es 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: m=
arekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://open-nandra.com=
" target=3D"_blank">http://open-nandra.com</a></div></div></div>

--00000000000041ebb6061052e5b0--

