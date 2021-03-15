Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.1084.1615849881439686819
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Mar 2021 16:11:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=f01xoGCE;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 6A1D0BD041
	for <yocto@lists.yoctoproject.org>; Mon, 15 Mar 2021 23:11:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 6A1D0BD041
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615849878;
	bh=n8qOBV4n2Fss/Odo59NoNK4iGp3RcmEqxlHY8O5eGrw=;
	h=Date:From:To:Subject:From;
	b=f01xoGCET2dqttoqqwW5p3s5uNVFL9d9c5pSy+/2FvS0AIndwrdnNGVscWRzU5ty/
	 hbiUAh7FnPOAcNA/E1KLrq5RskY1Rwcxwktzw782KsJj8PfS7YTEAlkpeM4j5TRvYx
	 o7PUKVHJFdH3vOUwJBiig+Z5ClJKIUXheCIQiPSAu8Tm5kgoCOcyDiWBHHAO+z7Swi
	 Gs20IllFwWljdDbPcAbQGr33p0Qq04ILH7bVEIp8hyoGfOF7hg7nYgdqVxnqaBMrVY
	 ijYlmOeyUNeh0LFIcdEaGfsHa9OxJ2PwOMxTczr2pj9gWVS+5AW3vNM5Wwm4cOoHHe
	 WqInpA8P+WH/A==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DHvkr2jEB8VD for <yocto@lists.yoctoproject.org>;
	Mon, 15 Mar 2021 23:11:16 +0000 (UTC)
Date: Mon, 15 Mar 2021 19:11:16 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 36F5CBD017
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615849876;
	bh=n8qOBV4n2Fss/Odo59NoNK4iGp3RcmEqxlHY8O5eGrw=;
	h=Date:From:To:Subject:From;
	b=bYqP7jyDkmcCzkEIJcajdj4OIHV+kuQaxLkYf7GMi9BR5mdQH/B+XLNm6D0s4E0Kw
	 KjFZ/Yy1+CCtSKmUDeFTT/ZSYl+5iDke4lF54SzqmJtAUmyqPuxXP6IZNO35bkZCjf
	 cJiaCVwZIoXzlVSck6CkxkfUHcr0T6I4RloO+Dx+q0G1e7dxHuDrj64nKtDEUkHJz+
	 G1ojx8NIC9W5QwkE179CCvcaqGKcARqILmQbdPdWm6knntGI0valhfW+9GN/xRgWk8
	 R6Lt9+Woiu1PNbF41Be8ndEziI4kMRqkuNb9Pn818kMbK35joyvIxCdtvfHJAy1oy7
	 jPJEbicYw1FYQ==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: Building test code?
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <bdb239f7ebf89f1567d5fbd2530fa12c@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_b438b3797dca4af038f9a523bc5220aa"

--=_b438b3797dca4af038f9a523bc5220aa
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

I got a piece of code from github:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/spi/spidev_test.c

I'd like to add it somewhere under _tools/testing_ and build it there. 

Not sure if this is appropriate? If so, how do I go about this?

If not, what's the best way to build this?

--=_b438b3797dca4af038f9a523bc5220aa
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
I got a piece of code from github:<br /><a href=3D"https://git.kernel.org/p=
ub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/spi/spidev_test.c" ta=
rget=3D"_blank" rel=3D"noopener noreferrer">https://git.kernel.org/pub/scm/=
linux/kernel/git/torvalds/linux.git/tree/tools/spi/spidev_test.c</a><br /><=
br />I'd like to add it somewhere under <span style=3D"text-decoration: und=
erline;"><em><strong>tools/testing</strong></em></span> and build it there=
=2E <br /><br />Not sure if this is appropriate? If so, how do I go about t=
his?<br /><br />If not, what's the best way to build this?</div>
</body></html>

--=_b438b3797dca4af038f9a523bc5220aa--
