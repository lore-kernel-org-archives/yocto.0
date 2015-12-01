Return-Path: <Stuart.Weaver@datapath.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 737FCE00AE6; Tue,  1 Dec 2015 09:04:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [193.109.254.111 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 430 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Dec 2015 09:04:31 PST
Received: from mail1.bemta14.messagelabs.com (mail1.bemta14.messagelabs.com
	[193.109.254.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6511BE00ADD
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 09:04:31 -0800 (PST)
Received: from [85.158.140.195] by server-7.bemta-14.messagelabs.com id
	CE/47-28221-071DD565; Tue, 01 Dec 2015 16:57:20 +0000
X-Env-Sender: Stuart.Weaver@datapath.co.uk
X-Msg-Ref: server-14.tower-193.messagelabs.com!1448989039!7604236!1
X-Originating-IP: [77.107.122.35]
X-StarScan-Received: 
X-StarScan-Version: 7.35; banners=datapath.co.uk,-,-
X-VirusChecked: Checked
Received: (qmail 19210 invoked from network); 1 Dec 2015 16:57:19 -0000
Received: from unknown (HELO LEICESTER.internal.datapath.co.uk) (77.107.122.35)
	by server-14.tower-193.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 1 Dec 2015 16:57:19 -0000
Received: from LEICESTER.internal.datapath.co.uk ([::1]) by
	LEICESTER.internal.datapath.co.uk ([::1]) with mapi id 14.03.0266.001;
	Tue, 1 Dec 2015 16:57:19 +0000
From: Stuart Weaver <Stuart.Weaver@datapath.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: compiling out-of-tree modules with master
Thread-Index: AdEsV/q5ixZVuyDHTy2Ncctww5Ew6w==
Date: Tue, 1 Dec 2015 16:57:19 +0000
Message-ID: <2DCC166D4F5C8443941662E1E67FD5C178773046@LEICESTER.internal.datapath.co.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.20.0.187]
MIME-Version: 1.0
Subject: compiling out-of-tree modules with master
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
X-List-Received-Date: Tue, 01 Dec 2015 17:04:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2DCC166D4F5C8443941662E1E67FD5C178773046LEICESTERintern_"

--_000_2DCC166D4F5C8443941662E1E67FD5C178773046LEICESTERintern_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I'm currently merging my Yocto repo up to master (from Daisy). I'm having =
problems compiling some of the out-of-tree modules that we have which I've=
 tracked down to the Makefiles looking for:

include/generated/autoconf.h
include/generated/uapi/linux/version.h

Now I originally had to heavily patch these Makefiles to include variables=
 like KERNEL_SRC and KERNEL_VERSION as they were just calling shell comman=
ds (e.g. echo uname -a). However the KERNEL_SRC is pointing to the new loc=
ation of the source in 'work-shared' where none of the generated .h files =
are.

Could someone inform on the differences in workflow and which variables I =
should be using to point to the build source of the kernel (i.e. work/core=
i7-intel-common-poky-linux/linuux-yocto/3.19.5..../linux-corei7-64-intel-c=
ommon-standard-build)?

Best Regards,
Stuart


______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________

--_000_2DCC166D4F5C8443941662E1E67FD5C178773046LEICESTERintern_
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
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m currently merging my Yocto repo up to mas=
ter (from Daisy). I&#8217;m having problems compiling some of the out-of-t=
ree modules that we have which I&#8217;ve tracked down to the Makefiles lo=
oking for:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">include/generated/autoconf.h<o:p></o:p></p>
<p class=3D"MsoNormal">include/generated/uapi/linux/version.h<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now I originally had to heavily patch these Makefil=
es to include variables like KERNEL_SRC and KERNEL_VERSION as they were ju=
st calling shell commands (e.g. echo uname &#8211;a). However the KERNEL_S=
RC is pointing to the new location of the source
 in &#8216;work-shared&#8217; where none of the generated .h files are.<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Could someone inform on the differences in workflow=
 and which variables I should be using to point to the build source of the=
 kernel (i.e. work/corei7-intel-common-poky-linux/linuux-yocto/3.19.5&#823=
0;./linux-corei7-64-intel-common-standard-build)?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:1.5pt"><b><span style=3D"fon=
t-size:10.0pt;font-family:&quot;Corbel&quot;,sans-serif;color:#1F497D;mso-=
fareast-language:EN-GB">Best Regards,<o:p></o:p></span></b></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:1.5pt"><b><span style=3D"fon=
t-size:10.0pt;font-family:&quot;Corbel&quot;,sans-serif;color:#1F497D;mso-=
fareast-language:EN-GB">Stuart</span></b><span style=3D"font-size:10.0pt;f=
ont-family:&quot;Corbel&quot;,sans-serif;color:#1F497D;mso-fareast-languag=
e:EN-GB">
<o:p></o:p></span></p>
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

--_000_2DCC166D4F5C8443941662E1E67FD5C178773046LEICESTERintern_--
