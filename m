Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.web10.2375.1581499556027829906
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2020 01:25:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MmDV6cu5;
 spf=pass (domain: gmail.com, ip: 209.85.217.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f45.google.com with SMTP id k188so702973vsc.8
        for <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2020 01:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=w7e0tD6jrv/XAlHnJ9nO8qaIPmC9i55lMiXolb50EEs=;
        b=MmDV6cu50pggTlTpLlSGeiQjny1gjrCOiWzvpEs9ZhZdu9TZTtcXfw/f4CurQ2w6a2
         4ele59Pfjw5EmRLV30TD+b76iHeb60U519b9TT05XstUM5axoXbP/Oft12pX/daDtxfa
         nyRfJwTVk5U/7yzjtUiB6eUCoHT3v4EP7yv5g5nKaDLDPNKj+FjncQmGoNis2/0A/arm
         i2hafpR/Y21tUuBz6COd2j9zVZgFT87WPlSKJKGZPeGXpsqUN9Qt/02AuIRiKAYUZbRd
         tmDmeTsPx0fT6UFe2JHBonPaSeCaxSZwLjf6Yit/8gE1E+Lp5zMXg1zRvYMmMVWCmE3x
         TtXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=w7e0tD6jrv/XAlHnJ9nO8qaIPmC9i55lMiXolb50EEs=;
        b=Sk8buL6uV8QC4YwvYh6OY7hjhIhOjt1jy7ENmXTNx8rp+ish7qpAtfYDpO2Yy24vVR
         FbmeQMCXZWaRkLClIwOKOHJ4to+Tc0aRVMB9jVebq4p7NG3Hqe0uc0+RVDKtdb6iqQEb
         HoSVzixSa+f3DPjBXTSi9MtoyCCwm5nMErXb/KIUJQahOkHiL7hltLuZcXMx1NH6VK1s
         VDEOPbwEv7sl+EToOLax3YudmmGsP0xZE5NS13S8w3aS0Or8fbMmq7O5CZGhVUW6VoZy
         vOpuo4tq2T1UjWI5rUeXdhv1RNMKvUY+SlRXwRbLj7hCtdS9t2Uu93//MJcvMoqJJsDn
         SXJQ==
X-Gm-Message-State: APjAAAUuWdp9VnkT9vXxYCLq2UisWh/ObPpkEHqR0ofxHx7dc1HTQYI6
	pTALCjJFVwv69aUxaFWvX3qEWjRbjIoxLuJXcXA=
X-Google-Smtp-Source: APXvYqyJDW7PZSJJW+vq8KFWdbsd+iW65hFC7AJMOg83OAy0rgUW8oqOhRvHaaB0/NHKWbJHPfm6NT9u9duzPJ8+gfY=
X-Received: by 2002:a05:6102:103:: with SMTP id z3mr999141vsq.23.1581499555119;
 Wed, 12 Feb 2020 01:25:55 -0800 (PST)
MIME-Version: 1.0
References: <AM0P190MB07705DB273CD954279B282F3C21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
 <CANNYZj-q2rFtyHGdJfTO6e=7C0RrokZwTcCoVd-nHw1=trd+_A@mail.gmail.com> <AM0P190MB07703F67D36E568E0AB7671CC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
In-Reply-To: <AM0P190MB07703F67D36E568E0AB7671CC21B0@AM0P190MB0770.EURP190.PROD.OUTLOOK.COM>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 12 Feb 2020 10:25:43 +0100
Message-ID: <CANNYZj_pP_-zSAUMt18Dh9_6LQCgWh-C7vjD-ygTOggFq-v7vA@mail.gmail.com>
Subject: Re: [yocto] Creating a QEmu (x86-64) Image, which can execute binary applications from other x86-64 linux OSes
To: "Lohr, Christian [ext]" <christian.lohr.ext@zeiss.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000032052c059e5d8fb5"

--00000000000032052c059e5d8fb5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That layer does have the x86_64 variant as well, no? Is it not working?
https://github.com/RDunkley/meta-dotnet-core/blob/master/recipes-runtime/do=
tnet-core/dotnet-core_3.1.1.inc

The error you're seeing is almost certainly due to Yocto using
/lib/ld-so... for dynamic loader, and the binary hardcoding /lib64/....

Alex

On Wed, 12 Feb 2020 at 10:15, Lohr, Christian [ext] <
christian.lohr.ext@zeiss.com> wrote:

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
>
> And despite this, I already managed to get the dotnet binaries for ARM32
> and ARM64 already working on a i.MX6 and i.MX8
>
> There=E2=80=99s a layer which just deploys the binaries:
> https://github.com/RDunkley/meta-dotnet-core
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
tcore31%26pivots%3Dos-linux&data=3D02%7C01%7C%7C888e6b4914864e22a1bb08d7af9=
8d98a%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637170943326046135&sdata=
=3Dpc%2FsT2RL9SfOW5%2FigmZ8dkTS3UxmWbY5r120MPjeo2Y%3D&reserved=3D0>
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
3.1.1-linux-x64-binaries&data=3D02%7C01%7C%7C888e6b4914864e22a1bb08d7af98d9=
8a%7C28042244bb514cd680347776fa3703e8%7C1%7C0%7C637170943326056092&sdata=3D=
dIl3kSXN4AszmVdH1J0fc6I3QiB%2BLC%2BdYn6RJotnZW4%3D&reserved=3D0>
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

--00000000000032052c059e5d8fb5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That layer does have the x86_64 variant as well, no? =
Is it not working?</div><div><a href=3D"https://github.com/RDunkley/meta-do=
tnet-core/blob/master/recipes-runtime/dotnet-core/dotnet-core_3.1.1.inc">ht=
tps://github.com/RDunkley/meta-dotnet-core/blob/master/recipes-runtime/dotn=
et-core/dotnet-core_3.1.1.inc</a></div><div><br></div><div>The error you&#3=
9;re seeing is almost certainly due to Yocto using /lib/ld-so... for dynami=
c loader, and the binary hardcoding /lib64/....</div><div><br></div><div>Al=
ex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Wed, 12 Feb 2020 at 10:15, Lohr, Christian [ext] &lt;<a href=
=3D"mailto:christian.lohr.ext@zeiss.com">christian.lohr.ext@zeiss.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"DE">
<div class=3D"gmail-m_3417983187007033562WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif">Hello Alex,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">Thanks for replying. Yes, I know that th=
is isn=E2=80=99t the way it works on Yocto (and I told the managers it is a=
 crappy idea to do that more
 than once). But they need .NET Core in that company I work for, and Mono d=
oesn=E2=80=99t work (that=E2=80=99s what they told me). Compiling .NET Core=
 through the Yocto process is ugly, because Microsoft used a mixture of she=
ll scripts to compile it for some platforms, it
 won=E2=80=99t work this way on Yocto. Actually one already tried it, but o=
nly until .NET Core 2.2:
</span><a href=3D"https://github.com/Tragetaschen/meta-aspnet" target=3D"_b=
lank"><span lang=3D"EN-US">https://github.com/Tragetaschen/meta-aspnet</spa=
n></a><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,sans-seri=
f" lang=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">And despite this, I already managed to g=
et the dotnet binaries for ARM32 and ARM64 already working on a i.MX6 and i=
.MX8<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">There=E2=80=99s a layer which j=
ust deploys the binaries:
<a href=3D"https://github.com/RDunkley/meta-dotnet-core" target=3D"_blank">=
https://github.com/RDunkley/meta-dotnet-core</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">This is currently the last step. I thoug=
ht if it worked on i.MX6 and i.MX8 it shouldn=E2=80=99t be a problem to get=
 it running on Virtualbox with
 x86-64. It should only make the things easy for the developers. It isn=E2=
=80=99t even our target platform.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">Best regards,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:&quot;Arial&quot;,sans-serif">Christian Lohr<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><b>Von:</b> <a href=3D"mailto:yocto@lists.yoctoproje=
ct.org" target=3D"_blank">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"m=
ailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lists.yoctoproj=
ect.org</a>&gt;
<b>Im Auftrag von </b>Alexander Kanavin<br>
<b>Gesendet:</b> Mittwoch, 12. Februar 2020 09:51<br>
<b>An:</b> Lohr, Christian [ext] &lt;<a href=3D"mailto:christian.lohr.ext@z=
eiss.com" target=3D"_blank">christian.lohr.ext@zeiss.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a><br>
<b>Betreff:</b> Re: [yocto] Creating a QEmu (x86-64) Image, which can execu=
te binary applications from other x86-64 linux OSes<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">Yocto generally does not support this use case. The =
binary was compiled in a different environment and expects things in differ=
ent places, and probably being different versions too. I could point out th=
e specific problem why the executable
 doesn&#39;t even start, but it&#39;s really the wrong way to approach it. =
Is the source code for it available?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Microsoft specifically lists which distributions are=
 supported, and there is nothing Yocto-based in it:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://eur01.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fdocs.microsoft.com%2Fen-us%2Fdotnet%2Fcore%2Fins=
tall%2Fdependencies%3Ftabs%3Dnetcore31%26pivots%3Dos-linux&amp;data=3D02%7C=
01%7C%7C888e6b4914864e22a1bb08d7af98d98a%7C28042244bb514cd680347776fa3703e8=
%7C1%7C0%7C637170943326046135&amp;sdata=3Dpc%2FsT2RL9SfOW5%2FigmZ8dkTS3UxmW=
bY5r120MPjeo2Y%3D&amp;reserved=3D0" target=3D"_blank">https://docs.microsof=
t.com/en-us/dotnet/core/install/dependencies?tabs=3Dnetcore31&amp;pivots=3D=
os-linux</a><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">For mono things you can use meta-mono layer, but I a=
m not sure if it provides exactly the item you&#39;re after.
<u></u><u></u></p>
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
<p class=3D"MsoNormal">On Wed, 12 Feb 2020 at 09:36, Christian Lohr &lt;<a =
href=3D"mailto:christian.lohr.ext@zeiss.com" target=3D"_blank">christian.lo=
hr.ext@zeiss.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif">Hello,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">I=E2=80=99m trying to create a normal QE=
mu (x86-64) Image, which I can let run in Virtualbox. As a addition I
 deployed .NET Core, which I got from this side:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><a href=3D"https://eur01.safelinks.protection.outloo=
k.com/?url=3Dhttps%3A%2F%2Fdotnet.microsoft.com%2Fdownload%2Fdotnet-core%2F=
thank-you%2Fruntime-aspnetcore-3.1.1-linux-x64-binaries&amp;data=3D02%7C01%=
7C%7C888e6b4914864e22a1bb08d7af98d98a%7C28042244bb514cd680347776fa3703e8%7C=
1%7C0%7C637170943326056092&amp;sdata=3DdIl3kSXN4AszmVdH1J0fc6I3QiB%2BLC%2Bd=
Yn6RJotnZW4%3D&amp;reserved=3D0" target=3D"_blank"><span lang=3D"EN-US">htt=
ps://dotnet.microsoft.com/download/dotnet-core/thank-you/runtime-aspnetcore=
-3.1.1-linux-x64-binaries</span></a><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">But I can=E2=80=99t execute it:</span><u=
></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">----------------------------</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/usr/share/dotnet# ./dot=
net
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">-sh: ./dotnet: No such file or directory=
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">But it is there:</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">------------------</span><u></u><u></u><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/usr/share/dotnet# ls -l=
h</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">total 116K</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">-rw-r--r-- 1 root root 1.1K Feb 10 02:33=
 LICENSE.txt</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">-rw-r--r-- 1 root root=C2=A0 31K Feb 10 =
02:33 ThirdPartyNotices.txt</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">-rwxr-xr-x 1 root root=C2=A0 72K Feb 10 =
02:33 dotnet</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">drwxr-xr-x 3 root root 4.0K Feb 10 02:36=
 host</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">drwxr-xr-x 4 root root 4.0K Feb 10 02:36=
 shared</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">It tried to get more information about t=
he dotnet-executable</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">----------------------------------------=
--------------------------------------</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/usr/share/dotnet# reade=
lf -h dotnet
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">ELF Header:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Magic:=C2=A0=C2=A0 7f 45 4c 46 02=
 01 01 00 00 00 00 00 00 00 00 00
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0=C2=A0Class:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
ELF64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Data:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2&=
#39;s complement, little endian</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 (current)</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 OS/ABI:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UNIX - Syst=
em V</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 ABI Version:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Type:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0EX=
EC (Executable file)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Machine:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Advanced Micro De=
vices X86-64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x1</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Entry point address:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x=
402f17</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Start of program headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes into file)</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Start of section headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 71032 (bytes into file)</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Flags:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of this header:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64=
 (bytes)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of program headers:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 56 (bytes)</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Number of program headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 10</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of section headers:=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A064 (bytes)</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Number of section headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 31</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Section header string table index=
: 30</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/usr/share/dotnet# =C2=
=A0file dotnet</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">dotnet: ELF 64-bit LSB executable, x86-6=
4, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64=
.so.2,
 for GNU/Linux 2.6.32, BuildID[sha1]=3D28c244c1953bcbee994709a4b849086ee7cf=
0c99, stripped</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">I compared those values with that from P=
ython, which does run on this system</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">----------------------------------------=
---------------------------------------------------------------</span><u></=
u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">root@qemux86-64:/opt/jre-8/bin# readelf =
-h /usr/bin/python3.7</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">ELF Header:</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Magic:=C2=A0=C2=A0 7f 45 4c 46 02=
 01 01 00 00 00 00 00 00 00 00 00
</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0=C2=A0Class:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 EL=
F64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Data:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2&=
#39;s complement, little endian</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1 (current)</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 OS/ABI:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0UNIX - Sy=
stem V</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 ABI Version:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Type:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DY=
N (Shared object file)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Machine:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Advanced Micro De=
vices X86-64</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Version:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x1</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Entry point address:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x=
1060</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Start of program headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes into file)</span=
><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Start of section headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 12568 (bytes into file)</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Flags:=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x0</spa=
n><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of this header:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64=
 (bytes)</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of program headers:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 56 (bytes)</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Number of program headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 11</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Size of section headers:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 64 (bytes)</span><u></u=
><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Number of section headers:=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 27</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0 Section header string table index=
: 26</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif">root@qemux86-64:/usr/share/dotnet# file /usr/bin/python=
3.7</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">/usr/bin/python3.7: ELF 64-bit LSB pie e=
xecutable, x86-64, version 1 (SYSV), dynamically linked, interpreter
 /lib/ld-linux-x86-64.so.2, BuildID[sha1]=3Da455873f278466378405802b0e01713=
37e52a81c, for GNU/Linux 3.2.0, stripped</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">The only difference I found, is that Pyt=
hon is a =E2=80=9CELF 64-bit LSB pie executable=E2=80=9D whereas dotnet is =
a =E2=80=9CELF
 64-bit LSB executable=E2=80=9D. I tried to turn that PIE (seemed to be a g=
cc option: --enable-default-pie) feature of, but that didn=E2=80=99t work w=
ell, and I couldn=E2=80=99t find a way to remove it.</span><u></u><u></u></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">----</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">Best regards,</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif" lang=3D"EN-US">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:&quot;Arial&quot;,sans-serif">Christian Lohr</span><u></=
u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:&quot;Arial&quot;,sans-serif">Im Auftrag von:</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:&quot;Arial&quot;,sans-serif">Carl Zeiss Meditec AG<br>
G=C3=B6schwitzer Strasse 51-52</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:&quot;Arial&quot;,sans-serif">07745 Jena, Deutschland</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:&quot;Arial&quot;,sans-serif;color:black"><a href=3D"mai=
lto:christian.lohr.ext@zeiss.com" target=3D"_blank">christian.lohr.ext@zeis=
s.com</a></span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:&quot;Aria=
l&quot;,sans-serif">Tel: +493641220206</span><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;font-family:&quot;Arial&quot;,sans-serif;color:black">=C2=A0</span><=
u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span style=3D"font-siz=
e:10pt;color:black">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--00000000000032052c059e5d8fb5--
