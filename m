Return-Path: <Noel.Vellemans@visionBMS.com>
Received: from mail169.messagelabs.com (mail169.messagelabs.com
	[85.158.138.179])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 0D73FE01328
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2011 06:40:27 -0700 (PDT)
X-Env-Sender: Noel.Vellemans@visionBMS.com
X-Msg-Ref: server-7.tower-169.messagelabs.com!1317822045!46414426!1
X-Originating-IP: [195.134.156.204]
X-StarScan-Version: 6.3.6; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 23717 invoked from network); 5 Oct 2011 13:40:45 -0000
Received: from gateway.loepfe.com (HELO gateway.loepfe.com) (195.134.156.204)
	by server-7.tower-169.messagelabs.com with SMTP;
	5 Oct 2011 13:40:45 -0000
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Wed, 5 Oct 2011 15:40:24 +0200
Message-ID: <1531E53627F1F749B4FE809BF2A4EB6702B13551@WETMEX10.loepfe.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Sato Font-shadow ? 
thread-index: AcyDZFWDKfit+4iATduAAnYGwEEmVA==
From: "Vellemans, Noel" <Noel.Vellemans@visionBMS.com>
To: <yocto@yoctoproject.org>
Subject: Sato Font-shadow ?
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
X-List-Received-Date: Wed, 05 Oct 2011 13:40:29 -0000
Content-class: urn:content-classes:message
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_001_01CC8364.55D4DEF6"

------_=_NextPart_001_01CC8364.55D4DEF6
Content-Type: text/plain;
	charset="US-ASCII"
Content-Transfer-Encoding: quoted-printable


Hi all


I've build the beta-test build [wget
http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-f8cddd74574
756174a82c856cecdeb6f83b9dea5.tar.bz2 ] { core-image-sato }

The build succeeds but there is 'STRANGE' thing, the fonts seem to
contain a shadow, this shadow color is not always the same color
(sometimes it is red, or red.. or whatever combination).

The best place where you can see it is on the CLOCK that is displayed on
the top of the screen, another place where you can see it is when you
open a terminal window.

Anyone that has seen the same behavior ?
Where do I start looking ?

Regards Noel

NOTE: If I do replace the rootfs with one from the yocto web-site...
this faultly-'shadow'-behavoir is gone.



------_=_NextPart_001_01CC8364.55D4DEF6
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
<TITLE>Sato Font-shadow ? </TITLE>
</HEAD>
<BODY>
<!-- Converted from text/rtf format -->
<BR>

<P><FONT SIZE=3D2 FACE=3D"Verdana">Hi all</FONT>
</P>
<BR>

<P><FONT SIZE=3D2 FACE=3D"Verdana">I've build the beta-test build [wget =
</FONT><A =
HREF=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/poky-f8cd=
dd74574756174a82c856cecdeb6f83b9dea5.tar.bz2"><U><FONT COLOR=3D"#0000FF" =
SIZE=3D2 =
FACE=3D"Verdana">http://git.yoctoproject.org/cgit/cgit.cgi/poky/snapshot/=
poky-f8cddd74574756174a82c856cecdeb6f83b9dea5.tar.bz2</FONT></U></A><FONT=
 SIZE=3D2 FACE=3D"Verdana"> ] { core-image-sato }</FONT></P>

<P><FONT SIZE=3D2 FACE=3D"Verdana">The build succeeds but there is =
'STRANGE' thing, the fonts seem to contain a shadow, this shadow color =
is not always the same color (sometimes it is red, or red.. or whatever =
combination).</FONT></P>

<P><FONT SIZE=3D2 FACE=3D"Verdana">The best place where you can see it =
is on the CLOCK that is displayed on the top of the screen, another =
place where you can see it is when you open a terminal =
window.</FONT></P>

<P><FONT SIZE=3D2 FACE=3D"Verdana">Anyone that has seen the same =
behavior ?</FONT>

<BR><FONT SIZE=3D2 FACE=3D"Verdana">Where do I start looking ?</FONT>
</P>

<P><FONT SIZE=3D2 FACE=3D"Verdana">Regards Noel</FONT>
</P>

<P><FONT SIZE=3D2 FACE=3D"Verdana">NOTE: If I do replace the rootfs with =
one from the yocto web-site&#8230; this faultly-'shadow'-behavoir is =
gone.</FONT><SPAN LANG=3D"en-us"></SPAN>
</P>
<BR>

</BODY>
</HTML>

------_=_NextPart_001_01CC8364.55D4DEF6--
