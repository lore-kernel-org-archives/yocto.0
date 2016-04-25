Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EA7EE00CB4; Mon, 25 Apr 2016 03:41:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.96 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from DUB004-OMC4S21.hotmail.com (dub004-omc4s21.hotmail.com
	[157.55.2.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A20CDE00C9D
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 03:41:04 -0700 (PDT)
Received: from DUB130-W34 ([157.55.2.73]) by DUB004-OMC4S21.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 25 Apr 2016 03:41:03 -0700
X-TMN: [D26dbkgBsLxbny+o7G+4XEaz1WooM9n2]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W3472C8549086F0DE1CD928DA620@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Date: Mon, 25 Apr 2016 11:41:02 +0100
Importance: Normal
In-Reply-To: <DB3PR04MB0684BEADE641C36BCF5386BAEE6C0@DB3PR04MB0684.eurprd04.prod.outlook.com>
References: <DUB130-W6513A15021890FD826A907DA6B0@phx.gbl>,
	<DB3PR04MB0684BEADE641C36BCF5386BAEE6C0@DB3PR04MB0684.eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 25 Apr 2016 10:41:03.0042 (UTC)
	FILETIME=[F6C3F220:01D19EDE]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using Yocto with NXP QorIQ Processors
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
X-List-Received-Date: Mon, 25 Apr 2016 10:41:09 -0000
Content-Type: multipart/alternative;
	boundary="_fe12814c-f08a-4b07-be14-d407e3c09ede_"

--_fe12814c-f08a-4b07-be14-d407e3c09ede_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Zhenhua=2C
That sounds more positive.
One think that has been pointed out to me is that there are community layer=
s that are support outside of NXP that sit between Yocto and NXP (http://fr=
eescale.github.io/#) that track issues etc more actively.  These does not a=
ppear to involve the ppc processors so are the arm processors more actively=
 supported? (I presume this just depends on the community support.)
We use the original pcc qoriq processors and so would be interested in ppc =
support but that's still more of a future project.  Relative support arm vs=
 ppc would be a consideration but the meta-fsl-layer in yocto is reassuring=
 (I didn't manage to find it before!).
Regards=2CChris
From: zhenhua.luo@nxp.com
To: christrobridge@hotmail.com
CC: yocto@yoctoproject.org
Subject: RE: [yocto] Using Yocto with NXP QorIQ Processors
Date: Tue=2C 19 Apr 2016 03:16:16 +0000

=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
=0A=
Hi Chris=2C=0A=
=0A=
 =0A=
The QorIQ SDK uses recent Yocto version=2C e.g. the SDK 2.0  is based on Yo=
cto 2.0(Jethro).  When the SDK is formally released in Q2/2016=2C the SDK r=
ecipes will=0A=
 be upstreamed to master of community layers.=0A=
 =0A=
You can use either SDK ISOs available in NXP official website(www.nxp.com) =
or the BSP layers in Yocto website (http://git.yoctoproject.org/cgit.cgi/).=
=0A=
=0A=
=0A=
=B7        =0A=
QorIQ ARM targets: meta-fsl-arm=0A=
=0A=
=B7        =0A=
QorIQ PPC targets: meta-fsl-ppc=0A=
=0A=
 =0A=
 =0A=
Best Regards=2C=0A=
 =0A=
Zhenhua=0A=
=0A=
 =0A=
=0A=
=0A=
=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
]=0A=
On Behalf Of Chris Trobridge
=0A=
Sent: Monday=2C April 18=2C 2016 9:58 PM
=0A=
To: yocto@yoctoproject.org
=0A=
Subject: [yocto] Using Yocto with NXP QorIQ Processors=0A=
=0A=
=0A=
 =0A=
=0A=
Has anyone attempted to use the Qoriq BSP layers with them main Yocto relea=
se rather than the NXP (ex Freescale) SDK they come bundled in?=0A=
=0A=
 =0A=
=0A=
=0A=
I ask because the NXP SDK is somewhat behind the main Yocto release schedul=
e.=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
It should be easier to port the BSP to the current Yocto but I have no idea=
 what issues I am likely to hit.=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
I will try this at some point when I have enough free time but for planning=
 purposes I would interested in how anyone else has got on attempting this.=
=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
Are Qoriq users restricted to the official SDK or would they get third-part=
y support?=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
Regards=2C=0A=
=0A=
=0A=
Chris=0A=
=0A=
=0A=
 =0A=
=0A=
=0A=
=0A=
 		 	   		  =

--_fe12814c-f08a-4b07-be14-d407e3c09ede_
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
<body class=3D'hmmessage'><div dir=3D'ltr'>T<span style=3D"font-size: 12pt=
=3B">hanks&nbsp=3BZhenhua=2C</span><div><div><br></div><div>That sounds mor=
e positive.</div><div><br></div><div>One think that has been pointed out to=
 me is that there are community layers that are support outside of NXP that=
 sit between Yocto and NXP (<a href=3D"http://freescale.github.io/#" target=
=3D"_blank" style=3D"font-size: 12pt=3B">http://freescale.github.io/#</a>) =
that track issues etc more actively. &nbsp=3BThese does not appear to invol=
ve the ppc processors so are the arm processors more actively supported? (I=
 presume this just depends on the community support.)</div><div><br></div><=
div>We use the original pcc qoriq processors and so would be interested in =
ppc support but that's still more of a future project. &nbsp=3BRelative sup=
port arm vs ppc would be a consideration but the meta-fsl-layer in yocto is=
 reassuring (I didn't manage to find it before!).</div><div><br></div><div>=
Regards=2C</div><div>Chris</div><div><br><div><hr id=3D"stopSpelling">From:=
 zhenhua.luo@nxp.com<br>To: christrobridge@hotmail.com<br>CC: yocto@yoctopr=
oject.org<br>Subject: RE: [yocto] Using Yocto with NXP QorIQ Processors<br>=
Date: Tue=2C 19 Apr 2016 03:16:16 +0000<br><br>=0A=
=0A=
=0A=
=0A=
<style><!--=0A=
.ExternalClass p.ecxMsoNormal=2C .ExternalClass li.ecxMsoNormal=2C .Externa=
lClass div.ecxMsoNormal {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass a:link=2C .ExternalClass span.ecxMsoHyperlink {=0A=
color:#0563C1=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxMsoHyperlinkFollowed {=0A=
color:#954F72=3B=0A=
text-decoration:underline=3B=0A=
}=0A=
=0A=
.ExternalClass p {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass p.ecxMsoListParagraph=2C .ExternalClass li.ecxMsoListParagra=
ph=2C .ExternalClass div.ecxMsoListParagraph {=0A=
font-size:12.0pt=3B=0A=
font-family:"Times New Roman"=2Cserif=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle18 {=0A=
font-family:"Calibri"=2Csans-serif=3B=0A=
color:#1F497D=3B=0A=
}=0A=
=0A=
.ExternalClass span.ecxEmailStyle19 {=0A=
font-family:"Calibri"=2Csans-serif=3B=0A=
color:windowtext=3B=0A=
}=0A=
=0A=
.ExternalClass .ecxMsoChpDefault {=0A=
font-size:10.0pt=3B=0A=
}=0A=
=0A=
.ExternalClass div.ecxWordSection1 {=0A=
}=0A=
=0A=
.ExternalClass ol {=0A=
}=0A=
=0A=
.ExternalClass ul {=0A=
}=0A=
=0A=
--></style>=0A=
=0A=
=0A=
<div class=3D"ecxWordSection1">=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">Hi Chris=2C=0A=
</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">&nbsp=3B</span></p>=
=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">The QorIQ SDK uses re=
cent Yocto version=2C e.g. the SDK 2.0 &nbsp=3Bis based on Yocto 2.0(Jethro=
). &nbsp=3BWhen the SDK is formally released in Q2/2016=2C the SDK recipes =
will=0A=
 be upstreamed to master of community layers.</span></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">&nbsp=3B</span></p>=
=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">You can use either SD=
K ISOs available in NXP official website(<a href=3D"http://www.nxp.com" tar=
get=3D"_blank">www.nxp.com</a>) or the BSP layers in Yocto website (<a href=
=3D"http://git.yoctoproject.org/cgit.cgi/" target=3D"_blank">http://git.yoc=
toproject.org/cgit.cgi/</a>).=0A=
</span></p>=0A=
<p class=3D"ecxMsoListParagraph" style=3D"text-indent:-.25in=3B">=0A=
<span style=3D"font-size:11.0pt=3Bfont-family:Symbol=3Bcolor:#1F497D=3B"><s=
pan style=3D"">=B7<span style=3D"font:7.0pt &quot=3BTimes New Roman&quot=3B=
=3B">&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B=0A=
</span></span></span><span style=3D"font-size:11.0pt=3Bfont-family:&quot=3B=
Calibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">QorIQ ARM targets: meta-fs=
l-arm</span></p>=0A=
<p class=3D"ecxMsoListParagraph" style=3D"text-indent:-.25in=3B">=0A=
<span style=3D"font-size:11.0pt=3Bfont-family:Symbol=3Bcolor:#1F497D=3B"><s=
pan style=3D"">=B7<span style=3D"font:7.0pt &quot=3BTimes New Roman&quot=3B=
=3B">&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B=0A=
</span></span></span><span style=3D"font-size:11.0pt=3Bfont-family:&quot=3B=
Calibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">QorIQ PPC targets: meta-fs=
l-ppc</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">&nbsp=3B</span></p>=
=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">&nbsp=3B</span></p>=
=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">Best Regards=2C</span=
></p>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">&nbsp=3B</span></p>=
=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">Zhenhua</span></p>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-size:11.0pt=3Bfont-family:&qu=
ot=3BCalibri&quot=3B=2Csans-serif=3Bcolor:#1F497D=3B">&nbsp=3B</span></p>=
=0A=
<div style=3D"border:none=3Bborder-left:solid blue 1.5pt=3Bpadding:0in 0in =
0in 4.0pt=3B">=0A=
<div>=0A=
<div style=3D"border:none=3Bborder-top:solid #E1E1E1 1.0pt=3Bpadding:3.0pt =
0in 0in 0in=3B">=0A=
<p class=3D"ecxMsoNormal"><b><span style=3D"font-size:11.0pt=3Bfont-family:=
&quot=3BCalibri&quot=3B=2Csans-serif=3B">From:</span></b><span style=3D"fon=
t-size:11.0pt=3Bfont-family:&quot=3BCalibri&quot=3B=2Csans-serif=3B"> yocto=
-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=0A=
<b>On Behalf Of </b>Chris Trobridge<br>=0A=
<b>Sent:</b> Monday=2C April 18=2C 2016 9:58 PM<br>=0A=
<b>To:</b> yocto@yoctoproject.org<br>=0A=
<b>Subject:</b> [yocto] Using Yocto with NXP QorIQ Processors</span></p>=0A=
</div>=0A=
</div>=0A=
<p class=3D"ecxMsoNormal">&nbsp=3B</p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">Has anyone attempted to use the Qoriq BSP layers with =
them main Yocto release rather than the NXP (ex Freescale) SDK they come bu=
ndled in?</span></p>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">I ask because the NXP SDK is somewhat behind the main =
Yocto release schedule.</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">It should be easier to port the BSP to the current Yoc=
to but I have no idea what issues I am likely to hit.</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">I will try this at some point when I have enough free =
time but for planning purposes I would interested in how anyone else has go=
t on attempting this.</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">Are Qoriq users restricted to the official SDK or woul=
d they get third-party support?</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">Regards=2C</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">Chris</span></p>=0A=
</div>=0A=
<div>=0A=
<p class=3D"ecxMsoNormal"><span style=3D"font-family:&quot=3BCalibri&quot=
=3B=2Csans-serif=3B">&nbsp=3B</span></p>=0A=
</div>=0A=
</div>=0A=
</div>=0A=
</div></div></div></div> 		 	   		  </div></body>
</html>=

--_fe12814c-f08a-4b07-be14-d407e3c09ede_--
