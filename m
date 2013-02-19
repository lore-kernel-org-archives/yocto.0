Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05F1FE006F5
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 11:10:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Feb 2013 11:10:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,697,1355126400"; 
	d="scan'208,217";a="287799676"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 19 Feb 2013 11:10:52 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.65]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.248]) with mapi id
	14.01.0355.002; Tue, 19 Feb 2013 11:10:52 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: ??? <wan_xinyu@163.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>
Thread-Topic: Re:RE: BSP of the YoctoProject:Cedartrail
Thread-Index: AQHOCbGYT3KJ6WjKfUGccDbUdzTwoZh4MTMQgAnB/oD//6IWkA==
Date: Tue, 19 Feb 2013 19:10:51 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE255CC0854@ORSMSX105.amr.corp.intel.com>
References: <62e148f6.cd2.13cd231c6ca.Coremail.wan_xinyu@163.com>
	<D956029D25CF204F948EA0FB515E1EE255CBAD6C@ORSMSX105.amr.corp.intel.com>
	<70883a4.b86c.13cf3569bec.Coremail.wan_xinyu@163.com>
In-Reply-To: <70883a4.b86c.13cf3569bec.Coremail.wan_xinyu@163.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BSP of the YoctoProject:Cedartrail
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
X-List-Received-Date: Tue, 19 Feb 2013 19:10:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE255CC0854ORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE255CC0854ORSMSX105amrcor_
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

I am not sure what =1B$B!H=1B(Bhob=1B$B!I=1B(B layer does and how to build =
with any BSP.
May be someone from the mailing list would help you here.

How to build any meta-intel BSP with =1B$B!H=1B(Bmeta-hob=1B$B!I=1B(B layer=
?
Just include this layer in bblayers.conf? or any other changes required?

Thanks
Kishore.

From: =1B$BK|6U1'=1B(B [mailto:wan_xinyu@163.com]
Sent: Tuesday, February 19, 2013 8:43 AM
To: Bodke, Kishore K
Subject: Re:RE: BSP of the YoctoProject:Cedartrail

As your advice, I have removed the meta-hob layer from the bblayer.conf and=
 it can make a mirror successfully.
But now I want some extra spare space in my mirror. What should I do withou=
t "hob" ?




At 2013-02-14 03:48:07,"Bodke, Kishore K" <kishore.k.bodke@intel.com<mailto=
:kishore.k.bodke@intel.com>> wrote:

Do you need meta-hob layer to be built in?
If you do not need, remove the layer from bblayers.conf.

We have not tested the meta-hob layer with Cedartrail.

-Kishore.

From: =1B$BK|6U1'=1B(B [mailto:wan_xinyu@163.com<mailto:wan_xinyu@163.com>]
Sent: Tuesday, February 12, 2013 10:16 PM
To: Bodke, Kishore K
Subject: BSP of the YoctoProject:Cedartrail

Excuse me, Sir kishore.k.bodke=1B$B!$=1B(B
         I'm a user of Intel Atom N2600 and I want to make a embedded Linux=
 using @ my developing board. However, when I use the "Cedartrail" BSP to m=
ake a Linux mirror, it prompts me that "Hob cannot build your image".Detail=
s see Annex. The mirror type that I selected to build is "core-image-lsb-de=
v". Could analyse it for me why it connot build my image? Thank you very mu=
ch.

                                                                           =
                                                                           =
                                                                     PP.Wan



--_000_D956029D25CF204F948EA0FB515E1EE255CC0854ORSMSX105amrcor_
Content-Type: text/html; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-2022-=
jp">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"\@SimSun";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:SimSun;
	mso-fareast-language:ZH-CN;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:ZH-CN;}
span.hps
	{mso-style-name:hps;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:ZH-CN;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I am not sure what =1B$B!=
H=1B(Bhob=1B$B!I=1B(B layer does and how to build with any BSP.<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">May be someone from the m=
ailing list would help you here.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">How to build any meta-int=
el BSP with =1B$B!H=1B(Bmeta-hob=1B$B!I=1B(B layer?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Just include this layer i=
n bblayers.conf? or any other changes required?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Kishore.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
</span><span lang=3D"ZH-CN" style=3D"font-size:10.0pt">=1B$BK|6U1'=1B(B</sp=
an><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;san=
s-serif&quot;"> [mailto:wan_xinyu@163.com]
<br>
<b>Sent:</b> Tuesday, February 19, 2013 8:43 AM<br>
<b>To:</b> Bodke, Kishore K<br>
<b>Subject:</b> Re:RE: BSP of the YoctoProject:Cedartrail<o:p></o:p></span>=
</p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">As your advice, I have remove=
d the meta-hob layer from the bblayer.conf and it can make a mirror success=
fully.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:black=
">But now I want some extra spare space in my mirror. What should I do with=
out &quot;hob&quot; ?<br>
<br>
<br>
<br>
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;;color:black">At 2013-02-14 03:48:07,&quot;=
Bodke,&nbsp;Kishore&nbsp;K&quot;&nbsp;&lt;<a href=3D"mailto:kishore.k.bodke=
@intel.com">kishore.k.bodke@intel.com</a>&gt; wrote:<br>
<br>
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Do you need meta-hob layer to be built =
in?</span><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">If you do not need, remove the layer fr=
om bblayers.conf.</span><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=3D"color:black=
"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">We have not tested the meta-hob layer w=
ith Cedartrail.</span><span style=3D"color:black"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=3D"color:black=
"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">-Kishore.</span><span style=3D"color:bl=
ack"><o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><span style=3D"color:black=
"><o:p></o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;;color:black">From:</span></b><span style=3D"font-siz=
e:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:black"=
>
</span><span lang=3D"ZH-CN" style=3D"font-size:10.0pt;color:black">=1B$BK|6=
U1'=1B(B</span><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quo=
t;,&quot;sans-serif&quot;;color:black"> [mailto:<a href=3D"mailto:wan_xinyu=
@163.com">wan_xinyu@163.com</a>]
<br>
<b>Sent:</b> Tuesday, February 12, 2013 10:16 PM<br>
<b>To:</b> Bodke, Kishore K<br>
<b>Subject:</b> BSP of the YoctoProject:Cedartrail</span><span style=3D"col=
or:black"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black">Excuse me, Sir kishore.k.bodke</span><span =
lang=3D"ZH-CN" style=3D"font-size:10.5pt;color:black">=1B$B!$=1B(B</span><s=
pan style=3D"color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; I'm a user of Intel Atom N2600 and I want to make a embedded Linux us=
ing @ my developing board.
 However, when I use the &quot;Cedartrail&quot; BSP to make a Linux mirror,=
 it prompts me that &quot;Hob cannot build your image&quot;.Details
<span class=3D"hps">see Annex. The mirror type that I selected to build is =
&quot;core-image-lsb-dev&quot;. Could analyse it for me why it connot build=
 my image? Thank you very much.</span></span><span style=3D"color:black"><o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:10.5pt;font-family:&quot;Arial&quot;,&quo=
t;sans-serif&quot;;color:black">&nbsp;</span><span style=3D"color:black"><o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span class=3D"hps"><span style=3D"font-size:10.5pt;font-family:&q=
uot;Arial&quot;,&quot;sans-serif&quot;;color:black">&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;
 PP.Wan</span></span><span style=3D"color:black"><o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;margin-bottom:12.0p=
t"><span style=3D"color:black">&nbsp;<o:p></o:p></span></p>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE255CC0854ORSMSX105amrcor_--
