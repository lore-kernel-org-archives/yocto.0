Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web08.1279.1615411975706884163
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 13:32:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=LGPWPOJU;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 586E7BD050;
	Wed, 10 Mar 2021 21:32:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 586E7BD050
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615411973;
	bh=uy+ysbpCvH3OCqJw34/9M/5wqHMQ51cfxPIOXwVfogk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=LGPWPOJUvRxwFjXZv9TQgzdHyliuT/7xZhNCWcFQ5JWGe/lgMjzIAiQIJf81AeayD
	 YLnEeFmtHlKGpl/kHYcQEeDrg65KIrIp/qLLnamjkUDCrculy7vx6CMBRrORzU45w0
	 sDk7/sGClbkx4Ca3Qcc9LIJaHHzYTthNDWfSw7wNVVpDJ6TZxDExjVB0R8o6q9C7Pt
	 BG9Upqipe4PCp62NOgWJYC0QeDE7R7KxVt3NSzSPAzPEhm0aUstiEXkYGNxpVNitdI
	 fBWSAWapJsGVCMpDS2FsquccVS1qBYbUu/gB5uOdzP2j8T5oukOzSKqQ25qvjdCfvP
	 Knszn8dUqEFMA==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Lp7iH3UVQSE; Wed, 10 Mar 2021 21:32:49 +0000 (UTC)
Date: Wed, 10 Mar 2021 16:32:49 -0500
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 74E2FBD031
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1615411969;
	bh=uy+ysbpCvH3OCqJw34/9M/5wqHMQ51cfxPIOXwVfogk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=bpdT9ASNfZNxVCZob27D2wKUvBUwoYIhsmgoD1GEUq8uyU27ug0oairOu8zkfCieY
	 Y3f5O+1W3t/112ic78BpoTgwOEXcIAuCnS5krHRCk/HMEePFTfRJC2PWefYhpVMbo+
	 /gOof9URlawb/E0cDR7NNQBZW89FK27gBv5CY4k7FJpreFz9MKNVcI2Z182l/ITbE2
	 DDo5OqJr69nevLbfjsv0cxrtZsZGlrw92Gjuda+2GSOcG9SEhDi/+/r9oZNRJg29bi
	 s+wxzQ15Ld1ZiUq6awbCJQvDMBLBBYYbPGhYowSvmczJo7AMjHglzoDc+nyKZ1cKG+
	 9pzq+yVQRkgmw==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Assign IP address at boot time
In-Reply-To: <e7f9f7da-b919-1b65-90f1-e8d892acd2ce@ibeeto.com>
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
 <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
 <7d3df13429d227106286f966cdcbd501@vivaldi.net>
 <e7f9f7da-b919-1b65-90f1-e8d892acd2ce@ibeeto.com>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <0549f39814132d3d025fa22634c88f0e@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_cbf80b8f5b59a175cc25b15a39754952"

--=_cbf80b8f5b59a175cc25b15a39754952
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

> Create the file /etc/systemd/network/eth0.conf:
> 
> [Match]
> Name=eth0
> [Network]
> Address=<ip>
> Gateway=<ip>
> DNS=<ip>

That didn't work BUT editing /lib/systemd/network/80-wired.network

[Match]
Name=en* eth*
KernelCommandLine=!nfsroot

[Match]
Name=eth0
[Network]
Address=192.168.0.101/24
#Gateway=<ip>
#DNS=<ip>

[Network]
DHCP=no

[DHCP]
#RouteMetric=10
#ClientIdentifier=mac

 ... did work, after: 
root@arria10:~# _systemctl restart systemd-networkd_

--=_cbf80b8f5b59a175cc25b15a39754952
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">
<blockquote type=3D"cite" style=3D"padding: 0 0.4em; border-left: #1010ff 2=
px solid; margin: 0">Create the file /etc/systemd/network/eth0.conf:<br /><=
br />[Match]<br />Name=3Deth0<br />[Network]<br />Address=3D&lt;ip&gt;<br /=
>Gateway=3D&lt;ip&gt;<br />DNS=3D&lt;ip&gt;</blockquote>
<br />That didn't work BUT editing /lib/systemd/network/80-wired.network<br=
 />
<pre style=3D"padding-left: 30px;">[Match]
Name=3Den* eth*
KernelCommandLine=3D!nfsroot

[Match]
Name=3Deth0
[Network]
Address=3D192.168.0.101/24
#Gateway=3D&lt;ip&gt;
#DNS=3D&lt;ip&gt;

[Network]
DHCP=3Dno

[DHCP]
#RouteMetric=3D10
#ClientIdentifier=3Dmac
</pre>
=2E.. did work, after:</div>
<div class=3D"pre" style=3D"margin: 0; padding: 0; font-family: monospace">=
<strong>root@arria10:~#</strong> <em>systemctl restart systemd-networkd</em=
></div>
</body></html>

--=_cbf80b8f5b59a175cc25b15a39754952--
