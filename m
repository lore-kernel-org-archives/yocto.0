Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.9981.1586442334646842047
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Apr 2020 07:25:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=PbYZuDTV;
 spf=neutral (domain: kapsi.fi, ip: 140.211.169.56, mailfrom: antime@kapsi.fi)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3861DE01911; Thu,  9 Apr 2020 07:25:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [91.232.154.25 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE636E018AB
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2020 07:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=Message-Id:In-Reply-To:To:References:Date:Subject:Mime-Version
	:Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=LIGVm2NsKTeDU5WNIV8ZHd0TVTrvFRrXTGETJftxvNY=; b=PbYZuDTV2Kw3bWwkRzALOixDGF
	AaGtow0e4+HX9qTlz4v3VvXwEWL8DUWjoYSS3CLUKRRQIYnFlNEy7QizD7E4kHPZUEXLETqHuKi+X
	d5Xgw+8xXdP1vDk3/Eddy9TXBlBBvSQ+5vylfEfWNDToCudt84TRDsgvDASNIMmOwKUZI6JWWDm2M
	nSHYRtWgS5gDCtSVY4fE0194JPIow4RZGpTUna5abWczekV/3dUXqfNRuwi0I9umAfrDoO+J9XOfQ
	vJB5ENt60JetwpuGbN2B9RiIdesXBqlAA7EdtFclOg30unhn7q0PAVEXDHEs1ZDdetL+BfHbwZhUU
	vZlBA93g==;
Received: from 88-114-141-52.elisa-laajakaista.fi ([88.114.141.52] helo=caligari.home)
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1jMY7X-0007oi-1P
	for yocto@yoctoproject.org; Thu, 09 Apr 2020 17:25:31 +0300
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Subject: Re: [yocto] Shorten booting time
Date: Thu, 9 Apr 2020 17:25:30 +0300
References: <CAA=hcWSfHfn3uZNVsYMCRj0wgGEhpO+TS0-mQgz3X8WtLaWV9g@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <CAA=hcWSfHfn3uZNVsYMCRj0wgGEhpO+TS0-mQgz3X8WtLaWV9g@mail.gmail.com>
Message-Id: <8EAE0909-1E78-4184-9769-DB4D2152A587@iki.fi>
X-Mailer: Apple Mail (2.3445.104.14)
X-SA-Exim-Connect-IP: 88.114.141.52
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 8 Apr 2020, at 14:59, JH <jupiter.hce@gmail.com> wrote:
>=20
> I am running Yocto built Linux on an ARM device, it takes about more
> than 1 minutes to boot from NAND and kernel, any good strategy to
> reduce the ARM device booting time? I can think of cutting down
> unnecessary configures in kernel.

If you=E2=80=99re using systemd, you can use systemd-analyze to get some =
boot performance statistics. They can help identify slow-starting =
services, dependency chains, and other bottlenecks.

-a=
