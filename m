Return-Path: <karlo.strize.linux@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8DF0D3C919
	for <webhook@archiver.kernel.org>; Sat, 19 Oct 2024 15:36:13 +0000 (UTC)
Subject: Re: [yocto] My Embedded Linux (Yocto) IDE setup #github
To: "Adrian Freihofer" <adrian.freihofer@gmail.com>, yocto@lists.yoctoproject.org
From: "Karlo Strize" <karlo.strize.linux@gmail.com>
X-Originating-Location: Vis, Split-Dalmatia, HR (88.207.29.140)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 19 Oct 2024 08:36:06 -0700
References: <903489d29397a0334b2c580c93e10938ff1289a0.camel@gmail.com>
In-Reply-To: <903489d29397a0334b2c580c93e10938ff1289a0.camel@gmail.com>
Message-ID: <13023.1729352166335055946@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="N5H5PdLmDQ9R0dG1iDvg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 19 Oct 2024 15:36:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64052

--N5H5PdLmDQ9R0dG1iDvg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Adrian,

My entire bare metal embedded career I was using close source IDEs that wer=
e based on Eclipse, GCC and GDB.
To me it was ridiculous that the most important 90% of the stack was open s=
ource, but I had to use outdated proprietary Eclipse package because of a f=
ew Register View windows.
Probably now for consumer ARM processors things have changed for the better=
.

As you can see I had an itch to scratch :-)

My repo supports Yocto projects, Linux kernel only, C/C++ user applications=
 and bare metal projects using 100% open source stack.

I didn't know devtool ide-sdk existed.
It makes Visual Studio Code integration convenient and I wish this had exis=
ted when I was starting my journey.

I really think this is great work, but it heavily depends on close source M=
icrosoft CPP extension (I understand the implementation is of vscode plugin=
).
Also oe-setup-vscode inserts settings for yocto-bitbake extension.
yocto-bitbake extension is a great piece of work that brings an amazing set=
 of features to the table, but my understanding is that it relays on Micros=
oft close source stuff (please correct me if I'm wrong).

As you can see from the beginning of my post, I'm really happy that we can =
build a product using only open source software like Linux kernel, u-boot, =
openSSL.
Building and maintaining a product with this complexity is hard so this was=
 made easier with bitbake that is also open source.

So riding on all this open source wave, its not my thing to add reliance on=
 the close source tools.
I'm not too excited to spend my free time by making openOCD work easier wit=
h Microsoft's CPP debugger.
Probably most people don't care, but I guess this is my thing:
Making open source product with pure open source tools.

I don't want to say that reliance on Microsoft's extensions is bad.
All the mentioned work brings ease of use and functionality that wasn't the=
re before and that is amazing.
Again, I just prefer making a setup that uses only open source tools.

Not sure if there is an interest to make devtool ide-sdk (and oe-setup-vsco=
de) setup that will support only VSCodium with only 100% open source extens=
ions, but I would be interested in that.
If there is interest: I have more technical comments about the implementati=
on, but I guess this post is long enough for now.

Best regards,
Karlo

--N5H5PdLmDQ9R0dG1iDvg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hi Adrian,<br /><br /></div>
<div>My entire bare metal embedded career I was using close source IDEs tha=
t were based on Eclipse, GCC and GDB.<br />To me it was ridiculous that the=
 most important 90% of the stack was open source, but I had to use outdated=
 proprietary Eclipse package because of a few Register View windows.<br />P=
robably now for consumer ARM processors things have changed for the better.=
</div>
<div>&nbsp;</div>
<div>As you can see I had an itch to scratch :-)</div>
<div>&nbsp;</div>
<div>My repo supports Yocto projects, Linux kernel only, C/C++ user applica=
tions and bare metal projects using 100% open source stack.</div>
<div>&nbsp;</div>
<div>I didn't know devtool ide-sdk existed.<br />It makes Visual Studio Cod=
e integration convenient and I wish this had existed when I was starting my=
 journey.</div>
<div>&nbsp;</div>
<div>I really think this is great work, but it heavily depends on close sou=
rce Microsoft CPP extension (I understand the implementation is of vscode p=
lugin).<br />Also oe-setup-vscode inserts settings for yocto-bitbake extens=
ion.<br />yocto-bitbake extension is a great piece of work that brings an a=
mazing set of features to the table, but my understanding is that it relays=
 on Microsoft close source stuff (please correct me if I'm wrong).</div>
<div>&nbsp;</div>
<div>As you can see from the beginning of my post, I'm really happy that we=
 can build a product using only open source software like Linux kernel, u-b=
oot, openSSL.<br />Building and maintaining a product with this complexity =
is hard so this was made easier with bitbake that is also open source.</div=
>
<div>&nbsp;</div>
<div>So riding on all this open source wave, its not my thing to add relian=
ce on the close source tools.<br />I'm not too excited to spend my free tim=
e by making openOCD work easier with Microsoft's CPP debugger.<br />Probabl=
y most people don't care, but I guess this is my thing:<br />Making open so=
urce product with pure open source tools.</div>
<div>&nbsp;</div>
<div>I don't want to say that reliance on Microsoft's extensions is bad.<br=
 />All the mentioned work brings ease of use and functionality that wasn't =
there before and that is amazing.</div>
<div>Again, I just prefer making a setup that uses only open source tools.<=
/div>
<div>&nbsp;</div>
<div>Not sure if there is an interest to make devtool ide-sdk (and oe-setup=
-vscode) setup that will support only VSCodium with only 100% open source e=
xtensions, but I would be interested in that.</div>
<div>If there is interest: I have more technical comments about the impleme=
ntation, but I guess this post is long enough for now.</div>
<div>&nbsp;</div>
<div>Best regards,<br />Karlo</div>
</div>

--N5H5PdLmDQ9R0dG1iDvg--

