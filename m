Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC6D5E008BC; Mon,  2 Feb 2015 09:30:39 -0800 (PST)
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
	*      [65.54.190.144 listed in list.dnswl.org]
Received: from BAY004-OMC3S6.hotmail.com (bay004-omc3s6.hotmail.com
	[65.54.190.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4099EE00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:30:33 -0800 (PST)
Received: from BAY169-W77 ([65.54.190.188]) by BAY004-OMC3S6.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Mon, 2 Feb 2015 09:30:33 -0800
X-TMN: [5LiqqCyCB+ceRlagIqI2n3PDqnsdy3NJ]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W7748F94D52BC0458B7A0AEAE3C0@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 2 Feb 2015 12:30:32 -0500
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 02 Feb 2015 17:30:33.0355 (UTC)
	FILETIME=[F2C02DB0:01D03F0D]
Subject: meta-ti/pandaboard
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
X-List-Received-Date: Mon, 02 Feb 2015 17:30:39 -0000
Content-Type: multipart/alternative;
	boundary="_ec466c12-781a-4d98-bbd9-0ba274a59aa8_"

--_ec466c12-781a-4d98-bbd9-0ba274a59aa8_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've noticed a few issues with the pandaboard image that builds.=20

1. core-image-sato does not have WiFi capability. I think it's missing firm=
ware.

2. core-image-base is missing the linux-firmware.  I added:=20
IMAGE_INSTALL_append =3D " linux-firmware".  Now I have the necessary firmw=
are to bring up the WiFi.

3. There is some delay cause in booting that affect the ability to have WiF=
i active after boot.  I have to wait a few minutes until I see the error an=
d recovery before doing the ifup wlan0.

dmesg | grep wl12     gives me the following output:

[    0.396392] vwl1271: 1800 mV=20
[   67.167297] wl12xx: ERROR could not get nvs file ti-connectivity/wl1271-=
nvs.bin: -2
[   67.181457] wl12xx: loaded

(once I see the message above I can ifup wlan0 which produces this output b=
elow and WiFi now is working:

[  135.964355] wl12xx: firmware booted (Rev 6.3.5.0.98)
[  137.979522] wl12xx: Association completed.

Jim A


 		 	   		  =

--_ec466c12-781a-4d98-bbd9-0ba274a59aa8_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>I've noticed a few issues with t=
he pandaboard image that builds. <br><br>1. core-image-sato does not have W=
iFi capability. I think it's missing firmware.<br><br>2. core-image-base is=
 missing the linux-firmware.&nbsp=3B I added: <br>IMAGE_INSTALL_append =3D =
" linux-firmware".&nbsp=3B Now I have the necessary firmware to bring up th=
e WiFi.<br><br>3. There is some delay cause in booting that affect the abil=
ity to have WiFi active after boot.&nbsp=3B I have to wait a few minutes un=
til I see the error and recovery before doing the ifup wlan0.<br><br>dmesg =
| grep wl12&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B gives me the following output:<=
br><br>[&nbsp=3B&nbsp=3B&nbsp=3B 0.396392] vwl1271: 1800 mV <br>[&nbsp=3B&n=
bsp=3B 67.167297] wl12xx: ERROR could not get nvs file ti-connectivity/wl12=
71-nvs.bin: -2<br>[&nbsp=3B&nbsp=3B 67.181457] wl12xx: loaded<br><br>(once =
I see the message above I can ifup wlan0 which produces this output below a=
nd WiFi now is working:<br><br>[&nbsp=3B 135.964355] wl12xx: firmware boote=
d (Rev 6.3.5.0.98)<br>[&nbsp=3B 137.979522] wl12xx: Association completed.<=
br><br>Jim A<br><br><br> 		 	   		  </div></body>
</html>=

--_ec466c12-781a-4d98-bbd9-0ba274a59aa8_--
