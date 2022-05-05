Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B5AC433EF
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 03:42:42 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web08.6832.1651722155987735755
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 20:42:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=lW79McQC;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 4BBC4BD0C4
	for <yocto@lists.yoctoproject.org>; Thu,  5 May 2022 03:42:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 4BBC4BD0C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1651722153;
	bh=KLeV4X90EVpPuQ8oIjVIMrMvG4Z3l06U5rop1eWAwAs=;
	h=Date:From:To:Subject:From;
	b=lW79McQCleBvLSBCuNUx9w7uYWUvyjolACyuSM8ZAIZmjvu4KPQqFLumxg/WPko7y
	 UyWymSoY6CK1qg+yitvzyMnh3F6iiU/dnkpSYgxcK+oL/OCT1j0TeqtVZNh7XRfwnp
	 BxLZeo9V1bMDzeXpsB5x/4Qrq21JcpjKRZIzf/dg79t2hlXEMX2b/fyYQNgI2RZEUD
	 goJ4ehlNlip7KIJDa5lxl6HAwUext1RvE/9lnw4bbDLn64gutLDD4Yvvopj+PzbVYP
	 wQAwKn6dfxfIFARAxE0sF3KTn1Wdtuyn4JEjP/pixcQmYzQS6X9mEw+0o8QCfp+R6l
	 uvoqnlkgVTIvA==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 60dUCFyEQNms for <yocto@lists.yoctoproject.org>;
	Thu,  5 May 2022 03:42:31 +0000 (UTC)
Date: Wed, 04 May 2022 23:42:31 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 4A893BD0B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1651722151;
	bh=KLeV4X90EVpPuQ8oIjVIMrMvG4Z3l06U5rop1eWAwAs=;
	h=Date:From:To:Subject:From;
	b=BoMAGI2oacj1WYdUhjaQbiSoj8VedLcqCmfCskiE8i/cQ8t99rINcl74I8sKwCaqq
	 RNQwp/pPAvAyiLF5pd2y3XGKINgL0hRBFDuW3D8ZBI5QmQnmFffRYOBSZvovbIOxFV
	 N08zdBPJKxDREGZENyC4ffTzsn35DBKkqDJ/E641AJAV4iMbyBALh23WVKLNtGLmF+
	 MPcGZp6sKnuP/L0JzQ1Hxdu4bMSoZYRdcwt38ecnoKZMnOz76PkiGHZ//gnkQvRwrA
	 6EhisCxyg11ocBVHk/7kBE9zi/KCxooMyEvBhRWsOFRIhZwA4uB+rkdOYeRStVEukQ
	 461kYS1UQtxIg==
From: jchludzinski <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: OE Linux & board-support-package
Message-ID: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 03:42:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56996

OE Linux uses device tree files (*.dts and *.dtsi files), so is there 
any need for a board-support-package?

