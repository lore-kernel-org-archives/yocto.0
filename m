Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s8.dub0.hotmail.com (dub0-omc3-s8.dub0.hotmail.com
	[157.55.2.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C108E014F1
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 07:16:05 -0700 (PDT)
Received: from DUB116-W63 ([157.55.2.8]) by dub0-omc3-s8.dub0.hotmail.com with
	Microsoft SMTPSVC(6.0.3790.4675); Fri, 14 Jun 2013 07:16:04 -0700
X-TMN: [PYUPYo2MNowIN5wZy36zR6uokPoBkDUGUDk72dRg83k=]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W6373791E2F82604A24654598800@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 14 Jun 2013 14:16:04 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 14 Jun 2013 14:16:04.0243 (UTC)
	FILETIME=[B4647E30:01CE6909]
Subject: Yocto - eclipse ADT plugin , missing autotools dependency
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
X-List-Received-Date: Fri, 14 Jun 2013 14:16:08 -0000
Content-Type: multipart/alternative;
	boundary="_0ee4c72e-5e99-42a5-b2e4-f3c3a23de2ff_"

--_0ee4c72e-5e99-42a5-b2e4-f3c3a23de2ff_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

Hello everyone=2C
I am using ubuntu 12.04=2C eclipse indigo=2C and have bitbaked rootfs & too=
lchain from yocto meta-freescale 'dylan (v1.4.1)'.
I then went on to setup eclipse for yocto devel & debug. followed the proce=
dures from : Yocto Project Development Manual  (section 4.2.2.1.3.)
 When I try to install the yocto ADT plugin it whines saying that:
 =0A=
Cannot complete the install because one or more required items could not be=
 found.
=0A=
  Software being installed: Yocto Project ADT Plug-in 1.4.0.201304182148 (o=
rg.yocto.sdk.feature.group 1.4.0.201304182148)
=0A=
  Missing requirement: Yocto Project ADT Plug-in 1.4.0.201304182148 =0A=
(org.yocto.sdk.feature.group 1.4.0.201304182148) requires =0A=
'org.eclipse.cdt.autotools.core 1.1.0' but it could not be found
=0A=
 =20

well=0A=
 the Autotools are definitely installed already=2C but the version that is=
=0A=
 stated next to the installed version is "Autotools support for CDT =0A=
(Incubation)    3.0.1.201202152032"
I also built the yocto-eclipse plugin from source and tried installing that=
 too. Same thing happens.
 How can I go about it?thank you very much for your help!
 		 	   		  =

--_0ee4c72e-5e99-42a5-b2e4-f3c3a23de2ff_
Content-Type: text/html; charset="iso-8859-7"
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hello everyone=2C<BR>I am using =
ubuntu 12.04=2C eclipse indigo=2C and have bitbaked rootfs &amp=3B toolchai=
n from yocto meta-freescale 'dylan (v1.4.1)'.<BR>I then went on to setup ec=
lipse for yocto devel &amp=3B debug. followed the procedures from : <a clas=
s=3D"jive-link-external-small" href=3D"http://www.yoctoproject.org/docs/1.4=
/dev-manual/dev-manual.html#adt-eclipse">Yocto Project Development Manual</=
a>&nbsp=3B (section 4.2.2.1.3.)<BR><p style=3D"min-height: 8pt=3B height: 8=
pt=3B padding: 0px=3B">&nbsp=3B</p>When I try to install the yocto ADT plug=
in it whines saying that:<BR><p style=3D"min-height: 8pt=3B height: 8pt=3B =
padding: 0px=3B">&nbsp=3B</p><blockquote class=3D"jive-quote">=0A=
Cannot complete the install because one or more required items could not be=
 found.<BR>=0A=
&nbsp=3B Software being installed: Yocto Project ADT Plug-in 1.4.0.20130418=
2148 (org.yocto.sdk.feature.group 1.4.0.201304182148)<BR>=0A=
&nbsp=3B Missing requirement: Yocto Project ADT Plug-in 1.4.0.201304182148 =
=0A=
(org.yocto.sdk.feature.group 1.4.0.201304182148) requires =0A=
'org.eclipse.cdt.autotools.core 1.1.0' but it could not be found<BR>=0A=
</blockquote><p style=3D"min-height: 8pt=3B height: 8pt=3B padding: 0px=3B"=
>&nbsp=3B</p><p style=3D"min-height: 8pt=3B height: 8pt=3B padding: 0px=3B"=
>&nbsp=3B</p><span class=3D"mce_paste_marker"><br></span><BR>well=0A=
 the Autotools are definitely installed already=2C but the version that is=
=0A=
 stated next to the installed version is "Autotools support for CDT =0A=
(Incubation)&nbsp=3B&nbsp=3B&nbsp=3B 3.0.1.201202152032"<BR>I also built th=
e yocto-eclipse plugin from source and tried installing that too. Same thin=
g happens.<BR><p style=3D"min-height: 8pt=3B height: 8pt=3B padding: 0px=3B=
">&nbsp=3B</p><p style=3D"min-height: 8pt=3B height: 8pt=3B padding: 0px=3B=
">How can I go about it?</p><p style=3D"min-height: 8pt=3B height: 8pt=3B p=
adding: 0px=3B">thank you very much for your help!</p><p style=3D"min-heigh=
t: 8pt=3B height: 8pt=3B padding: 0px=3B"><br></p> 		 	   		  </div></body>
</html>=

--_0ee4c72e-5e99-42a5-b2e4-f3c3a23de2ff_--
