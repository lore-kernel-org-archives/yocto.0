Return-Path: <Noel.Vellemans@visionBMS.com>
Received: from mail206.messagelabs.com (mail206.messagelabs.com
	[85.158.139.211])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 222E7E006F9
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 09:10:48 -0700 (PDT)
X-Env-Sender: Noel.Vellemans@visionBMS.com
X-Msg-Ref: server-8.tower-206.messagelabs.com!1319731846!683175!1
X-Originating-IP: [195.134.156.204]
X-StarScan-Version: 6.3.6; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 27166 invoked from network); 27 Oct 2011 16:10:46 -0000
Received: from gateway.loepfe.com (HELO gateway.loepfe.com) (195.134.156.204)
	by server-8.tower-206.messagelabs.com with SMTP;
	27 Oct 2011 16:10:46 -0000
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Thu, 27 Oct 2011 18:10:45 +0200
Message-ID: <1531E53627F1F749B4FE809BF2A4EB6702BCEA88@WETMEX10.loepfe.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Slow-startup.
thread-index: AcyUwvuRdXztc/sjT1K5HvIqSI0bZw==
From: "Vellemans, Noel" <Noel.Vellemans@visionBMS.com>
To: <yocto@yoctoproject.org>
Subject: Slow-startup.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 27 Oct 2011 16:10:50 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CC94C2.FBED3F34"

------_=_NextPart_001_01CC94C2.FBED3F34
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable


Hi all,

I'm test-driving the yocto-edison version, Target-armv7 (testing on
imx-53x cpu).

But,  I'm having a strange problem.=20

It takes very long to start the device, every time [not only the first
time], at each reboot cycle it takes up to 3 minutes before I get the
desktop.

At the current time I got to the point (by using printf into the code on
1001 places)  that it is the _mb_font_load() in matchbox-lib that makes
the startup extremely slow. (system seems to 'hang' for more the 3
minutes before the matchbox-desktop pops up.)


Any information available on this?
Any hints where to look at ?


Kind regards
Noel


------_=_NextPart_001_01CC94C2.FBED3F34
Content-Type: text/html;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">
<HTML>
<HEAD>
<META HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
charset=3Dus-ascii">
<META NAME=3D"Generator" CONTENT=3D"MS Exchange Server version =
6.5.7654.12">
<TITLE>Slow-startup.</TITLE>
</HEAD>
<BODY>
<!-- Converted from text/rtf format -->
<BR>

<P><SPAN LANG=3D"en-us"><FONT FACE=3D"Verdana">Hi all,</FONT></SPAN>
</P>

<P><SPAN LANG=3D"en-us"><FONT FACE=3D"Verdana">I'm test-driving the =
yocto-edison version, Target-armv7 (testing on imx-53x =
cpu).</FONT></SPAN>
</P>

<P><SPAN LANG=3D"en-us"><FONT FACE=3D"Verdana">But,&nbsp; I&#8217;m =
having a strange problem. </FONT></SPAN>
</P>

<P><SPAN LANG=3D"en-us"><FONT FACE=3D"Verdana">It takes very long to =
start the device, every time [not only the first time], at each reboot =
cycle it takes up to 3 minutes before I get the =
desktop.</FONT></SPAN></P>

<P><SPAN LANG=3D"en-us"><FONT FACE=3D"Verdana">At the current time I got =
to the point (by using printf into the code on 1001 places)&nbsp; that =
it is the _mb_font_load() in matchbox-lib that makes the startup =
extremely slow. (system seems to &#8216;hang&#8217; for more the 3 =
minutes before the matchbox-desktop pops up.)</FONT></SPAN></P>
<BR>

<P><SPAN LANG=3D"en-us"><FONT FACE=3D"Verdana">Any information available =
on this?</FONT></SPAN>

<BR><SPAN LANG=3D"en-us"><FONT FACE=3D"Verdana">Any hints where to look =
at ?</FONT></SPAN>
</P>
<BR>

<P><SPAN LANG=3D"nl-be"><FONT FACE=3D"Verdana">Kind =
regards</FONT></SPAN>

<BR><SPAN LANG=3D"nl-be"><FONT FACE=3D"Verdana">Noel</FONT></SPAN>
</P>

</BODY>
</HTML>

------_=_NextPart_001_01CC94C2.FBED3F34--
