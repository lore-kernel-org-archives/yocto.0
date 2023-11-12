Return-Path: <david.dlouhy@tul.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BE70C4332F
	for <webhook@archiver.kernel.org>; Sun, 12 Nov 2023 11:19:21 +0000 (UTC)
Received: from bubo.tul.cz (bubo.tul.cz [147.230.16.1])
 by mx.groups.io with SMTP id smtpd.web10.13186.1699787956661955950
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Nov 2023 03:19:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tul.cz header.s=tul2021 header.b=VA5nTQ0x;
 spf=pass (domain: tul.cz, ip: 147.230.16.1, mailfrom: david.dlouhy@tul.cz)
X-Virus-Scanned: amavisd-new at tul.cz
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bubo.tul.cz (Postfix) with ESMTPSA id 41F3518050A06
	for <yocto@lists.yoctoproject.org>; Sun, 12 Nov 2023 12:19:13 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 bubo.tul.cz 41F3518050A06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tul.cz; s=tul2021;
	t=1699787953; bh=yVBMtfdZNBE5+SjV22ENTu6MK//N8962Cdry7AoSLr4=;
	h=From:Date:Subject:To:From;
	b=VA5nTQ0xGaKTXbiVXvmD0a3SrVsiqQD++OyH+N21aw87y+Yfpla7JNP+iFy6KvSKq
	 cohSeRbbDL7dUc3RZl/WCGwFAjhd6kGYreUSnJ1QI1xgrMh70OLt4uvfHKV+4EIqcn
	 QX5oZncwn0Xs72A9DYIXgI4TTg1bfgVb6e/TXFn0jBfH2F/Bi0Z6QVQcOkU/frtGBl
	 qc1pxpvu3hN73/S/SGiIN2UC56S14KL29B5u05e2WlncJitGM36darjXOTdBwUuxJD
	 2uvjgER6ECKuKCXSlN77n+w4LUshxtdAPFL9iC398SEA4BrJexqgQwB70F6mwFXEwS
	 tU1i2dIHU/Djg==
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-587b1231dbeso2007925eaf.3
        for <yocto@lists.yoctoproject.org>; Sun, 12 Nov 2023 03:19:13 -0800 (PST)
X-Gm-Message-State: AOJu0YzYtx/qqj0jCrvHRRkEekSEsadXVJILoapiw7h80Yl22Ap2Imni
	w4xgeW2E2j9GnB5xtlt+QrkqjGOo+ILy5JSokFA=
X-Google-Smtp-Source: AGHT+IGBfT5ioD74M+lktBWMwOlEAZoqRu6W7VAnSZpCw1Dd1uRDHWP1Mg/JkiTZySrvw+WpvJmpWWIBL2ZhymAyBZQ=
X-Received: by 2002:a05:6870:47a0:b0:1f4:d516:2e2b with SMTP id
 c32-20020a05687047a000b001f4d5162e2bmr4807062oaq.16.1699787951152; Sun, 12
 Nov 2023 03:19:11 -0800 (PST)
MIME-Version: 1.0
From: =?UTF-8?Q?David_Dlouh=C3=BD_TUL?= <david.dlouhy@tul.cz>
Date: Sun, 12 Nov 2023 12:19:00 +0100
X-Gmail-Original-Message-ID: <CALsTBq26n+EbnFGkN0irAsi7s7zK-FWdYoWZgBK95RBno0RDCQ@mail.gmail.com>
Message-ID: <CALsTBq26n+EbnFGkN0irAsi7s7zK-FWdYoWZgBK95RBno0RDCQ@mail.gmail.com>
Subject: Which technologies do you use in your company to develop embedded
 devices and embedded Linux?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000005a69e0609f2b944"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 12 Nov 2023 11:19:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61661

--00000000000005a69e0609f2b944
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, I'm working on my thesis, creating an open-source tool/platform. Based
on configuration, it sets up infrastructure for developing embedded Linux
and embedded devices. For instance, users can choose CI/CD with GitLab as
the technology. The tool handles everything, configuring as needed. It can
build GitLab and private runners locally or in the cloud (Azure, AWS,
Google, etc.). This is just an example. The goal is to automate these steps
so developers and small companies can focus on development, whether for
small home projects or budding startups.

Now, to the main point. I'm gathering information about the technologies
your team uses. I'd appreciate it if you could share the technologies you
use. It doesn't matter what type of project it is.

=E2=80=A2 Planning: JIRA, Trello, Asana=E2=80=A6

=E2=80=A2 Coding: Git, SVN, Mercurial=E2=80=A6

=E2=80=A2 Build: Jenkins, Travis CI, CircleCI=E2=80=A6

=E2=80=A2 Testing: Selenium, JUnit, pytest=E2=80=A6

=E2=80=A2 Release: Semantic Versioning, Git Flow=E2=80=A6

=E2=80=A2 Deploy: Kubernetes, Docker, Heroku=E2=80=A6

=E2=80=A2 Operate: Ansible, Puppet, Chef=E2=80=A6

=E2=80=A2 Monitoring: Prometheus, Grafana, New Relic=E2=80=A6

Are these really all the technologies your team encounters during
development? Both in terms of development and operations.

My goal is to create something useful, not just for one company. I want to
make something universally applicable for free. That's why I need to know
what technologies you specifically use. I'll integrate the tool with
relevant technologies that are a real necessity.

--00000000000005a69e0609f2b944
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM=
" style=3D"margin:0px;padding:0px 0px 0.25em;border:0px;font-variant-numeri=
c:inherit;font-variant-east-asian:inherit;font-variant-alternates:inherit;f=
ont-stretch:inherit;font-size:14px;line-height:inherit;font-family:&quot;No=
to Sans&quot;,Arial,sans-serif;font-kerning:inherit;font-feature-settings:i=
nherit;vertical-align:baseline;color:rgb(28,28,28)">Hi, I&#39;m working on =
my thesis, creating an open-source tool/platform. Based on configuration, i=
t sets up infrastructure for developing embedded Linux and embedded devices=
. For instance, users can choose CI/CD with GitLab as the technology. The t=
ool handles everything, configuring as needed. It can build GitLab and priv=
ate runners locally or in the cloud (Azure, AWS, Google, etc.). This is jus=
t an example. The goal is to automate these steps so developers and small c=
ompanies can focus on development, whether for small home projects or buddi=
ng startups.</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM" style=3D"margin:=
0px;padding:0.8em 0px 0.25em;border:0px;font-variant-numeric:inherit;font-v=
ariant-east-asian:inherit;font-variant-alternates:inherit;font-stretch:inhe=
rit;font-size:14px;line-height:inherit;font-family:&quot;Noto Sans&quot;,Ar=
ial,sans-serif;font-kerning:inherit;font-feature-settings:inherit;vertical-=
align:baseline;color:rgb(28,28,28)">Now, to the main point. I&#39;m gatheri=
ng information about the technologies your team uses. I&#39;d appreciate it=
 if you could share the technologies you use. It doesn&#39;t matter what ty=
pe of project it is.</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM" style=3D=
"margin:0px;padding:0.8em 0px 0.25em;border:0px;font-variant-numeric:inheri=
t;font-variant-east-asian:inherit;font-variant-alternates:inherit;font-stre=
tch:inherit;font-size:14px;line-height:inherit;font-family:&quot;Noto Sans&=
quot;,Arial,sans-serif;font-kerning:inherit;font-feature-settings:inherit;v=
ertical-align:baseline;color:rgb(28,28,28)">=E2=80=A2 Planning: JIRA, Trell=
o, Asana=E2=80=A6</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM" style=3D"ma=
rgin:0px;padding:0.8em 0px 0.25em;border:0px;font-variant-numeric:inherit;f=
ont-variant-east-asian:inherit;font-variant-alternates:inherit;font-stretch=
:inherit;font-size:14px;line-height:inherit;font-family:&quot;Noto Sans&quo=
t;,Arial,sans-serif;font-kerning:inherit;font-feature-settings:inherit;vert=
ical-align:baseline;color:rgb(28,28,28)">=E2=80=A2 Coding: Git, SVN, Mercur=
ial=E2=80=A6</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM" style=3D"margin:=
0px;padding:0.8em 0px 0.25em;border:0px;font-variant-numeric:inherit;font-v=
ariant-east-asian:inherit;font-variant-alternates:inherit;font-stretch:inhe=
rit;font-size:14px;line-height:inherit;font-family:&quot;Noto Sans&quot;,Ar=
ial,sans-serif;font-kerning:inherit;font-feature-settings:inherit;vertical-=
align:baseline;color:rgb(28,28,28)">=E2=80=A2 Build: Jenkins, Travis CI, Ci=
rcleCI=E2=80=A6</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM" style=3D"marg=
in:0px;padding:0.8em 0px 0.25em;border:0px;font-variant-numeric:inherit;fon=
t-variant-east-asian:inherit;font-variant-alternates:inherit;font-stretch:i=
nherit;font-size:14px;line-height:inherit;font-family:&quot;Noto Sans&quot;=
,Arial,sans-serif;font-kerning:inherit;font-feature-settings:inherit;vertic=
al-align:baseline;color:rgb(28,28,28)">=E2=80=A2 Testing: Selenium, JUnit, =
pytest=E2=80=A6</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM" style=3D"marg=
in:0px;padding:0.8em 0px 0.25em;border:0px;font-variant-numeric:inherit;fon=
t-variant-east-asian:inherit;font-variant-alternates:inherit;font-stretch:i=
nherit;font-size:14px;line-height:inherit;font-family:&quot;Noto Sans&quot;=
,Arial,sans-serif;font-kerning:inherit;font-feature-settings:inherit;vertic=
al-align:baseline;color:rgb(28,28,28)">=E2=80=A2 Release: Semantic Versioni=
ng, Git Flow=E2=80=A6</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM" style=
=3D"margin:0px;padding:0.8em 0px 0.25em;border:0px;font-variant-numeric:inh=
erit;font-variant-east-asian:inherit;font-variant-alternates:inherit;font-s=
tretch:inherit;font-size:14px;line-height:inherit;font-family:&quot;Noto Sa=
ns&quot;,Arial,sans-serif;font-kerning:inherit;font-feature-settings:inheri=
t;vertical-align:baseline;color:rgb(28,28,28)">=E2=80=A2 Deploy: Kubernetes=
, Docker, Heroku=E2=80=A6</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM" sty=
le=3D"margin:0px;padding:0.8em 0px 0.25em;border:0px;font-variant-numeric:i=
nherit;font-variant-east-asian:inherit;font-variant-alternates:inherit;font=
-stretch:inherit;font-size:14px;line-height:inherit;font-family:&quot;Noto =
Sans&quot;,Arial,sans-serif;font-kerning:inherit;font-feature-settings:inhe=
rit;vertical-align:baseline;color:rgb(28,28,28)">=E2=80=A2 Operate: Ansible=
, Puppet, Chef=E2=80=A6</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM" style=
=3D"margin:0px;padding:0.8em 0px 0.25em;border:0px;font-variant-numeric:inh=
erit;font-variant-east-asian:inherit;font-variant-alternates:inherit;font-s=
tretch:inherit;font-size:14px;line-height:inherit;font-family:&quot;Noto Sa=
ns&quot;,Arial,sans-serif;font-kerning:inherit;font-feature-settings:inheri=
t;vertical-align:baseline;color:rgb(28,28,28)">=E2=80=A2 Monitoring: Promet=
heus, Grafana, New Relic=E2=80=A6</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XS=
iJM" style=3D"margin:0px;padding:0.8em 0px 0.25em;border:0px;font-variant-n=
umeric:inherit;font-variant-east-asian:inherit;font-variant-alternates:inhe=
rit;font-stretch:inherit;font-size:14px;line-height:inherit;font-family:&qu=
ot;Noto Sans&quot;,Arial,sans-serif;font-kerning:inherit;font-feature-setti=
ngs:inherit;vertical-align:baseline;color:rgb(28,28,28)">Are these really a=
ll the technologies your team encounters during development? Both in terms =
of development and operations.</p><p class=3D"gmail-_1qeIAgB0cPwnLhDF9XSiJM=
" style=3D"margin:0px;padding:0.8em 0px 0px;border:0px;font-variant-numeric=
:inherit;font-variant-east-asian:inherit;font-variant-alternates:inherit;fo=
nt-stretch:inherit;font-size:14px;line-height:inherit;font-family:&quot;Not=
o Sans&quot;,Arial,sans-serif;font-kerning:inherit;font-feature-settings:in=
herit;vertical-align:baseline;color:rgb(28,28,28)">My goal is to create som=
ething useful, not just for one company. I want to make something universal=
ly applicable for free. That&#39;s why I need to know what technologies you=
 specifically use. I&#39;ll integrate the tool with relevant technologies t=
hat are a real necessity.</p></div></div>

--00000000000005a69e0609f2b944--

