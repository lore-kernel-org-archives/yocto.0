Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45C95EB64DC
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 13:43:32 +0000 (UTC)
Received: from mailout09.t-online.de (mailout09.t-online.de [194.25.134.84])
 by mx.groups.io with SMTP id smtpd.web10.32944.1688391807348280620
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 06:43:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.84, mailfrom: f_l_k@t-online.de)
Received: from fwd80.dcpf.telekom.de (fwd80.aul.t-online.de [10.223.144.106])
	by mailout09.t-online.de (Postfix) with SMTP id AFC292E0A2;
	Mon,  3 Jul 2023 15:43:24 +0200 (CEST)
Received: from [192.168.178.156] ([84.154.164.132]) by fwd80.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1qGJpr-22S1Oi0; Mon, 3 Jul 2023 15:43:23 +0200
Date: Mon, 03 Jul 2023 15:43:17 +0200
From: f_l_k@t-online.de
Subject: Re: [yocto] Building Tailscale with Yocto #golang
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: przemek.recha@gmail.com, yocto@lists.yoctoproject.org
Message-Id: <5G38XR.TXXNOJQ8IM5Q@t-online.de>
In-Reply-To: 
	<CADkTA4MOWSbCOWtbzKhJ=X97u6GvQiRbBBBLyvK1pg4HjDv5Rw@mail.gmail.com>
References: <4HqO.1688327140014497685.1oIK@lists.yoctoproject.org>
	<TMR6XR.EE45UBD6649W1@t-online.de>
	<CADkTA4MOWSbCOWtbzKhJ=X97u6GvQiRbBBBLyvK1pg4HjDv5Rw@mail.gmail.com>
X-Mailer: geary/43.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-mrekeoc7QSYFsZWmn75+"
X-TOI-EXPURGATEID: 150726::1688391803-9B6529C6-9A76F650/0/0 CLEAN NORMAL
X-TOI-MSGID: 82624c5e-2777-44e7-9bd7-72fe2ed803f4
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 13:43:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60497

--=-mrekeoc7QSYFsZWmn75+
Content-Type: text/plain; charset=us-ascii; format=flowed

On Mon, Jul 3 2023 at 09:07:11 AM -0400, Bruce Ashfield 
<bruce.ashfield@gmail.com> wrote:
> We really shouldn't suggest the above to a developer without also the
> explanation as to why network access is disabled by default in tasks
> such as compile.

You are of course right with your objections. However, this is the only 
way I know of to get around this problem. Reproducibility is not a must 
have requirement for me, but I use some gtk go programs and would love 
to have a way to build at least gotk3 shared, since it takes quite a 
long time and has to be rebuilt for each program.
I had experimented with this some time ago, but it looked to me like 
there was no easy solution to this problem. This is somehow quite a 
conflict between different concepts.


--=-mrekeoc7QSYFsZWmn75+
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto">On Mon, Jul 3 2023 at 09:07:11 AM -0400, Bruce Ashfield &lt;bruce.ashfield@gmail.com&gt; wrote:<br><blockquote type="cite"><div class="plaintext" style="white-space: break-spaces;">We really shouldn't suggest the above to a developer without also the
explanation as to why network access is disabled by default in tasks
such as compile.
</div></blockquote><div><br></div><div><div>You are of course right with your objections. However, this is the only way I know of to get around this problem. Reproducibility is not a must have requirement for me, but I use some gtk go programs and would love to have a way to build at least gotk3 shared, since it takes quite a long time and has to be rebuilt for each program.</div><div>I had experimented with this some time ago, but it looked to me like there was no easy solution to this problem. This is somehow quite a conflict between different concepts.</div></div></div>
--=-mrekeoc7QSYFsZWmn75+--


