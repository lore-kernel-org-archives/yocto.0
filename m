Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14DAC433EF
	for <webhook@archiver.kernel.org>; Fri, 11 Feb 2022 20:16:22 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web12.948.1644610581406788205
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 12:16:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com
 header.s=20210112 header.b=JJcrGuNk;
 spf=none, err=permanent DNS error (domain: theyoctojester.info,
 ip: 209.85.208.47, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f47.google.com with SMTP id s7so18173099edd.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 11 Feb 2022 12:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=0PJGB295Kn7SBy0eXvBwmH2a33MzDGL5REg7q01Zr/c=;
        b=JJcrGuNkZ+ZJ/ohP1DvufLji1tLkky42Vbx2tuGSpB5thaWwb1F5UxXgXZ51qK+P22
         742DuSADjsRLLcxivy6e6JurwkaXURQm1AbAyCQBlDHO4QIrzjBk4ByQ1myYVXRp0f4y
         tBwDWFnWQBkZACtngmLRcIzso53OfjblABVw5C8V7DCTgeJOKGJZ+EhtA+qOV8/O6dAU
         hfx3hM1e8I9dqw8YBljdjXdNgLAwr/f2g75W819SD1QgTiht0wbMacDpMcgGQctRpp7m
         snT4s7DfR6hKR6ytQ5q9i2Xq6/cIHcRzvIiDt/DyM/sDxsieltzk6Et81O46zG+cOz1Z
         UYEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=0PJGB295Kn7SBy0eXvBwmH2a33MzDGL5REg7q01Zr/c=;
        b=sVpAmUdbJtVqf/Px/NUwZ72lZ3O0iuKrTxQsWNLHtdctT/Opwb27v//cLtPoVD9Mgw
         4rUOuCa3RC+RPVNaJBJ6WeJmdYT0Uz6o0s70AwP42awXhi7besK6YdLdRMfoNuN8jMUW
         8wpS3XiK4/Nq+QKLcSh2fUBCddjNbUJpmcpXojaM2uLRnsInv2dBoF0EG5eKQUpyJsgV
         AHpXY3ahXny072oLapG57lBhb5Mmg25L69OhUMPqY/g9BUe9FLWfJnDQcCbOnIXCdJIX
         qU1Y3VGO3QYWVN6TgRLepmkd1QrXVub6llLY2mxjWu1A53TV33Nt4LMAW4kqiADUepyS
         vk2Q==
X-Gm-Message-State: AOAM533QgEvmsbwtqDnRxwDoG+HMfk3QxFp7hZFEFM5PjZGLaX7dAPuI
	+BoyzpeAXpMxLhqKxr5nlY3gug==
X-Google-Smtp-Source: 
 ABdhPJx46NJ3IRzuKXaKzJGUFElzMbU3sJTv1Be7c8WxiJWJbboG1InhtgZFe/K/3YgLrDR1KTcaHQ==
X-Received: by 2002:a05:6402:5216:: with SMTP id
 s22mr3664573edd.359.1644610579953;
        Fri, 11 Feb 2022 12:16:19 -0800 (PST)
Received: from smtpclient.apple (ipb21b4375.dynamic.kabel-deutschland.de.
 [178.27.67.117])
        by smtp.gmail.com with ESMTPSA id
 s1sm11572081edt.49.2022.02.11.12.16.19
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Feb 2022 12:16:19 -0800 (PST)
From: Josef Holzmayr <jester@theyoctojester.info>
Message-Id: <C281EB5B-1D17-4C14-A81A-7559932F6FE1@theyoctojester.info>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_B68D973C-F292-4F57-9CF2-95F9E9B5C2B7"
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: [yocto] Possible to ignore a missing file in recipe without
 error?
Date: Fri, 11 Feb 2022 21:16:18 +0100
In-Reply-To: <ZwA0.1644606224818205423.3XEH@lists.yoctoproject.org>
Cc: yocto@lists.yoctoproject.org
To: Howard <howard.egan@avid.com>
References: <ZwA0.1644606224818205423.3XEH@lists.yoctoproject.org>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Feb 2022 20:16:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56163


--Apple-Mail=_B68D973C-F292-4F57-9CF2-95F9E9B5C2B7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Howdy!

> On 11. Feb 2022, at 20:03, Howard <howard.egan@avid.com> wrote:
>=20
> Hi:
>=20
> I have a simple recipe that installs a few miscellaneous files, one of =
the files may or may not be present and in reality that's ok for the =
moment, but I don't see a way to do things in a recipe based on the =
presence or absence of a file. =20

The real question is: what is the condition? It must be something that =
is constant across all of the build. And if can only come from either a =
.conf file or the environment, otherwise it would not be visible in the =
recipe.

>=20
> For example:
>=20
> LICENSE=3D"CLOSED"
>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>=20
> # always present file
> SRC_URI +=3D "file://myconfig.config"
>=20
> # sometimes present file - is there a way to conditionally do this =
statement
> SRC_URI +=3D "file://myOtherConfig.config"

A possible approach would be only appending depending on a specific =
DISTRO_FLAG, via bb.utils.contains. I have done something similar at =
https://github.com/TheYoctoJester/meta-zinc/blob/5c566c2f7d29d9db15db0c70c=
d3dd79fa755c351/recipes-zinc/libanswer/libanswer_git.bb#L26 =
<https://github.com/TheYoctoJester/meta-zinc/blob/5c566c2f7d29d9db15db0c70=
cd3dd79fa755c351/recipes-zinc/libanswer/libanswer_git.bb#L26>

But again, it depends on the exact use case.

Greetz

>=20
> do_install() {
>     install -d ${D}${sysconfdir}
>     install -m 0755 ${WORKDIR}/myconfig.config ${D}${sysconfdir}
>     #same here
>     install -m 0755 ${WORKDIR}/myOtherConfig.config ${D}${sysconfdir}
>=20
> }
>=20
> FILES_${PN} +=3D " ${sysconfdir}/myconfig.config "
> #same here
> FILES_${PN} +=3D " ${sysconfdir}/myOtherConfig.config "
>=20
>=20
> Many thanks
> Howard
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56161): =
https://lists.yoctoproject.org/g/yocto/message/56161
> Mute This Topic: https://lists.yoctoproject.org/mt/89078696/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--Apple-Mail=_B68D973C-F292-4F57-9CF2-95F9E9B5C2B7
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Howdy!<br class=3D""><div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D"">On 11. Feb 2022, at 20:03, =
Howard &lt;<a href=3D"mailto:howard.egan@avid.com" =
class=3D"">howard.egan@avid.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D"">Hi:<br class=3D""><br =
class=3D"">I have a simple recipe that installs a few miscellaneous =
files, one of the files may or may not be present and in reality that's =
ok for the moment, but I don't see a way to do things in a recipe based =
on the presence or absence of a file.&nbsp; <br =
class=3D""></div></blockquote><div><br class=3D""></div><div>The real =
question is: what is the condition? It must be something that is =
constant across all of the build. And if can only come from either a =
.conf file or the environment, otherwise it would not be visible in the =
recipe.</div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D""><br class=3D"">For example:<br class=3D""><br =
class=3D"">LICENSE=3D"CLOSED"<br class=3D""><br =
class=3D"">FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"<br =
class=3D""><br class=3D""># always present file<br class=3D"">SRC_URI +=3D=
 "<a href=3D"file://myconfig.config" =
class=3D"">file://myconfig.config</a>"<br class=3D""><br class=3D""># =
sometimes present file - is there a way to conditionally do this =
statement<br class=3D"">SRC_URI +=3D "<a =
href=3D"file://myOtherConfig.config" =
class=3D"">file://myOtherConfig.config</a>"<br =
class=3D""></div></blockquote><div><br class=3D""></div><div>A possible =
approach would be only appending depending on a specific DISTRO_FLAG, =
via bb.utils.contains. I have done something similar at&nbsp;<a =
href=3D"https://github.com/TheYoctoJester/meta-zinc/blob/5c566c2f7d29d9db1=
5db0c70cd3dd79fa755c351/recipes-zinc/libanswer/libanswer_git.bb#L26" =
class=3D"">https://github.com/TheYoctoJester/meta-zinc/blob/5c566c2f7d29d9=
db15db0c70cd3dd79fa755c351/recipes-zinc/libanswer/libanswer_git.bb#L26</a>=
</div><div><br class=3D""></div><div>But again, it depends on the exact =
use case.</div><div><br class=3D""></div><div>Greetz</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><br =
class=3D"">do_install() {<br class=3D"">&nbsp;&nbsp;&nbsp; install -d =
${D}${sysconfdir}<br class=3D"">&nbsp;&nbsp;&nbsp; install -m 0755 =
${WORKDIR}/myconfig.config ${D}${sysconfdir}<br =
class=3D"">&nbsp;&nbsp;&nbsp; #same here<br class=3D"">&nbsp;&nbsp;&nbsp; =
install -m 0755 ${WORKDIR}/myOtherConfig.config ${D}${sysconfdir}<br =
class=3D""><br class=3D"">}<br class=3D""><br class=3D"">FILES_${PN} +=3D =
" ${sysconfdir}/myconfig.config "<br class=3D"">#same here<br =
class=3D"">FILES_${PN} +=3D " ${sysconfdir}/myOtherConfig.config "<br =
class=3D""><br class=3D""><br class=3D"">Many thanks<br =
class=3D"">Howard<br class=3D"">
<br class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br =
class=3D"">Links: You receive all messages sent to this group.<br =
class=3D"">You automatically follow any topics you start or reply to.<br =
class=3D"">View/Reply Online (#56161): <a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/56161" =
class=3D"">https://lists.yoctoproject.org/g/yocto/message/56161</a><br =
class=3D"">Mute This Topic: <a =
href=3D"https://lists.yoctoproject.org/mt/89078696/4689568" =
class=3D"">https://lists.yoctoproject.org/mt/89078696/4689568</a><br =
class=3D"">Group Owner: <a =
href=3D"mailto:yocto+owner@lists.yoctoproject.org" =
class=3D"">yocto+owner@lists.yoctoproject.org</a><br =
class=3D"">Unsubscribe: <a =
href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
class=3D"">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a =
href=3D"mailto:jester@theyoctojester.info" =
class=3D"">jester@theyoctojester.info</a>]<br =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br class=3D""><br=
 class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_B68D973C-F292-4F57-9CF2-95F9E9B5C2B7--

