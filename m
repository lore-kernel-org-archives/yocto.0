Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C95D5E00EB6; Sun, 26 Jun 2016 23:24:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_20,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0579]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.14 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Sun, 26 Jun 2016 23:24:45 PDT
Received: from DUB004-OMC3S5.hotmail.com (dub004-omc3s5.hotmail.com
	[157.55.2.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55FD9E00D3D
	for <yocto@yoctoproject.org>; Sun, 26 Jun 2016 23:24:45 -0700 (PDT)
Received: from DUB125-W86 ([157.55.2.7]) by DUB004-OMC3S5.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Sun, 26 Jun 2016 23:23:43 -0700
X-TMN: [v5QGxIMoGWGDUU7JBUvOjJx2Scy0X+iu]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB125-W863112061FDEAD0F4D27E0DA210@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 27 Jun 2016 07:23:43 +0100
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Jun 2016 06:23:43.0479 (UTC)
	FILETIME=[7417D870:01D1D03C]
Subject: Network Configuration with systemd-networkd in Krogoth
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
X-List-Received-Date: Mon, 27 Jun 2016 06:24:48 -0000
Content-Type: multipart/alternative;
	boundary="_abd8fe30-f870-41b3-bddf-4b34c48f3e23_"

--_abd8fe30-f870-41b3-bddf-4b34c48f3e23_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi=2C
Since I switched to Krogoth systemd-networkd (229) is not setting up IPv4 n=
etworks but is deleting any manual configuration set up by 'ip addr'.
It is setting up a link-local IPv6 address and attempting auto-conf and DHC=
Pv6 despite IPv6 not being enabled in the configuration.
I didn't manage to get any luck out of the systemd list but any idea if thi=
s is a systemd issue=2C yocto issue or something of my own devising?
Regards=2CChris
 		 	   		  =

--_abd8fe30-f870-41b3-bddf-4b34c48f3e23_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi=2C<div><br></div><div>Since I=
 switched to Krogoth systemd-networkd (229) is not setting up IPv4 networks=
 but is deleting any manual configuration set up by 'ip addr'.</div><div><b=
r></div><div>It is setting up a link-local IPv6 address and attempting auto=
-conf and DHCPv6 despite IPv6 not being enabled in the configuration.</div>=
<div><br></div><div>I didn't manage to get any luck out of the systemd list=
 but any idea if this is a systemd issue=2C yocto issue or something of my =
own devising?</div><div><br></div><div>Regards=2C</div><div>Chris</div><div=
><br></div> 		 	   		  </div></body>
</html>=

--_abd8fe30-f870-41b3-bddf-4b34c48f3e23_--
