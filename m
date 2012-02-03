Return-Path: <dongxiao.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09A07E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 16:57:10 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Feb 2012 16:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="119994460"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 02 Feb 2012 16:56:40 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 3 Feb 2012 08:56:38 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 3 Feb 2012 08:56:38 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Fri, 3 Feb 2012 08:56:36 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: "Wang, Shane" <shane.wang@intel.com>, "Barros Pena, Belen"
	<belen.barros.pena@intel.com>, "Lu, Lianhao" <lianhao.lu@intel.com>
Thread-Topic: RFC: Hob 1.2 design
Thread-Index: AQHM1ghN2ta+vDnY0kiXcbK0irRQ85YS108ggAGuLCCAAHlrgIAGmYWAgAb8MNCAAqn0gIACotQAgABGdBCAAFS8AIAAmk2AgABm6zCAAOoDcIAACL3w
Date: Fri, 3 Feb 2012 00:56:36 +0000
Message-ID: <40776A41FC278F40B59438AD47D147A90FCD04D6@SHSMSX102.ccr.corp.intel.com>
References: <3AB6CE7F274E534CAFD089D127A8A1FC0FCE9F5F@SHSMSX102.ccr.corp.intel.com>
	<CB4F0427.6A93%belen.barros.pena@intel.com>
	<3AB6CE7F274E534CAFD089D127A8A1FC0FCEB255@SHSMSX102.ccr.corp.intel.com>
	<3AB6CE7F274E534CAFD089D127A8A1FC0FCEBC20@SHSMSX102.ccr.corp.intel.com>
In-Reply-To: <3AB6CE7F274E534CAFD089D127A8A1FC0FCEBC20@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: RFC: Hob 1.2 design
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
X-List-Received-Date: Fri, 03 Feb 2012 00:57:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_40776A41FC278F40B59438AD47D147A90FCD04D6SHSMSX102ccrcor_"

--_000_40776A41FC278F40B59438AD47D147A90FCD04D6SHSMSX102ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

One more from me that, Hob may work as a deploy tool, and in the new movie,=
 the approach is to select "My images" and then click deploy button. I thin=
k normal user may not have such knowledge. I am still wondering if adding a=
 "deploy" button in the tool bar?

Thanks,
Dongxiao

From: Wang, Shane
Sent: Friday, February 03, 2012 8:26 AM
To: Wang, Shane; Barros Pena, Belen; Xu, Dongxiao; Lu, Lianhao
Cc: Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; Liu, Son=
g; Stewart, David C; yocto@yoctoproject.org
Subject: RE: RFC: Hob 1.2 design

I get one more:

In the Image details screen, after opening an image file by clicking "My im=
ages", we don't allow to "Edit Package", I think.
Because with an image only, we can't generate the packages from it, you can=
't assume there is a build directory (tmp/), is my understanding correct?

--
Shane

--_000_40776A41FC278F40B59438AD47D147A90FCD04D6SHSMSX102ccrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.apple-style-span
	{mso-style-name:apple-style-span;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Courier New";
	color:blue;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue">One more from me that, Hob may w=
ork as a deploy tool, and in the new movie, the approach is to select &#822=
0;My images&#8221; and then click deploy button. I think normal
 user may not have such knowledge. I am still wondering if adding a &#8220;=
deploy&#8221; button in the tool bar?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue">Dongxiao<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;;color:blue"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span =
lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&qu=
ot;sans-serif&quot;"> Wang, Shane
<br>
<b>Sent:</b> Friday, February 03, 2012 8:26 AM<br>
<b>To:</b> Wang, Shane; Barros Pena, Belen; Xu, Dongxiao; Lu, Lianhao<br>
<b>Cc:</b> Eggleton, Paul; Purdie, Richard; Zhang, Jessica; Lock, Joshua; L=
iu, Song; Stewart, David C; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: RFC: Hob 1.2 design<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">I get one =
more:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">In the Ima=
ge details screen, after opening an image file by clicking &#8220;My images=
&#8221;, we don&#8217;t allow to &#8220;Edit Package&#8221;, I think.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Because wi=
th an image only, we can&#8217;t generate the packages from it, you can&#82=
17;t assume there is a build directory (tmp/), is my understanding correct?=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp=
;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">--<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Shane<o:p>=
</o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_40776A41FC278F40B59438AD47D147A90FCD04D6SHSMSX102ccrcor_--
