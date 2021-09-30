Return-Path: <opensource@keylevel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0810C433EF
	for <webhook@archiver.kernel.org>; Thu, 30 Sep 2021 09:21:21 +0000 (UTC)
Received: from hs013.4uh.net (hs013.4uh.net [80.68.86.13])
 by mx.groups.io with SMTP id smtpd.web08.9921.1632993675868544734
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Sep 2021 02:21:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keylevel.com header.s=default header.b=lFPPdg3S;
 spf=pass (domain: keylevel.com, ip: 80.68.86.13,
 mailfrom: opensource@keylevel.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=EPc++uxRFP8FnwEukXTxdoO69EIbGfG4N8XjgGOOlRw=; b=lFPPdg3SNfs5d4NQV22/W39FVF
	/Ix+hXor8iTchqgSrOAIfoaGI2uRjhXg/9py/wFvldD+XpfdY53AxHvs0K09J23yiYEzAbCjEw0N+
	4mE/QBQC9ElpzaK8RP1AjqGdoA8oEAEOJe5bsvv0E2Hc7wmbzbeZWFWa1YCz8/RPHN+AoErxcddzd
	vMipdfl3kx4Lw6g+J51HpnLEOl1hT97AwQFyaJNX2PjzLNp5rhg2cv9sW2sX3Yq9gjqk4GwNe8QTd
	gp1MNMPF1q+NlBPZqEpe6J5dLTMVO5qRqlbD59qnTBDZOdcsjhAjGqg//M/36BycDExtcOiOkesIP
	EcOttEug==;
Received: from durham.keylevel.com ([88.97.77.109]:9888 helo=smtpclient.apple)
	by hs013.4uh.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <opensource@keylevel.com>)
	id 1mVsFc-0003hc-LL
	for yocto@lists.yoctoproject.org; Thu, 30 Sep 2021 10:21:12 +0100
From: Chris Tapp <opensource@keylevel.com>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Meta-respberrypi socketcan - how do I bring up the interfaces?
Message-Id: <0F37C22E-D0D7-4250-95F5-74F05E207F9B@keylevel.com>
Date: Thu, 30 Sep 2021 10:21:10 +0100
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-4UH-MailScanner-Information: Please contact the ISP for more information
X-4UH-MailScanner-ID: 1mVsFc-0003hc-LL
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
 <yocto@lists.yoctoproject.org>; Thu, 30 Sep 2021 09:21:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54914

I am trying to get a Waveshare CAN interface[1] running on an RPi4 using =
meta-raspberrypi with hardknott.

I have added ENABLE_SPI_BUS =3D =E2=80=9C1=E2=80=9D and ENABLE_DUAL_CAN =
=3D =E2=80=9C1=E2=80=9D to my local.conf and see the following at boot:

[    2.858284] CAN device driver interface
[    2.879431] mcp251x spi0.1 can0: MCP2515 successfully initialized.
[    2.891019] mcp251x spi0.0 can1: MCP2515 successfully initialized.
[  176.170231] can: controller area network core
[  176.178987] can: raw protocol

So, the interfaces are detected.

However, I cannot bring the interfaces up. I am expecting to use =
something like:

  ip link set can0 up type can bitrate 1000000
  ifconfig can0 up

But that results in :

  ip: either "dev" is duplicate, or "type" is garbage

This appears to be due to the =E2=80=98ip=E2=80=99 command not working =
with Busybox, so I tried adding iproute2 to the image, but the command =
then hangs the system.

I have tried skipping the =E2=80=98ip=E2=80=99 command, but ifconfig =
then reports:

  ifconfig: SIOCSIFFLAGS: Invalid argument

I can get some information for the interface:

  ip -s -d link show can0
    link/can  promiscuity 0 minmtu 0 maxmtu 0=20
    can state STOPPED restart-ms 0=20
	  mcp251x: tseg1 3..16 tseg2 2..8 sjw 1..4 brp 1..64 brp-inc 1
	  clock 8000000=20
	  re-started bus-errors arbit-lost error-warn error-pass bus-off
	  0          0          0          0          0          0       =
  numtxqueues 1 numrxqueues 1 gso_max_size 65536 gso_max_segs 65535=20
    RX: bytes  packets  errors  dropped missed  mcast  =20
    0          0        0       0       0       0      =20
    TX: bytes  packets  errors  dropped carrier collsns=20
    0          0        0       0       0       0      =20

What do I need to do to bring the interface up?

Chris

=E2=80=94

[1] https://www.waveshare.com/wiki/2-CH_CAN_HAT

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com


