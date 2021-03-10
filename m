Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.5607.1615361665856208864
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 23:34:26 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@vivaldi.net header.s=default header.b=jqXZg3ok;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 62707BD010;
	Wed, 10 Mar 2021 07:34:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 62707BD010
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615361662;
	bh=CGA0NEWuENE4rutqm0UE7bvq8LlTn/Ki6mDe+0ddKSY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jqXZg3okeXmKBbcZLfCF5rzgIHqGQXIkwuszQGgd1/cGIruZG8K70zEBoGmdveOL6
	 YxwmkM3LB2n2evUCswkaB/+miY6xiPJMcP3QzuJMmZD2cN7zw5H0AbBfVpRUS/xhrk
	 9Zn1ahdHMPWdQ++1cNtvfWs8bkFLvRpnNZgV1f7owrrAKedPYTwhV2cAZ+9+virpSm
	 4RXMV8nKavCEfKFJYzH76yyG0Ct9QtZjELq1G0fdXhqPTAzy2je1PrC9Aul6R72qZF
	 oB0kzg+41cxUwz67b53gvrfzpcCZS5kxpvdF2fGX96pi62liLPVbsduNyPU1npAKCB
	 8QWnSZoqOnkIw==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kUby3A9hJ1Ur; Wed, 10 Mar 2021 07:34:18 +0000 (UTC)
Date: Wed, 10 Mar 2021 02:34:17 -0500
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 4178BBD03C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615361658;
	bh=CGA0NEWuENE4rutqm0UE7bvq8LlTn/Ki6mDe+0ddKSY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=nxE8Wzjvakls2FwrEOGeYps3RrA0NS4umPXC/wtmxQbs2lzRfQx/pPpv93LX8r+Fe
	 kxImpoa2a+5aGkZCpLPbD6u8Y8P7J+vs+NIC2LXq9lNUYPLUI16hgrftmdQz8O1nBy
	 mCm5lJgTwJwN3Eji1aPt44COTQOi5j2D/T+XJ5dcsLJiIxI4MoT71L2BzSwJr6NfaJ
	 jmWE8Dxx1AO3Zh97XmKQugoQoInWZioJYVxiOYa2NSCumtBtvvyRUPfEahXliqMqD9
	 2zxXs/GaS6tZs4y1b1SVT2jYTdz0/351tDkBSdw8RvYI8VTh0TI4Z0E8Z53yj5CLuc
	 paNQSRIKiYqxw==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Assign IP address at boot time
In-Reply-To: <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

> To start, do you have the driver required for your network interface?

Yes, the network/Ethernet device is recognized by Linux and the=20
appropriate driver is loaded. If I use:

$ ip add add 192.168.9.101/24 dev eth0

I=E2=80=99m up and running. But I want the IP assignment to happen during=
 boot=20
time.
