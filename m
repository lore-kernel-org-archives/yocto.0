Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBCE5C6FD1D
	for <webhook@archiver.kernel.org>; Tue, 21 Mar 2023 16:01:27 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web11.17232.1679414479224705251
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Mar 2023 09:01:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ptSLaeoC;
 spf=pass (domain: gmail.com, ip: 209.85.219.171, mailfrom: ticotimo@gmail.com)
Received: by mail-yb1-f171.google.com with SMTP id z83so17734514ybb.2
        for <yocto@lists.yoctoproject.org>; Tue, 21 Mar 2023 09:01:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679414478;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PGwt/x6ZlgShG6UqQ9KqXHokT40cX8Chvk6D53SV7Ns=;
        b=ptSLaeoCASkxznBgZ82vkfWMRTSOjAHBPeG5OEY4wN4Ql9icwlR+4IENUo4/85kxHT
         iXWcdkJwkdAlyjebAoEMG0x7O23CUDt7vPdSfAIZUotRURkPz+DumPHHPST7VZLo/hZH
         mKfsPjsz3G3D273le87eWNeihUDkKfBOoo1E/elwYmHITmnT8uE6wltmPKpHxa9mjrEw
         iXO3f5OVt+1Pgi2a40YGubeiZSGzFpCuQZKuZAy/hNACdSEYpmw/wEUor2jhwTQ79GeH
         rG3+erEH8tz+TFcjNvCmCnITBCqQewXX2uEB5I1KlItV381L4R6yCj4cgoTyXdaWqV4R
         YO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679414478;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PGwt/x6ZlgShG6UqQ9KqXHokT40cX8Chvk6D53SV7Ns=;
        b=0qLuCpcUdtscpxo7780l+l9ihyPWZQGAYgKp892LR55S0OIhgIBaC+Z1C4Xd78CRgy
         mnf5tDR5Abe+TQoB0Ox2sW6tihdSSPV+2WfuE/xhf0baDmENfmzOsX/bProQDfYOtEnN
         FUYxou/pT92KjcUVmPr+8m+BqbsRRsnlE44vivcekblzL7BB79X9EGtn6gXkaNf6ksBB
         TiW5+Ip4TD6wd9TEv9VYH410L3mkX6Jc0PPEkHAuMkpjewWe4jNUhQiKe+OSkpGX34Zy
         GOL4r+VAPhajCaMs2qU4XGa48jGMEC/UXFzy8941NDbxim9WitN84SjUWB9/Ry3vYw+d
         /JNg==
X-Gm-Message-State: AAQBX9cSo+ixKPmpklFqWrdBg9u1H66uNf14Vkjc40i2Sg52FI0MCoPk
	NbNNPHrm7YYCpxv+dVbZJ/XGoK7zJc3CRDTtM6Q=
X-Google-Smtp-Source: AKy350YJzT+FVg9/alR9MoQcGD3PqoqJKnlOxScNem6xw3xOw5tbf0YxEaN7IgGb5/Adfc2OdC/gYiSpOpbLd0L4q+Y=
X-Received: by 2002:a05:6902:150b:b0:b1d:d57:fbef with SMTP id
 q11-20020a056902150b00b00b1d0d57fbefmr1815384ybu.11.1679414477983; Tue, 21
 Mar 2023 09:01:17 -0700 (PDT)
MIME-Version: 1.0
References: <aIxj.1679413910808259942.dAzU@lists.yoctoproject.org>
In-Reply-To: <aIxj.1679413910808259942.dAzU@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 21 Mar 2023 09:01:06 -0700
Message-ID: <CANx9H-DHJsP1dAngSZ_wveBGvBYwKFAELQr-R0Oj1C-=Zdcxig@mail.gmail.com>
Subject: Re: [yocto] #bitbake
To: elshoud <elshoud@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000641e4705f76b27a0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Mar 2023 16:01:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59483

--000000000000641e4705f76b27a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 21, 2023 at 8:51=E2=80=AFAM elshoud <elshoud@gmail.com> wrote:

> Hi,
>
> I am new to the mailing list and hope that this is the right place to dro=
p
> my question.
> For my project I want to make use of the uvicorn package. Because I did
> not find any yocto recipe for the latest version I started making one but=
 I
> am stumbling on the fact that there is no setup.py in the release.
> There is a setup.cfg and a pyproject.toml in the tar.gz.
>

Since uvicorn has a proper pyproject.toml, you will want to use the new
"PEP-517" classes available since 'kirkstone' Yocto Project release.
You want to look at the pyproject.toml "build-backend" line:
https://github.com/encode/uvicorn/blob/master/pyproject.toml#L3
build-backend =3D "hatchling.build"

This tells you which of the "PEP-517" classes to use.


>
> Current version at https://pypi.org/project/uvicorn/ is 0.21.1.
>
> With the following bb file:
>
>
>     SUMMARY =3D "To be completed"
>
>     LICENSE =3D "BSD-3-Clause"
>     LIC_FILES_CHKSUM =3D
> "file://LICENSE;md5=3D5c778842f66a649636561c423c0eec2e"
>
>     SRC_URI[sha256sum] =3D
> "9b00c0105f8ad968ac8be1cac44056bb1dc7d37dafb42ea1a4dc787e3ccc6b86"
>
>     inherit pypi setuptools3
>
> Since the build-backend is "hatching.build" , you want to replace
"setuptools3" with "python_hatchling"
https://git.yoctoproject.org/poky/tree/meta/classes-recipe/python_hatchling=
.bbclass
This class was introduced in the 'langdale' Yocto Project release.

>
>
> When building, I get an error because there is no setup.py:
>
>
> ERROR: python3-uvicorn-0.21.1-r0 do_compile: 'python3 setup.py bdist_whee=
l
> ' execution failed.
> ERROR: python3-uvicorn-0.21.1-r0 do_compile:
> ExecutionError(/tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uv=
icorn/0.21.1-r0/temp/run.do_compile.2246273',
> 1, None, None)
> ERROR: Logfile of failure stored in:
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/log.do_compile.2246273
> Log data follows:
> | DEBUG: Executing shell function do_compile
> |
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/recipe-sysroot-native/usr/bin/python3-native/python3:
> can't open file
> '/tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r=
0/uvicorn-0.21.1/setup.py':
> [Errno 2] No such file or directory
> | ERROR: 'python3 setup.py bdist_wheel ' execution failed.
> | WARNING:
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273:180
> exit 1 from 'exit 1'
> | WARNING: Backtrace (BB generated script):
> | #1: bbfatal_log,
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273,
> line 180
> | #2: setuptools3_do_compile,
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273,
> line 170
> | #3: do_compile,
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273,
> line 152
> | #4: main,
> /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0=
/temp/run.do_compile.2246273,
> line 184
>
>
> What is the best way forward to get the package baked? Is it possible to
> create the setup.py from the pyproject.toml?
>
> Many thanks in advance,
> Edwin Elshoud
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59482):
> https://lists.yoctoproject.org/g/yocto/message/59482
> Mute This Topic: https://lists.yoctoproject.org/mt/97757830/924729
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000641e4705f76b27a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 21, 2023 at 8:51=E2=80=AF=
AM elshoud &lt;<a href=3D"mailto:elshoud@gmail.com">elshoud@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>H=
i,</div>
<div>=C2=A0</div>
<div>I am new to the mailing list and hope that this is the right place to =
drop my question.<br>For my project I want to make use of the uvicorn packa=
ge. Because I did not find any yocto recipe for the latest version I starte=
d making one but I am=C2=A0stumbling on the fact that there is no setup.py =
in the release.</div>
<div>There is a setup.cfg and a pyproject.toml in the tar.gz.</div></blockq=
uote><div><br></div><div>Since uvicorn=C2=A0has a proper pyproject.toml, yo=
u will want to use the new &quot;PEP-517&quot; classes available since &#39=
;kirkstone&#39; Yocto Project release.</div><div>You want to look at the py=
project.toml &quot;build-backend&quot; line:</div><div><a href=3D"https://g=
ithub.com/encode/uvicorn/blob/master/pyproject.toml#L3">https://github.com/=
encode/uvicorn/blob/master/pyproject.toml#L3</a></div><div>build-backend =
=3D &quot;hatchling.build&quot;<br></div><div><br></div><div>This tells you=
 which of the &quot;PEP-517&quot; classes to use.</div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
<div>=C2=A0</div>
<div>Current version at <a href=3D"https://pypi.org/project/uvicorn/" targe=
t=3D"_blank">https://pypi.org/project/uvicorn/</a> is 0.21.1.=C2=A0</div>
<div>=C2=A0</div>
<div>With the following bb file:</div>
<div>=C2=A0</div>
<blockquote>
<div>=C2=A0 =C2=A0 SUMMARY =3D &quot;To be completed&quot;</div>
<div>=C2=A0</div>
<div>=C2=A0 =C2=A0 LICENSE =3D &quot;BSD-3-Clause&quot;</div>
<div>=C2=A0 =C2=A0 LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D5c778842=
f66a649636561c423c0eec2e&quot;</div>
<div>=C2=A0</div>
<div>=C2=A0 =C2=A0 SRC_URI[sha256sum] =3D &quot;9b00c0105f8ad968ac8be1cac44=
056bb1dc7d37dafb42ea1a4dc787e3ccc6b86&quot;=C2=A0</div>
<div>=C2=A0</div>
<div>=C2=A0 =C2=A0 inherit pypi setuptools3</div></blockquote></blockquote>=
<div>Since the build-backend is &quot;hatching.build&quot; , you want to re=
place &quot;setuptools3&quot; with &quot;python_hatchling&quot;</div><div><=
a href=3D"https://git.yoctoproject.org/poky/tree/meta/classes-recipe/python=
_hatchling.bbclass">https://git.yoctoproject.org/poky/tree/meta/classes-rec=
ipe/python_hatchling.bbclass</a><br></div><div>This class was introduced in=
 the &#39;langdale&#39; Yocto Project release.</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><blockquote>
<div>=C2=A0</div>
</blockquote>
<div>When building, I get an error because there is no setup.py:</div>
<div>=C2=A0</div>
<blockquote>
<div>ERROR: python3-uvicorn-0.21.1-r0 do_compile: &#39;python3 setup.py bdi=
st_wheel &#39; execution failed.</div>
<div>ERROR: python3-uvicorn-0.21.1-r0 do_compile: ExecutionError(/tmp/work/=
cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/run.do=
_compile.2246273&#39;, 1, None, None)</div>
<div>ERROR: Logfile of failure stored in: /tmp/work/cortexa9t2hf-neon-puppy=
-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/log.do_compile.2246273</div>
<div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21=
.1-r0/recipe-sysroot-native/usr/bin/python3-native/python3: can&#39;t open =
file &#39;/tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0=
.21.1-r0/uvicorn-0.21.1/setup.py&#39;: [Errno 2] No such file or directory<=
/div>
<div>| ERROR: &#39;python3 setup.py bdist_wheel &#39; execution failed.</di=
v>
<div>| WARNING: /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvi=
corn/0.21.1-r0/temp/run.do_compile.2246273:180 exit 1 from &#39;exit 1&#39;=
</div>
<div>| WARNING: Backtrace (BB generated script):</div>
<div>| <span style=3D"white-space:pre-wrap"> </span>#1: bbfatal_log, /tmp/w=
ork/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/ru=
n.do_compile.2246273, line 180</div>
<div>| <span style=3D"white-space:pre-wrap"> </span>#2: setuptools3_do_comp=
ile, /tmp/work/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1=
-r0/temp/run.do_compile.2246273, line 170</div>
<div>| <span style=3D"white-space:pre-wrap"> </span>#3: do_compile, /tmp/wo=
rk/cortexa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/run=
.do_compile.2246273, line 152</div>
<div>| <span style=3D"white-space:pre-wrap"> </span>#4: main, /tmp/work/cor=
texa9t2hf-neon-puppy-linux-gnueabi/python3-uvicorn/0.21.1-r0/temp/run.do_co=
mpile.2246273, line 184</div>
</div>
<div>=C2=A0</div>
</blockquote>
<div>What is the best way forward to get the package baked? Is it possible =
to create the setup.py from the pyproject.toml?<br><br>Many thanks in advan=
ce,<br>Edwin Elshoud</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59482): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59482" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59482</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/97757830/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
97757830/924729</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000641e4705f76b27a0--

