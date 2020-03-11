Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.3185.1583908233795413645
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 23:30:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=fgZSlTqt;
 spf=neutral (domain: kapsi.fi, ip: 140.211.169.56, mailfrom: antime@kapsi.fi)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55E89E0181A; Tue, 10 Mar 2020 23:30:33 -0700 (PDT)
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
X-Greylist: delayed 1376 seconds by postgrey-1.32 at yocto-www; Tue, 10 Mar 2020 23:30:31 PDT
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C79D0E017CF
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2020 23:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=Message-Id:In-Reply-To:To:References:Date:Subject:Mime-Version
	:Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=XkhkE0+gq5SxYoyJ1fdjP+5+2RA+eheErPydFzITjEQ=; b=fgZSlTqtkifXbZgI1S+ynJtalf
	yq0xj6jFmhvlI2aeZM2mnBJOFNXgKxu934RvQVYZbA4ByeXnkKcAPlv4w7XQY+hj84YRCBuKU0Utb
	enWgYug5UFX/BU3xlmgmoRx1tFxA6ezpMAnfUKRDYK7OeNkdOUYslxbTfcaQLkROgZntTTAGTYJKP
	hfdpFYhgma0GGp4o99g46KHcz6N8pa5tzC6L4+C/hhFJYphbu3QAbJ6/DgP3t7KSCz221e0k/3zJC
	/F7W0nvKlJR/6RJToBaieEG/q1XMQ4jWdV8c3sZLk1TVpk8u3AYftgpZdqjy22awmcm4uQ8xf8lk8
	nju0X7dQ==;
Received: from 88-114-141-52.elisa-laajakaista.fi ([88.114.141.52] helo=caligari.home)
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1jBuWj-0000H7-QX
	for yocto@yoctoproject.org; Wed, 11 Mar 2020 08:07:33 +0200
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [yocto] Getting kernel patch to work
Date: Wed, 11 Mar 2020 08:07:33 +0200
References: <7f0a414e985c4b86bfefff5eab8c6108@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
In-Reply-To: <7f0a414e985c4b86bfefff5eab8c6108@sakuraus.com>
Message-Id: <1FE10608-8C76-4307-B921-5B3C2DCC4CEE@iki.fi>
X-Mailer: Apple Mail (2.3445.104.11)
X-SA-Exim-Connect-IP: 88.114.141.52
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

> On 11 Mar 2020, at 1:57, Greg Wilson-Lindberg <GWilson@sakuraus.com> =
wrote:
>=20
> SRC_URi +=3D =
"file://0001-drm-vc4-Keep-the-binner-BO-through-suspend-GWL.patch=E2=80=9D=


It looks like you have a typo here, the last letter of SRC_URI isn=E2=80=99=
t capitalized.

-a=
