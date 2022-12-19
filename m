Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78205C4332F
	for <webhook@archiver.kernel.org>; Mon, 19 Dec 2022 14:16:56 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.22975.1671459411910935941
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Dec 2022 06:16:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dxEGR/Pd;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id h16so8730921wrz.12
        for <yocto@lists.yoctoproject.org>; Mon, 19 Dec 2022 06:16:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VzeuewIfpt9WeTET2uhWTtohAF8U1FkhtDoiLvNwzUY=;
        b=dxEGR/PdShtI8dubC3jDd63mO/K5CGdNgqIZLafBL01WNtlVfMYeKd9fpjpPjtdJ7U
         4ieUU+kyPZVTlje5rDkVovH07QuFJhb8gQCbE7/J+Y+dHuPy527kigwpTFZChlQYZ4WZ
         j7Mgk1lkjeefj3hoFn0Z7b77uc+KIVxy/QH++1I5CvxWOtBH/ojTLT3W0sramwWAMQZN
         bwPtDcfZ/PyzslYAU64peQtjkAyTaP+omy5hEFOjapEjyahHyFhX90Xbi/GlaAq3GZ9+
         /cHoX/InaRTj720/cpDWx9cBM78wP5vpIF3n4OfDjnxWVXLlm6nOOmRbFzVOvWBwCnKo
         a00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VzeuewIfpt9WeTET2uhWTtohAF8U1FkhtDoiLvNwzUY=;
        b=7uAgtwyiLIbAM/t6JoN3ul3jFXVD9YVaOJir8OggOQ4/5Abnn7uSn+Dss14XBtfu4D
         rvuyX9ZBG4QxwJghd7REXBOhBQ+8rkhAB4M6NDfR+oaD3QGSlwb41dUsLO5ZhHiLopeM
         PwAUNe9gZ4SivWlCJOl3kh4PfszuxWBxwad7BceBm6uru1MGVwaj1sA/dXIGDDNaKcgm
         l2zzPaBmav2NA9Yx7+bz13gUKGno9NQ4uPSQTfJEHPAgk58MQarm5sPPjKiEwIVlImj4
         w8bG3Ex9Al67H5WsrDUiPkFuys+04gIQ9XeFHgn66jNY3uL4lGyjw0XeyPVnhfWgr4k3
         mGMw==
X-Gm-Message-State: ANoB5ploP0st8Zx1aH89SrqbhVkfYSg5eRngmEdtVi65zL06NdG6QWyQ
	17zfVB3Lu+BB2s981FsPgTQpk4BsJ++KcukJUgE=
X-Google-Smtp-Source: AA0mqf5wMbYnpzRsk9nzYn5mNo8cXucq5r8ZF9WF9Gqv33z5/NbHadKK5nlBmJzxVGSD/8Pb668Sh4zEl5U1dGxlvyw=
X-Received: by 2002:adf:ff88:0:b0:242:4a32:900e with SMTP id
 j8-20020adfff88000000b002424a32900emr14980128wrr.129.1671459410113; Mon, 19
 Dec 2022 06:16:50 -0800 (PST)
MIME-Version: 1.0
References: <PAXP250MB062615A0B44EF5561D565B819EE59@PAXP250MB0626.EURP250.PROD.OUTLOOK.COM>
In-Reply-To: <PAXP250MB062615A0B44EF5561D565B819EE59@PAXP250MB0626.EURP250.PROD.OUTLOOK.COM>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 19 Dec 2022 15:16:38 +0100
Message-ID: <CA+chaQeNiqpL7Va12dL0rRwPn3mSpa_FeTJHZMDH=A7KFi+jkA@mail.gmail.com>
Subject: Re: [yocto] Issue with accessing network from a recipe
To: Antti.Garding@etteplan.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000065780605f02ef8ef"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Dec 2022 14:16:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58832

--00000000000065780605f02ef8ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

that is intentional, recipes should fetch sources with bitbake fetcher
(which respects MIRROR/PREMIRROR/DL_DIR etc) in do_fetch and network
shouldn't be used in other tasks (unless explicitly enabled in well
explained exceptions).

bitbake can now restrict network access in various tasks based on "network"
flag as implemented in:

https://git.openembedded.org/bitbake/commit/?id=3D0746b6a2a32fec4c18bf1a52b=
1454ca4c04bf543

https://git.openembedded.org/bitbake/commit/?id=3D9d6341df611a1725090444f6f=
8eb0244aed08213
and oe now enables network mostly only in do_fetch and few special tasks as
implemented in:

https://git.openembedded.org/openembedded-core/commit/?id=3D7ce1e88a3ad85bb=
b925bb9f7167dc0a5fd1c27f4

Regards,

On Mon, Dec 19, 2022 at 2:02 PM G=C3=A4rding Antti via lists.yoctoproject.o=
rg
<Antti.Garding=3Detteplan.com@lists.yoctoproject.org> wrote:

> Hi,
>
>
>
> I am having an issue with a recipe whose do_configure requires network
> connections and I wonder if this issue could be related to Yocto so that
> this list would be the correct place to ask for ideas.
>
>
>
> The problem appears when trying to build dotnet-hello-world which comes
> with meta-dotnet (https://github.com/jeremy-prater/meta-dotnet). I am not
> the only one having this issue, but many people, including the layer's
> author, also report having no problems. Googling gives a lot of
> suggestions, but as this is related to .NET, all of them are related to
> Windows / Visual Studio environment and I don't know how to apply them
> using Yocto.
>
>
>
> In short, do_configure for dotnet-hello-world invokes the .NET SDK's tool
> dotnet as a host tool to fetch what is needed to build and run the progra=
m.
> As a part of that, it uses NuGet, the package manager for .NET, which say=
s
> "error NU1301: Unable to load the service index for source
> https://api.nuget.org/v3/index.json".
>
>
>
> If I modify the recipe so that it tries to curl that file, I get "Could
> not resolve host: api.nuget.org". If I do the same but use numeric
> address, I get "Couldn't connect to server".
>
>
>
> If I run the commands in the recipe manually in the same environment I us=
e
> for Yocto builds, using .NET SDK I have installed manually, they work.
>
>
>
> My build environment is Ubuntu 20.04 run inside a Docker container.
>
>
>
>
>
> Best regards,
>
> Antti G=C3=A4rding
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58831):
> https://lists.yoctoproject.org/g/yocto/message/58831
> Mute This Topic: https://lists.yoctoproject.org/mt/95764092/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000065780605f02ef8ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>that is intentional, recipes should=
 fetch sources with bitbake fetcher (which respects MIRROR/PREMIRROR/DL_DIR=
 etc) in do_fetch and network shouldn&#39;t be used in other tasks (unless =
explicitly enabled in well explained exceptions).</div><div><br></div><div>=
bitbake can now restrict network access in various tasks based on &quot;net=
work&quot; flag as implemented in:<br>=C2=A0 <a href=3D"https://git.openemb=
edded.org/bitbake/commit/?id=3D0746b6a2a32fec4c18bf1a52b1454ca4c04bf543">ht=
tps://git.openembedded.org/bitbake/commit/?id=3D0746b6a2a32fec4c18bf1a52b14=
54ca4c04bf543</a><br>=C2=A0 <a href=3D"https://git.openembedded.org/bitbake=
/commit/?id=3D9d6341df611a1725090444f6f8eb0244aed08213">https://git.openemb=
edded.org/bitbake/commit/?id=3D9d6341df611a1725090444f6f8eb0244aed08213</a>=
<br>and oe now enables network mostly only in do_fetch and few special task=
s as implemented in:<br>=C2=A0 <a href=3D"https://git.openembedded.org/open=
embedded-core/commit/?id=3D7ce1e88a3ad85bbb925bb9f7167dc0a5fd1c27f4">https:=
//git.openembedded.org/openembedded-core/commit/?id=3D7ce1e88a3ad85bbb925bb=
9f7167dc0a5fd1c27f4</a><br></div><div><br></div><div>Regards,</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
Dec 19, 2022 at 2:02 PM G=C3=A4rding Antti via <a href=3D"http://lists.yoct=
oproject.org">lists.yoctoproject.org</a> &lt;Antti.Garding=3D<a href=3D"mai=
lto:etteplan.com@lists.yoctoproject.org">etteplan.com@lists.yoctoproject.or=
g</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div class=3D"msg-5343277308938305858">





<div lang=3D"FI" style=3D"overflow-wrap: break-word;">
<div class=3D"m_4093437154112851462WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am having an issue with a rec=
ipe whose do_configure requires network connections and I wonder if this is=
sue could be related to Yocto so that this list would be the correct place =
to ask for ideas.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The problem appears when trying=
 to build dotnet-hello-world which comes with meta-dotnet (</span><a href=
=3D"https://github.com/jeremy-prater/meta-dotnet" target=3D"_blank"><span l=
ang=3D"EN-US">https://github.com/jeremy-prater/meta-dotnet</span></a><span =
lang=3D"EN-US">).
 I am not the only one having this issue, but many people, including the la=
yer&#39;s author, also report having no problems. Googling gives a lot of s=
uggestions, but as this is related to .NET, all of them are related to Wind=
ows / Visual Studio environment and
 I don&#39;t know how to apply them using Yocto.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">In short, do_configure for dotn=
et-hello-world invokes the .NET SDK&#39;s tool dotnet as a host tool to fet=
ch what is needed to build and run the program. As a part of that, it uses =
NuGet, the package manager for .NET, which
 says &quot;error NU1301: Unable to load the service index for source </spa=
n><a href=3D"https://api.nuget.org/v3/index.json" target=3D"_blank"><span l=
ang=3D"EN-US">https://api.nuget.org/v3/index.json</span></a><span lang=3D"E=
N-US">&quot;.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If I modify the recipe so that =
it tries to curl that file, I get &quot;Could not resolve host: <a href=3D"=
http://api.nuget.org" target=3D"_blank">api.nuget.org</a>&quot;. If I do th=
e same but use numeric address, I get &quot;Couldn&#39;t connect to server&=
quot;.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If I run the commands in the re=
cipe manually in the same environment I use for Yocto builds, using .NET SD=
K I have installed manually, they work.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">My build environment is Ubuntu =
20.04 run inside a Docker container.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal">Best regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Antti G=C3=A4rding<u></u><u></u></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58831): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58831" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58831</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95764092/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/95764092/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div></blockquote></div>

--00000000000065780605f02ef8ef--

