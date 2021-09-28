Return-Path: <opensource@keylevel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE99C433F5
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 21:58:50 +0000 (UTC)
Received: from hs013.4uh.net (hs013.4uh.net [80.68.86.13])
 by mx.groups.io with SMTP id smtpd.web12.1003.1632866328396166783
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Sep 2021 14:58:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keylevel.com header.s=default header.b=DI2Z9FEw;
 spf=pass (domain: keylevel.com, ip: 80.68.86.13,
 mailfrom: opensource@keylevel.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=odCxgJLt4ep8i/x5gKyU6m0zrg6Frto7Wm0GHm/60MQ=; b=DI2Z9FEwkLdI1bCnWgD3vvtWYq
	UaAou9HPYuaeslJshApNysJCS+ACzCRKeVxrK0AaS9nJW6NvdOYggPdPD9tlsvEwG4lyl7ElQ3E3k
	AYHrL8Vs1+xJwNqkePJriuakDjsAfz6Dg0ldHaNx0t+sDk9mq3wpa/XpTzuk4JVvFHewYhtZLFuRk
	Wty7fI0deBPotEfQzWa5ClQoWqd7EF6mk3Fg2Vgv/sJnaSAJtimHt2jWfMkFlqwaNp40ffs5zgrGg
	y+V4Ot97B09uakCtaQ62IL7CpPU5/PK3oSzJkZ5VUCHJ1tqruU+Swfys2uge6icxEpiFgN/UB2C2+
	iq3/PK3A==;
Received: from durham.keylevel.com ([88.97.77.109]:30103
 helo=smtpclient.apple)
	by hs013.4uh.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <opensource@keylevel.com>)
	id 1mVL7d-0002hc-4s
	for yocto@lists.yoctoproject.org; Tue, 28 Sep 2021 22:58:44 +0100
From: Chris Tapp <opensource@keylevel.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Enabling tk for Python tkinter module 
Message-Id: <D8593103-F731-447D-96B1-40DA4BD326AE@keylevel.com>
Date: Tue, 28 Sep 2021 22:58:43 +0100
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-4UH-MailScanner-Information: Please contact the ISP for more information
X-4UH-MailScanner-ID: 1mVL7d-0002hc-4s
X-4UH-MailScanner: Found to be clean
X-4UH-MailScanner-SpamCheck: 
X-4UH-MailScanner-From: opensource@keylevel.com
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hs013.4uh.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hs013.4uh.net: authenticated_id:
 opensource@keylevel.com
X-Authenticated-Sender: hs013.4uh.net: opensource@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 21:58:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54893

I am trying to get PySimpleGUI running on an RPi4 using meta-raspberrypi =
with hardknott.

I have created a recipe for PySimpleGUI and added the following to my =
local.conf:

PACKAGECONFIG_pn-python3 =3D =E2=80=9Ctk=E2=80=9D
IMAGE_INSTALL_append =3D " python3 python3-modules python3-pysimplegui =
tk"

However, the tkinter module fails to load, reporting =E2=80=9CNo module =
named _tkinter=E2=80=9D, with a note above saying that Python may not be =
configured for Tk.

Looking on the target, /usr/lib/libtk.8.so is present.

It looks as if there is something else I need to do to get Python to =
build correctly, but I=E2=80=99m out of ideas ;-)

I=E2=80=99ve found a few bits on the internet that seem related, but =
they haven=E2=80=99t helped me get things going:
 https://www.mail-archive.com/yocto@yoctoproject.org/msg18232.html
 https://www.yoctoproject.org/pipermail/yocto/2014-July/020547.html

Any pointers on where to look would be appreciated.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


