Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
 by mx.groups.io with SMTP id smtpd.web10.15870.1579628664984270391
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 09:44:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@stusta.de header.s=default header.b=tOp/oHqT;
 spf=pass (domain: stusta.de, ip: 141.84.69.5, mailfrom: bunk@stusta.de)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 482GBC5b5Cz29;
	Tue, 21 Jan 2020 18:44:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1579628661;
	bh=fIjlaBQxUtoaB9Efxk9X0gqFDRgSNEhZlYDocN+dmfc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tOp/oHqT+UgWyKmcOYJzOCkhno1XB0TkmrmporBjjmmLmbTpg6OmAjqcRvODFQubU
	 Z4MWfuvQlroh1j3A9tmDyAo1JDAitsr6v2lGTuxojXdoiuKOhKcrwRRG4z2tgwzYXV
	 vzX1xTakY7Z3AHIQujV6s1W+bsaJU/W1AzgMFbm7IZhNukdXdmZli1PKEAqZ/Th4Vk
	 qES85MfQ03suIx7x+zn+NLuPNO/k6PYfaIAz0TZQuEawENH+ib1Fa5BSE2FhUUzI4S
	 vDeLXXSAeEQnnCJMGwm5K83EEvaT5ysiaHQO/dgmN0imziiH5aKUEjc4Q3KeQESaaB
	 pWANrtTQlN71MIQKHEcNcUhyBrItSsd02kOQdS0Qr+c3/tCLMXMoBlTZwTYCLuuQM4
	 wBbmikcWf+2AX3soJrymI/Tm4UUoNpAV5JwhRVPiw7NTNKwykTyWLdqHC59JaziOz/
	 WDpnE6xDwOcUXTbERDoHRJBDxCxMPB/8EUzpVeIU0ycZmAuFeFs1oHM+7jayY7i4mY
	 PY1RtAhPyna3VKG++oflII4x9tVczXS8wBwlubVI1zmDaojvWlP80wk8CDzQs1AgPu
	 tkLTzUbqQjga4yPeQpzT5VDmb2VHiyB+uLg8MUTxS6DFu5KbITBJo4gSkkDaG+SxtF
	 FUb6oA6oCT9ZljmoGAwjDXvA=
Date: Tue, 21 Jan 2020 19:44:17 +0200
From: "Adrian Bunk" <bunk@stusta.de>
To: Martin Jansa <Martin.Jansa@gmail.com>
Cc: Konrad Weihmann <kweihmann@outlook.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
Message-ID: <20200121174417.GA5669@localhost>
References: <20200117141632.3809-1-ross.burton@intel.com>
 <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <20200117202126.GY4735@denix.org>
 <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
 <3d6f5ef4-3c70-a172-7f14-bfb63bbf3d86@intel.com>
 <AM4PR05MB33802E8CAA38C64493DC3584A80D0@AM4PR05MB3380.eurprd05.prod.outlook.com>
 <CA+chaQfwiwur0AbMz1sEee5Q7f3PziRxec6QRzBN37HqUd1Rww@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+chaQfwiwur0AbMz1sEee5Q7f3PziRxec6QRzBN37HqUd1Rww@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue, Jan 21, 2020 at 06:27:57PM +0100, Martin Jansa wrote:
> There is nodejs upgrade to 12.x on oe-devel ML:
> http://lists.openembedded.org/pipermail/openembedded-devel/2020-January/204363.html
> so we won't be staying on 10.x, but if 12.x isn't enough to build without
> meta-python2, then we might need 13.x :/.

13.x is a short-term stable that will become EOL this June.

12.x is LTS with 2 years of upstream security support left when
Yocto 3.1 releases.

From a security support point of view shipping Python 2 in meta-oe
for the Yocto 3.1 release might be better than upgrading Node.js

cu
Adrian
