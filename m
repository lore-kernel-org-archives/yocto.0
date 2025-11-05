Return-Path: <rpjday@crashcourse.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C2E3CCFA0D
	for <webhook@archiver.kernel.org>; Wed,  5 Nov 2025 15:42:57 +0000 (UTC)
Received: from cpanel10.indieserve.net (cpanel10.indieserve.net [199.212.143.9])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.12718.1762357373659879045
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Nov 2025 07:42:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@crashcourse.ca header.s=default header.b=gKxPLoSC;
 spf=pass (domain: crashcourse.ca, ip: 199.212.143.9, mailfrom: rpjday@crashcourse.ca)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
	To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rKntxOvY9quVyUjxm7ZPe+549GoH6RUL7GyqRJJ1u6M=; b=gKxPLoSCXXuBb6+u5zGoHM0TDh
	SZelNakCvqvbIrHC8mF9jyNCdme905q/Y+Mk9/NfQHnYy8anX/hgRiuv5dHpfS84e4ZixknLm86Y3
	wT5XI6p6UefHnDR+/ZL6d+3xmgSpsy3q6UiqhzPCGqhbszq4FSf4TiMC4Py9tEnf1zOMC86tGQ4Vq
	CC7gv/Pl9nBT3BI6BXayhFpH5li6Vt9+1dg1T2QE/925QQqGA7eqRKVcGdrEuf3edVvJB7XcfyMoT
	bdf/t1e2eJU5F3FvJ5NadFmqVvA1ziV9M0nRMYevDuwF7zvLRYNW68rJ7yHCjP2O/3XuL9AaApQjl
	IdDUXicg==;
Received: from [147.129.179.166] (port=42416 helo=rday)
	by cpanel10.indieserve.net with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1vGfen-00000006VAc-302x
	for yocto@lists.yoctoproject.org;
	Wed, 05 Nov 2025 10:42:51 -0500
Date: Wed, 5 Nov 2025 10:45:46 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: looking for YP-supported Rockchip RK3588-based eval board
Message-ID: <14356bf6-7285-5b69-2a2c-92bb42f1c22b@crashcourse.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel10.indieserve.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel10.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel10.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Nov 2025 15:42:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66007


  (caveat: i have *no* experience with rockchip processors so i am
entirely at the mercy of people who want to make recommendations.)

  a friend wants me to advise on a good choice for a RK3588-based
evaluation board, and has already purchased a banana pi bpi-w3:

  https://www.aliexpress.com/item/1005009156110477.html

  that looks like a decent and fairly powerful baord, but i notice
that the banana pi is not a supported MACHINE in meta-rockchip:

  https://git.yoctoproject.org/meta-rockchip/tree/conf/machine

so can anyone suggest something equivalent in terms of pure horsepower
that would be equivalent and has solid YP support? i am totally open
to good advice.

rday

