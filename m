Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.31683.1624183575108326651
 for <yocto@lists.yoctoproject.org>;
 Sun, 20 Jun 2021 03:06:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 491CD38C082B
	for <yocto@yoctoproject.org>; Sun, 20 Jun 2021 10:06:14 +0000 (UTC)
Received: from cpeac202e043973-cmac202e043970.sdns.net.rogers.com ([174.114.107.13]:49362 helo=fedora)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1luuLE-003BxM-PK; Sun, 20 Jun 2021 06:06:13 -0400
Date: Sun, 20 Jun 2021 06:06:10 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Alexander Kanavin <alex.kanavin@gmail.com>
cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] the downside of parallelism
In-Reply-To: <CANNYZj_NG9i8=zVEu385rj6-QSt1e4kEw5GqHWvCm=eFbYSk2Q@mail.gmail.com>
Message-ID: <b3122270-a7bc-6da6-9e71-a41b6075f044@crashcourse.ca>
References: <c9624492-1658-9e87-f680-32b891e69a7f@crashcourse.ca> <CANNYZj_NG9i8=zVEu385rj6-QSt1e4kEw5GqHWvCm=eFbYSk2Q@mail.gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel8.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel8.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel8.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: text/plain; charset=US-ASCII

On Sun, 20 Jun 2021, Alexander Kanavin wrote:

> This is hardly Yocto's fault: putting a 6 core CPU into a laptop
> should be validated by saturating all cores for several hours and
> ensuring the cooling and frequency throttling can handle it. Laptop
> OEM is trying to be cheap I'd say.
>
> Alex

  i wasn't blaming yocto ... that was an attempt at wry humour. or
possibly irony.

rday
