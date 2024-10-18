Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49751D3E18D
	for <webhook@archiver.kernel.org>; Fri, 18 Oct 2024 22:43:35 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.34335.1729291405288648618
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Oct 2024 15:43:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=a+akqWQZ;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-37d47b38336so1820960f8f.3
        for <yocto@lists.yoctoproject.org>; Fri, 18 Oct 2024 15:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729291403; x=1729896203; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=EV8vkrDo2CHKawze0X7QiufjQ8QlCxMxHncxzdfnA8s=;
        b=a+akqWQZLRQ0f/zyTWXKkO16jYm3G1AtiP2RNwxHTk6JQ6R04GeM6PP1CBMjFGetKY
         sG7NPT0M1WZ7sTjMXfnGokyTqpySmMe7pRFc/oMdDv00BByIvXydpez15O+82WQ1oz8l
         GUxkYBw7UfPZRCty+Rlppj92bMcZ2KN4mhMW5H90v55kA1MtatFiCwy0R0rPD11c3GLq
         jTzv67/b+38As/m4rikvFYE+sodWMUvVf4wb+5MewiKMQ4KepnyZqeakI7DRbZhCPzrC
         cziPuGkggLr2GUwkdUhHqGdB2asw1Eq0rvy+7BkWi0uoew9VruzHOlV4kgzRcuzQlH0K
         nmbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729291403; x=1729896203;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EV8vkrDo2CHKawze0X7QiufjQ8QlCxMxHncxzdfnA8s=;
        b=LGUXviJ/Fb7lffOhKE+BAd00LBF6K1eg+LZm4uL/KtUzB04Npn74n63sisTPWrhA55
         FzZCm5nWTBmkEBXJBL+mnHq6iWkEIDO4QxyLmeEPwWCXFMFPzmVcSLuU7ntjczrtX62I
         Os8/jMXoYV0GgSM28vZZZYdX6wddCM2KywJZFoCisJfwdOdBelddhu81g4SifKCl2G9z
         +0DMXiq5iTiZD/fbXCcGr64fZhX/Tfaqqn23k7idzAZWBBIvvI+8z2cV5htYpKCVJOr+
         g1CqI1TuEuS/o5J5dAHWk7SI578frh5S7jrvOgBB+kFZvw0nE7ax1B2RKF4Ky9OWhudc
         7Fog==
X-Gm-Message-State: AOJu0YznKt8uNBUONPVb7ZA6XDOmTGRW++JsiWjeKpZsOLC1zR30fGmb
	AWfUFGxS4vhGPJoha3jUjR331j56F5LlwfTgshGkIU7Eyo5YgL2Q6EOx8Q==
X-Google-Smtp-Source: AGHT+IE+6bX/qZZknfzZd0ycupqEnS4JW4MgovirjeDobLzxSnR2WLxkQewPsWn/KFnFdI5M0dpdiQ==
X-Received: by 2002:adf:979a:0:b0:37d:5352:c83f with SMTP id ffacd0b85a97d-37eab6dab50mr2778211f8f.17.1729291402988;
        Fri, 18 Oct 2024 15:43:22 -0700 (PDT)
Received: from wsadrian16.fritz.box ([2a02:169:59a6:0:55c4:f628:91f3:4287])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ecf0ed54asm2967287f8f.80.2024.10.18.15.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 15:43:21 -0700 (PDT)
Message-ID: <903489d29397a0334b2c580c93e10938ff1289a0.camel@gmail.com>
Subject: Re: [yocto] My Embedded Linux (Yocto) IDE setup #github
From: Adrian Freihofer <adrian.freihofer@gmail.com>
To: yocto@lists.yoctoproject.org, karlo.strize.linux@gmail.com
Date: Sat, 19 Oct 2024 00:43:20 +0200
In-Reply-To: <zZhP.1729268491794154326.MWdx@lists.yoctoproject.org>
References: <zZhP.1729268491794154326.MWdx@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="=-XfJOZzRwydbI5gG4rryk"
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40app2) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Oct 2024 22:43:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64050

--=-XfJOZzRwydbI5gG4rryk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Karlo

Did you already gave devtool ide-sdk a try? It's documented
here:=C2=A0https://docs.yoctoproject.org/sdk-manual/extensible.html#devtool=
-ide-sdk-configures-ides-for-the-extensible-sdk.
[1]

The idea is to provide an easy to use command which can generate an IDE
configuration similar to what your repository provides. I think, in
comparison to the configuration in your repository the generated
configuration files have some advantages:
- For cmake and meson the generated configuration allows to by-pass
bitbake. It's about calling cmake/meson and ninja/make directly. This
is much quicker and comes with much better IDE integration than calling
bitbake or devtool does.
- Calling "devtool build" is the fallback mode for recipes which are
not based on cmake or meson. That means devtool ide-sdk should work
very similar as your static configuration does e.g. for u-boot or arm
trusted firmware. Supporting other build tools than cmake or meson is
on my too long ToDo list.

devtool ide-sdk supports VSCode as well as generic script based IDEs.
For VSCode devtool ide-sdk recommends some extensions, depending on the
recipe type. For details you might want to look at the lines
after=C2=A0https://git.yoctoproject.org/poky/tree/scripts/lib/devtool/ide_p=
lugins/ide_code.py#n160.
[2]=C2=A0I guess we could also offer a more open source only configuration
as an option. In general different IDEs are supported via plugins. This
would also allow to have a vscode and a vscodium plugin where the
vscode plugin recommends closed and open plugins and the vscodium
plugin recommends only open plugins.

So far there is no support for openocd e.g. for kernel or u-boot. But
this would be a very nice improvement for devtool ide-sdk. Devtool ide-
sdk could be extended to support the u-boot or the kernel recipes in a
more advanced way as your static configuration already does. For a
generic approach to generate an openocd configuration there should
probably be one part of the configuration which is defined per machine
and one part which is generated per recipe (u-boot or kernel).


Please be aware that if you have VSCode installed and do ". oe-init-
build-env" a .vscode/settings.json file gets generated (check is
here:=C2=A0https://git.yoctoproject.org/poky/tree/oe-init-build-env#n52, th=
e
generator script is
here:=C2=A0https://git.yoctoproject.org/poky/tree/scripts/oe-setup-vscode).
[3]=C2=A0This is conflicting with the recommendation of copying a
settings.json file from your repository. But when using VSCode with
Yocto, it's very important to configure some plugins indexers to not
index the build folder. Otherwise VSCode keeps your CPU busy until it
gets terminated by an OOM exception.

In general, I think that copying a static configuration for VSCode
should not become the new recommended way for Yocto since we already
have a more generic, more convenient and more extendable implementation
in place. I'm interested in your opinion about devtool ide-sdk and I'm
happy to support you with contributions to devtool ide-sdk e.g. for
openocd.=C2=A0

Thank you for sharing this!
Regards,
Adrian



On Fri, 2024-10-18 at 09:21 -0700, karlo.strize.linux via
lists.yoctoproject.org wrote:
> Hi,
> =C2=A0
> I have created the instructions for setting up Visual Studio Code
> (VSCodium) for a 100% open source IDE experience that supports full
> code indexing, autocompletion and debugging:
> https://github.com/kstrize/embedded_ide
> =C2=A0
> On my first Yocto project, I couldn't find a beginner friendly IDE
> setup.
> I was mainly interested in indexation of the Linux kernel, u-boot and
> arm-trusted-firmware and being able to debug it.
> At the end I don't know how beginner friendly it really is, but I'm
> posting it here if anyone finds use for it or if anyone has feedback
> to improve it.
> =C2=A0
> Best regards,
> Karlo
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64048):
> https://lists.yoctoproject.org/g/yocto/message/64048
> Mute This Topic: https://lists.yoctoproject.org/mt/109085158/4454582
> Mute
> #github:https://lists.yoctoproject.org/g/yocto/mutehashtag/github
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


[1] https://docs.yoctoproject.org/sdk-manual/extensible.html#devtool-ide-sd=
k-configures-ides-for-the-extensible-sdk.
    https://docs.yoctoproject.org/sdk-manual/extensible.html#devtool-ide-sd=
k-configures-ides-for-the-extensible-sdk
[2] https://git.yoctoproject.org/poky/tree/scripts/lib/devtool/ide_plugins/=
ide_code.py#n160.
    https://git.yoctoproject.org/poky/tree/scripts/lib/devtool/ide_plugins/=
ide_code.py#n160
[3] https://git.yoctoproject.org/poky/tree/scripts/oe-setup-vscode).
    https://git.yoctoproject.org/poky/tree/scripts/oe-setup-vscode

--=-XfJOZzRwydbI5gG4rryk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head><body><div>Hi Karlo</div><div><br></div><div>Did you already=
 gave devtool ide-sdk a try? It's documented here:&nbsp;<a href=3D"https://=
docs.yoctoproject.org/sdk-manual/extensible.html#devtool-ide-sdk-configures=
-ides-for-the-extensible-sdk">https://docs.yoctoproject.org/sdk-manual/exte=
nsible.html#devtool-ide-sdk-configures-ides-for-the-extensible-sdk.</a></di=
v><div><br></div><div>The idea is to provide an easy to use command which c=
an generate an IDE configuration similar to what your repository provides. =
I think, in comparison to the configuration in your repository the generate=
d configuration files have some advantages:</div><div>- For cmake and meson=
 the generated configuration allows to by-pass bitbake. It's about calling =
cmake/meson and ninja/make directly. This is much quicker and comes with mu=
ch better IDE integration than calling bitbake or devtool does.</div><div>-=
 Calling "devtool build" is the fallback mode for recipes which are not bas=
ed on cmake or meson. That means devtool ide-sdk should work very similar a=
s your static configuration does e.g. for u-boot or arm trusted firmware. S=
upporting other build tools than cmake or meson is on my too long ToDo list=
.</div><div><br></div><div>devtool ide-sdk supports VSCode as well as gener=
ic script based IDEs. For VSCode devtool ide-sdk recommends some extensions=
, depending on the recipe type. For details you might want to look at the l=
ines after&nbsp;<a href=3D"https://git.yoctoproject.org/poky/tree/scripts/l=
ib/devtool/ide_plugins/ide_code.py#n160">https://git.yoctoproject.org/poky/=
tree/scripts/lib/devtool/ide_plugins/ide_code.py#n160.</a>&nbsp;I guess we =
could also offer a more open source only configuration as an option. In gen=
eral different IDEs are supported via plugins. This would also allow to hav=
e a vscode and a vscodium plugin where the vscode plugin recommends closed =
and open plugins and the vscodium plugin recommends only open plugins.</div=
><div><br></div><div><div>So far there is no support for openocd e.g. for k=
ernel or u-boot. But this would be a very nice improvement for devtool ide-=
sdk. Devtool ide-sdk could be extended to support the u-boot or the kernel =
recipes in a more advanced way as your static configuration already does. F=
or a generic approach to generate an openocd configuration there should pro=
bably be one part of the configuration which is defined per machine and one=
 part which is generated per recipe (u-boot or kernel).</div></div><div><br=
></div><div><br></div><div>Please be aware that if you have VSCode installe=
d and do ". oe-init-build-env" a .vscode/settings.json file gets generated =
(check is here:&nbsp;<a href=3D"https://git.yoctoproject.org/poky/tree/oe-i=
nit-build-env#n52">https://git.yoctoproject.org/poky/tree/oe-init-build-env=
#n52</a>, the generator script is here:&nbsp;<a href=3D"https://git.yoctopr=
oject.org/poky/tree/scripts/oe-setup-vscode">https://git.yoctoproject.org/p=
oky/tree/scripts/oe-setup-vscode).</a>&nbsp;This is conflicting with the re=
commendation of copying a settings.json file from your repository. But when=
 using VSCode with Yocto, it's very important to configure some plugins ind=
exers to not index the build folder. Otherwise VSCode keeps your CPU busy u=
ntil it gets terminated by an OOM exception.</div><div><br></div><div>In ge=
neral, I think that copying a static configuration for VSCode should not be=
come the new recommended way for Yocto since we already have a more generic=
, more convenient and more extendable implementation in place. I'm interest=
ed in your opinion about devtool ide-sdk and I'm happy to support you with =
contributions to devtool ide-sdk e.g. for openocd.&nbsp;</div><div><br></di=
v><div>Thank you for sharing this!</div><div>Regards,</div><div>Adrian</div=
><div><br></div><div><br></div><div><br></div><div>On Fri, 2024-10-18 at 09=
:21 -0700, karlo.strize.linux via lists.yoctoproject.org wrote:</div><block=
quote type=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf sol=
id;padding-left:1ex"><div>Hi,</div><div>&nbsp;</div><div>I have created the=
 instructions for setting up Visual Studio Code (VSCodium) for a 100% open =
source IDE experience that supports full code indexing, autocompletion and =
debugging:<br><a href=3D"https://github.com/kstrize/embedded_ide" target=3D=
"_blank" rel=3D"noopener">https://github.com/kstrize/embedded_ide</a></div>=
<div>&nbsp;</div><div>On my first Yocto project, I couldn't find a beginner=
 friendly IDE setup.<br>I was mainly interested in indexation of the Linux =
kernel, u-boot and arm-trusted-firmware and being able to debug it.<br>At t=
he end I don't know how beginner friendly it really is, but I'm posting it =
here if anyone finds use for it or if anyone has feedback to improve it.</d=
iv><div>&nbsp;</div><div>Best regards,</div><div>Karlo</div><div><br></div>=
<div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></div><div>Links: You=
 receive all messages sent to this group.<br></div><div>View/Reply Online (=
#64048): <a href=3D"https://lists.yoctoproject.org/g/yocto/message/64048">h=
ttps://lists.yoctoproject.org/g/yocto/message/64048</a><br></div><div>Mute =
This Topic: <a href=3D"https://lists.yoctoproject.org/mt/109085158/4454582"=
>https://lists.yoctoproject.org/mt/109085158/4454582</a><br></div><div>Mute=
 #github:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/gith=
ub">https://lists.yoctoproject.org/g/yocto/mutehashtag/github</a><br></div>=
<div>Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproject.org">yoc=
to+owner@lists.yoctoproject.org</a><br></div><div>Unsubscribe: <a href=3D"h=
ttps://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org=
/g/yocto/unsub</a>&nbsp;[<a href=3D"mailto:adrian.freihofer@gmail.com">adri=
an.freihofer@gmail.com</a>]<br></div><div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
=3D-=3D-=3D-<br></div><div><br></div></blockquote><div><br></div><div><span=
></span></div></body></html>

--=-XfJOZzRwydbI5gG4rryk--

