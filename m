Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A822CD4840
	for <webhook@archiver.kernel.org>; Mon, 11 May 2026 17:49:53 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.56550.1778521787153485287
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 May 2026 10:49:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Xs1Zb9Vo;
 spf=pass (domain: konsulko.com, ip: 209.85.128.170, mailfrom: tim.orling@konsulko.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-7b6ae2ea4a1so45320037b3.2
        for <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 10:49:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778521786; cv=none;
        d=google.com; s=arc-20240605;
        b=H3iNfPSizKMigJMnqVn57XHZCz8Q3bZwXNJX0BDIs0hfKhaZOQrE1//LPdLoyq3qoz
         aJstdtbqVG4D81AIWLyAquWxSKZvjY7fJgGDTbsXYAZ8nn3dSGsN6SLvKAbFhvQll2k9
         d4arMf5ktOg9yBuRuv6349YF/7Wc//hKGL6m7ppRR2AppqElZyjKGYVTfHKiRXOttJEV
         UwKX6UUGtLDEpUNNyGJmvQP5d+QOA0FRsLZRSNMCmF0I308+e+/LhKOXNjqdzOP5fyjb
         XkXLnt1QINIILuqIlCACIL7YhbnubXnZecOQ0Wd2bteR0A5QKvbYsey18azZXh1Q4NxR
         vFZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5z2ijEmoDFgx+x9BND7IG/25UhWt4KVbNaceoyPmmnA=;
        fh=p8MinQWE2oiVR8mLY1VlIsUt4yaZcvV1A6AADh4OTX8=;
        b=MLMVJZD0CA5u6EuS9GhBbVzVlf+04L4dbaDbBab8IpSvH8IyAUP4YZXiCi1Nb3sYTv
         eyTPvgGxiDI6WPKugGedCCFbODUMcUwz6t6sP5GWvvLUc6NWV8tRDK7r3gVlLPxCrFo4
         kvpxPfX1OLHcB5pTTxqKgrvHkG3OU4cSm/kR8UvlH72PAxpAzgucZM5CiBj39myBnw6m
         oUsfrasEp4CfTak1npZP9o4EsFXfmeL9uH4KFmGqBmJ0b1adODv2Ivd3L6bsQmf9xjOz
         RZwOcZPbJAG3aXWCihJRJt5mPdf8M9R8g8h9ydT9W4jxwxAY0G4CfAbrZRCXWZy1qr4e
         KInQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778521786; x=1779126586; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5z2ijEmoDFgx+x9BND7IG/25UhWt4KVbNaceoyPmmnA=;
        b=Xs1Zb9VoQ0Q2Efwj4c3QpbufRbiN0uwl9p5KCdt+q86wKV3nB2N0y+kABYBaTvjpIX
         qCQLxN9aQsCMGJ+RLWC0jz6EcqXkeqIdrSgpJ67Hmgy++vJ0t2nXxjE6QnnboPFSW0Hs
         ZV4NEv0jl1P9uO4z4q6jcN0zz+N5UqY9rUReI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778521786; x=1779126586;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5z2ijEmoDFgx+x9BND7IG/25UhWt4KVbNaceoyPmmnA=;
        b=q8ljeHygPRAtyly1noHofr6F9IyPQfUiB8bLXd9syBHuMxFAUoFOAh3K8eqXgctQce
         mzaBqSBF4xJgf01v4ViDcbQRsPbwPYdjOPc1pcVUavqH0wVXdKbmjSSD8vR8JrtXzU96
         ZU3IMq2nmRBwfxXBA2EdprN+Cpzm/IVgFP2k/CGS7uZEexfjLg5SH3T94nU66jdWyB1/
         FyHyzrnPlWmhgAyRiuwtlxeeyRCQIAZOwpZdm6ZwxLgJaXpppkhWwa0wl/LUzr4YuHCD
         dMm5OxqTmw4yJVHOdsov2zGyW3tCt7bGRDsQkMND23qkdyzsDC6DZ1VDZc+yFxRRXkXZ
         YBuw==
X-Forwarded-Encrypted: i=1; AFNElJ9GCofke2Y+Zhdhh16yr+ahYV25u/AgSc3ZtrxJhYb8yws7ggoIYdHFTTmgz07NzkXaDrVKgQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyGkznfikLUZQoYaDSfGea4XzZY1QafBe9Z2wYPyiWHJN+nNYx9
	UDdcXxGnjrvZdbz9oPj+VXDwbM0q0WCEdusc5S8jIHW0Mc05nXACPFKT1K6xgBJ1hItuywD82MA
	cdI17ikP6nN1EIz1FKqAloYt0gRi8jfAFiZ2+zAVbOw==
X-Gm-Gg: Acq92OGTquA+3WNlJh6GJ8qCHzt/bw0TDh40SMtYqaHaPpBJ55L2zh3FSTcR6oPxnYj
	bPu9XdiLT/mXQ5pPgTicm2E7Pif8+pb+4ST/f4eH0SXtQOaroGdz1J11SPZ7nshkPb9JH9TfC6o
	BxwwR3+jB6ILpu6f16ekirwQ/lgXnFveNtPzJb1r89ZMg9fEt+tdw+heXH4FlGL7T4Q2ZBlQTSn
	PyEF79W0JD1YWvUXUV1eniLNY86BWX8/0EemnnW01q7dV40n0VT6I32vm9UST3aJWaqJxts9FFX
	zhss7Gg=
X-Received: by 2002:a05:690c:c4d3:b0:7bd:6114:4002 with SMTP id
 00721157ae682-7bdf5efc9a4mr275339057b3.40.1778521786202; Mon, 11 May 2026
 10:49:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1778202125.git.tim.orling@konsulko.com> <f76cfa3158594d6abef88eaea589b9e135158e9f.1778202125.git.tim.orling@konsulko.com>
 <5356ea1df2a3b640943fed7fd3a358402b9ab644.camel@pbarker.dev>
In-Reply-To: <5356ea1df2a3b640943fed7fd3a358402b9ab644.camel@pbarker.dev>
From: Tim Orling <tim.orling@konsulko.com>
Date: Mon, 11 May 2026 10:49:34 -0700
X-Gm-Features: AVHnY4JlapF4vwU2t3Q0osQAUGZSRe07wMUIp-ZzxuL85lhQ-zCtlvHI9TqQnlU
Message-ID: <CAOyo-84Hywi+Ho7MQdoOA7fjuC4dBFHWgs20te0YH8n+eH36sA@mail.gmail.com>
Subject: Re: [yocto-autobuilder-helper][PATCH 06/11] config.json: add
 vcontainer-tarball build target
To: Paul Barker <paul@pbarker.dev>
Cc: yocto-patches@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004ae3bc06518e5f99"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 May 2026 17:49:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66526

--0000000000004ae3bc06518e5f99
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 1:48=E2=80=AFAM Paul Barker <paul@pbarker.dev> wrot=
e:

> On Thu, 2026-05-07 at 18:25 -0700, tim.orling@konsulko.com wrote:
> > From: Tim Orling <tim.orling@konsulko.com>
> >
> > Add the vcontainer-tarball build target which produces the
> > meta-virtualization SDK used by downstream container build/test
> > jobs. Modelled after the buildtools-tarball target.
> >
> > The target uses EXTRACMDS to reset BBMULTICONFIG for the worker
> > shell, places the extravars in the per-step config, and includes
> > a publish-artefacts step so the resulting SDK tarball is staged
> > for reuse by container-tests and other consumers.
> >
> > Signed-off-by: Tim Orling <tim.orling@konsulko.com>
> > ---
> >  config.json | 26 ++++++++++++++++++++++++++
> >  1 file changed, 26 insertions(+)
> >
> > diff --git a/config.json b/config.json
> > index ab0ad7c..9e6898d 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1869,6 +1869,32 @@
> >          },
> >          "toaster" : {
> >              "EXTRACMDS" : ["${SCRIPTSDIR}/run-toaster-tests
> ${HELPERBUILDDIR} ${HELPERBUILDDIR}/../layers/bitbake"]
> > +        },
> > +        "vcontainer-tarball": {
> > +            "NEEDREPOS" : ["bitbake", "meta-openembedded",
> "meta-virtualization"],
> > +            "ADDLAYER" : [
> > +                "${BUILDDIR}/../meta-openembedded/meta-oe",
> > +                "${BUILDDIR}/../meta-openembedded/meta-python",
> > +                "${BUILDDIR}/../meta-openembedded/meta-networking",
> > +                "${BUILDDIR}/../meta-openembedded/meta-filesystems",
> > +                "${BUILDDIR}/../meta-virtualization"
> > +            ],
> > +            "step1" : {
> > +                "shortname" : "Build vcontainer-tarballs",
> > +                "BBTARGETS" : "vcontainer-tarball",
> > +                "extravars" : [
> > +                    "DISTRO_FEATURES:append =3D ' virtualization
> vcontainer'",
> > +                    "BBMULTICONFIG =3D 'vruntime-aarch64
> vruntime-x86-64'",
> > +                    "INIT_MANAGER =3D 'systemd'"
> > +                ],
> > +                "EXTRACMDS" : ["sed -i '/vruntime-aarch64
> vruntime-x86-64/d' ${HELPERBUILDDIR}/conf/auto.conf"]
>
> What does this sed command achieve? EXTRACMDS run after building
> BBTARGETS.
>
>
Describing the reason was accidentally removed while refactoring and
slimming down the number of commits.

Original squashed commit message:
"
Since meta-virtualization is the first layer removed by 'remove-layers', ou=
r
BBMULTICONFIGs become invalid immediately after layer removal and throw an
error.

In scripts/run-config, EXTRACMDS runs after BBTARGETS, but before
'remove-layers'.
Use 'sed' to reset BBMULTICONFIG to ''.
"

The error in the 'remove-layers' step can be summarized as:

bb.parse.ParseError: ParseError at
/home/pokybuild/yocto-worker/vcontainer-tarball/build/layers/openembedded-c=
ore/meta/conf/bitbake.conf:824:
Could not include required file conf/multiconfig/vruntime-aarch64.conf

Best regards,
>
> --
> Paul Barker
>
>

--0000000000004ae3bc06518e5f99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, May 11,=
 2026 at 1:48=E2=80=AFAM Paul Barker &lt;<a href=3D"mailto:paul@pbarker.dev=
">paul@pbarker.dev</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">On Thu, 2026-05-07 at 18:25 -0700, <a href=3D"mailto:tim.=
orling@konsulko.com" target=3D"_blank">tim.orling@konsulko.com</a> wrote:<b=
r>
&gt; From: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.com" target=
=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
&gt; <br>
&gt; Add the vcontainer-tarball build target which produces the<br>
&gt; meta-virtualization SDK used by downstream container build/test<br>
&gt; jobs. Modelled after the buildtools-tarball target.<br>
&gt; <br>
&gt; The target uses EXTRACMDS to reset BBMULTICONFIG for the worker<br>
&gt; shell, places the extravars in the per-step config, and includes<br>
&gt; a publish-artefacts step so the resulting SDK tarball is staged<br>
&gt; for reuse by container-tests and other consumers.<br>
&gt; <br>
&gt; Signed-off-by: Tim Orling &lt;<a href=3D"mailto:tim.orling@konsulko.co=
m" target=3D"_blank">tim.orling@konsulko.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 config.json | 26 ++++++++++++++++++++++++++<br>
&gt;=C2=A0 1 file changed, 26 insertions(+)<br>
&gt; <br>
&gt; diff --git a/config.json b/config.json<br>
&gt; index ab0ad7c..9e6898d 100644<br>
&gt; --- a/config.json<br>
&gt; +++ b/config.json<br>
&gt; @@ -1869,6 +1869,32 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;toaster&quot; : {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACMDS&quot; =
: [&quot;${SCRIPTSDIR}/run-toaster-tests ${HELPERBUILDDIR} ${HELPERBUILDDIR=
}/../layers/bitbake&quot;]<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 },<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;vcontainer-tarball&quot;: {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;NEEDREPOS&quot; : [&q=
uot;bitbake&quot;, &quot;meta-openembedded&quot;, &quot;meta-virtualization=
&quot;],<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;ADDLAYER&quot; : [<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${BUILD=
DIR}/../meta-openembedded/meta-oe&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${BUILD=
DIR}/../meta-openembedded/meta-python&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${BUILD=
DIR}/../meta-openembedded/meta-networking&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${BUILD=
DIR}/../meta-openembedded/meta-filesystems&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;${BUILD=
DIR}/../meta-virtualization&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;step1&quot; : {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;shortna=
me&quot; : &quot;Build vcontainer-tarballs&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;BBTARGE=
TS&quot; : &quot;vcontainer-tarball&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;extrava=
rs&quot; : [<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;DISTRO_FEATURES:append =3D &#39; virtualization vcontainer&#39;&quot=
;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;BBMULTICONFIG =3D &#39;vruntime-aarch64 vruntime-x86-64&#39;&quot;,<=
br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 &quot;INIT_MANAGER =3D &#39;systemd&#39;&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ],<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;EXTRACM=
DS&quot; : [&quot;sed -i &#39;/vruntime-aarch64 vruntime-x86-64/d&#39; ${HE=
LPERBUILDDIR}/conf/auto.conf&quot;]<br>
<br>
What does this sed command achieve? EXTRACMDS run after building<br>
BBTARGETS.<br>
<br></blockquote><div><br></div><div>Describing the reason was accidentally=
 removed while refactoring and slimming down the number of commits.</div><d=
iv><br></div><div>Original squashed commit message:</div><div>&quot;<br>Sin=
ce meta-virtualization is the first layer removed by &#39;remove-layers&#39=
;, our<br>BBMULTICONFIGs become invalid immediately after layer removal and=
 throw an<br>error.<br><br>In scripts/run-config, EXTRACMDS runs after BBTA=
RGETS, but before &#39;remove-layers&#39;.<br>Use &#39;sed&#39; to reset BB=
MULTICONFIG to &#39;&#39;.</div><div>&quot;</div><div><br></div><div>The er=
ror in the &#39;remove-layers&#39; step can be summarized as:</div><div><br=
></div><div>bb.parse.ParseError: ParseError at /home/pokybuild/yocto-worker=
/vcontainer-tarball/build/layers/openembedded-core/meta/conf/bitbake.conf:8=
24: Could not include required file conf/multiconfig/vruntime-aarch64.conf<=
br><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
Best regards,<br>
<br>
-- <br>
Paul Barker<br>
<br>
</blockquote></div></div>

--0000000000004ae3bc06518e5f99--

