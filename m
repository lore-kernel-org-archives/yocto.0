Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.15811.1604072872971592276
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Oct 2020 08:47:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=1gdF/hoD;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qlYvz84V5HO2zhXLl8YXAcULqol5p3SsLQ81XmTF9uM=; b=1gdF/hoDp2zWuzhcNvmP8magNm
	y/FfzlJ1OOmqCmkdUS5Q+H0huW6OAPWvgOaHWEveRKrlwL8KdkFrF90fCbmw6FDMIhe7VYlskE0B2
	D5tM99IRU/+f95nOM3zazJFCyxvqrKFzbM4s4J471Urw+6SPuppL2SuMHYNRWM+me40H/rXjpEzHw
	toryluVfUaTPu822E7A8oo55dmVT4FrVICBz60QK045jUxg9Zr92OR+O2r+h0ENwfCfq0SBu2BT33
	Wxt51sgsbEofbFOz6BBIgIF+nfhL0ls2KTtN5uS+AvSafQNcCjAhclMGfZ9YiOlpzBBmV3Ftf8TYI
	Wa+kquvg==;
Received: from 89-27-44-133.bb.dnainternet.fi ([89.27.44.133] helo=[192.168.1.58])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1kYWd3-0007SH-KO
	for yocto@lists.yoctoproject.org; Fri, 30 Oct 2020 17:47:49 +0200
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Subject: Zeus to Dunfell package license checking change
Message-Id: <977E7AA8-1730-4965-8A4E-F16267B6C126@iki.fi>
Date: Fri, 30 Oct 2020 17:47:48 +0200
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3445.104.15)
X-SA-Exim-Connect-IP: 89.27.44.133
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

While upgrading our distro from Zeus to Dunfell, I ran into an issue =
where some locale packages blocked due to incompatible licenses, even =
though their licenses have not changed.
For example, the license of libgnutls30 is =E2=80=9CLGPLv2.1+", while =
the license for libgnutls-locale-fi is =E2=80=9CGPLv3+ & LGPLv2.1+=E2=80=9D=
. In Zeus, this combination was accepted, but not anymore. Is this =
intentional?

I also think it=E2=80=99s a bit odd that the localization package has a =
different license than the library itself, though I haven=E2=80=99t =
looked if there=E2=80=99s anything explicitly said about this in the =
source code.

Regards,
Anders Montonen=
