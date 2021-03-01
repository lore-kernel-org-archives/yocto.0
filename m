Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web10.107.1614633400470875700
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 13:16:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=mEhIvY55;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12, mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 05A9ABD059
	for <yocto@lists.yoctoproject.org>; Mon,  1 Mar 2021 21:16:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 05A9ABD059
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1614633398;
	bh=RM46j8iBmqLIwNuf8d+cdkyzOExvsXDwuY/QkVsxMmk=;
	h=Date:From:To:Subject:From;
	b=mEhIvY55Yla7xZyoNQUhQEs1po0fwHi1oVp2yFnHJItXPYIuVAjUAhJQSvFeP+q15
	 rtxtdQgrYmmKbL6p58D63dY6Jimzhbm/yn1Evk4s3Mvb3proFy7pq5ApA9g9wMSPwF
	 PegSLtbOAGMkoK8CBSaBioPIlCyVYMqsiDFb9ZGTi8v43/0wPnPg6lc8b0l5nF51Fr
	 0+mJOOiWjXmMqE5AKgO3rHL6WIHfX+Gywf+AsrWiK6mxb386Q9eWwjwPVJVsl6/T+v
	 sU3VOm8eaouI2Peu4ArveKJJ6716ozcmQjEBcCSC50dDCe6EDctwkI/6Zevg95XuuH
	 fdwFIu+WqMD+Q==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JFfp5y2pPqYb for <yocto@lists.yoctoproject.org>;
	Mon,  1 Mar 2021 21:16:36 +0000 (UTC)
Date: Mon, 01 Mar 2021 16:16:35 -0500
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net F296DBD011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1614633396;
	bh=RM46j8iBmqLIwNuf8d+cdkyzOExvsXDwuY/QkVsxMmk=;
	h=Date:From:To:Subject:From;
	b=AhjuVspnSBVj1XO2gWZm3vjKhkuyxFAmR2Rog8hNTqJ5TR8PSDqwC1GcafcUEbjw9
	 Mlx5i/iUW9UxFej4Gjn3BhA17yGx0EkF7etLPYas7Snu8LQ4/62ooAHUZpGrSE6rLb
	 UU/FkzTEDHugDzAe+May2/2XXrHy41QMQ/TeEAfeUg01shfMF5CwAevfGUIMUmyZec
	 5059QbEfbkQRV8kJAcGzD3wzMRdkUbFvM34ZBpXp6Z5ug1nP3umE6SIwWqLM7BMmvS
	 yc3Qb3VUW3xIJzjbKxzGe7cWlBF6cS7UFCJOzOMQELF7iSBi8NAqAnswPDxArHdj67
	 a1vb86d9cjL4A==
From: "jchludzinski" <jchludzinski@vivaldi.net>
To: yocto@lists.yoctoproject.org
Subject: Kernel panic - not syncing: VFS: Unable to mount root fs ...
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <c76aad67167ab26ff0d4bebe9848f0f0@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: multipart/alternative;
 boundary="=_bf01d2c1eeeb23293ffb4a9dbd9ae3d8"

--=_bf01d2c1eeeb23293ffb4a9dbd9ae3d8
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=US-ASCII;
 format=flowed

I rebuilt socfpga_arria10_socdk_sdmmc.dtb in ./sd_card/sdfs/ using
modified files:

   arch/arm/boot/dts/socfpga_arria10_socdk_sdmmc.dts
   arch/arm/boot/dts/socfpga_arria10_socdk.dtsi

When I try booting I now get:

Kernel panic - not syncing: VFS: Unable to mount root fs on
unknown-block(179,2)

What is this telling me? 

I searched online and read something about the boot command in
extlinux/extlinux.conf: 'root=/dev/mmcblk0p2'? 
The '2' is the problem somehow?

--=_bf01d2c1eeeb23293ffb4a9dbd9ae3d8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3DUTF-8" /></head><body style=3D'font-size: 10pt; font-family: Verdana,Gen=
eva,sans-serif'>
<div class=3D"v1pre">I rebuilt socfpga_arria10_socdk_sdmmc.dtb in ./sd_card=
/sdfs/ using modified files:<br /><br />&nbsp; &nbsp;arch/arm/boot/dts/socf=
pga_arria10_socdk_sdmmc.dts<br />&nbsp; &nbsp;arch/arm/boot/dts/socfpga_arr=
ia10_socdk.dtsi<br /><br />When I try booting I now get:<br /><br /><strong=
>Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(=
179,2)</strong><br /><br />What is this telling me?</div>
<div class=3D"v1pre">&nbsp;</div>
<div class=3D"v1pre">I searched online and read something about the boot co=
mmand in extlinux/extlinux.conf: 'root=3D/dev/mmcblk0p<strong>2</strong>'?<=
/div>
<div class=3D"v1pre">The '<strong>2</strong>' is the problem somehow?</div>
</body></html>

--=_bf01d2c1eeeb23293ffb4a9dbd9ae3d8--
