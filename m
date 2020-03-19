Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [208.88.110.44])
 by mx.groups.io with SMTP id smtpd.web11.7237.1584603088014330415
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 00:31:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: savoirfairelinux.com, ip: 208.88.110.44, mailfrom: eloi.bail@savoirfairelinux.com)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 2C77B9C029F;
	Thu, 19 Mar 2020 03:31:27 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id 7YDPQGxvShOE; Thu, 19 Mar 2020 03:31:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 5F6729C02AA;
	Thu, 19 Mar 2020 03:31:26 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
	by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id OtxBexcjN-OK; Thu, 19 Mar 2020 03:31:26 -0400 (EDT)
Received: from mail.savoirfairelinux.com (mail.savoirfairelinux.com [192.168.48.237])
	by mail.savoirfairelinux.com (Postfix) with ESMTP id 2BCFC9C029F;
	Thu, 19 Mar 2020 03:31:26 -0400 (EDT)
Date: Thu, 19 Mar 2020 03:31:26 -0400 (EDT)
From: eloi.bail@savoirfairelinux.com
To: yocto@lists.yoctoproject.org
Message-ID: <91242005.201881.1584603086129.JavaMail.zimbra@savoirfairelinux.com>
Subject: wic image on UEFI server (Advantech AIMB-242)
MIME-Version: 1.0
X-Mailer: Zimbra 8.8.11_GA_3737 (ZimbraWebClient - FF74 (Linux)/8.8.11_GA_3737)
Thread-Index: ksRuaCPiIioKDcYJHWzVI3Ii8WnMGw==
Thread-Topic: wic image on UEFI server (Advantech AIMB-242)
Content-Type: multipart/alternative; 
	boundary="=_85167394-4243-4729-90f6-eb35e66d67fb"

--=_85167394-4243-4729-90f6-eb35e66d67fb
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi all, 

I am using Yocto Zeus on a Advantech AIMB-242 and used a core-image-minimal with Yocto machine genericx86-64 ( [ https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/wic/genericx86.wks?h=zeus | https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-yocto-bsp/wic/genericx86.wks?h=zeus ] ) 
I manage to have my UEFI wic image recognized and booting on a USB Key. But when flashing my image on a SATA disk, the bios does not recognize my disk as an UEFI device. 

Using the uefi shell, we discovered that my device is auto-mapped if the boot partition size is increased to 128 M, allowing me to call manually /EFI/BOOT/BOOTX64.EFI and boot my Yocto image like a charm ! 
But still my bios still does not recognize my SATA disk as a valid UEFI device out the box ! 
A valid workaround is to create an UEFI entry in NVRAM with efibootmgr but this manual operation is not durable for deployment. 

As last test, I used an Ubuntu ISO image on my SATA disk and it works ! 

To be honest, I am not an UEFI guru at all. It looks like the specification interpretation differs from one manufacturer to another. 
I am wondering if someone accounted this issue and if some ticks could be tested on wic or if I should dig into that with Advantech. 

Thanks, 

Eloi 


--=_85167394-4243-4729-90f6-eb35e66d67fb
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: arial, helvetica, sans-serif; font-s=
ize: 12pt; color: #000000"><div>Hi all,<br><br>I am using Yocto Zeus on a A=
dvantech AIMB-242 and used a core-image-minimal with Yocto machine genericx=
86-64 (<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta=
-yocto-bsp/wic/genericx86.wks?h=3Dzeus" target=3D"_blank" rel=3D"noopener" =
data-mce-href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-=
yocto-bsp/wic/genericx86.wks?h=3Dzeus">https://git.yoctoproject.org/cgit/cg=
it.cgi/poky/tree/meta-yocto-bsp/wic/genericx86.wks?h=3Dzeus</a>)<br>I manag=
e to have my UEFI wic image recognized and booting on a USB Key. But when f=
lashing my image on a SATA disk, the bios does not recognize my disk as an =
UEFI device.<br><br>Using the uefi shell, we discovered that my device is a=
uto-mapped if the boot partition size is increased to 128 M, allowing me&nb=
sp; to call manually /EFI/BOOT/BOOTX64.EFI&nbsp; and boot my Yocto image li=
ke a charm !<br></div><div>But still my bios still does not recognize my SA=
TA disk as a valid UEFI device out the box !</div><div>A valid workaround&n=
bsp; is to create an UEFI entry in NVRAM with <em>efibootmgr</em> but this =
manual operation is not durable for deployment.<br></div><div><br data-mce-=
bogus=3D"1"></div><div>As last test, I used an Ubuntu ISO image on my SATA =
disk and it works !<br data-mce-bogus=3D"1"></div><div><br data-mce-bogus=
=3D"1"></div><div>To be honest, I am not an UEFI guru at all. It looks like=
 the specification interpretation differs from one manufacturer to another.=
<br data-mce-bogus=3D"1"></div><div>I am wondering if someone accounted thi=
s issue and if some ticks could be tested on wic or if I should dig into th=
at with Advantech.<br data-mce-bogus=3D"1"></div><div><br data-mce-bogus=3D=
"1"></div><div>Thanks,<br data-mce-bogus=3D"1"></div><div><br data-mce-bogu=
s=3D"1"></div><div>Eloi<br data-mce-bogus=3D"1"></div><div><br></div></div>=
</body></html>

--=_85167394-4243-4729-90f6-eb35e66d67fb--
