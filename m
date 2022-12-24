Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0944BC4332F
	for <webhook@archiver.kernel.org>; Sat, 24 Dec 2022 16:39:07 +0000 (UTC)
Received: from mailout04.t-online.de (mailout04.t-online.de [194.25.134.18])
 by mx.groups.io with SMTP id smtpd.web11.100623.1671899946248107641
 for <yocto@lists.yoctoproject.org>;
 Sat, 24 Dec 2022 08:39:06 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.18, mailfrom: f_l_k@t-online.de)
Received: from fwd81.dcpf.telekom.de (fwd81.aul.t-online.de [10.223.144.107])
	by mailout04.t-online.de (Postfix) with SMTP id 365091709C;
	Sat, 24 Dec 2022 17:39:04 +0100 (CET)
Received: from [192.168.178.83] ([79.219.224.233]) by fwd81.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1p97Y6-3nQc6K0; Sat, 24 Dec 2022 17:39:03 +0100
Date: Sat, 24 Dec 2022 17:38:57 +0100
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] lsusb
To: Mistyron <ron.eggler@mistywest.com>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Message-Id: <X8MENR.4MKC85CKXZNY@t-online.de>
In-Reply-To: <ebad1d85-062c-9e89-12ef-4cab2b58b1ec@mistywest.com>
References: <350433e2-a9a5-f7f4-3b7c-ed04700907c2@mistywest.com>
	<CAMKF1sqUTzOykipWXr7OGyu5TeEueif57_1z8EBUX-MDEetiSA@mail.gmail.com>
	<ebad1d85-062c-9e89-12ef-4cab2b58b1ec@mistywest.com>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-SmwfxNBh3JjAjmGknMaF"
X-TOI-EXPURGATEID: 150726::1671899943-EDFED7E2-895DAEAC/0/0 CLEAN NORMAL
X-TOI-MSGID: 2a4d2843-f772-4640-898a-244c06ab205f
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Dec 2022 16:39:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58860

--=-SmwfxNBh3JjAjmGknMaF
Content-Type: text/plain; charset=us-ascii; format=flowed

Am Sa, 24. Dez 2022 um 08:34:49 -0800 schrieb Mistyron 
<ron.eggler@mistywest.com>:
> $ grep usb path/to/package.manifest
>   libusb-1.0-0
>   usbutils
>   usbutils-python

lsusb is part of usbutils, so it is not explicitly listed, but should 
be included in your image


--=-SmwfxNBh3JjAjmGknMaF
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto">Am Sa, 24. Dez 2022 um 08:34:49 -0800 schrieb Mistyron &lt;ron.eggler@mistywest.com&gt;:<br><blockquote type="cite"><div class="plaintext" style="white-space: break-spaces;">$ grep usb path/to/package.manifest
&nbsp; libusb-1.0-0
&nbsp; usbutils
&nbsp; usbutils-python</div></blockquote><div><br></div><div>lsusb is part of usbutils, so it is not explicitly listed, but should be included in your image</div></div>
--=-SmwfxNBh3JjAjmGknMaF--


