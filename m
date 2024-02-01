Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8548CC48295
	for <webhook@archiver.kernel.org>; Fri,  2 Feb 2024 23:15:07 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.5010.1706816296281547674
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 11:38:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fZu6pYTX;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-295ff33ae32so1051856a91.2
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 11:38:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706816295; x=1707421095; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JByXJvA2J15uK6/w29u4TPGiTZTuFTg8NCvvxVSKjwM=;
        b=fZu6pYTXUzHT0xKuyhO4haGVLSc5t2044Kzg0wdeo2PHbZgkopMumNX6jq9EgxU7Nq
         CenX9SuU1vqoud10oRk6J61qqlSJ6LARlS6xkBpWp8I5tHfNeXfrvhCtSNoyTHsV97kn
         wAKEvt/2IlvuAREsCk4kuAoCoUSSAUhUo/vckGELa6rjP/3c4XgW4MrHJoml3O/61yU1
         K5JKPCF8d9srwzKox9R4JrOsOxEqbaQZm7lC2NYv15ih2Cl1AhS93X/ugw2Aq977oxdh
         10kQZak8/KU0ON3a0AdgkAwYsNkuXCRbeGnIYdVA/zSxB2z5GdcPnqjKpTtrE3Ouil5K
         OU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706816295; x=1707421095;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JByXJvA2J15uK6/w29u4TPGiTZTuFTg8NCvvxVSKjwM=;
        b=RCAlnEsVPJvUWAHl2w1g7WRuuD/5j11yoHuLOPRSrGxOEYc14s+MhZG0ftV2sXKYn5
         pNHfIN82+SCZFD1ERIMLO8I25aJyZGfngOTxiYehkc0ZJhGBtKOPLfcjQhMo7PxWzvoq
         xs5FpCkTWs5gIlvt0mfqaxDf+x13Bzh7zJD/b9GRIq8dASAlWrRenUdNX8vA/peMQmj7
         MPclwXVnWxO9G0wVc7rMZbYq4tIq4iN3taeaPYczeCi5N9KgcaHfp3nkIxlOakr0smpt
         awDdl0HJGMZgPQjdgR6UZBmUn2gCinoHHpdmuM3rhrVQ+VNsB3TOaxIzDvG5q4KBNLDH
         Cebg==
X-Gm-Message-State: AOJu0YxK3ndp7nvM0oE500Rm0xyUg3kso28jVbhFyqqJqXGdgKDwPj+c
	joU9AmafWgBJ4KXKZdmJ33qfdKS0OPt4zDsD/wKfJ1E9XrTSpYP/J1RP+qQAyLIXq2YNIKNPAQA
	VJyYsCzcbKQb1L5VkGwZvBa6Vdp4PRJNdG3s=
X-Google-Smtp-Source: AGHT+IH/1eX/c/aisu4U7Oa82Tn7WnL+95hrFSit5OCM9qaiYFRLi64ECIwr6hT6czHbEtJErFpyhZqo/42ZBoWWCjo=
X-Received: by 2002:a17:90a:e2d6:b0:28d:bab1:e94a with SMTP id
 fr22-20020a17090ae2d600b0028dbab1e94amr3445065pjb.32.1706816295348; Thu, 01
 Feb 2024 11:38:15 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv35xxBau9cj1e6d-a-ggoQmvg=5Fjw2pxm9MXY6Z4hhZgQ@mail.gmail.com>
In-Reply-To: <CAAfyv35xxBau9cj1e6d-a-ggoQmvg=5Fjw2pxm9MXY6Z4hhZgQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Feb 2024 20:38:03 +0100
Message-ID: <CAGAf8LwDy_GT-7LnRWKxkPK-er24hDisMq=hKXHX3a7LT9PFdQ@mail.gmail.com>
Subject: Re: [yocto] kirkstone bus error golang
To: yocto@lists.yoctoproject.org, marek.belisko@gmail.com
Content-Type: multipart/alternative; boundary="000000000000fb36300610572250"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Feb 2024 23:15:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62386

--000000000000fb36300610572250
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hmmmm... The guy solved this problem, using the following:

go/src/runtime/asm_arm.s

Line 31 in 40ed359

TEXT _rt0_arm_lib(SB),NOSPLIT,$104

where the function _rt0_arm_lib applied for a stack size of 104. I changed
it to 108 and this solves the issue.

I don't have much knowledge in assembly and processor architecture, so I'm
not sure why the misalignment happens here and what should be the correct
way to solve this issue.
_______

Where: the dir go/src/runtime/asm_arm.s should be as the full path:

/usr/lib/go/src/runtime/asm_arm.s

You should go there and fix the stack size in asm_arm.s (as this guy did).

I tried the same programs on my Fedora 39, and I do not have bus errors.

I hope this helps.

Zee
_______


On Thu, Feb 1, 2024 at 3:34=E2=80=AFPM Marek Belisko <marek.belisko@gmail.c=
om>
wrote:

> Hi,
>
> I'm testing following code on rpi3 board (taken from
> https://github.com/golang/go/issues/58548) :
> main.go:
> package main
>
> func main() {
> }
>
> main.c:
> #include <stdio.h>
> #include <stdlib.h>
> #include <dlfcn.h>
>
> int main(int argc, char** argv)
> {
>     void *handle =3D dlopen("./libtest.so", RTLD_LAZY);
>     if (!handle) {
>         fprintf(stderr, "Error: %s\n", dlerror());
>         return EXIT_FAILURE;
>     }
>
>     dlclose(handle);
>     return EXIT_SUCCESS;
> }
>
> I'm cross compiling using yocto sdk:
>
> go build -buildmode=3Dc-shared -o libtest.so main.go
> $ gcc -g main.c -o main
> and when run main on target I'm hitting bus error:
>
> $ ./main
>   389.087824] Alignment trap: not handling instruction f9420a1f at
> [<b6e5caa6>]
> [  389.095171] 8<--- cut here ---
> [  389.098249] Unhandled fault: alignment exception (0x811) at 0xbeaca374
> [  389.104881] pgd =3D d43e80f0
> [  389.107602] [beaca374] *pgd=3Dbe8ba831
> [  389.134496] audit: type=3D1701 audit(1706797456.639:2): auid=3D4294967=
295
> uid=3D0 gid=3D0 ses=3D4294967295 pid=3D2544 comm=3D"main" exe=3D"/home/ro=
ot/main" sig=3D7
> res=3D1
> Bus error
>
> I've tried glibc2.34 and also 2.36 (in kirkstone is 2.35) as described in
> golang issu but no luck, it still behaves the same.
>
> Any ideas what else to check please? Updating to the latest poky is not
> the case unfortunately.
>
> BR,
>
> marek
>
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
>=20
>
>

--000000000000fb36300610572250
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hmmmm... The guy solved this problem, using the following:=
<br><br>go/src/runtime/asm_arm.s<br><br>Line 31 in 40ed359<br><br>TEXT _rt0=
_arm_lib(SB),NOSPLIT,$104<br><br>where the function _rt0_arm_lib applied fo=
r a stack size of 104. I changed it to 108 and this solves the issue.<br><b=
r>I don&#39;t have much knowledge in assembly and processor architecture, s=
o I&#39;m not sure why the misalignment happens here and what should be the=
 correct way to solve this issue.<br>_______<br><br>Where: the dir go/src/r=
untime/asm_arm.s should be as the full path:<br><br>/usr/lib/go/src/runtime=
/asm_arm.s<br><br>You should go there and fix the stack size in asm_arm.s  =
(as this guy did).<br><br><div>I tried the same programs on my Fedora 39, a=
nd I do not have bus errors.</div><div><br></div><div>I hope this helps.</d=
iv><div><br></div><div>Zee</div><div>_______<br></div></div><br><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 1, 20=
24 at 3:34=E2=80=AFPM Marek Belisko &lt;<a href=3D"mailto:marek.belisko@gma=
il.com">marek.belisko@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I&=
#39;m testing following=C2=A0code on rpi3 board (taken from <a href=3D"http=
s://github.com/golang/go/issues/58548" target=3D"_blank">https://github.com=
/golang/go/issues/58548</a>) :</div><div>main.go:<br>package main<br><br>fu=
nc main() {<br>}</div><div><br></div><div>main.c:<br>#include &lt;stdio.h&g=
t;<br>#include &lt;stdlib.h&gt;<br>#include &lt;dlfcn.h&gt;<br><br>int main=
(int argc, char** argv)<br>{<br>=C2=A0 =C2=A0 void *handle =3D dlopen(&quot=
;./libtest.so&quot;, RTLD_LAZY);<br>=C2=A0 =C2=A0 if (!handle) {<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 fprintf(stderr, &quot;Error: %s\n&quot;, dlerror());<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return EXIT_FAILURE;<br>=C2=A0 =C2=A0 }<br><b=
r>=C2=A0 =C2=A0 dlclose(handle);<br>=C2=A0 =C2=A0 return EXIT_SUCCESS;<br>}=
</div><div><br></div><div>I&#39;m cross compiling=C2=A0using yocto sdk:</di=
v><div><br></div><div>go build -buildmode=3Dc-shared -o libtest.so main.go<=
br>$ gcc -g main.c -o main</div><div>and when run main on target I&#39;m hi=
tting bus error:</div><div><br>$ ./main<br>=C2=A0 389.087824] Alignment tra=
p: not handling instruction f9420a1f at [&lt;b6e5caa6&gt;]<br>[ =C2=A0389.0=
95171] 8&lt;--- cut here ---<br>[ =C2=A0389.098249] Unhandled fault: alignm=
ent exception (0x811) at 0xbeaca374<br>[ =C2=A0389.104881] pgd =3D d43e80f0=
<br>[ =C2=A0389.107602] [beaca374] *pgd=3Dbe8ba831<br>[ =C2=A0389.134496] a=
udit: type=3D1701 audit(1706797456.639:2): auid=3D4294967295 uid=3D0 gid=3D=
0 ses=3D4294967295 pid=3D2544 comm=3D&quot;main&quot; exe=3D&quot;/home/roo=
t/main&quot; sig=3D7 res=3D1<br>Bus error<br></div><div><br></div><div>I&#3=
9;ve tried glibc2.34 and also 2.36 (in kirkstone is 2.35) as described in g=
olang issu but no luck, it still behaves the same.</div><div><br></div><div=
>Any ideas what else to check please? Updating to the latest poky is not th=
e case unfortunately.<br clear=3D"all"><div><br></div><div>BR,</div><div><b=
r></div><div>marek</div><div><br></div><div><br></div><span class=3D"gmail_=
signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">=
as simple and primitive as possible<br>------------------------------------=
-------------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>=
Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184=
<br>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://ope=
n-nandra.com" target=3D"_blank">http://open-nandra.com</a></div></div></div=
>
<br>
<br>
<br>
</blockquote></div>

--000000000000fb36300610572250--

