Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web09.2134.1581497492026869343
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 00:51:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gCa7yCxN;
 spf=pass (domain: gmail.com, ip: 209.85.222.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id f7so556578uaa.8
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 00:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FPyLaLQ0g4KkuCSV30utuwvOgRi7TX44N+9H3W7IMnM=;
        b=gCa7yCxNI5SzoFSKsOH1aLoCYem5J7GEdVkrPn685sp4pi3TgibVek+Z1Ih2Sdc8Kb
         ISBfGfXdlTtYNfRSQ63XI6YZN/fdCpHJ85CKMX6jyEZ2+J1F30c2wIBIRB5C4TotLmtA
         J5t7A3V1VH7/fn7hbq2RwM+sVe8sJVK+UavBV6b6bQSyWSZZToclkuOeu21R2qX5BzOC
         XgtVQ6MRbX6RDD3hTgwwInPAFh3YBs5LeFuE+HbM8o2RWw9tNjCBsj1eil9m2XpY0zY7
         xsOC2o+5KhoCV5ir44zDQgsDJX5MTD+Dl3FJcM6f8CJnAqPRDASm6GZKf3QveOHdXHXU
         en1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FPyLaLQ0g4KkuCSV30utuwvOgRi7TX44N+9H3W7IMnM=;
        b=EsSyCI9dyayMK02ChYn/bSrD0CZKPtE+a3AJlCZS6ZzVVXYpaeMO5geCAmgXstp5Zt
         p4bg4yql2UEERDwlPX0AtJxWx3mvr5Z82jeXM+pMrJezo92GENfhIsg510xanoDuN+JT
         Wy/gmTN06G4loh4q8LWQfZgVuDmFaGzAm/HYQ0NRUtFvWt/o68RQURjY5Moubr2duAX1
         e/g6F5zWt6j7m9VYHsWlQlp5nI4GEEK4aoBK9nqZ9TN/1Ms6AmKexiYiUlOz6WxIx4kD
         zwe4+bGlG2OQz4brMg+0fLSv9b/clBc6vrkWpDgRsyzKTYUXiWQdvlGSnRuazGZADckX
         VOTA==
X-Gm-Message-State: APjAAAVdrzSJrV5A5Y1bMeK1+3NNV4ntnnTbqSZ4IJ3eQ9A+N71vSKI8
	kkLdmx9BipgI87zYkpPUhCBdNUr4XfNFYwXV13k=
X-Google-Smtp-Source: APXvYqwvxELTob20xirKTWZ/LIfD5fI95aZiPAzdDnzKQ3i8A/ObnoDm+elfvBBnvgxtC6Dmtj4AXlqvyxY9bHL7geM=
X-Received: by 2002:ab0:658d:: with SMTP id v13mr3736486uam.71.1581497491033;
 Wed, 12 Feb 2020 00:51:31 -0800 (PST)
MIME-Version: 1.0
References: <AM0P190MB07705DB273CD954279B282F3C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P190MB07705DB273CD954279B282F3C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 12 Feb 2020 09:51:19 +0100
Message-ID: <CANNYZj-q2rFtyHGdJfTO6e=7C0RrokZwTcCoVd-nHw1=trd+_A@mail.gmail.com>
Subject: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute binary applications from other x86-64 linux OSes
To: Christian Lohr <christian.lohr.ext@zeiss.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002a9372059e5d14c3"

--0000000000002a9372059e5d14c3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yocto generally does not support this use case. The binary was compiled in
a different environment and expects things in different places, and
probably being different versions too. I could point out the specific
problem why the executable doesn't even start, but it's really the wrong
way to approach it. Is the source code for it available?

Microsoft specifically lists which distributions are supported, and there
is nothing Yocto-based in it:
https://docs.microsoft.com/en-us/dotnet/core/install/dependencies?tabs=3Dn=
etcore31&pivots=3Dos-linux

For mono things you can use meta-mono layer, but I am not sure if it
provides exactly the item you're after.

Alex

On Wed, 12 Feb 2020 at 09:36, Christian Lohr <christian.lohr.ext@zeiss.com=
>
wrote:

> Hello,
>
>
>
> I=E2=80=99m trying to create a normal QEmu (x86-64) Image, which I can l=
et run in
> Virtualbox. As a addition I deployed .NET Core, which I got from this si=
de:
>
>
> https://dotnet.microsoft.com/download/dotnet-core/thank-you/runtime-aspn=
etcore-3.1.1-linux-x64-binaries
>
>
>
> But I can=E2=80=99t execute it:
>
> ----------------------------
>
> root@qemux86-64:/usr/share/dotnet# ./dotnet
>
> -sh: ./dotnet: No such file or directory
>
>
>
>
>
> But it is there:
>
> ------------------
>
> root@qemux86-64:/usr/share/dotnet# ls -lh
>
> total 116K
>
> -rw-r--r-- 1 root root 1.1K Feb 10 02:33 LICENSE.txt
>
> -rw-r--r-- 1 root root  31K Feb 10 02:33 ThirdPartyNotices.txt
>
> -rwxr-xr-x 1 root root  72K Feb 10 02:33 dotnet
>
> drwxr-xr-x 3 root root 4.0K Feb 10 02:36 host
>
> drwxr-xr-x 4 root root 4.0K Feb 10 02:36 shared
>
>
>
>
>
> It tried to get more information about the dotnet-executable
>
>
> ------------------------------------------------------------------------=
------
>
> root@qemux86-64:/usr/share/dotnet# readelf -h dotnet
>
> ELF Header:
>
>   Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
>
>   Class:                             ELF64
>
>   Data:                              2's complement, little endian
>
>   Version:                           1 (current)
>
>   OS/ABI:                            UNIX - System V
>
>   ABI Version:                       0
>
>   Type:                              EXEC (Executable file)
>
>   Machine:                           Advanced Micro Devices X86-64
>
>   Version:                           0x1
>
>   Entry point address:               0x402f17
>
>   Start of program headers:          64 (bytes into file)
>
>   Start of section headers:          71032 (bytes into file)
>
>   Flags:                             0x0
>
>   Size of this header:               64 (bytes)
>
>   Size of program headers:           56 (bytes)
>
>   Number of program headers:         10
>
>   Size of section headers:           64 (bytes)
>
>   Number of section headers:         31
>
>   Section header string table index: 30
>
>
>
> root@qemux86-64:/usr/share/dotnet#  file dotnet
>
> dotnet: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically
> linked, interpreter /lib64/ld-linux-x86-64.so.2, for GNU/Linux 2.6.32,
> BuildID[sha1]=3D28c244c1953bcbee994709a4b849086ee7cf0c99, stripped
>
>
>
>
>
> I compared those values with that from Python, which does run on this
> system
>
>
> ------------------------------------------------------------------------=
-------------------------------
>
> root@qemux86-64:/opt/jre-8/bin# readelf -h /usr/bin/python3.7
>
> ELF Header:
>
>   Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00
>
>   Class:                             ELF64
>
>   Data:                              2's complement, little endian
>
>   Version:                           1 (current)
>
>   OS/ABI:                            UNIX - System V
>
>   ABI Version:                       0
>
>   Type:                              DYN (Shared object file)
>
>   Machine:                           Advanced Micro Devices X86-64
>
>   Version:                           0x1
>
>   Entry point address:               0x1060
>
>   Start of program headers:          64 (bytes into file)
>
>   Start of section headers:          12568 (bytes into file)
>
>   Flags:                             0x0
>
>   Size of this header:               64 (bytes)
>
>   Size of program headers:           56 (bytes)
>
>   Number of program headers:         11
>
>   Size of section headers:           64 (bytes)
>
>   Number of section headers:         27
>
>   Section header string table index: 26
>
>
>
> root@qemux86-64:/usr/share/dotnet# file /usr/bin/python3.7
>
> /usr/bin/python3.7: ELF 64-bit LSB pie executable, x86-64, version 1
> (SYSV), dynamically linked, interpreter /lib/ld-linux-x86-64.so.2,
> BuildID[sha1]=3Da455873f278466378405802b0e0171337e52a81c, for GNU/Linux
> 3.2.0, stripped
>
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
>
>
>
> The only difference I found, is that Python is a =E2=80=9CELF 64-bit LSB=
 pie
> executable=E2=80=9D whereas dotnet is a =E2=80=9CELF 64-bit LSB executab=
le=E2=80=9D. I tried to
> turn that PIE (seemed to be a gcc option: --enable-default-pie) feature =
of,
> but that didn=E2=80=99t work well, and I couldn=E2=80=99t find a way to =
remove it.
>
>
>
>
>
> ----
>
>
>
> Best regards,
>
>
>
> Christian Lohr
>
> Im Auftrag von:
>
> Carl Zeiss Meditec AG
> G=C3=B6schwitzer Strasse 51-52
>
> 07745 Jena, Deutschland
>
> christian.lohr.ext@zeiss.com
>
> Tel: +493641220206
>
>
>
>
>
>
>=20
>

--0000000000002a9372059e5d14c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yocto generally does not support this use case. The b=
inary was compiled in a different environment and expects things in differe=
nt places, and probably being different versions too. I could point out the=
 specific problem why the executable doesn&#39;t even start, but it&#39;s r=
eally the wrong way to approach it. Is the source code for it available?<br=
></div><div><br></div><div>Microsoft specifically lists which distributions=
 are supported, and there is nothing Yocto-based in it:</div><div><a href=
=3D"https://docs.microsoft.com/en-us/dotnet/core/install/dependencies?tabs=
=
=3Dnetcore31&amp;pivots=3Dos-linux">https://docs.microsoft.com/en-us/dotne=
t/core/install/dependencies?tabs=3Dnetcore31&amp;pivots=3Dos-linux</a></div=
><div><br></div><div>For mono things you can use meta-mono layer, but I am =
not sure if it provides exactly the item you&#39;re after. <br></div><div><=
br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, 12 Feb 2020 at 09:36, Christian Lohr=
 &lt;<a href=3D"mailto:christian.lohr.ext@zeiss.com">christian.lohr.ext@zei=
ss.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">





<div lang=3D"DE">
<div class=3D"gmail-m_4655275762452812139WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif">Hello,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">I=E2=80=99m trying to create a normal Q=
Emu (x86-64) Image, which I can let run in Virtualbox. As a addition I depl=
oyed .NET Core, which I got from this side:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><a href=3D"https://dotnet.microsoft.com/download/do=
tnet-core/thank-you/runtime-aspnetcore-3.1.1-linux-x64-binaries" target=3D"=
_blank"><span lang=3D"EN-US">https://dotnet.microsoft.com/download/dotnet-c=
ore/thank-you/runtime-aspnetcore-3.1.1-linux-x64-binaries</span></a><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">But I can=E2=80=99t execute it:<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">----------------------------<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/usr/share/dotnet# ./do=
tnet
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">-sh: ./dotnet: No such file or director=
y<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">But it is there:<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">------------------<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/usr/share/dotnet# ls -=
lh<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">total 116K<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">-rw-r--r-- 1 root root 1.1K Feb 10 02:3=
3 LICENSE.txt<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">-rw-r--r-- 1 root root=C2=A0 31K Feb 10=
 02:33 ThirdPartyNotices.txt<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">-rwxr-xr-x 1 root root=C2=A0 72K Feb 10=
 02:33 dotnet<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">drwxr-xr-x 3 root root 4.0K Feb 10 02:3=
6 host<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">drwxr-xr-x 4 root root 4.0K Feb 10 02:3=
6 shared<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">It tried to get more information about =
the dotnet-executable<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">---------------------------------------=
---------------------------------------<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/usr/share/dotnet# read=
elf -h dotnet
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">ELF Header:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Magic:=C2=A0=C2=A0 7f 45 4c 46 0=
2 01 01 00 00 00 00 00 00 00 00 00
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0=C2=A0Class:=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0ELF64<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Data:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 2&#39;s complement, little endian<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 (current)<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 OS/ABI:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UNIX - =
System V<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 ABI Version:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Type:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0EXEC (Executable file)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Machine:=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Advanced Micr=
o Devices X86-64<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x1<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Entry point address:=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=
x402f17<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Start of program headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes into file)<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Start of section headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 71032 (bytes into file)<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Flags:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=
x0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of this header:=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6=
4 (bytes)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of program headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 56 (bytes)<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Number of program headers:=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of section headers:=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A064 (bytes)<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Number of section headers:=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 31<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Section header string table inde=
x: 30<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/usr/share/dotnet# =C2=
=A0file dotnet<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">dotnet: ELF 64-bit LSB executable, x86-=
64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-6=
4.so.2, for GNU/Linux 2.6.32, BuildID[sha1]=3D28c244c1953bcbee994709a4b8490=
86ee7cf0c99,
 stripped<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">I compared those values with that from =
Python, which does run on this system<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">---------------------------------------=
----------------------------------------------------------------<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/opt/jre-8/bin# readelf=
 -h /usr/bin/python3.7<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">ELF Header:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Magic:=C2=A0=C2=A0 7f 45 4c 46 0=
2 01 01 00 00 00 00 00 00 00 00 00
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0=C2=A0Class:=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 ELF64<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Data:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 2&#39;s complement, little endian<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 (current)<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 OS/ABI:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0UNIX - S=
ystem V<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 ABI Version:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Type:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 DYN (Shared object file)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Machine:=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Advanced Micr=
o Devices X86-64<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x1<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Entry point address:=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=
x1060<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Start of program headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes into file)<u></=
u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Start of section headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12568 (bytes into file)<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Flags:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=
x0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of this header:=C2=A0=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6=
4 (bytes)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of program headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 56 (bytes)<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Number of program headers:=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of section headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes)<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Number of section headers:=C2=A0=
=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 27<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Section header string table inde=
x: 26<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# file /usr/bin/pytho=
n3.7<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">/usr/bin/python3.7: ELF 64-bit LSB pie =
executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib/=
ld-linux-x86-64.so.2, BuildID[sha1]=3Da455873f278466378405802b0e0171337e52a=
81c,
 for GNU/Linux 3.2.0, stripped<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<u></u><u></u></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">The only difference I found, is that Py=
thon is a =E2=80=9CELF 64-bit LSB pie executable=E2=80=9D whereas dotnet is=
 a =E2=80=9CELF 64-bit LSB executable=E2=80=9D. I tried to turn that PIE (s=
eemed
 to be a gcc option: --enable-default-pie) feature of, but that didn=E2=80=
=
=99t work well, and I couldn=E2=80=99t find a way to remove it.<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">----<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US">Best regards,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-si=
ze:10pt;font-family:&quot;Arial&quot;,sans-serif">Christian Lohr<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-si=
ze:10pt;font-family:&quot;Arial&quot;,sans-serif">Im Auftrag von:<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-si=
ze:10pt;font-family:&quot;Arial&quot;,sans-serif">Carl Zeiss Meditec AG<br>
G=C3=B6schwitzer Strasse 51-52<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-si=
ze:10pt;font-family:&quot;Arial&quot;,sans-serif">07745 Jena, Deutschland<u=
></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-si=
ze:10pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"ma=
ilto:christian.lohr.ext@zeiss.com" target=3D"_blank">christian.lohr.ext@zei=
ss.com</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Ari=
al&quot;,sans-serif">Tel: +493641220206</span><span style=3D"font-size:10pt=
;font-family:&quot;Arial&quot;,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-si=
ze:10pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><u></u>=C2=A0=
<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-si=
ze:10pt;color:black"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>
</blockquote></div>

--0000000000002a9372059e5d14c3--
