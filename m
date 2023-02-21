Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58D71C61DA3
	for <webhook@archiver.kernel.org>; Tue, 21 Feb 2023 23:00:50 +0000 (UTC)
Received: from mailout05.t-online.de (mailout05.t-online.de [194.25.134.82])
 by mx.groups.io with SMTP id smtpd.web10.57127.1677020429660649654
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Feb 2023 15:00:41 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.82, mailfrom: f_l_k@t-online.de)
Received: from fwd71.dcpf.telekom.de (fwd71.aul.t-online.de [10.223.144.97])
	by mailout05.t-online.de (Postfix) with SMTP id 7F54D23FFE;
	Wed, 22 Feb 2023 00:00:04 +0100 (CET)
Received: from [192.168.178.83] ([84.154.165.85]) by fwd71.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1pUbc1-33U4TA0; Tue, 21 Feb 2023 23:59:54 +0100
Date: Tue, 21 Feb 2023 23:59:47 +0100
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] resize2fs, what's provide this package
To: martin.leduc@luminator.com
Cc: yocto@lists.yoctoproject.org
Message-Id: <N7DGQR.4YFXGYEY5XK92@t-online.de>
In-Reply-To: <qIwR.1677013376481498401.XOp3@lists.yoctoproject.org>
References: <qIwR.1677013376481498401.XOp3@lists.yoctoproject.org>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-SSwDbxZEcAQfq65L5UBp"
X-TOI-EXPURGATEID: 150726::1677020394-40FE7C4D-DC791480/0/0 CLEAN NORMAL
X-TOI-MSGID: 67255274-e8e8-41d0-9097-20d126485b53
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Feb 2023 23:00:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59271

--=-SSwDbxZEcAQfq65L5UBp
Content-Type: text/plain; charset=us-ascii; format=flowed

Hi,
you need to install 'e2fsprogs-resize2fs'

Am Di, 21. Feb 2023 um 13:02:56 -0800 schrieb Martin Leduc via 
lists.yoctoproject.org 
<martin.leduc=luminator.com@lists.yoctoproject.org>:
> Hi community,
> 
> I look for the resize2fs recipes.  This application shall be included 
> in the e2fsprog package but it's not there.  I've also tried to 
> configure the e2fsprog package using menuconfig without any success 
> (bitbake -c menuconfig e2fsprog).
> 
> Normally I use https://layers.openembedded.org 
> <https://layers.openembedded.org/> to find the recipes for required 
> packages but this time, everything points me to the e2fsprog recipes 
> but it doesn't work for me.
> 
> Any idea and another system to find which meta-* provides a specific 
> application?
> 
> Thank you, team,
> 
> Have a nice day
> 
> Martin


--=-SSwDbxZEcAQfq65L5UBp
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<div id=3D"geary-body" dir=3D"auto"><div><div>Hi,</div><div>you need to ins=
tall 'e2fsprogs-resize2fs'</div></div></div><div id=3D"geary-quote" dir=3D"=
auto"><br>Am Di, 21. Feb 2023 um 13:02:56 -0800 schrieb Martin Leduc via li=
sts.yoctoproject.org &lt;martin.leduc=3Dluminator.com@lists.yoctoproject.or=
g&gt;:<br><blockquote type=3D"cite">Hi community,<br><br>I look for the res=
ize2fs recipes.&nbsp; This application shall be included in the e2fsprog pa=
ckage but it's not there.&nbsp; I've also tried to configure the e2fsprog p=
ackage using menuconfig without any success (bitbake -c menuconfig e2fsprog=
).<br><br>Normally I use&nbsp;<a href=3D"https://layers.openembedded.org" t=
arget=3D"_blank" rel=3D"noopener">https://layers.openembedded.org</a>&nbsp;=
to find the recipes for required packages but this time, everything points =
me to the e2fsprog recipes but it doesn't work for me.<br><br>Any idea and =
another system to find which meta-* provides a specific application?<br><br=
>Thank you, team,<br><br>Have a nice day<br><br>Martin
</blockquote></div>
--=-SSwDbxZEcAQfq65L5UBp--


