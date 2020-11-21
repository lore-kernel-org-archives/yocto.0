Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.12055.1605995765121919653
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 13:56:05 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 198.145.29.25, mailfrom: rpjday@crashcourse.ca)
Received: from cpanel8.indieserve.net (cpanel8.indieserve.net [199.212.143.3])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E2FF238C064C
	for <yocto@yoctoproject.org>; Sat, 21 Nov 2020 21:56:04 +0000 (UTC)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:41250 helo=localhost.localdomain)
	by cpanel8.indieserve.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1kgarT-0005M8-6Z
	for yocto@yoctoproject.org; Sat, 21 Nov 2020 16:56:03 -0500
Date: Sat, 21 Nov 2020 16:56:01 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: strange meta-security bbappend file with two percent signs
Message-ID: <701784e8-a16e-8fc4-bd0-587a2019b5ba@crashcourse.ca>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-1.0
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
Content-Type: multipart/mixed; BOUNDARY="8323328-1682990150-1605995679=:19627"
Content-ID: <d2e1e6c4-3f50-73cb-5a12-4b60f42970f2@crashcourse.ca>

--8323328-1682990150-1605995679=:19627
Content-Type: text/plain; CHARSET=UTF-8
Content-ID: <16ac72c5-56b5-edc8-f882-8962d6b710a8@crashcourse.ca>
Content-Transfer-Encoding: quoted-printable


  while the bitbake user manual insists:

"The use of the =E2=80=9D % =E2=80=9D character is limited in that it onl=
y works
directly in front of the .bbappend portion of the append file=E2=80=99s n=
ame.
You cannot use the wildcard character in any other location of the
name."

i just ran across this in the meta-security layer:

  recipes-kernel/linux/linux-%_5.%.bbappend

what is one supposed to make of that?

rday

--8323328-1682990150-1605995679=:19627--
