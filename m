Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.2874.1601569306896166788
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 09:21:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=L99s4XU5;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID
	:Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
	:List-Post:List-Owner:List-Archive;
	bh=FdAAOq4ysvDWE2JB3ckWFehgNcwapza/teMZvPFKogo=; b=L99s4XU5wl+LmuQ1W2tU8ZGkOo
	tp8z6ewrciYwb0/HMCNPlIDgZgLGE+W3qjoPFPhBXfDCLmo2Dbxvg9f5zjXbiBZOxWHTFhBMpUUdk
	S/jqS6zkzksMiSnnzfF7z40gAKGiwNEc0nIz3mT8n5ARKFID6jk7jtkOkKVhGQjMhxs493srEZXf1
	4EWTCqxpb0ag7tvG2iz+0j48x52heyU5VWgWUksfRl3AM21llEO/mTD+LvFnOhjOY8XmXvdBKpP7u
	CKWE4lGrtZUJg7mveWi5lclDD2iFZw299apoKCmiRIv6Ewgz5/8SDPZqWP7UhOibg6veKMYH3E37a
	jUDZyeVw==;
Received: from 89-27-44-133.bb.dnainternet.fi ([89.27.44.133] helo=[192.168.1.58])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1kO1Kx-00015X-OF; Thu, 01 Oct 2020 19:21:43 +0300
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Subject: Re: [yocto] Warrior uninative
From: "Anders Montonen" <Anders.Montonen@iki.fi>
In-Reply-To: <CAMKF1srunkfa7C1oT+bk9C5=ExTe=dj++o8jsoRcpQk1dFMAzQ@mail.gmail.com>
Date: Thu, 1 Oct 2020 19:21:43 +0300
Cc: yocto@lists.yoctoproject.org
Message-Id: <C0EBDFF0-169B-4AE3-B368-C906B86684E6@iki.fi>
References: <3289A4D6-56DE-4EC8-AE90-9005550F16F3@iki.fi>
 <CAMKF1srunkfa7C1oT+bk9C5=ExTe=dj++o8jsoRcpQk1dFMAzQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3445.104.15)
X-SA-Exim-Connect-IP: 89.27.44.133
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

> On 1 Oct 2020, at 0:52, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> latest warrior seems to be using 2.9 release of uninative not 2.7

This turned out to be operator error. For Thud, we had to manually =
update a bunch of mirror variables, including for uninative, which I had =
completely forgotten about. After cleaning out the config files, the =
problem went away. Sorry for the noise.

Regards,
Anders Montonen

