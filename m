Return-Path: <Stuart.Weaver@datapath.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F00F1E008CC; Thu, 13 Nov 2014 04:28:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.245.231.139 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 414 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Nov 2014 04:27:54 PST
Received: from mail1.bemta5.messagelabs.com (mail1.bemta5.messagelabs.com
	[195.245.231.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82E87E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 04:27:54 -0800 (PST)
Received: from [85.158.139.19] by server-3.bemta-5.messagelabs.com id
	31/A6-14727-922A4645; Thu, 13 Nov 2014 12:20:57 +0000
X-Env-Sender: Stuart.Weaver@datapath.co.uk
X-Msg-Ref: server-16.tower-178.messagelabs.com!1415881256!32171426!1
X-Originating-IP: [77.107.122.35]
X-StarScan-Received: 
X-StarScan-Version: 6.12.4; banners=datapath.co.uk,-,-
X-VirusChecked: Checked
Received: (qmail 22019 invoked from network); 13 Nov 2014 12:20:57 -0000
Received: from unknown (HELO LEICESTER.internal.datapath.co.uk) (77.107.122.35)
	by server-16.tower-178.messagelabs.com with AES256-SHA encrypted SMTP;
	13 Nov 2014 12:20:57 -0000
Received: from LEICESTER.internal.datapath.co.uk ([::1]) by
	LEICESTER.internal.datapath.co.uk ([::1]) with mapi id 14.03.0210.002;
	Thu, 13 Nov 2014 12:20:56 +0000
From: Stuart Weaver <Stuart.Weaver@datapath.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_rootfs failure
Thread-Index: Ac//OvkevqELs4MiQmSz1NjIr+HD7Q==
Date: Thu, 13 Nov 2014 12:20:56 +0000
Message-ID: <2DCC166D4F5C8443941662E1E67FD5C1396DFFBC@LEICESTER.internal.datapath.co.uk>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.20.0.126]
MIME-Version: 1.0
Subject: do_rootfs failure
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
X-List-Received-Date: Thu, 13 Nov 2014 12:28:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2DCC166D4F5C8443941662E1E67FD5C1396DFFBCLEICESTERintern_"

--_000_2DCC166D4F5C8443941662E1E67FD5C1396DFFBCLEICESTERintern_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I'm trying to include a file which is over 2.5GB into a Yocto image at /et=
c/FILE01 however I'm hitting errors with output being the following:

ERROR:
error: unpacking of archive failed on file /etc/FILE01;54649e43: cpio: rea=
d failed - Resource temporarily unavailable
  53:Installing libxdmcp6       ######################################## [=
 12%]
  54:Installing libtinfo5       ######################################## [=
 13%]
  55:Installing libuuid1        ######################################## [=
 13%]
  56:Installing libnl-3-200     ######################################## [=
 13%]

ERROR: Function failed: do_rootfs

Looking into the build directory, I'm finding that the file has been fetch=
ed etc...
I've tested the same setup with a smaller file (~250MB) and the image comp=
letes which makes the primary suspect be the size of the file.

Google didn't seem to solve any questions, but is there a limit on how big=
 a .rpm package can be or someplace else with in Yocto?

Any information would be very helpful!

Many Thanks,
Stuart

______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________

--_000_2DCC166D4F5C8443941662E1E67FD5C1396DFFBCLEICESTERintern_
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
<p class=3D"MsoNormal">I&#8217;m trying to include a file which is over 2.=
5GB into a Yocto image at /etc/FILE01 however I&#8217;m hitting errors wit=
h output being the following:<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB"><o:p>&nb=
sp;</o:p></span></p>
<p class=3D"MsoNormal">ERROR: <o:p></o:p></p>
<p class=3D"MsoNormal">error: unpacking of archive failed on file /etc/FIL=
E01;54649e43: cpio: read failed - Resource temporarily unavailable<o:p></o=
:p></p>
<p class=3D"MsoNormal">&nbsp; 53:Installing libxdmcp6&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; ######################################## [ 12%]<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; 54:Installing libtinfo5&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; ######################################## [ 13%]<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp; 55:Installing libuuid1&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; ######################################## [ 13%]<o:p><=
/o:p></p>
<p class=3D"MsoNormal">&nbsp; 56:Installing libnl-3-200&nbsp;&nbsp;&nbsp;&=
nbsp; ######################################## [ 13%]<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Function failed: do_rootfs<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Looking into the build directory, I&#8217;m finding=
 that the file has been fetched etc...
<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;ve tested the same setup with a smaller fil=
e (~250MB) and the image completes which makes the primary suspect be the =
size of the file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Google didn&#8217;t seem to solve any questions, bu=
t is there a limit on how big a .rpm package can be or someplace else with=
 in Yocto?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any information would be very helpful!<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Many Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Stuart<o:p></o:p></p>
</div>
<br clear=3D"both">
______________________________________________________________________<BR>=

This email has been scanned by the Symantec Email Security.cloud service.<=
BR>
For more information please visit http://www.symanteccloud.com<BR>
______________________________________________________________________<BR>=

</body>
</html>

--_000_2DCC166D4F5C8443941662E1E67FD5C1396DFFBCLEICESTERintern_--
