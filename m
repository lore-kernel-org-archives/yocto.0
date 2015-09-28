Return-Path: <Stuart.Weaver@datapath.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4F5FE00F40; Mon, 28 Sep 2015 08:37:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.245.231.150 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0028]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 409 seconds by postgrey-1.32 at yocto-www;
	Mon, 28 Sep 2015 08:37:29 PDT
Received: from mail1.bemta5.messagelabs.com (mail1.bemta5.messagelabs.com
	[195.245.231.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AE72E00AA6
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2015 08:37:29 -0700 (PDT)
Received: from [85.158.139.19] by server-14.bemta-5.messagelabs.com id
	A2/8B-19125-F1D59065; Mon, 28 Sep 2015 15:30:39 +0000
X-Env-Sender: Stuart.Weaver@datapath.co.uk
X-Msg-Ref: server-14.tower-178.messagelabs.com!1443454238!55164126!1
X-Originating-IP: [77.107.122.35]
X-StarScan-Received: 
X-StarScan-Version: 6.13.16; banners=datapath.co.uk,-,-
X-VirusChecked: Checked
Received: (qmail 19878 invoked from network); 28 Sep 2015 15:30:38 -0000
Received: from unknown (HELO LEICESTER.internal.datapath.co.uk) (77.107.122.35)
	by server-14.tower-178.messagelabs.com with AES128-SHA encrypted SMTP;
	28 Sep 2015 15:30:38 -0000
Received: from LEICESTER.internal.datapath.co.uk ([::1]) by
	LEICESTER.internal.datapath.co.uk ([::1]) with mapi id 14.03.0248.002;
	Mon, 28 Sep 2015 16:30:38 +0100
From: Stuart Weaver <Stuart.Weaver@datapath.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Creating a new recipe based on another recipe
Thread-Index: AdD6AMKpatckXpy0Tr+GyHyVPJQ7fQ==
Date: Mon, 28 Sep 2015 15:30:38 +0000
Message-ID: <2DCC166D4F5C8443941662E1E67FD5C17871C6C5@LEICESTER.internal.datapath.co.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.20.0.187]
MIME-Version: 1.0
Subject: Creating a new recipe based on another recipe
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
X-List-Received-Date: Mon, 28 Sep 2015 15:37:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2DCC166D4F5C8443941662E1E67FD5C17871C6C5LEICESTERintern_"

--_000_2DCC166D4F5C8443941662E1E67FD5C17871C6C5LEICESTERintern_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I have a recipe for a package which builds well. I now need to add a patch=
 into certain builds. What is the best way to do this?


1.       Is there a variable I can append the image name to (similar to: S=
RC_URI_image-name)?


2.       Is there a way of creating a new 'recipe 2' that obtains the deta=
ils from 'recipe 1' and applies a patch? This way I can then simply add th=
e new recipe into any builds I want and includes any future changes I make=
 to 'recipe 1'. This solution also means not having to continuously reconf=
igure/recompile the original recipe!



3.       Do I have to do it the hard way and copy the whole .bb file into =
a new one and make sure everything is in sync when future updates are appl=
ied?


Regards,
Stuart Weaver


______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________

--_000_2DCC166D4F5C8443941662E1E67FD5C17871C6C5LEICESTERintern_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-mic=
rosoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word=
" xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"ht=
tp://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
=09{font-family:Corbel;
=09panose-1:2 11 5 3 2 2 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0cm;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
=09{mso-style-priority:99;
=09color:#0563C1;
=09text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
=09{mso-style-priority:99;
=09color:#954F72;
=09text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
=09{mso-style-priority:34;
=09margin-top:0cm;
=09margin-right:0cm;
=09margin-bottom:0cm;
=09margin-left:36.0pt;
=09margin-bottom:.0001pt;
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
span.EmailStyle17
=09{mso-style-type:personal-compose;
=09font-family:"Calibri",sans-serif;
=09color:windowtext;}
.MsoChpDefault
=09{mso-style-type:export-only;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
@page WordSection1
=09{size:612.0pt 792.0pt;
=09margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
=09{page:WordSection1;}
/* List Definitions */
@list l0
=09{mso-list-id:169099604;
=09mso-list-type:hybrid;
=09mso-list-template-ids:-253575568 134807567 134807577 134807579 13480756=
7 134807577 134807579 134807567 134807577 134807579;}
@list l0:level1
=09{mso-level-tab-stop:none;
=09mso-level-number-position:left;
=09text-indent:-18.0pt;
=09mso-ansi-font-style:normal;}
@list l0:level2
=09{mso-level-number-format:alpha-lower;
=09mso-level-tab-stop:none;
=09mso-level-number-position:left;
=09text-indent:-18.0pt;}
@list l0:level3
=09{mso-level-number-format:roman-lower;
=09mso-level-tab-stop:none;
=09mso-level-number-position:right;
=09text-indent:-9.0pt;}
@list l0:level4
=09{mso-level-tab-stop:none;
=09mso-level-number-position:left;
=09text-indent:-18.0pt;}
@list l0:level5
=09{mso-level-number-format:alpha-lower;
=09mso-level-tab-stop:none;
=09mso-level-number-position:left;
=09text-indent:-18.0pt;}
@list l0:level6
=09{mso-level-number-format:roman-lower;
=09mso-level-tab-stop:none;
=09mso-level-number-position:right;
=09text-indent:-9.0pt;}
@list l0:level7
=09{mso-level-tab-stop:none;
=09mso-level-number-position:left;
=09text-indent:-18.0pt;}
@list l0:level8
=09{mso-level-number-format:alpha-lower;
=09mso-level-tab-stop:none;
=09mso-level-number-position:left;
=09text-indent:-18.0pt;}
@list l0:level9
=09{mso-level-number-format:roman-lower;
=09mso-level-tab-stop:none;
=09mso-level-number-position:right;
=09text-indent:-9.0pt;}
ol
=09{margin-bottom:0cm;}
ul
=09{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a recipe for a package which builds well. I =
now need to add a patch into certain builds. What is the best way to do th=
is?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 lev=
el1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
</span></span><![endif]>Is there a variable I can append the image name to=
 (similar to:<i> SRC_URI_image-name</i>)?<i><o:p></o:p></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 lev=
el1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
</span></span><![endif]>Is there a way of creating a new &#8216;recipe 2&#=
8217; that obtains the details from &#8216;recipe 1&#8217; and applies a p=
atch? This way I can then simply add the new recipe into any builds I want=
 and includes any future changes I make to &#8216;recipe 1&#8217;. This
 solution also means not having to continuously reconfigure/recompile the =
original recipe!<o:p></o:p></p>
<p class=3D"MsoListParagraph"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-18.0pt;mso-list:l0 lev=
el1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">3.<span sty=
le=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;
</span></span><![endif]>Do I have to do it the hard way and copy the whole=
 .bb file into a new one and make sure everything is in sync when future u=
pdates are applied?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:1.5pt"><b><span style=3D"fon=
t-size:10.0pt;font-family:&quot;Corbel&quot;,sans-serif;color:#1F497D;mso-=
fareast-language:EN-GB">Regards,<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:1.5pt"><b><span style=3D"fon=
t-size:10.0pt;font-family:&quot;Corbel&quot;,sans-serif;color:#1F497D;mso-=
fareast-language:EN-GB">Stuart Weaver</span></b><span style=3D"mso-fareast=
-language:EN-GB"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br clear=3D"both">
______________________________________________________________________<BR>=

This email has been scanned by the Symantec Email Security.cloud service.<=
BR>
For more information please visit http://www.symanteccloud.com<BR>
______________________________________________________________________<BR>=

</body>
</html>

--_000_2DCC166D4F5C8443941662E1E67FD5C17871C6C5LEICESTERintern_--
