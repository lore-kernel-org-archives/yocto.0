Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8551BE009AC; Wed, 11 Feb 2015 03:32:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.151 listed in list.dnswl.org]
Received: from BAY004-OMC3S13.hotmail.com (bay004-omc3s13.hotmail.com
	[65.54.190.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17A72E00985
	for <yocto@yoctoproject.org>; Wed, 11 Feb 2015 03:31:52 -0800 (PST)
Received: from BAY169-W55 ([65.54.190.189]) by BAY004-OMC3S13.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Wed, 11 Feb 2015 03:31:51 -0800
X-TMN: [loI4zI+J3m1SRiTdbSGZ2f9hLJZYTizJ]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W5524FE11D7CA34E81F6C70AE250@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 11 Feb 2015 06:31:51 -0500
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 11 Feb 2015 11:31:51.0576 (UTC)
	FILETIME=[547D1180:01D045EE]
Subject: dizzy NUC missing wifi firmware
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
X-List-Received-Date: Wed, 11 Feb 2015 11:32:01 -0000
Content-Type: multipart/alternative;
	boundary="_73e69b20-577e-4ba8-99b9-ca7e81f711a0_"

--_73e69b20-577e-4ba8-99b9-ca7e81f711a0_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

For the NUC=2C core-image-base seems to only include in /lib/firmware the u=
code for the processor and the wifi firmware for the 6000 family of WiFi ha=
lf-PCIe card adapters.  I found with an n-135 wifi card there is no iwlwifi=
-135.6.ucode.

I can manually add that firmware file or include all the linux-firmware in =
my build:

IMAGE_INSTALL_append =3D " linux-firmware"

What would be the correct way of including just the iwlwifi-135-ucode-18.16=
8.6.1.tgz firmware??

Jim A

 		 	   		  =

--_73e69b20-577e-4ba8-99b9-ca7e81f711a0_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>For the NUC=2C core-image-base s=
eems to only include in /lib/firmware the ucode for the processor and the w=
ifi firmware for the 6000 family of WiFi half-PCIe card adapters.&nbsp=3B I=
 found with an n-135 wifi card there is no iwlwifi-135.6.ucode.<br><br>I ca=
n manually add that firmware file or include all the linux-firmware in my b=
uild:<br><br>IMAGE_INSTALL_append =3D " linux-firmware"<br><br>What would b=
e the correct way of including just the <a href=3D"http://wireless.kernel.o=
rg/en/users/Drivers/iwlwifi?action=3DAttachFile&amp=3Bdo=3Dget&amp=3Btarget=
=3Diwlwifi-135-ucode-18.168.6.1.tgz" target=3D"_blank">iwlwifi-135-ucode-18=
.168.6.1.tgz firmware??</a><br><br>Jim A<br><br><a href=3D"http://wireless.=
kernel.org/en/users/Drivers/iwlwifi?action=3DAttachFile&amp=3Bdo=3Dget&amp=
=3Btarget=3Diwlwifi-135-ucode-18.168.6.1.tgz" target=3D"_blank"></a> 		 	  =
 		  </div></body>
</html>=

--_73e69b20-577e-4ba8-99b9-ca7e81f711a0_--
