Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBCD5CA6CBC
	for <webhook@archiver.kernel.org>; Tue, 27 Jan 2026 09:10:57 +0000 (UTC)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.6726.1769505052428716497
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Jan 2026 01:10:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=sm0WsHGN;
 spf=pass (domain: smile.fr, ip: 209.85.128.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so44895705e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 27 Jan 2026 01:10:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769505051; cv=none;
        d=google.com; s=arc-20240605;
        b=aECz+fTwFvcnvhm0BFN5W99eNeV6f6zi+IDGD5wpheSKHR1yCIFgbfjsd1HWZkrQvl
         2M+XKj1lka6uer+jRL1W7MKvf76FEE4Euema6sWiGDcaAGsUHLx+xLcta0RKjmX6Tfae
         maFGReiN0eQP+Ba1FfA6S4D1S+OFl1p6gSIVz0ZO2DiAXqMYnmyhC4j7oTcKLjJiyigX
         +NENUD/94FDkAbexVFtmlmGbT+RG3RJEWMNhsci3qnk9oOmAenOHo4Xm2nBAVWy+63JR
         WcfxTBB1x6wZ5GTKv+7hoCa4rWYljAxEJIIw6sOkjyPA0tSQ6sv5xGSlQn5Stj+J3Sjh
         CHxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UkXO6P8iivGfSHlqIj60WPtSHEcTPlqBXQgoLz3gPm8=;
        fh=6X5wNRDwoOawz9TKvbMASCd08iE3qPGYQMmO/P15YAM=;
        b=CbM+wuFcwDkxlmghsjJse84xJ4VDOfeKA+v1UMHbQRqjVowr6ezs3DW94K8Ltltk3+
         3E059lNmjFoLvyWNav0hqFanCpXP/Zc908YufyOd7bvTnH+4O96TAUsw769DiOoKScHE
         /OAbCxGorfsen4S/QMqN8Vaw+bVmWr+deXPzerTVSjz8i6xV8oIE4ykkcoiD0M+2SiZG
         4h9WKxWlnZaNUUdh+e0eZAIeCVZ2XtLY34H9F6RovogyNSl4sOLpMQBPTe4j4mw0SJt0
         +Pv6MszN1y6400kJzR0vglm9Q5jPYJYWKLRnwx8h1ss/4/9shq6KqXNeRziORV9gaF4h
         d3YA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1769505051; x=1770109851; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UkXO6P8iivGfSHlqIj60WPtSHEcTPlqBXQgoLz3gPm8=;
        b=sm0WsHGNkakJ43sMB1MH+iheZwZ886ONGOSG52iXxv3attf96d5hNBjRySRpWo3SHg
         D3AvQs6iLMS/66nroFNS278MRm7EMBOtUIU+Qllrq8zbdgvC9fCZwG5knKfVwBs8OUKj
         P0CTyYywjLePxl/h7Xt0tDlaxPHuibBjj85G8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769505051; x=1770109851;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UkXO6P8iivGfSHlqIj60WPtSHEcTPlqBXQgoLz3gPm8=;
        b=rAXsepTPeDdCtS7GiAV+pqQs+BJnOmY5Cy43vKyxs7Ml2P+h4Ksuqp/qhSvwvN73uB
         b8JhNRcS/b9mgdU/uFULJ63uCgcTwcGR1nlcWKgDHUWL0zFsF1lPh/VoZH6gxnab+vYM
         Gpgr4H21QQ9lcwlRuJxWr7sSG77lnlbrEbXDoVT4v6SAgiDWcIb+1HToEqWjw2eAvIdP
         Djf7PurZ45162dMRsJeiLJegQM/TIoSmdgcXCKzi5M4Y5iGeoCBoEH6Tkl5w8GYfyJYi
         +DjP2Wv6oGNGjIdgUO/u183BmLF15N9E/7NExUwmQ8C84x9yfHih8/vPOvRlzEJVimh/
         /plw==
X-Gm-Message-State: AOJu0YwRJ1H+L1n47rpektpJrn47Ysi6qwvuCNkukAhn8ioz/7j8Gn1W
	c/46hETQz3/UU1QC9jIBamhfBaCbkIKrTEWXUb9O2TI/FjDGh9rg7uwnn95vU2c7DB3yADusWHx
	AqTqginIqVyjWUFsgjpmssucJQ80pgH6shXH7u3Jbr3nOSrGfvFMnmgM=
X-Gm-Gg: AZuq6aL/q5L8zbVYJLvPyh2ByMBkz0iiy4begCPXQUUcTzPmetec7n+LO5kgFrw4+Fo
	1UBEARj26+qq9l3uMjXoRn9vvua6jlwJVuMr1ZJsjbe5L2aOpNVi8Wyr4z3iUbPM7q8eLBsHaXv
	H7mdoP/5eF/Av9IZJ5VwnVDJS2Bp0EHJ7pPQJru2pcdjluN4cbWtygC0eMErSNnF/jtaJtj0ovL
	KF44VxEUFtpkLMseUyMqd69o9jF0pOut4drvErTCHlqZlQRXAfR7PEpPN1ozvfEqd6cPs4uMz24
	Tdo5uN5O6pLSLkBcJ2yNgh4XgUra
X-Received: by 2002:a05:6000:26c6:b0:432:5bf9:cf15 with SMTP id
 ffacd0b85a97d-435dd051223mr1688050f8f.5.1769505050323; Tue, 27 Jan 2026
 01:10:50 -0800 (PST)
MIME-Version: 1.0
References: <0101019bfd297f46-e2a1665f-20ce-4d02-971b-927affd30204-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019bfd297f46-e2a1665f-20ce-4d02-971b-927affd30204-000000@us-west-2.amazonses.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Tue, 27 Jan 2026 10:10:23 +0100
X-Gm-Features: AZwV_Qg20v44JeqxRDnOMfemEHOxyKOU2c1FRkQVnWbiZcddQ-nonvygPHVv4bQ
Message-ID: <CAMSfU+6mKdZKowho6Oj+QPMK31yK7xSPFE8RWLgH+7+QZ2FJBw@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-4.0.33.rc3)
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f402a706495aff59"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jan 2026 09:10:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66193

--000000000000f402a706495aff59
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 27 janv. 2026 =C3=A0 02:55, Pokybuild User via lists.yoctoproject.o=
rg
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> a =C3=A9crit :

>
> A build flagged for QA (yocto-4.0.33.rc3) was completed on the autobuilde=
r
> and is available at:
>
>
>     https://valkyrie.yocto.io/pub/releases/yocto-4.0.33.rc3
>
>
> Build URL:
> https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3125
>
> Build hash information:
>
> bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2
> meta-agl: 12daee6a859f48d3d65545d4fe79849fc312fa21
> meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278
> meta-aws: 18a067493e82243b061c52a167c463df9298a392
> meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8
> meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
> meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d
> meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e
> meta-openembedded: 8f5f5cf4b335a09313c48394c62bfb614868fc1e
> meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c
> meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce
> meta-yocto: 677379f21941363d50f9d946963542b4ccb7e27c
> oecore: 036f76ea35c49a78d612093dcd8eb1fac7ded8d7
> poky: ff118ede826a9ae45eb35025a5f7f612880fba01
> yocto-docs: 6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9
>

This was an "all green" build, so OK to proceed with QA.
Also, I have checked that each repo is on the right commit (kirkstone
branch) and that poky is coherent with the other repos.

Yoann


>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#647):
> https://lists.yoctoproject.org/g/qa-build-notification/message/647
> Mute This Topic: https://lists.yoctoproject.org/mt/117482006/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/qa-build-notification/leave/14721440/431=
6185/830777862/xyzzy
> [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
>

--=20
Yoann Congal
Smile ECS

--000000000000f402a706495aff59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0mar. 27 janv. 2026 =C3=A0=C2=A002=
:55, Pokybuild User via <a href=3D"http://lists.yoctoproject.org">lists.yoc=
toproject.org</a> &lt;pokybuild=3D<a href=3D"mailto:yoctoproject.org@lists.=
yoctoproject.org">yoctoproject.org@lists.yoctoproject.org</a>&gt; a =C3=A9c=
rit=C2=A0:</div><div class=3D"gmail_quote gmail_quote_container"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><br>
A build flagged for QA (yocto-4.0.33.rc3) was completed on the autobuilder =
and is available at:<br>
<br>
<br>
=C2=A0 =C2=A0 <a href=3D"https://valkyrie.yocto.io/pub/releases/yocto-4.0.3=
3.rc3" rel=3D"noreferrer" target=3D"_blank">https://valkyrie.yocto.io/pub/r=
eleases/yocto-4.0.33.rc3</a><br>
<br>
<br>
Build URL: <a href=3D"https://autobuilder.yoctoproject.org/valkyrie/#/build=
ers/29/builds/3125" rel=3D"noreferrer" target=3D"_blank">https://autobuilde=
r.yoctoproject.org/valkyrie/#/builders/29/builds/3125</a><br>
<br>
Build hash information: <br>
<br>
bitbake: 8e2d1f8de055549b2101614d85454fcd1d0f94b2<br>
meta-agl: 12daee6a859f48d3d65545d4fe79849fc312fa21<br>
meta-arm: c3e9fb12aa31d25e33d8392c4a233ed1275a3278<br>
meta-aws: 18a067493e82243b061c52a167c463df9298a392<br>
meta-clang: eafdaa3cda9000c6d9bd1819ffe1219c7b66e4b8<br>
meta-gplv2: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a<br>
meta-intel: 82eb2406e04a89d6ed0650a99ba13224e43e4f0d<br>
meta-mingw: 87c22abb1f11be430caf4372e6b833dc7d77564e<br>
meta-openembedded: 8f5f5cf4b335a09313c48394c62bfb614868fc1e<br>
meta-qcom: 8d273808334daef5922000c8e0548b7ff2b3d72c<br>
meta-virtualization: c474ae21b11a816be607eb7b44d2cf77d1125bce<br>
meta-yocto: 677379f21941363d50f9d946963542b4ccb7e27c<br>
oecore: 036f76ea35c49a78d612093dcd8eb1fac7ded8d7<br>
poky: ff118ede826a9ae45eb35025a5f7f612880fba01<br>
yocto-docs: 6799b1be5d48f4bf5dcd0b16c2dbc2e297d4ecd9<br></blockquote><div><=
br></div><div>
 =20
    This was an &quot;all green&quot; build, so OK to proceed with QA.</div=
><div>Also, I have checked that each repo is on the right commit (kirkstone=
 branch) and that poky is coherent with the other repos.</div><div><br>Yoan=
n
 =20

<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">
<br>
<br>
<br>
This is an automated message from the Yocto Project Autobuilder<br>
Git: git://<a href=3D"http://git.yoctoproject.org/yocto-autobuilder2" rel=
=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/yocto-autobuilder2</=
a><br>
Email: <a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_bla=
nk">richard.purdie@linuxfoundation.org</a><br>
<br>
<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#647): <a href=3D"https://lists.yoctoproject.org/g/qa-bu=
ild-notification/message/647" rel=3D"noreferrer" target=3D"_blank">https://=
lists.yoctoproject.org/g/qa-build-notification/message/647</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117482006/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/117482006/4316185</a><br>
Group Owner: <a href=3D"mailto:qa-build-notification%2Bowner@lists.yoctopro=
ject.org" target=3D"_blank">qa-build-notification+owner@lists.yoctoproject.=
org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/qa-build-notificat=
ion/leave/14721440/4316185/830777862/xyzzy" rel=3D"noreferrer" target=3D"_b=
lank">https://lists.yoctoproject.org/g/qa-build-notification/leave/14721440=
/4316185/830777862/xyzzy</a> [<a href=3D"mailto:yoann.congal@smile.fr" targ=
et=3D"_blank">yoann.congal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--000000000000f402a706495aff59--

