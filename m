Received: from gateway34.websitewelcome.com (gateway34.websitewelcome.com [192.185.148.109])
 by mx.groups.io with SMTP id smtpd.web11.11507.1603378280586548700
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2020 07:51:20 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: dajac.com, ip: 192.185.148.109, mailfrom: pratham.ovalekar@dajac.com)
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
	by gateway34.websitewelcome.com (Postfix) with ESMTP id 19652FE3E9
	for <yocto@lists.yoctoproject.org>; Thu, 22 Oct 2020 09:51:20 -0500 (CDT)
Received: from gator3290.hostgator.com ([198.57.247.254])
	by cmsmtp with SMTP
	id VbvzkS5KAPiqfVbvzkWjnM; Thu, 22 Oct 2020 09:51:20 -0500
X-Authority-Reason: nr=8
Received: from 75-15-4-89.uvs.iplsin.sbcglobal.net ([75.15.4.89]:57968 helo=[192.168.0.132])
	by gator3290.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <pratham.ovalekar@dajac.com>)
	id 1kVbvz-002Bbx-5i
	for yocto@lists.yoctoproject.org; Thu, 22 Oct 2020 09:51:19 -0500
To: yocto@lists.yoctoproject.org
From: "Prathamesh Ovalekar" <pratham.ovalekar@dajac.com>
Subject: [Yocto] Sama5D3 UART1 configuration | Device tree
Message-ID: <0fadb696-688d-fe07-cfd9-3d16840739a0@dajac.com>
Date: Thu, 22 Oct 2020 10:51:19 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3290.hostgator.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dajac.com
X-BWhitelist: no
X-Source-IP: 75.15.4.89
X-Source-L: No
X-Exim-ID: 1kVbvz-002Bbx-5i
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 75-15-4-89.uvs.iplsin.sbcglobal.net ([192.168.0.132]) [75.15.4.89]:57968
X-Source-Auth: pratham.ovalekar@dajac.com
X-Email-Count: 5
X-Source-Cap: ZGFqYWNpbmM7ZGFqYWNpbmM7Z2F0b3IzMjkwLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I am a newbie in Yocto.

I am using a custom board based on the sama5d3_xplained board,

Goal: Currently the Port Pins: PA30 and PA31 are I2C lines (I2C0 TWD0=20
and TWCK0), I would like to use them as UART Lines (UART1 RX and TX)

What I have done till now: Modified the at91-sama5d3_xplained.dts file

 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Removed: =C2=A0=C2=A0=C2=A0 i2c0: =
i2c@f0014000 {
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 =C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 =C2=A0 pinctrl-0 =3D <&pinctrl_i2c0_pu>;
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 =C2=A0 status =3D "okay";
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 };

 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Added: =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 uart1: serial@f8028000 {
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 =C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=
 status =3D "okay";
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0 };


After the build process, I assumed that the output .dtb file will be=20
modified. But it remained the same.

Is there something that I am missing out?

Pratham

