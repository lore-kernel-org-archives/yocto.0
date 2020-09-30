Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.12354.1601461520229609779
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Sep 2020 03:25:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=fu3dqtMQ;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	 s=20161220; h=To:Date:Message-Id:Subject:Mime-Version:
	Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0VqVEc/WvdRmSDUrg1njmIFHcpXQ8qNGXnNeza6pIL8=; b=fu3dqtMQwIo076atqlguHcE6Md
	xVGOWNyDGiuyKN7rj9ntSCHMPSXVQHHoJqm2xi77D7eows3bnqed2bHnPgrTaElwZAxCLyWoeZuaF
	iZ/GISqb0ClkZj+XMUUKYhNgQ7b1LH/s8qfMinKbwWEKQYD3JYCWj3+cJUWION1KSoopD5+vJtczX
	Iu0M9fezm1ZWymTC9Iftj67Pk1CssWjuVMh05TYL37Ay8e4wDRNTG8dZEOgigOLibsgvToAOeXu+e
	UfqgoWIJrzaEB2u02JUiTGJqIsXB47lI6qC4fyVr0W3SPuvJoJkig77cTYQGBzbfnFh66JQK5IvRA
	4Wt40QVQ==;
Received: from 89-27-44-133.bb.dnainternet.fi ([89.27.44.133] helo=[192.168.1.58])
	by mail.kapsi.fi with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1kNZIT-0003Rh-2h
	for yocto@lists.yoctoproject.org; Wed, 30 Sep 2020 13:25:17 +0300
From: "Anders Montonen" <Anders.Montonen@iki.fi>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.15\))
Subject: Warrior uninative
Message-Id: <3289A4D6-56DE-4EC8-AE90-9005550F16F3@iki.fi>
Date: Wed, 30 Sep 2020 13:25:16 +0300
To: yocto@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3445.104.15)
X-SA-Exim-Connect-IP: 89.27.44.133
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

The checksum of =
<https://downloads.yoctoproject.org/releases/uninative/2.7/x86_64-nativesd=
k-libc.tar.xz> doesn=E2=80=99t match what=E2=80=99s specified in =
yocto-uninative.inc. The actual checksum seems to match an older commit, =
so at least there=E2=80=99s nothing untowards going on.

I realize that the Warrior branch is officially EOL, but I still think =
this should be fixed.

Regards,
Anders Montonen=
