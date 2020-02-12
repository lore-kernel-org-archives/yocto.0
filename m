Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web12.3107.1581505181395608119
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 02:59:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VIv7ZzxS;
 spf=pass (domain: gmail.com, ip: 209.85.222.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id w15so700823uap.0
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 02:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Wv4Npws13XfBRZTdUZFvfeZ7vNJFP1/KkBG68oIb7G4=;
        b=VIv7ZzxStcaFaVKA/FOPz0Eg2OUw+IBw/o2o88FuaK5zSgYq/G/0JqlmwhuQ4TqdUu
         BeSWmwHtHLIkh35652+1kcKulg8jsZc/Mw0KXnTdbU2fNly7ci/4J++9TIAGXUehBpTA
         I+354Uh6MMfzfcd0ASJQWeV6TJvnHSGb9dnLkJ4L2KeoOxLrWUngPvDjWr99Uaiz9p94
         RTh6veE/bz+nEprOzzGxYcGv/bHrKyiRL8a+S9sFElC1zwnfG/uP7pWHlwB+KEAOuwAJ
         lGX+3AHAtK9ybaXK17E69VJ+hWCgplnSTVPh0CHolVrt9DTQ258r+eu1FHLXGw04WvW5
         03yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Wv4Npws13XfBRZTdUZFvfeZ7vNJFP1/KkBG68oIb7G4=;
        b=hQdLbOeSP2V8lLIUq1sTHhvXk9OMsW40PfjTDm8tAZK9BmHnUqMSF/xSgMrc5zqi0J
         7lqbYgNorAKmIY4vCgijVKMS5gNG8xqXH2VzojpdOMUMv3UAI7YuVa/rbCojTENJpNNl
         L2MpkwvSm33XgNeaF1ls7dflqo+VFZ2MzIpvycjqwTBo2rL0ZeNubbQ6km3YIEDEZ1I2
         Qv60ExSageZZjkVfqQukebwT5xGdeErZCBTh2uiZv7U4lSdm2Hm1JUiaHwxhBBna2uE3
         RrPkGlJ6C+frv/hNdh8ujo7v77atqpkhWga4OOcB2xwYtjOrSexXV6E+oZ4Zv+xkQ0ZA
         2TGA==
X-Gm-Message-State: APjAAAWOc3t5arZ5ht4IoKUmIi//FI/bjlqAI1Rs6zv+Fb3NNkgX1Mre
	hG2wnay7OqZVtVNPkLyVUCyMz2Tx6zum0Jqdbe0=
X-Google-Smtp-Source: APXvYqwXffKRQs1HGtv3md+SRpMEwCQ7X3DhQGKXVdMU3LjmrZyLcmMSvMczVtU9mtJ0TkqSwxMPTvAghlHqGkjPXpA=
X-Received: by 2002:ab0:7802:: with SMTP id x2mr4341912uaq.100.1581505180467;
 Wed, 12 Feb 2020 02:59:40 -0800 (PST)
MIME-Version: 1.0
References: <AM0P190MB07705DB273CD954279B282F3C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj-q2rFtyHGdJfTO6e=7C0RrokZwTcCoVd-nHw1=trd+_A@mail.gmail.com>
 <AM0P190MB07703F67D36E568E0AB7671CC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj_pP_-zSAUMt18Dh9_6LQCgWh-C7vjD-ygTOggFq-v7vA@mail.gmail.com> <AM0P190MB0770F8B1522BC252623F7098C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P190MB0770F8B1522BC252623F7098C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 12 Feb 2020 12:00:10 +0100
Message-ID: <CANNYZj8L5u197TNh9XNFed-U+8MLUb6r=58qyFSdkr6ubj4LMg@mail.gmail.com>
Subject: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute binary applications from other x86-64 linux OSes
To: "Lohr, Christian [ext]" <christian.lohr.ext@zeiss.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007e07da059e5eded4"

--0000000000007e07da059e5eded4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

But this is exactly what happens: the kernel reads the dynamic
loader/interpreter path from the binary (which is different than the list
of dynamically linked libraries printed by ldd), isn't able to find it and
stops right there.

Try like this:

/lib/ld-linux-x86-64.so.2 /usr/share/dotnet/dotnet

Alex


On Wed, 12 Feb 2020 at 11:45, Lohr, Christian [ext] <
christian.lohr.ext@zeiss.com> wrote:

> I used the x86_64 variant from the layer (it only downloads the binaries
> and copies them).
>
> And I checked that with ldd, it seemed ok so far:
>
> ---------------------------------------------------------
>
> root@qemux86-64:/usr/share/dotnet# ldd dotnet
>
>             linux-vdso.so.1 (0x00007fffea543000)
>
>             libpthread.so.0 =3D> /lib/libpthread.so.0 (0x00007f9fde06c000=
)
>
>             libdl.so.2 =3D> /lib/libdl.so.2 (0x00007f9fde067000)
>
>             libstdc++.so.6 =3D> /usr/lib/libstdc++.so.6 (0x00007f9fddee50=
00)
>
>             libm.so.6 =3D> /lib/libm.so.6 (0x00007f9fddda4000)
>
>             libgcc_s.so.1 =3D> /lib/libgcc_s.so.1 (0x00007f9fddd8a000)
>
>             libc.so.6 =3D> /lib/libc.so.6 (0x00007f9fddbd0000)
>
>             /lib64/ld-linux-x86-64.so.2 =3D> /lib/ld-linux-x86-64.so.2
> (0x00007f9fde097000)
>
>
>
> Strace didn=E2=80=99t help either:
>
> -------------------------------
>
> root@qemux86-64:/# strace /usr/share/dotnet/dotnet
>
> execve("/usr/share/dotnet/dotnet", ["/usr/share/dotnet/dotnet"],
> 0x7ffe22f0ab70 /* 22 vars */) =3D -1 ENOENT (No such file or directory)
>
> strace: exec: No such file or directory
>
> +++ exited with 1 +++
>
>
>
> It=E2=80=99s strange that it denies that the binaries are there. Normally=
 I would
> have expected something like =E2=80=9Cwrong elf architecture=E2=80=9D or =
something about
> missing libraries. The only thing I think I could do now, is to turn this
> =E2=80=9C=E2=80=94enable-default-pie=E2=80=9D off, but I=E2=80=99m not su=
re if this helps, and I don=E2=80=99t know
> where to turn it off. And what I=E2=80=99m also trying is to go back to Y=
octo Rocko
> Release (for this experiment I used Warrior Release)
>
>
>
> *Von:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *Im
> Auftrag von *Alexander Kanavin
> *Gesendet:* Mittwoch, 12. Februar 2020 10:26
> *An:* Lohr, Christian [ext] <christian.lohr.ext@zeiss.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Betreff:* Re: [yocto] Creating a QEmu (x86-64) Image, which can execute
> binary applications from other x86-64 linux OSes
>
>
>
> That layer does have the x86_64 variant as well, no? Is it not working?
>
>
> https://github.com/RDunkley/meta-dotnet-core/blob/master/recipes-runtime/=
dotnet-core/dotnet-core_3.1.1.inc
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgith=
ub.com%2FRDunkley%2Fmeta-dotnet-core%2Fblob%2Fmaster%2Frecipes-runtime%2Fdo=
tnet-core%2Fdotnet-core_3.1.1.inc&data=3D02%7C01%7C%7C9fcdf4961c734162c5d00=
8d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637170963895389857=
&sdata=3DcNLHxV3mxEXWObfdhyjXlArkg1xdRc7O7jeXERP%2BpKk%3D&reserved=3D0>
>
>
>
> The error you're seeing is almost certainly due to Yocto using
> /lib/ld-so... for dynamic loader, and the binary hardcoding /lib64/....
>
>
>
> Alex
>
>
>
> On Wed, 12 Feb 2020 at 10:15, Lohr, Christian [ext] <
> christian.lohr.ext@zeiss.com> wrote:
>
> Hello Alex,
>
>
>
> Thanks for replying. Yes, I know that this isn=E2=80=99t the way it works=
 on Yocto
> (and I told the managers it is a crappy idea to do that more than once).
> But they need .NET Core in that company I work for, and Mono doesn=E2=80=
=99t work
> (that=E2=80=99s what they told me). Compiling .NET Core through the Yocto=
 process
> is ugly, because Microsoft used a mixture of shell scripts to compile it
> for some platforms, it won=E2=80=99t work this way on Yocto. Actually one=
 already
> tried it, but only until .NET Core 2.2:
> https://github.com/Tragetaschen/meta-aspnet
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgith=
ub.com%2FTragetaschen%2Fmeta-aspnet&data=3D02%7C01%7C%7C9fcdf4961c734162c5d=
008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C6371709638953898=
57&sdata=3Di%2B0qmtpQc21O1%2FFxhPOmpzKTC8tSZuf%2FXT6pHOi%2Bcrk%3D&reserved=
=3D0>
>
> And despite this, I already managed to get the dotnet binaries for ARM32
> and ARM64 already working on a i.MX6 and i.MX8
>
> There=E2=80=99s a layer which just deploys the binaries:
> https://github.com/RDunkley/meta-dotnet-core
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgith=
ub.com%2FRDunkley%2Fmeta-dotnet-core&data=3D02%7C01%7C%7C9fcdf4961c734162c5=
d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637170963895399=
810&sdata=3D7mJmB7jX6AkoZVgSX4GK3nDRvdHW1%2FBqYy1SXQiCA1Q%3D&reserved=3D0>
>
> This is currently the last step. I thought if it worked on i.MX6 and i.MX=
8
> it shouldn=E2=80=99t be a problem to get it running on Virtualbox with x8=
6-64. It
> should only make the things easy for the developers. It isn=E2=80=99t eve=
n our
> target platform.
>
>
>
> Best regards,
>
>
>
>
>
> Christian Lohr
>
> *Von:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *Im
> Auftrag von *Alexander Kanavin
> *Gesendet:* Mittwoch, 12. Februar 2020 09:51
> *An:* Lohr, Christian [ext] <christian.lohr.ext@zeiss.com>
> *Cc:* yocto@lists.yoctoproject.org
> *Betreff:* Re: [yocto] Creating a QEmu (x86-64) Image, which can execute
> binary applications from other x86-64 linux OSes
>
>
>
> Yocto generally does not support this use case. The binary was compiled i=
n
> a different environment and expects things in different places, and
> probably being different versions too. I could point out the specific
> problem why the executable doesn't even start, but it's really the wrong
> way to approach it. Is the source code for it available?
>
>
>
> Microsoft specifically lists which distributions are supported, and there
> is nothing Yocto-based in it:
>
>
> https://docs.microsoft.com/en-us/dotnet/core/install/dependencies?tabs=3D=
netcore31&pivots=3Dos-linux
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fdocs=
.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Finstall%2Fdependencies%3Ftabs%3Dne=
tcore31%26pivots%3Dos-linux&data=3D02%7C01%7C%7C9fcdf4961c734162c5d008d7af9=
da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637170963895399810&sdata=
=3DR%2B7kWekYa8He%2F7zp9lzpkmhbghrz8CMYiXs4f7HrXzM%3D&reserved=3D0>
>
>
>
> For mono things you can use meta-mono layer, but I am not sure if it
> provides exactly the item you're after.
>
>
>
> Alex
>
>
>
> On Wed, 12 Feb 2020 at 09:36, Christian Lohr <christian.lohr.ext@zeiss.co=
m>
> wrote:
>
> Hello,
>
>
>
> I=E2=80=99m trying to create a normal QEmu (x86-64) Image, which I can le=
t run in
> Virtualbox. As a addition I deployed .NET Core, which I got from this sid=
e:
>
>
> https://dotnet.microsoft.com/download/dotnet-core/thank-you/runtime-aspne=
tcore-3.1.1-linux-x64-binaries
> <https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fdotn=
et.microsoft.com%2Fdownload%2Fdotnet-core%2Fthank-you%2Fruntime-aspnetcore-=
3.1.1-linux-x64-binaries&data=3D02%7C01%7C%7C9fcdf4961c734162c5d008d7af9da3=
94%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637170963895409777&sdata=3D=
hcbhbcd6Qc1PLEtMWTLRd6zOdrFBojA%2B9hp%2FF9IWbdE%3D&reserved=3D0>
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
> -------------------------------------------------------------------------=
-----
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
> -------------------------------------------------------------------------=
------------------------------
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
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
>
>
>
> The only difference I found, is that Python is a =E2=80=9CELF 64-bit LSB =
pie
> executable=E2=80=9D whereas dotnet is a =E2=80=9CELF 64-bit LSB executabl=
e=E2=80=9D. I tried to
> turn that PIE (seemed to be a gcc option: --enable-default-pie) feature o=
f,
> but that didn=E2=80=99t work well, and I couldn=E2=80=99t find a way to r=
emove it.
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
>
>
>
>

--0000000000007e07da059e5eded4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">But this is exactly what happens: the kernel reads the dyn=
amic loader/interpreter path from the binary (which is different than the l=
ist of dynamically linked libraries printed by ldd), isn&#39;t able to find=
 it and stops right there.<div><br></div><div>Try like this:</div><div><br>=
</div><div>/lib/ld-linux-x86-64.so.2 /usr/share/dotnet/dotnet</div><div><br=
></div><div>Alex</div><div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Wed, 12 Feb 2020 at 11:45, Lohr, Ch=
ristian [ext] &lt;<a href=3D"mailto:christian.lohr.ext@zeiss.com">christian=
.lohr.ext@zeiss.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-styl=
e:solid;border-left-color:rgb(204,204,204);padding-left:1ex">





<div lang=3D"DE">
<div class=3D"gmail-m_1877212607852837261WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">I used the x86_64 variant from the layer (it only do=
wnloads the binaries and copies them).<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">And I checked that with ldd, it seemed ok so far:<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">----------------------------------------------------=
-----<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">root@qemux86-64:/usr/share/dotnet# ldd dotnet<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 linux-vdso.so.1 (0x00007fffea543000)<u></u><u></u></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 libpthread.so.0 =3D&gt; /lib/libpthread.so.0 (0x00007f9fde0=
6c000)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 libdl.so.2 =3D&gt; /lib/libdl.so.2 (0x00007f9fde067000)<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
</span><span style=3D"font-size:10pt;font-family:Arial,sans-serif">libstdc+=
+.so.6 =3D&gt; /usr/lib/libstdc++.so.6 (0x00007f9fddee5000)<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,sans-=
serif">libm.so.6 =3D&gt; /lib/libm.so.6 (0x00007f9fddda4000)<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 libgcc_s.so.1 =3D&gt; /lib/libgcc_s.so.1 (0x00007f9fddd8a00=
0)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 libc.so.6 =3D&gt; /lib/libc.so.6 (0x00007f9fddbd0000)<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 /lib64/ld-linux-x86-64.so.2 =3D&gt; /lib/ld-linux-x86-64.so=
.2 (0x00007f9fde097000)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">Strace didn=E2=80=99t help either:<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">-------------------------------<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">root@qemux86-64:/# strace /usr/share/dotnet/dotnet
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">execve(&quot;/usr/share/dotnet/dotnet&quot;, [&quot;=
/usr/share/dotnet/dotnet&quot;], 0x7ffe22f0ab70 /* 22 vars */) =3D -1 ENOEN=
T (No such file or directory)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">strace: exec: No such file or directory<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">+++ exited with 1 +++<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">It=E2=80=99s strange that it denies that the binarie=
s are there. Normally I would have expected something like =E2=80=9Cwrong e=
lf architecture=E2=80=9D or something
 about missing libraries. The only thing I think I could do now, is to turn=
 this =E2=80=9C=E2=80=94enable-default-pie=E2=80=9D off, but I=E2=80=99m no=
t sure if this helps, and I don=E2=80=99t know where to turn it off. And wh=
at I=E2=80=99m also trying is to go back to Yocto Rocko Release (for this e=
xperiment
 I used Warrior Release)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b>Von:</b> <a href=3D"mailto:yocto@lists.yoctoproje=
ct.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"m=
ailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproj=
ect.org</a>&gt;
<b>Im Auftrag von </b>Alexander Kanavin<br>
<b>Gesendet:</b> Mittwoch, 12. Februar 2020 10:26<br>
<b>An:</b> Lohr, Christian [ext] &lt;<a href=3D"mailto:christian.lohr.ext@z=
eiss.com" target=3D"_blank">christian.lohr.ext@zeiss.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Betreff:</b> Re: [yocto] Creating a QEmu (x86-64) Image, which can execu=
te binary applications from other x86-64 linux OSes<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">That layer does have the x86_64 variant as well, no?=
 Is it not working?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://eur01.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fgithub.com%2FRDunkley%2Fmeta-dotnet-core%2Fblob%=
2Fmaster%2Frecipes-runtime%2Fdotnet-core%2Fdotnet-core_3.1.1.inc&amp;data=
=3D02%7C01%7C%7C9fcdf4961c734162c5d008d7af9da394%7C28042244bb514cd680347776=
fa3703e8%7C1%7C0%7C637170963895389857&amp;sdata=3DcNLHxV3mxEXWObfdhyjXlArkg=
1xdRc7O7jeXERP%2BpKk%3D&amp;reserved=3D0" target=3D"_blank">https://github.=
com/RDunkley/meta-dotnet-core/blob/master/recipes-runtime/dotnet-core/dotne=
t-core_3.1.1.inc</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">The error you&#39;re seeing is almost certainly due =
to Yocto using /lib/ld-so... for dynamic loader, and the binary hardcoding =
/lib64/....<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Alex<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, 12 Feb 2020 at 10:15, Lohr, Christian [ext] =
&lt;<a href=3D"mailto:christian.lohr.ext@zeiss.com" target=3D"_blank">chris=
tian.lohr.ext@zeiss.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-style:none none none solid;border-left-width:1p=
t;border-left-color:rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4.=
8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif">Hello Alex,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">Thanks for replying. Yes, I know that this isn=E2=80=
=99t the way it works on Yocto (and I told the managers it
 is a crappy idea to do that more than once). But they need .NET Core in th=
at company I work for, and Mono doesn=E2=80=99t work (that=E2=80=99s what t=
hey told me). Compiling .NET Core through the Yocto process is ugly, becaus=
e Microsoft used a mixture of shell scripts to compile
 it for some platforms, it won=E2=80=99t work this way on Yocto. Actually o=
ne already tried it, but only until .NET Core 2.2:
</span><a href=3D"https://eur01.safelinks.protection.outlook.com/?url=3Dhtt=
ps%3A%2F%2Fgithub.com%2FTragetaschen%2Fmeta-aspnet&amp;data=3D02%7C01%7C%7C=
9fcdf4961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0=
%7C637170963895389857&amp;sdata=3Di%2B0qmtpQc21O1%2FFxhPOmpzKTC8tSZuf%2FXT6=
pHOi%2Bcrk%3D&amp;reserved=3D0" target=3D"_blank"><span lang=3D"EN-US">http=
s://github.com/Tragetaschen/meta-aspnet</span></a><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">And despite this, I already managed to get the dotne=
t binaries for ARM32 and ARM64 already working on
 a i.MX6 and i.MX8</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">There=E2=80=99s a layer which j=
ust deploys the binaries:
<a href=3D"https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fgithub.com%2FRDunkley%2Fmeta-dotnet-core&amp;data=3D02%7C01%7C%7C9fcdf4=
961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637=
170963895399810&amp;sdata=3D7mJmB7jX6AkoZVgSX4GK3nDRvdHW1%2FBqYy1SXQiCA1Q%3=
D&amp;reserved=3D0" target=3D"_blank">
https://github.com/RDunkley/meta-dotnet-core</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">This is currently the last step. I thought if it wor=
ked on i.MX6 and i.MX8 it shouldn=E2=80=99t be a problem to
 get it running on Virtualbox with x86-64. It should only make the things e=
asy for the developers. It isn=E2=80=99t even our target platform.</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">Best regards,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif">Christian Lohr</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><b>Von:</b>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>Im Auftrag von </b>Alexander Kanavin<br>
<b>Gesendet:</b> Mittwoch, 12. Februar 2020 09:51<br>
<b>An:</b> Lohr, Christian [ext] &lt;<a href=3D"mailto:christian.lohr.ext@z=
eiss.com" target=3D"_blank">christian.lohr.ext@zeiss.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Betreff:</b> Re: [yocto] Creating a QEmu (x86-64) Image, which can execu=
te binary applications from other x86-64 linux OSes<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Yocto generally does not support this use case. The =
binary was compiled in a different environment and expects things in differ=
ent places, and probably being different versions
 too. I could point out the specific problem why the executable doesn&#39;t=
 even start, but it&#39;s really the wrong way to approach it. Is the sourc=
e code for it available?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Microsoft specifically lists which distributions are=
 supported, and there is nothing Yocto-based in it:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://eur01.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Fins=
tall%2Fdependencies%3Ftabs%3Dnetcore31%26pivots%3Dos-linux&amp;data=3D02%7C=
01%7C%7C9fcdf4961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8=
%7C1%7C0%7C637170963895399810&amp;sdata=3DR%2B7kWekYa8He%2F7zp9lzpkmhbghrz8=
CMYiXs4f7HrXzM%3D&amp;reserved=3D0" target=3D"_blank">https://docs.microsof=
t.com/en-us/dotnet/core/install/dependencies?tabs=3Dnetcore31&amp;pivots=3D=
os-linux</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">For mono things you can use meta-mono layer, but I a=
m not sure if it provides exactly the item you&#39;re after.
<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Alex<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, 12 Feb 2020 at 09:36, Christian Lohr &lt;<a =
href=3D"mailto:christian.lohr.ext@zeiss.com" target=3D"_blank">christian.lo=
hr.ext@zeiss.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-style:none none none solid;border-left-width:1p=
t;padding:0cm 0cm 0cm 6pt;margin:5pt 0cm 5pt 4.8pt;border-color:currentcolo=
r currentcolor currentcolor rgb(204,204,204)">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif">Hello,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">I=E2=80=99m trying to create a normal QEmu (x86-64) =
Image, which I can let run in Virtualbox. As a addition I
 deployed .NET Core, which I got from this side:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><a href=3D"https://eur01.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fdotnet.microsoft.com%2Fdownload%2Fdotnet-core%2F=
thank-you%2Fruntime-aspnetcore-3.1.1-linux-x64-binaries&amp;data=3D02%7C01%=
7C%7C9fcdf4961c734162c5d008d7af9da394%7C28042244bb514cd680347776fa3703e8%7C=
1%7C0%7C637170963895409777&amp;sdata=3Dhcbhbcd6Qc1PLEtMWTLRd6zOdrFBojA%2B9h=
p%2FF9IWbdE%3D&amp;reserved=3D0" target=3D"_blank"><span lang=3D"EN-US">htt=
ps://dotnet.microsoft.com/download/dotnet-core/thank-you/runtime-aspnetcore=
-3.1.1-linux-x64-binaries</span></a><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">But I can=E2=80=99t execute it:</span><u></u><u></u>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">----------------------------</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">root@qemux86-64:/usr/share/dotnet# ./dotnet
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">-sh: ./dotnet: No such file or directory</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">But it is there:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">------------------</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">root@qemux86-64:/usr/share/dotnet# ls -lh</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">total 116K</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">-rw-r--r-- 1 root root 1.1K Feb 10 02:33 LICENSE.txt=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">-rw-r--r-- 1 root root=C2=A0 31K Feb 10 02:33 ThirdP=
artyNotices.txt</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">-rwxr-xr-x 1 root root=C2=A0 72K Feb 10 02:33 dotnet=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">drwxr-xr-x 3 root root 4.0K Feb 10 02:36 host</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">drwxr-xr-x 4 root root 4.0K Feb 10 02:36 shared</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">It tried to get more information about the dotnet-ex=
ecutable</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">----------------------------------------------------=
--------------------------</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">root@qemux86-64:/usr/share/dotnet# readelf -h dotnet
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">ELF Header:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Magic:=C2=A0=C2=A0 7f 45 4c 46 02 01 01 00 00=
 00 00 00 00 00 00 00
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0=C2=A0Class:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ELF64</span>=
<u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Data:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2&#39;s comple=
ment, little endian</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 (current)</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 OS/ABI:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UNIX - System V</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 ABI Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Type:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0EXEC (Execut=
able file)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Machine:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Advanced Micro Devices X86-64=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Entry point address:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x402f17</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Start of program headers:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes into file)</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Start of section headers:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 71032 (bytes into file)</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Flags:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Size of this header:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes)</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Size of program headers:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 56 (bytes)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Number of program headers:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Size of section headers:=C2=A0 =C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A064 (bytes)</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Number of section headers:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 31</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Section header string table index: 30</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">root@qemux86-64:/usr/share/dotnet# =C2=A0file dotnet=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">dotnet: ELF 64-bit LSB executable, x86-64, version 1=
 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2,
 for GNU/Linux 2.6.32, BuildID[sha1]=3D28c244c1953bcbee994709a4b849086ee7cf=
0c99, stripped</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">I compared those values with that from Python, which=
 does run on this system</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">----------------------------------------------------=
---------------------------------------------------</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">root@qemux86-64:/opt/jre-8/bin# readelf -h /usr/bin/=
python3.7</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">ELF Header:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Magic:=C2=A0=C2=A0 7f 45 4c 46 02 01 01 00 00=
 00 00 00 00 00 00 00
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0=C2=A0Class:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ELF64</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Data:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2&#39;s comple=
ment, little endian</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 (current)</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 OS/ABI:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0UNIX - System V</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 ABI Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Type:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DYN (Shared ob=
ject file)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Machine:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Advanced Micro Devices X86-64=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x1</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Entry point address:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x1060</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Start of program headers:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes into file)</span><u></u><u><=
/u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Start of section headers:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12568 (bytes into file)</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Flags:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0</span><u></u><u>=
</u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Size of this header:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes)</sp=
an><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Size of program headers:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 56 (bytes)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Number of program headers:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Size of section headers:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Number of section headers:=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 27</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0 Section header string table index: 26</span><=
u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif">root@qemux86-64:/usr/share/dotnet# file /usr/bin/python3.7</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">/usr/bin/python3.7: ELF 64-bit LSB pie executable, x=
86-64, version 1 (SYSV), dynamically linked, interpreter
 /lib/ld-linux-x86-64.so.2, BuildID[sha1]=3Da455873f278466378405802b0e01713=
37e52a81c, for GNU/Linux 3.2.0, stripped</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">The only difference I found, is that Python is a =E2=
=80=9CELF 64-bit LSB pie executable=E2=80=9D whereas dotnet is a =E2=80=9CE=
LF
 64-bit LSB executable=E2=80=9D. I tried to turn that PIE (seemed to be a g=
cc option: --enable-default-pie) feature of, but that didn=E2=80=99t work w=
ell, and I couldn=E2=80=99t find a way to remove it.</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">----</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">Best regards,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fa=
mily:Arial,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif">Christian Lohr</span><u></u><u></u></p=
>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif">Im Auftrag von:</span><u></u><u></u></=
p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif">Carl Zeiss Meditec AG<br>
G=C3=B6schwitzer Strasse 51-52</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif">07745 Jena, Deutschland</span><u></u><=
u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif;color:black"><a href=3D"mailto:christia=
n.lohr.ext@zeiss.com" target=3D"_blank">christian.lohr.ext@zeiss.com</a></s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:Arial,sans=
-serif">Tel: +493641220206</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:Arial,sans-serif;color:black">=C2=A0</span><u></u><u></u=
></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;color:black">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000007e07da059e5eded4--
