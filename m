Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.1361.1615486383862178565
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Mar 2021 10:13:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=lsKlF/53;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 49B2EBD031;
	Thu, 11 Mar 2021 18:13:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 49B2EBD031
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615486381;
	bh=1U0EZM6Za/OVtSg1PLRYX+bH/wL6+GlXVSc3U/cPG9U=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=lsKlF/53LWQV6QAKct0ocgXvoV6NlcEiLBbfm80oeiLcd5qkoWBUd2xha3vCotOhk
	 ui5J2MBkX/QBE/WpE2D1ysIXPzZIi2NJO6a/hZMSxYUAGINqFTdCuN16oNb7Uqr+xM
	 F/Ik+5QFU5KxVFFgYFImMO2UABM+oe6n2IhY+fx6PXJzo5nwD9fK6+WebxKsOCutWh
	 mwEFUz0xa8oj+2KL7MFa3bS48I0r4R3MfQdJWa4YdeuqGxjmCKi3LrYBi1xmwoqMFR
	 /4EP9oBB2VSPIvySXQzitlF0dJpKaEhW83dQ+DRk1gy/fIuyVB9oocsjuf3AYFomDQ
	 UgAjj2WxaynnQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iF2YrmooQyTh; Thu, 11 Mar 2021 18:12:57 +0000 (UTC)
Date: Thu, 11 Mar 2021 13:12:57 -0500
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 3E873BD01D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615486377;
	bh=1U0EZM6Za/OVtSg1PLRYX+bH/wL6+GlXVSc3U/cPG9U=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=EWeNgU0J9MnNNs8EGht+NJaiW3fjLG6BQzxko4F3USb/rFbrb7cdPqz5Au55yHrMl
	 yj3U3+NHKIRM5etOj2CqEb0TOMkNdfhOMR33ZIFR0QCJylmRRD1apeGz7BJCrfO6Wa
	 qiYGGPGxkXRcMfxepsX5Er0s5/HjDRoqe45ibA28eni0fxwUhXYanWJHpe60+J6pZs
	 5Dl6ucQ/MRaXhTUnZ3TiOxsJzxWKOguZ3QOaU2dFL2mQ7mp5T5gCiPK7LFW5X5aJf2
	 tn+EWoGlHSWQpvHYH7uzqldPLTshIBgU4wrSEhwT+Cimz0ee5qDh9DLBGYTo+Y2znV
	 qtOJI3SLgAyTg==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Assign IP address at boot time
In-Reply-To: <06146634-49f5-d665-6e2b-7169564748dc@ibeeto.com>
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
 <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
 <7d3df13429d227106286f966cdcbd501@vivaldi.net>
 <e7f9f7da-b919-1b65-90f1-e8d892acd2ce@ibeeto.com>
 <0549f39814132d3d025fa22634c88f0e@vivaldi.net>
 <06146634-49f5-d665-6e2b-7169564748dc@ibeeto.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <dde465b36ff3aa2d60c9844ca799bbe1@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_57bab8eefef684d964051747951a9ff5"

--=_57bab8eefef684d964051747951a9ff5
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

Can this be done using boot parameters?

Something like(?):

LABEL Arria10 SOCDK SDMMC
    KERNEL ../zImage
    FDT ../socfpga_arria10_phead.dtb
    APPEND root=/dev/mmcblk0p2 rw rootwait earlyprintk
console=ttyS0,115200n8 ip=192.168.0.101:255.255.255.0:eth0

--=_57bab8eefef684d964051747951a9ff5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
Can this be done using boot parameters?<br /><br />Something like(?):<br />=
<br />LABEL Arria10 SOCDK SDMMC<br />&nbsp;&nbsp;&nbsp;&nbsp;KERNEL ../zIma=
ge<br />&nbsp;&nbsp;&nbsp;&nbsp;FDT ../socfpga_arria10_phead.dtb<br />&nbsp=
;&nbsp;&nbsp;&nbsp;APPEND root=3D/dev/mmcblk0p2 rw rootwait earlyprintk con=
sole=3DttyS0,115200n8 <span style=3D"text-decoration: underline;"><strong>i=
p=3D192.168.0.101:255.255.255.0:eth0</strong></span></div>
</body></html>

--=_57bab8eefef684d964051747951a9ff5--
