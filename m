Received: from smtp-bc08.mail.infomaniak.ch (smtp-bc08.mail.infomaniak.ch [45.157.188.8])
 by mx.groups.io with SMTP id smtpd.web11.3819.1585049776959462388
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2020 04:36:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@guy-morand.ch header.s=20191114 header.b=r/jEkXYz;
 spf=pass (domain: guy-morand.ch, ip: 45.157.188.8, mailfrom: guy@guy-morand.ch)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 48mq2Q6SCQzlj47w
	for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2020 12:36:14 +0100 (CET)
Received: from [10.10.255.211] (unknown [109.202.196.62])
	by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 48mq2Q2Mxyzlj7rj
	for <yocto@lists.yoctoproject.org>; Tue, 24 Mar 2020 12:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=guy-morand.ch;
	s=20191114; t=1585049774;
	bh=HaKuFqO/1IC/j2B517//EnDPVOt3wzSiWVs8uIMItnI=;
	h=To:From:Subject:Date:From;
	b=r/jEkXYziSdNKCOkClOlK5iFyaLlThS73kvLETpUCilOjn0+UUMJWhO+cGvPjeEvN
	 lySWtY16jdEGySxvsT1VywSemTsAgHrpfWvwn3GORDWLPohDUjGomgSMuF2oqK1Fzm
	 rDSJhIAjlZGz9LUJ78eVnRaVL5qbgakxHRLh5s6w=
To: yocto@lists.yoctoproject.org
From: "Guy Morand" <guy@guy-morand.ch>
Subject: Adding library headers in SDK (libsdnfile)
Message-ID: <87ea2375-c101-9c2a-a18d-8bd143f7ba89@guy-morand.ch>
Date: Tue, 24 Mar 2020 12:36:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
X-Antivirus: Dr.Web (R) for Unix mail servers drweb plugin ver.6.0.2.8
X-Antivirus-Code: 0x100000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I'm trying to add the libsdnfile development library in my SDK. I added=20
a packagegroup-core-standalone-sdk-target.bbappend file in my meta-layer=20
with the following:

RDEPENDS_${PN} +=3D " \
 =C2=A0 libsndfile-dev \
 =C2=A0 "

Unfurtnately this fails:

ERROR: Nothing RPROVIDES 'libsndfile-dev'

It works when using libsndfile1-dev but I don't have the .pc file=20
neither the headers in my SDK. Extracting the resulted ipk, it seems=20
that the libsndfile-dev_1.0.28-r0.2_ARCH.ipk is the package I need but I=20
can't get it installed!

I have the same issue with alsa library. Other packages work great using=20
this approach.

Any pointers?

Best regards,

Guy Morand

