Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.17702.1604953737810384355
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 12:28:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=yJoi2EsT;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ixe7AgmulDjhoCr4Em8FRoKuF8CoxS6ol5HK11HAF5c=; b=yJoi2EsTBr5gfff9FppobjQLVx
	bo93zUKSgUZFCZ0Uu+zXbKQ2YJQ30FPFyzYdeA+WRwIh7RmRss6hpBi1LcW9Bra5enhm1p2qGfgwy
	mKMaKX1MNJTM8Fi7OlEwNRkK5mGzi+id3rCPWaWFff6whXT3xgbkR5cmczyzXtgI98JKHT1Sks5bn
	9DyFXPMn9GrSELcZqNBKqwNUrzZcMDBNkaOLKlhnDyN7GDraTTjORvsXb2f4wmKNs0V5NeK9VMRIL
	sV91/OygycwruS674iEFZrwGK8Z6jMpAby/Vq7xAqqGJXGcCAPJyczq6LP7jEp19CIpIF+zybbNPs
	D91vyO0A==;
Received: from 89-27-44-133.bb.dnainternet.fi ([89.27.44.133] helo=[192.168.1.58])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1kcDmY-00028H-Kf
	for yocto@lists.yoctoproject.org; Mon, 09 Nov 2020 22:28:54 +0200
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Subject: Yoctoproject.org cgit tags CSS
Message-Id: <4D84553A-FE9E-4D28-B1EF-A39364CCA107@iki.fi>
Date: Mon, 9 Nov 2020 22:28:53 +0200
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
X-Mailer: Apple Mail (2.3445.104.15)
X-SA-Exim-Connect-IP: 89.27.44.133
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

Since some time, the tags in the log view of yoctoproject.org=E2=80=99s =
cgit have not been highlighted correctly. The problem seems to be that =
in the HTML, tags are given the class =E2=80=9Ctag-annotated-deco=E2=80=9D=
, which doesn=E2=80=99t exist in the CSS. The CSS does have a =
=E2=80=9Ctag-deco=E2=80=9D style which is probably what=E2=80=99s =
intended.

Regards,
Anders Montonen=
