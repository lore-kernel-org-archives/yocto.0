Return-Path: <tobias.blom@techne-dev.se>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAEBAE00BBF
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 00:22:43 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id 10so2772168lbg.35
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 00:22:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-type:subject:message-id:date:to
	:mime-version;
	bh=S/+ZJNxvEuj0U95ty2iGvpz8KScCDnCsKG8Gw+SoWQE=;
	b=XXb+9jYIvPbOycqzW4o85tNgI8nPhfxE5wCjC5jbQE58dukYmbvE8ETOBTm/5yAFUa
	IGcNYZOqWhTsDHqGk3apeBH/utZGlATmZd4x2/onJSkcXi5598oWZ3dyQCdA5LC+1gTc
	rNtmr1x1255zwwR51TAL+00s4W8y1gF9Rk4jKFR/tEdefMwcVPvdPuXCJs6TtHL6Wa2a
	STiy+uNP33TlbJhuwjblMs4sq8PCz2lp6iCaKh79lJp2Ugb/0WRqsdhdRjsbE6yvKlQk
	61xIhj22OIUJs40YWGwq3TLJWbf7tuEX0OL73VdMIqI0cV49Iw0qP+l1/fwEPnGFFulV
	5B+Q==
X-Gm-Message-State: ALoCoQmLa4c5TcQmBbDbECHj6+bd16NkyTfw1ziTzC4e5fFU67f2VPVGbLrovaBTwuWn5Lm40TgU
X-Received: by 10.112.131.65 with SMTP id ok1mr60454lbb.51.1398410562611;
	Fri, 25 Apr 2014 00:22:42 -0700 (PDT)
Received: from [192.168.4.10] ([62.63.211.71])
	by mx.google.com with ESMTPSA id rd5sm7190988lbb.0.2014.04.25.00.22.40
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 25 Apr 2014 00:22:40 -0700 (PDT)
From: Tobias Blom <tobias.blom@techne-dev.se>
Message-Id: <9E5EB55B-A539-4A2C-AD5C-719137E4C1C9@techne-dev.se>
Date: Fri, 25 Apr 2014 09:22:39 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
X-Mailer: Apple Mail (2.1874)
Subject: Modify RFS before final image is created
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 25 Apr 2014 07:22:47 -0000
X-Groupsio-MsgNum: 19209
Content-Type: multipart/signed;
	boundary="Apple-Mail=_95B69FB4-BE53-4274-A4FD-FC8A15FD3513";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_95B69FB4-BE53-4274-A4FD-FC8A15FD3513
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Hi all,

I have run into a problem that I=92m not able to figure out how to =
solve, and turn to the list to ask for general directions.

I need to modify my root FS just before the final image is created. The =
problem is that I do now know where to implement my code.

More specific, I want to copy a couple of RPM-packages to the final RFS, =
packages that have just been installed. The reason is to be able to =
perform a rollback later on.

Any help and general pointing in the right direction would be much =
appreciated.

Kind regards,
Toby

--Apple-Mail=_95B69FB4-BE53-4274-A4FD-FC8A15FD3513
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQEcBAEBCgAGBQJTWg0/AAoJEBL2XAZ72QZbpU8H/2IGsOgIzL0zR+NqG+awSPVh
3bJDxLRy++WRJsl9SGOBb+foaQX/E5dd4QsGx4XvXkpQUY0BnuE2OdVMemCMXtVx
9vddTPfCv5FuN+XeL1aQ9Sm2hsOUQwd07LgD12PMDwHMomcEr1+kvXH2u9HiKuVG
tbtQcDhv8cZfuXi7jub3te0LIrlwMQfjhdFaRw8DO1j7Civ37w7zh0zTA/9wcUs8
P4ZfdpBRqh6GfwjxjdJDznjpYxKngi6ntOwHWxlMMpCHT9oCXpiX/1tccj9Y4xzB
30rJEr61R1TgHVtHMq9ekS/25eArd7QpVX/cFbIrt8IEERUSjHmyOtLaJAcviY0=
=tvI1
-----END PGP SIGNATURE-----

--Apple-Mail=_95B69FB4-BE53-4274-A4FD-FC8A15FD3513--
