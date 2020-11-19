Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com [192.185.49.40])
 by mx.groups.io with SMTP id smtpd.web09.17127.1605825436178338565
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 14:37:16 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: dajac.com, ip: 192.185.49.40, mailfrom: pratham.ovalekar@dajac.com)
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id D9862400CE520
	for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 16:33:59 -0600 (CST)
Received: from gator3290.hostgator.com ([198.57.247.254])
	by cmsmtp with SMTP
	id fsYFk8jDeYLDnfsYFk9UOO; Thu, 19 Nov 2020 16:37:15 -0600
X-Authority-Reason: nr=8
Received: from 75-15-4-89.uvs.iplsin.sbcglobal.net ([75.15.4.89]:63560 helo=[192.168.0.132])
	by gator3290.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <pratham.ovalekar@dajac.com>)
	id 1kfsYE-003HD6-NC
	for yocto@lists.yoctoproject.org; Thu, 19 Nov 2020 16:37:14 -0600
From: "Prathamesh Ovalekar" <pratham.ovalekar@dajac.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto] U-Boot sama5d3 xplained issue
Message-ID: <080574f8-ae94-3283-0653-631dc7563b49@dajac.com>
Date: Thu, 19 Nov 2020 17:37:13 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator3290.hostgator.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - dajac.com
X-BWhitelist: no
X-Source-IP: 75.15.4.89
X-Source-L: No
X-Exim-ID: 1kfsYE-003HD6-NC
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 75-15-4-89.uvs.iplsin.sbcglobal.net ([192.168.0.132]) [75.15.4.89]:63560
X-Source-Auth: pratham.ovalekar@dajac.com
X-Email-Count: 1
X-Source-Cap: ZGFqYWNpbmM7ZGFqYWNpbmM7Z2F0b3IzMjkwLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
Content-Type: multipart/alternative;
 boundary="------------DBFEAF327838D42D6A8334E7"
Content-Language: en-US

--------------DBFEAF327838D42D6A8334E7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello everyone,

System: sama5d3_xplained board

I have a question regarding the configuration and build of u-boot.
We have a build that was implemented earlier. I am trying to make some=20
changes to it.

Change 1: Change the auto boot delay to 1 second.
Change 2: Add an auto boot command to set a gpio.

I am aware of the environment variables:=C2=A0 CONFIG_BOOTDELAY and=20
CONFIG_BOOTCOMMAND (needed for the changes above.)
I tried modifying the=C2=A0 " configs/sama5d3_xplained_nandflash_defconfi=
g "

Question 1: Do I need to create an *.config file using the make menuconfi=
g?

Question 2: How do I create the u-boot.bin . Does this=C2=A0 depend on th=
e=20
Linux build?
 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 I know that there is an environment variable:=20
CONFIG_BOOTARGS that needs to be populated.

--=20
Pratham Ovalekar


--------------DBFEAF327838D42D6A8334E7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    Hello everyone,<br>
    <br>
    System: sama5d3_xplained board<br>
    <br>
    I have a question regarding the configuration and build of u-boot.<br=
>
    We have a build that was implemented earlier. I am trying to make
    some changes to it.<br>
    <br>
    Change 1: Change the <span style=3D"color: rgb(36, 39, 41);
      font-family: Arial, &quot;Helvetica Neue&quot;, Helvetica,
      sans-serif; font-size: 15px; font-style: normal;
      font-variant-ligatures: normal; font-variant-caps: normal;
      font-weight: 400; letter-spacing: normal; orphans: 2; text-align:
      left; text-indent: 0px; text-transform: none; white-space: normal;
      widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255); text-decoration-style:
      initial; text-decoration-color: initial; display: inline
      !important; float: none;">auto boot delay to 1 second.<br>
      Change 2: Add an auto boot command to set a gpio.<br>
      <br>
      I am aware of the environment variables:=C2=A0 CONFIG_BOOTDELAY and=
 </span>CONFIG_BOOTCOMMAND
    (needed for the changes above.)<br>
    I tried modifying the=C2=A0 "
    configs/sama5d3_xplained_nandflash_defconfig "<br>
    <br>
    Question 1: Do I need to create an *.config file using the make
    menuconfig?<br>
    <br>
    Question 2: How do I create the u-boot.bin . Does this=C2=A0 depend o=
n
    the Linux build?<br>
    =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 I know that there is an environment variable:
    CONFIG_BOOTARGS that needs to be populated.<br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Pratham Ovalekar
</pre>
  </body>
</html>

--------------DBFEAF327838D42D6A8334E7--
