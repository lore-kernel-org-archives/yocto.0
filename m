Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web09.2710.1604402204368041164
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Nov 2020 03:16:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=F29IWNxl;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rHHPBcanORkP0D1bNYPKBhx3qRmJxIo4SEjXmrT/Mbs=; b=F29IWNxl4g4V7oybRdrsxYDGmK
	UvXfs3LUUs2XcVoo+MIH326GZF6DsXfYZO5JoVaLlux5AIvGp5yOtpYqRavtQgevk3moQEcVwagFJ
	SNx+C2kNWSKCoYbXouyi+2n5a1j8kMdwyBayESHEOueUfczI9sA20T6nbTV483p4aNVjXNPdsLeoE
	UfA1iqH+MQ/wkqX/EKE4w+Y56JExWojU1A0dpjno7IyL7yEgIJczkcTNTFMOyXi6fKnVUjcWeKu3I
	0TggDQ9cwYBNlZ6fKy3WdP1eZa3r3giVVsyNwXMWEikEJ2ebxSjd7DWvSeMBiHAm78wYBuaSOqv/o
	YbL6baQg==;
Received: from 89-27-44-133.bb.dnainternet.fi ([89.27.44.133] helo=[192.168.1.58])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1kZuIr-0004YE-AI
	for yocto@lists.yoctoproject.org; Tue, 03 Nov 2020 13:16:41 +0200
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Subject: Reproducible builds and RPM packages
Message-Id: <043D5DC3-E1B8-4305-B707-AD9C3AA10D39@iki.fi>
Date: Tue, 3 Nov 2020 13:16:40 +0200
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3445.104.15)
X-SA-Exim-Connect-IP: 89.27.44.133
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

When going from Zeus to Dunfell, I noticed that all files on the rootfs =
had timestamps long in the past, which I assume is from reproducible =
builds now being on by default. While that is a good thing, running =
=E2=80=9Crpm -V=E2=80=9D on any installed package now reports that the =
mtime differs. Is this the intentional behavior?

Regards,
Anders Montonen=
