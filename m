Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40FC6CD128A
	for <webhook@archiver.kernel.org>; Thu, 11 Apr 2024 08:02:45 +0000 (UTC)
Received: from mailout12.t-online.de (mailout12.t-online.de [194.25.134.22])
 by mx.groups.io with SMTP id smtpd.web10.12384.1712822559237041739
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Apr 2024 01:02:39 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: t-online.de, ip: 194.25.134.22, mailfrom: f_l_k@t-online.de)
Received: from fwd75.aul.t-online.de (fwd75.aul.t-online.de [10.223.144.101])
	by mailout12.t-online.de (Postfix) with SMTP id F0E51599D;
	Thu, 11 Apr 2024 10:02:36 +0200 (CEST)
Received: from [192.168.178.67] ([84.163.37.197]) by fwd75.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1rupOF-1iSOvI0; Thu, 11 Apr 2024 10:02:35 +0200
Date: Thu, 11 Apr 2024 10:02:54 +0200
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] Correct way for multiple recipes to install files in the
 same directory
To: yocto@lists.yoctoproject.org, linusnilsson@hotmail.com
Message-Id: <UCQRBS.EOAK12EU960P1@t-online.de>
In-Reply-To: <ZfwI.1712821969796887981.Ve9P@lists.yoctoproject.org>
References: <ZfwI.1712821969796887981.Ve9P@lists.yoctoproject.org>
X-Mailer: geary/44.1
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-1HgY2EHDav7C3/zzX8lJ"
X-TOI-EXPURGATEID: 150726::1712822555-3D98AC7B-DAF99C76/0/0 CLEAN NORMAL
X-TOI-MSGID: b5f74ea3-977b-45ab-b214-fe3cd89c80b5
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Apr 2024 08:02:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62915

--=-1HgY2EHDav7C3/zzX8lJ
Content-Type: text/plain; charset=us-ascii; format=flowed

On Thu, Apr 11 2024 at 12:52:49 AM -07:00:00, linusnilsson@hotmail.com 
wrote:
> Is there a proper way to do this?
> 
> Kind regards, Linus

Hi,
can't tell if this would be a proper way, but this is how I do it and 
what works for me:

Create a main user:
<https://codeberg.org/flk/meta-image/src/branch/master/recipes-extended/system-config/main-user.bb>

Inherit a main-user class for every recipe that wants to write stuff to 
/home/user
<https://codeberg.org/flk/meta-image/src/branch/master/classes/main-user.bbclass>

You can override the values set in main-user.bbclass to fit your needs 
in e.g. local.conf

Regards,
Markus



--=-1HgY2EHDav7C3/zzX8lJ
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

<div id=3D"geary-body" dir=3D"auto">On Thu, Apr 11 2024 at 12:52:49 AM -07:=
00:00, linusnilsson@hotmail.com wrote:<br><blockquote type=3D"cite">Is ther=
e a proper way to do this?<br><br>Kind regards, Linus</blockquote><div><br>=
</div><div>Hi,</div><div>can't tell if this would be a proper way, but this=
 is how I do it and what works for me:</div><div><br></div><div>Create a ma=
in user:&nbsp;</div><div><a href=3D"https://codeberg.org/flk/meta-image/src=
/branch/master/recipes-extended/system-config/main-user.bb">https://codeber=
g.org/flk/meta-image/src/branch/master/recipes-extended/system-config/main-=
user.bb</a></div><div><br></div><div>Inherit a main-user class for every re=
cipe that wants to write stuff to /home/user</div><div><a href=3D"https://c=
odeberg.org/flk/meta-image/src/branch/master/classes/main-user.bbclass">htt=
ps://codeberg.org/flk/meta-image/src/branch/master/classes/main-user.bbclas=
s</a></div><div><br></div><div>You can override the values set in main-user=
.bbclass to fit your needs in e.g. local.conf</div><div></div><div><br></di=
v><div>Regards,</div><div>Markus</div><div><br></div></div>
--=-1HgY2EHDav7C3/zzX8lJ--


