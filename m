Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F05FD3E77F
	for <webhook@archiver.kernel.org>; Tue,  5 Nov 2024 22:56:09 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web10.33562.1730847367162087385
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Nov 2024 14:56:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=U7NEYR9m;
 spf=pass (domain: gmail.com, ip: 209.85.161.48, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5eba450531eso152771eaf.1
        for <yocto@lists.yoctoproject.org>; Tue, 05 Nov 2024 14:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730847366; x=1731452166; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a/WT4chc5PkBMUZudfK5UeWn2o1pKQf1sMjVtQMhiVQ=;
        b=U7NEYR9msEmGWKBdlex3hCbehVyVzZ0ARAVpWCjB47Ip1pmWBgfoNd3ge6Q1s8ViOL
         xuDYdRBLdHk6Q+DfW3+Dws+oqb7ISXVYB/LeVtPrV+mihBGpXErThEzM+bi6e7XZ2VjO
         Il2Lmp6ynViXm19/801IGp8r2bcDb26VIvsQV/wAIV3QnhWze/IgBeO4tpyFXiuVyzby
         fnUDwiAC8SS7E9UgjIK5Xsg5soAvDd7Qs2za21oiNANW6geP55wHkraTrg4I5fbLq1I/
         kdmcCQf3HXPgfFgnzdI/TZIDitJ+CFBpcBbuAM2fC/cznACN4/P7hEJ25QgczFLmg5MX
         KZoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730847366; x=1731452166;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a/WT4chc5PkBMUZudfK5UeWn2o1pKQf1sMjVtQMhiVQ=;
        b=lfWzvuGb8Xl2B0GeHFn32D1zj3tYxW0o5Zk8MXupsDt3/LUNy1pgYgO8wEr247K5ES
         sN7oIPGk8GytHahND/3N4OQDmy7tI5A50w3CIPKyh/zmOX4RgQNmnfeElKFR/u0t4Tf7
         NEVogWxOFxmIJCM5bWgrA6ACpHZZ7LHoMjh0URVQ9amS1b4QtMGRY7oodNaDkFQ9O+TY
         LeB5v8SdgQWLWbM/xFYGsG/8UT6bdbG+ZzlEvLYMXhH7lS0dHGEfdzGwxJZihUF5AZg6
         u4YhdZviWSxzAvbHvcFevEz4+WrIPC2MFthHNVATi/ZB0CXUebvOXgx1EoWdy8e8royj
         H/8Q==
X-Gm-Message-State: AOJu0YxNO5HLrijgWFpkXL9Hn01jLNvN4gUCUtHf3OCFgU+ikAIicknS
	Suj0ASVlNWAb2D1EuHGVMe6ZrxR4Ub2aLVhCW3zKTIiDqfliBvKKkoxNAtu5GmhOYyIoyaHlpVc
	ZmFPUtSH52up4ks9W2uGuR+V+m0g=
X-Google-Smtp-Source: AGHT+IGDoIvsQZkAIYLwWv6PYV73L9C/JiW+D2sIDa90yeE70jsfSBeXwmApm1FmTiqTl6oyeegfWIhx9ulxB69h3xU=
X-Received: by 2002:a05:6871:2005:b0:288:8b2b:8706 with SMTP id
 586e51a60fabf-2952a6fbfabmr196551fac.16.1730847366155; Tue, 05 Nov 2024
 14:56:06 -0800 (PST)
MIME-Version: 1.0
References: <3bc01393fa9a16544e7850528a936e61eae02ad7.camel@gmail.com> <2316.1730675309111737661@lists.yoctoproject.org>
In-Reply-To: <2316.1730675309111737661@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Tue, 5 Nov 2024 23:55:54 +0100
Message-ID: <CAB3asfgQxwaZNPx9_BPDToPUDxcXi0c+n9ULp=s9ZG2MLbyg2g@mail.gmail.com>
Subject: Re: [yocto] My Embedded Linux (Yocto) IDE setup #github
To: karlo.strize.linux@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006b958c0626324ebc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Nov 2024 22:56:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64226

--0000000000006b958c0626324ebc
Content-Type: text/plain; charset="UTF-8"

Hi Karlo

Am Mo., 4. Nov. 2024 um 00:08 Uhr schrieb Karlo Strize via
Lists.Yoctoproject.Org <karlo.strize.linux=gmail.com@lists.yoctoproject.org
>:

> Hi Adrian,
>
> Sorry, I didn't notice but in the wip.patch the ide_codium.py file is
> missing.
> In attachment is wip2.patch that includes all the differences.
>
Thank you, now I can understand what you really did.

>
>
> Yes, that's because cmake and also meson have the compile_commands.json
> generator built in. With meson it's enabled by default, with cmake we
> enable this feature
> here: https://git.yoctoproject.org/poky/tree/meta/classes-
> recipe/cmake.bbclass#n185.
>
>
> So if cmake compile_commands.json is generated automatically with this
> OECMAKE_ARGS variable, then can I remove
>
> "cmake.configureSettings": {
>                 "CMAKE_EXPORT_COMPILE_COMMANDS": "ON"
> }
>
> Yes, this change should be removed.

> from the cmake_kit_new variable in ide_codium.py (because it is
> redundant)?
>

>
> For the kernel and the u-boot recipes that seams to be possible:
>  *
> https://github.com/torvalds/linux/blob/master/scripts/clang-tools/gen_compile_commands.py
>  *
> https://github.com/u-boot/u-boot/blob/master/scripts/gen_compile_commands.py
>    That looks like we can use these scripts which are available as make
>    targets out of the box.
>
> I know of them, but I didn't use them.
>
One advantage of these scripts is that they come with the kernel or u-boot.
The bear tool is not yet part of oe-core. Before we could use it in ide-sdk
it would have to be available as a bear-native recipe. Not sure this will
be accepted by the core team.


> I think you need to first have all the build files present in the project
> and then the scripts parses those build files.
>
Probably this additional step can be automated in ide_codium.py.
> But the build (I think .cmd) files aren't located in the
> workspace/sources/ directory but in build/tmp/work/...
>
The ide-sdk tool calls bitbake to compile the modified recipe(s) (e.g. the
kernel) and build the image which is needed for debugging. The cmd files
should be always available.


> In compile_commands.json all paths are absolute so this could be a problem.
>
No, this is fine. devtool ide-sdk generates these paths on the same machine.


> I can play with the scripts and see if I can make them work.
>
One of the questions I have is: Are the scripts usable if we have clang
available but compile the kernel with gcc? Yocto does not yet support
compiling the kernel with clang, as far as I know.
I guess this just works if the kernel is compiled with clang but not with
gcc:
https://github.com/torvalds/linux/blob/2e1b3cc9d7f790145a80cb705b168f05dab65df2/Makefile#L2007

I'm also not sure if there is a dependency somewhere in the Makefile which
automatically initiates the build of the compile database or if the target
needs to be called. If it needs to be called,I would try to extend the
cml1.bbclass. Somehow like this (with more checks for clang), but I have no
idea if this works:

cml1_do_compile:append() {
  if [ -x ${S}/scripts
<https://kernel.googlesource.com/pub/scm/linux/kernel/git/nmenon/linux/+/refs/tags/v5.1/scripts>
/gen_compile_commands.py ] ; then
    oe_runmake compile_commands.json
  fi
}

Generating the compile database via bitbake would be needed to create the
initial compile database when devtool ide-sdk or devtool build or bitbake
is called to compile the kernel or the images.

>
>
> But handling recipes with the ide-sdk fallback mode is not ideal.
> Handling the recipes in a build-tool specific way leads to a much
> better user experience. To add support for recipes using the kbuild
> framework (u-boot, kernel) we could:
> * Add another elif case for them to this
> if: https://git.yoctoproject.org/poky/tree/scripts/lib/devtool/ide_s
> dk.py#n377.
> elif bb.data.inherits_class('cml1', recipe_d):
> Then these recipes are no longer handled by the fallback mode of
> ide-sdk
> * Then we can recommend a Makefile vscode plugin
> like
> https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools
>  or something more open source if you like.
> Having a plugin like that allows to configure the plugin for cross-
> compilation with Yocto's tool-chain.
> Alternative we could generate some task which call make with the
> right configuration. But this is usually a bit clunky as well.
>
> I don't fully understand the code to add kbuild and make build tool
> specific handles in ide_sdk.py.
> That is why I used the bear tool.
>
Well handling kbuild and using bear tool are two unrelated topics.


> It can index all cases at the devtool ide-sdk stage.
> User doesn't need to do anything additionally.
>
Yes, but with a different integration of either the scripts or bear-native.
As I suggested above with the tweaks in e.g. the cml1.bbclass.


> It would be better if kbuild and make were supported in ide_sdk.py.
> kbuild (linux and u-boot) will be indexed by scripts, but how would make
> projects be indexed (generation of compiler_commands.json) if bear tool
> isn't used?
>
If the generation of the compile database is handled as a dependency in
make, then it would just work (as it does also with cmake and meson)
without any extra code. Otherwise it needs to be called also from VSCode.
But probably not.

>
> Probably the usage of the bear tool isn't ideal, but it gives the
> functionality that can later be optimized (replaced) with kbuild and make
> handles in ide_sdk.py
>
I do not see this relation.

Best regards,
Adrian


> I just don't get why in my implementation the do_package task breaks.
>

> Best regards,
> Karlo
>

--0000000000006b958c0626324ebc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Karlo<br></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">Am Mo., 4. Nov. 2024 um 00:08=C2=A0Uhr sc=
hrieb Karlo Strize via <a href=3D"http://Lists.Yoctoproject.Org">Lists.Yoct=
oproject.Org</a> &lt;karlo.strize.linux=3D<a href=3D"mailto:gmail.com@lists=
.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt;:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div>Hi Adrian,</div>
<div>=C2=A0</div>
<div>Sorry, I didn&#39;t notice but in the wip.patch the ide_codium.py file=
 is missing.</div>
<div>In attachment is wip2.patch that includes all the differences.</div></=
blockquote><div>Thank you, now I can understand what you really did.<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
<div>=C2=A0</div>
<blockquote>
<div>Yes, that&#39;s because cmake and also meson have the compile_commands=
.json<br>generator built in. With meson it&#39;s enabled by default, with c=
make we<br>enable this feature<br>here:=C2=A0<a href=3D"https://git.yoctopr=
oject.org/poky/tree/meta/classes-" rel=3D"noopener" target=3D"_blank">https=
://git.yoctoproject.org/poky/tree/meta/classes-</a><br>recipe/cmake.bbclass=
#n185.</div>
<div>=C2=A0</div>
</blockquote>
<div>So if cmake compile_commands.json is generated automatically with this=
 OECMAKE_ARGS variable, then can I remove</div>
<blockquote>
<div>&quot;cmake.configureSettings&quot;: {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;CMAKE_EXPORT_COMPILE_COMMANDS&quot;: &quo=
t;ON&quot;<br>}</div></blockquote></blockquote><div>Yes, this change should=
 be removed. <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><b=
lockquote>
</blockquote>
<div>from the cmake_kit_new variable in ide_codium.py (because it is redund=
ant)? <br></div></blockquote><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
<div>=C2=A0</div>
<blockquote>
<div>For the kernel and the u-boot recipes that seams to be possible:<br>=
=C2=A0* <a href=3D"https://github.com/torvalds/linux/blob/master/scripts/cl=
ang-tools/gen_compile_commands.py" target=3D"_blank">https://github.com/tor=
valds/linux/blob/master/scripts/clang-tools/gen_compile_commands.py</a><br>=
=C2=A0* <a href=3D"https://github.com/u-boot/u-boot/blob/master/scripts/gen=
_compile_commands.py" target=3D"_blank">https://github.com/u-boot/u-boot/bl=
ob/master/scripts/gen_compile_commands.py</a><br>=C2=A0 =C2=A0That looks li=
ke we can use these scripts which are available as make<br>=C2=A0 =C2=A0tar=
gets out of the box.</div>
</blockquote>
<div>I know of them, but I didn&#39;t use them.</div></blockquote><div>One =
advantage of these scripts is that they come with the kernel or u-boot. The=
 bear tool is not yet part of oe-core. Before we could use it in ide-sdk it=
 would have to be available as a bear-native recipe. Not sure this will be =
accepted by the core team.<br></div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>I think you need to first have all the build files present in the proj=
ect and then the scripts parses those build files.</div></blockquote><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div>Probably this additional s=
tep can be automated in ide_codium.py.<br>But the build (I think .cmd) file=
s aren&#39;t located in the workspace/sources/ directory but in build/tmp/w=
ork/...<br></div></blockquote><div>The ide-sdk tool calls bitbake to compil=
e the modified recipe(s) (e.g. the kernel) and build the image which is nee=
ded for debugging. The cmd files should be always available.<br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>In compi=
le_commands.json all paths are absolute so this could be a problem.</div></=
blockquote><div>No, this is fine. devtool ide-sdk generates these paths on =
the same machine.<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
<div>I can play with the scripts and see if I can make them work.</div></bl=
ockquote><div>One of the questions I have is: Are the scripts usable if we =
have clang available but compile the kernel with gcc? Yocto does not yet su=
pport compiling the kernel with clang, as far as I know.</div><div></div><d=
iv>I guess this just works if the kernel is compiled with clang but not wit=
h gcc: <a href=3D"https://github.com/torvalds/linux/blob/2e1b3cc9d7f790145a=
80cb705b168f05dab65df2/Makefile#L2007">https://github.com/torvalds/linux/bl=
ob/2e1b3cc9d7f790145a80cb705b168f05dab65df2/Makefile#L2007</a></div><div><b=
r></div><div>I&#39;m also not sure if there is a dependency somewhere in th=
e Makefile which automatically initiates the build of the compile database =
or if the target needs to be called. If it needs to be called,I would try t=
o extend the cml1.bbclass. Somehow like this (with more checks for clang), =
but I have no idea if this works:</div><div><br></div><div>cml1_do_compile:=
append() {<br></div><div>=C2=A0 if [ -x <a class=3D"gmail-Breadcrumbs-crumb=
" href=3D"https://kernel.googlesource.com/pub/scm/linux/kernel/git/nmenon/l=
inux/+/refs/tags/v5.1/scripts">${S}/scripts</a>/<span class=3D"gmail-Breadc=
rumbs-crumb">gen_compile_commands.py</span> ] ; then</div><div>=C2=A0=C2=A0=
=C2=A0 oe_runmake compile_commands.json</div><div>=C2=A0 fi<br></div><div>}=
</div><div><br></div><div> Generating the compile database via bitbake woul=
d be needed to create the initial compile database when=20
devtool ide-sdk or devtool build or bitbake is called to compile the=20
kernel or the images.</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
<div>=C2=A0</div>
<blockquote>
<div>But handling recipes with the ide-sdk fallback mode is not ideal.<br>H=
andling the recipes in a build-tool specific way leads to a much<br>better =
user experience. To add support for recipes using the kbuild<br>framework (=
u-boot, kernel) we could:<br>* Add another elif case for them to this<br>if=
:=C2=A0<a href=3D"https://git.yoctoproject.org/poky/tree/scripts/lib/devtoo=
l/ide_s" rel=3D"noopener" target=3D"_blank">https://git.yoctoproject.org/po=
ky/tree/scripts/lib/devtool/ide_s</a><br>dk.py#n377.<br>elif bb.data.inheri=
ts_class(&#39;cml1&#39;, recipe_d):<br>Then these recipes are no longer han=
dled by the fallback mode of<br>ide-sdk<br>* Then we can recommend a Makefi=
le vscode plugin<br>like=C2=A0<a href=3D"https://marketplace.visualstudio.c=
om/items?itemName=3Dms-vscode.makefile-tools" rel=3D"noopener" target=3D"_b=
lank">https://marketplace.visualstudio.com/items?itemName=3Dms-vscode.makef=
ile-tools</a><br>=C2=A0or something more open source if you like.<br>Having=
 a plugin like that allows to configure the plugin for cross-<br>compilatio=
n with Yocto&#39;s tool-chain.<br>Alternative we could generate some task w=
hich call make with the<br>right configuration. But this is usually a bit c=
lunky as well.</div>
</blockquote>
<div>I don&#39;t fully understand the code to add kbuild and make build too=
l specific handles in ide_sdk.py.</div>
<div>That is why I used the bear tool.</div></blockquote><div>Well handling=
 kbuild and using bear tool are two unrelated topics.<br></div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div>It can index al=
l cases at the devtool ide-sdk stage.</div>
<div>User doesn&#39;t need to do anything additionally.</div></blockquote><=
div>Yes, but with a different integration of either the scripts or bear-nat=
ive. As I suggested above with the tweaks in e.g. the cml1.bbclass.<br></di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div>It would be better if kbuild and make were supported in ide_sdk.py.</d=
iv>
<div>kbuild (linux and u-boot) will be indexed by scripts, but how would ma=
ke projects be indexed (generation of compiler_commands.json) if bear tool =
isn&#39;t used?
</div></blockquote><div>If the generation of the compile database is handle=
d as a dependency in make, then it would just work (as it does also with cm=
ake and meson) without any extra code. Otherwise it needs to be called also=
 from VSCode. But probably not.<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div><div>=C2=A0</div>
<div>Probably the usage of the bear tool isn&#39;t ideal, but it gives the =
functionality that can later be optimized (replaced) with kbuild and make h=
andles in ide_sdk.py</div></div></blockquote><div>I do not see this relatio=
n.</div><div><br></div><div>Best regards,</div><div>Adrian<br></div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>
</div>
<div>I just don&#39;t get why in my implementation the do_package task brea=
ks. <br></div></blockquote><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
<div>=C2=A0</div>
<div>Best regards,</div>
<div>Karlo</div>
</blockquote></div></div>

--0000000000006b958c0626324ebc--

