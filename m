Return-Path: <jfabernathy@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3C39E008CF; Mon,  9 Feb 2015 07:23:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jfabernathy[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.147 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from BAY004-OMC3S9.hotmail.com (bay004-omc3s9.hotmail.com
	[65.54.190.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCE01E008A7
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 07:22:56 -0800 (PST)
Received: from BAY169-W125 ([65.54.190.187]) by BAY004-OMC3S9.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.22751); 
	Mon, 9 Feb 2015 07:22:55 -0800
X-TMN: [k4UV4OMkJZzcEWn+04Rlwx5+3S9v1mhf]
X-Originating-Email: [jfabernathy@outlook.com]
Message-ID: <BAY169-W125A7ACB58EC0403251D3F6AE270@phx.gbl>
From: Jim Abernathy <jfabernathy@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 9 Feb 2015 10:22:55 -0500
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 09 Feb 2015 15:22:55.0803 (UTC)
	FILETIME=[4762B8B0:01D0447C]
Subject: boot delay but recovery??
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
X-List-Received-Date: Mon, 09 Feb 2015 15:23:08 -0000
Content-Type: multipart/alternative;
	boundary="_e6dab166-c59d-4b05-b95f-7cba81c7f3bb_"

--_e6dab166-c59d-4b05-b95f-7cba81c7f3bb_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm booting Dizzy 1.7.1 on a Pandaboard (ARM). The image is core-image-base=
. My local.conf additions are :

MACHINE ??=3D "pandaboard"
IMAGE_INSTALL_append =3D " oracle-jse-jre dropbear linux-firmware resolvcon=
f"
LICENSE_FLAGS_WHITELIST +=3D "oracle_java"

I get a 30 second delay while the boot process hangs then kills a process. =
 Not sure I know why.  Can someone enlighten me.  Below is the log showing =
what is happening before and after the delay:

[    6.087097] cfg80211: Calling CRDA to update world regulatory domain
udevd[947]: worker [950] timeout=2C kill it

udevd[947]: seq 1291 '/devices/platform/omap_hsmmc.4/mmc_host/mmc1/mmc1:000=
1/mmc1:0001:2/wl12xx' killed

[   36.711120] wl12xx: loaded
udevd[947]: worker [950] terminated by signal 9 (Killed)

Once the board is booted I have both LAN and WiFi and both are connected an=
d working. It's just 30 seconds longer than it should be.

Jim A

 		 	   		  =

--_e6dab166-c59d-4b05-b95f-7cba81c7f3bb_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>I'm booting Dizzy 1.7.1 on a Pan=
daboard (ARM). The image is core-image-base. My local.conf additions are :<=
br><br>MACHINE ??=3D "pandaboard"<br>IMAGE_INSTALL_append =3D " oracle-jse-=
jre dropbear linux-firmware resolvconf"<br>LICENSE_FLAGS_WHITELIST +=3D "or=
acle_java"<br><br>I get a 30 second delay while the boot process hangs then=
 kills a process.&nbsp=3B Not sure I know why.&nbsp=3B Can someone enlighte=
n me.&nbsp=3B Below is the log showing what is happening before and after t=
he delay:<br><br>[&nbsp=3B&nbsp=3B&nbsp=3B 6.087097] cfg80211: Calling CRDA=
 to update world regulatory domain<br>udevd[947]: worker [950] timeout=2C k=
ill it<br><br>udevd[947]: seq 1291 '/devices/platform/omap_hsmmc.4/mmc_host=
/mmc1/mmc1:0001/mmc1:0001:2/wl12xx' killed<br><br>[&nbsp=3B&nbsp=3B 36.7111=
20] wl12xx: loaded<br>udevd[947]: worker [950] terminated by signal 9 (Kill=
ed)<br><br>Once the board is booted I have both LAN and WiFi and both are c=
onnected and working. It's just 30 seconds longer than it should be.<br><br=
>Jim A<br><br> 		 	   		  </div></body>
</html>=

--_e6dab166-c59d-4b05-b95f-7cba81c7f3bb_--
