Return-Path: <pedro@algarvio.me>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A69C5E00531
	for <yocto@yoctoproject.org>; Sat, 31 Dec 2011 18:43:28 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@algarvio.me;
	x-dkim-adsp=none (insecure policy)
Received: by werm10 with SMTP id m10so10543306wer.35
	for <yocto@yoctoproject.org>; Sat, 31 Dec 2011 18:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=algarvio.me; s=mail;
	h=message-id:disposition-notification-to:date:from:user-agent
	:mime-version:to:subject:x-enigmail-version:openpgp:content-type
	:content-transfer-encoding;
	bh=8PVo6PG7sbicqy7yVSMIPGhBggCJhr9Fa+hhlihA5c8=;
	b=QWf4wofC4q9FYDCRYwJ5u3o8Pecsv7iVO+0c2bn62Zcv0nDmuSZ+otLnU1Vnvub0ZP
	FkdgQXAg2dpqNB1ujR/QKYiDTla3I28kYNa0bRNcq9GT3tk5SnyN480mguWclz+VBpcm
	IR45GwGb+HPnCCvH/bo0yZwlOOjpVTAqufbj0=
Received: by 10.216.136.90 with SMTP id v68mr24594703wei.47.1325385806365;
	Sat, 31 Dec 2011 18:43:26 -0800 (PST)
Received: from [188.140.110.92] ([188.140.110.92])
	by mx.google.com with ESMTPS id dd4sm105577001wib.1.2011.12.31.18.43.25
	(version=SSLv3 cipher=OTHER); Sat, 31 Dec 2011 18:43:25 -0800 (PST)
Message-ID: <4EFFC84C.3090206@algarvio.me>
Date: Sun, 01 Jan 2012 02:43:24 +0000
From: Pedro Algarvio <pedro@algarvio.me>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.3.4
OpenPGP: id=9C558009
Subject: Python Math Module
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 01 Jan 2012 02:43:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

I've started to port the Mini2440 openembedded layer found at
http://code.google.com/p/mini2440/ and also PySide from Angstrom or
the old OpenEmbedded layers I think(can't remember now).

My layers can be found at http://dev.ufsoft.org/projects/yocto

I found out while porting PySide's examples that python does not ship
with it's math module, is there a specific reason why?

I need to add that I'm pretty new to all this, so I might be doin'
things the wrong way...

Anyway, any pointers on how to add the python's math module to an
image is more than welcome, I'd like to include it as a dependency for
the pyside examples bb script.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQEcBAEBAgAGBQJO/8hIAAoJEEmUWh2cVYAJ19EIAM/pGdSmMTTXCB8jDeHv5XgE
pUjXojy7GwqiP5nj03cFu/Ts/ydd9UbgVk5oojzw3GcVauW9yBQwnlvShfIwTFUd
xL6mDrzeRYnuZDL5QdMJD5gWqwE2ZFM2f0k6lF18Q0iQMEB9yPOT0VIGDRNSbQqg
uZH+D/9btQgoYgsliToRCXXsU6rHvTqxIa0+te8Zl+n9R3tJYUnYOGllXKsRMPI8
+ibknG+FB9YT7F7C5IYH23P2xHG9RT6pelhK+QAmKGQ99QJBVG8T3pAXymsQ2pta
gMj2QlMnUegy+NWCk0npWzW6DnSVnK3zsWJsTKm1Jn10b662KlMSVGk6jQIxeRw=
=7z0t
-----END PGP SIGNATURE-----

