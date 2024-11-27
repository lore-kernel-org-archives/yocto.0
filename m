Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8987FD609A9
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 07:25:48 +0000 (UTC)
Received: from mailout03.t-online.de (mailout03.t-online.de [194.25.134.81])
 by mx.groups.io with SMTP id smtpd.web10.66695.1732692339386573240
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Nov 2024 23:25:39 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: t-online.de, ip: 194.25.134.81, mailfrom: f_l_k@t-online.de)
Received: from fwd81.aul.t-online.de (fwd81.aul.t-online.de [10.223.144.107])
	by mailout03.t-online.de (Postfix) with SMTP id EE7F611D1;
	Wed, 27 Nov 2024 08:25:36 +0100 (CET)
Received: from [192.168.178.67] ([84.154.173.154]) by fwd81.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1tGCQW-3iVNoW0; Wed, 27 Nov 2024 08:25:32 +0100
Date: Wed, 27 Nov 2024 08:25:26 +0100
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] Disabling unused service to reduce boot time (Krikstone
 version)
To: yocto@lists.yoctoproject.org, sateesh0457@gmail.com
Cc: "sateesh m via lists.yoctoproject.org"
	<sateesh0457=gmail.com@lists.yoctoproject.org>
Message-Id: <EYLLNS.RTHGM5HDF2WN3@t-online.de>
In-Reply-To: <JHN1.1732688730575421161.q61g@lists.yoctoproject.org>
References: <JHN1.1732688730575421161.q61g@lists.yoctoproject.org>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-Eeskbklr4+2r2TSb2Uq9"
X-TOI-EXPURGATEID: 150726::1732692332-BCFEFD18-8D9A82AE/0/0 CLEAN NORMAL
X-TOI-MSGID: 4ebf26db-f734-4090-9014-a261e23cf1ef
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 07:25:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64355

--=-Eeskbklr4+2r2TSb2Uq9
Content-Type: text/plain; charset=us-ascii; format=flowed

On Tue, Nov 26 2024 at 10:25:30 PM -08:00:00, sateesh m via 
lists.yoctoproject.org <sateesh0457=gmail.com@lists.yoctoproject.org> 
wrote:
> DISTRO_FEATURES:remove = "zeroconf"

This should usually avoid installing avahi. I would check what else 
installs avahi to your image by temporarily renaming avahi.bb so that
it can't be found, then rebuild your image and see where it fails.

Additionally removing 'polkit' from DISTRO_FEATURES should also 
globally disable polkit support

DISTRO_FEATURES:remove = "zeroconf polkit"


--=-Eeskbklr4+2r2TSb2Uq9
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto">On Tue, Nov 26 2024 at 10:25:30 PM -08:00:00, sateesh m via lists.yoctoproject.org &lt;sateesh0457=gmail.com@lists.yoctoproject.org&gt; wrote:<br><blockquote type="cite">DISTRO_FEATURES:remove = "zeroconf"</blockquote><div><br></div><div>This should usually avoid installing avahi. I would check what else installs avahi to your image by temporarily renaming avahi.bb so that</div><div>it can't be found, then rebuild your image and see where it fails.</div><div><br></div><div>Additionally removing 'polkit' from DISTRO_FEATURES should also globally disable polkit support</div><div><br></div><div>DISTRO_FEATURES:remove = "zeroconf polkit"</div></div>
--=-Eeskbklr4+2r2TSb2Uq9--


