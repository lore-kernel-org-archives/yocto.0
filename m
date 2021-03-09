Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web12.1173.1615325281297118218
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 13:28:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=C8QRUt3C;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 50866BD110
	for <yocto@lists.yoctoproject.org>; Tue,  9 Mar 2021 21:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 50866BD110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615325278;
	bh=u4eszfD17v3TV7qL9w306pJfMtAbt759ZNAcQB6bj/E=;
	h=Date:From:To:Subject:From;
	b=C8QRUt3CUgpekJ5g4jB0S+YEkTC49XBq/yYJG9m3ibBV3Kn94XmLDh74QEdtMrSFk
	 05dZdbzM1JVquxsqy1ROYdEK2cd7byAZ08llmtlS5+J44vjsukLaGuhxPRfyNLmHAK
	 XU+xdDIKJ3a6qLW7PyPXM4eDz3MI68pAnHIC486Idqa8YA6yTP87Hr0jNDhfeTGJs3
	 1rzomy2H6f6Drk9zXwCRL0GMB7UU25xqfPFTdo/MedJRojlvl4WErqa1iPepy3hMmr
	 EP4SHHNUwstuEM4uIVPYYNlSXY5Wa2RjTIuwB0QgqiQ9Gln13fkeQaXXpDNOUJeZrf
	 4MZWg/bUyQWlQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4EjxtgYUBuPn for <yocto@lists.yoctoproject.org>;
	Tue,  9 Mar 2021 21:27:56 +0000 (UTC)
Date: Tue, 09 Mar 2021 16:27:56 -0500
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 5C91EBD109
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615325276;
	bh=u4eszfD17v3TV7qL9w306pJfMtAbt759ZNAcQB6bj/E=;
	h=Date:From:To:Subject:From;
	b=vAU9zG8bheWSRCgf1ZxZ8mVaGJWGFV6xw1JL6jGrutkU/s22ps24VhiZrddVjMWPl
	 muDcEKhAB3/8eP88UlO3bJ7p/AHoShFshxqxctF5Yf532phF4nPmD+FxKM27XsMAEI
	 xP4GwvGwdyaCyBhEPEhzQLnES6PDxCXd3ozhQ/Yo8DMjqr9uwQzyg4gcNzSX6QD0ju
	 nCBuIbMVmuJt+aTwth2iFPfOZXAfbEORuYYiRxljR4+tKqiBA89GsZF6oFtUf1k7oE
	 AkCQkpkC2wqbsEAFJzJhGhAT+ZSkA42iEG0N7gYrxkCnRR6F5D992zXQlJjRNBebvb
	 f1Xq4WwJY7frg==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Yocto <yocto@lists.yoctoproject.org>
Subject: Assign IP address at boot time
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_9c62c7d8aebcda77b073103683217933"

--=_9c62c7d8aebcda77b073103683217933
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

Where do I assign a static IP address to my sole network interface?

I tried using the Linux boot parameters (in extlinux.conf):

LABEL Arria10 SOCDK SDMMC
    KERNEL ../zImage
    FDT ../socfpga_arria10_phead.dtb
    APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk
console=ttyS0,115200n8 ip=192.168.0.101:255.255.255.0:eth0 

Then I tried editing: /etc/network/interfaces 

iface eth0 inet static 
address 192.168.0.101
netmask 255.255.255.0 

Both failed. Where do I go?

--=_9c62c7d8aebcda77b073103683217933
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"v1pre">Where do I assign a static IP address to my sole netwo=
rk interface?<br /><br />I tried using the Linux boot parameters (in extlin=
ux.conf):<br /><br /><strong><span style=3D"font-family: 'courier new', cou=
rier, monospace;">LABEL Arria10 SOCDK SDMMC</span></strong><br /><strong><s=
pan style=3D"font-family: 'courier new', courier, monospace;">&nbsp;&nbsp;&=
nbsp;&nbsp;KERNEL ../zImage</span></strong><br /><strong><span style=3D"fon=
t-family: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;FDT =
=2E./socfpga_arria10_phead.dtb</span></strong><br /><strong><span style=3D"=
font-family: 'courier new', courier, monospace;">&nbsp;&nbsp;&nbsp;&nbsp;AP=
PEND root=3D/dev/mmcblk0p2 rw rootwait earlyprintk console=3DttyS0,115200n8=
 ip=3D192.168.0.101:255.255.255.0:eth0</span></strong></div>
<div class=3D"v1pre">&nbsp;</div>
<div class=3D"v1pre">Then I tried editing: /etc/network/interfaces</div>
<div class=3D"v1pre">&nbsp;</div>
<div class=3D"v1pre" style=3D"padding-left: 30px;"><strong><span style=3D"f=
ont-family: 'courier new', courier, monospace;">iface eth0 inet static </sp=
an></strong><br /><strong><span style=3D"font-family: 'courier new', courie=
r, monospace;">address 192.168.0.101</span></strong><br /><strong><span sty=
le=3D"font-family: 'courier new', courier, monospace;">netmask 255.255.255=
=2E0</span></strong></div>
<div class=3D"v1pre">&nbsp;</div>
<div class=3D"v1pre">Both failed. Where do I go?</div>
</body></html>

--=_9c62c7d8aebcda77b073103683217933--
