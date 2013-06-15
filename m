Return-Path: <djnass_18@hotmail.com>
Received: from dub0-omc3-s25.dub0.hotmail.com (dub0-omc3-s25.dub0.hotmail.com
	[157.55.2.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 464EBE006E2
	for <yocto@yoctoproject.org>; Sat, 15 Jun 2013 09:40:43 -0700 (PDT)
Received: from DUB116-W117 ([157.55.2.7]) by dub0-omc3-s25.dub0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Sat, 15 Jun 2013 09:40:42 -0700
X-TMN: [N2xO/npxiKewHIyqJ1Tgp5vhBHoyaYPi]
X-Originating-Email: [djnass_18@hotmail.com]
Message-ID: <DUB116-W11741B9D094589E5132592398810@phx.gbl>
From: Thanassis Silis <djnass_18@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 15 Jun 2013 16:40:42 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 15 Jun 2013 16:40:42.0410 (UTC)
	FILETIME=[136570A0:01CE69E7]
Subject: eclipse error in downloading file when trying to debug on the actual target
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
X-List-Received-Date: Sat, 15 Jun 2013 16:40:46 -0000
Content-Type: multipart/alternative;
	boundary="_b60a4199-1d90-47be-a28b-e81c4f3cad5b_"

--_b60a4199-1d90-47be-a28b-e81c4f3cad5b_
Content-Type: text/plain; charset="iso-8859-7"
Content-Transfer-Encoding: quoted-printable

Hello everyone=2CI created a "hello world" ADT C application (basically fol=
lowing the PDM http://www.yoctoproject.org/docs/latest/dev-manual/dev-manua=
l.html#application-development-workflow )
The guide gives directions to run the built application in a qemu instance.=
 However=2C this fails.  The reason seems to be related to the imx6 uImage.=
 https://lists.yoctoproject.org/pipermail/meta-freescale/2012-December/0003=
60.htmlso I didn't try to much to play around with qemu and switched to try=
 and do debugging directly on the board (the real target).
I presume paragraph 4.2.2.6. is the same for both cases (qemu vs real targe=
t) - only in step 10=2C i provided the real targets ip address (I can ssh t=
o this address without any problem and indeed connect to my target board - =
a freescale imx6q sabrelite board).
When I press debug however=2C this msg pops up:
"Launching <projectname>_gdb_armv7a-vfp-neon-poky-linux-gnueabi" has encoun=
tered an error.
and the details are:
Error during file upload.Connection refusedConnection refusedConnection ref=
used
any idea about what could cause this error?
Thank you for your help  		 	   		  =

--_b60a4199-1d90-47be-a28b-e81c4f3cad5b_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>Hello everyone=2C<div>I created =
a "hello world" ADT C application (basically following the PDM&nbsp=3B<a hr=
ef=3D"http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#ap=
plication-development-workflow" target=3D"_blank" style=3D"font-size: 12pt=
=3B">http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#app=
lication-development-workflow</a>&nbsp=3B)</div><div><br></div><div>The gui=
de gives directions to run the built application in a qemu instance. Howeve=
r=2C this fails. &nbsp=3BThe reason seems to be related to the imx6 uImage.=
&nbsp=3B</div><div><a href=3D"https://lists.yoctoproject.org/pipermail/meta=
-freescale/2012-December/000360.html" target=3D"_blank">https://lists.yocto=
project.org/pipermail/meta-freescale/2012-December/000360.html</a></div><di=
v>so I didn't try to much to play around with qemu and switched to try and =
do debugging directly on the board (the real target).</div><div><br></div><=
div>I presume paragraph&nbsp=3B<span style=3D"font-family: Calibri=3B color=
: rgb(0=2C 85=2C 125)=3B font-size: 19px=3B">4.2.2.6. </span><span style=3D=
"font-size: 12pt=3B">is the same for both cases (qemu vs real target) - onl=
y in step 10=2C i provided the real targets ip address (I can ssh to this a=
ddress without any problem and indeed connect to my target board - a freesc=
ale imx6q sabrelite board).</span></div><div><span style=3D"font-size: 12pt=
=3B"><br></span></div><div><span style=3D"font-size: 12pt=3B">When I press =
debug however=2C this msg pops up:</span></div><div><span style=3D"font-siz=
e: 12pt=3B"><br></span></div><blockquote style=3D"margin: 0 0 0 40px=3B bor=
der: none=3B padding: 0px=3B"><div><font size=3D"2" face=3D"Courier New">"L=
aunching &lt=3Bprojectname&gt=3B_gdb_armv7a-vfp-neon-poky-linux-gnueabi" ha=
s encountered an error.</font></div></blockquote><div><span style=3D"font-s=
ize: 12pt=3B"><br></span></div><div><span style=3D"font-size: 12pt=3B">and =
the details are:</span></div><div><span style=3D"font-size: 12pt=3B"><br></=
span></div><blockquote style=3D"margin: 0 0 0 40px=3B border: none=3B paddi=
ng: 0px=3B"><div><div><font size=3D"2" face=3D"Courier New">Error during fi=
le upload.</font></div></div><div><div><font size=3D"2" face=3D"Courier New=
">Connection refused</font></div></div><div><div><font size=3D"2" face=3D"C=
ourier New">Connection refused</font></div></div><div><div><font size=3D"2"=
 face=3D"Courier New">Connection refused</font></div></div><div><span style=
=3D"font-size: 12pt=3B"><br></span></div></blockquote><span style=3D"font-s=
ize: 12pt=3B">any idea about what could cause this error?</span><div><span =
style=3D"font-size: 12pt=3B"><br></span></div><div><span style=3D"font-size=
: 12pt=3B">Thank you for your help&nbsp=3B</span></div> 		 	   		  </div></=
body>
</html>=

--_b60a4199-1d90-47be-a28b-e81c4f3cad5b_--
