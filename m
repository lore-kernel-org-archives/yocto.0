Return-Path: <gilles.carry@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41482E00F69; Fri,  9 Oct 2015 01:07:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.207.212.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1742 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Oct 2015 01:07:33 PDT
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com
	[91.207.212.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92990E006D5
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 01:07:33 -0700 (PDT)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx08-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	t997XWYg012953
	for <yocto@yoctoproject.org>; Fri, 9 Oct 2015 09:38:30 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx08-00178001.pphosted.com with ESMTP id 1xdrufc5hs-1
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Fri, 09 Oct 2015 09:38:29 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 771A034
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 07:38:08 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas5.st.com [10.75.90.71])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 705C42A33
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 07:38:28 +0000 (GMT)
Received: from Safex1mail1.st.com ([fe80::38a0:4c7c:3de6:5e4b]) by
	SAFEX1HUBCAS5.st.com ([::1]) with mapi; Fri, 9 Oct 2015 09:38:27 +0200
From: Gilles CARRY <gilles.carry@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 9 Oct 2015 09:38:26 +0200
Thread-Topic: Intelligent global config files setting
Thread-Index: AdECZVNKGQtb6STJSbunrMUJKh9pqQ==
Message-ID: <9A1915A5EDF1BD429C7E67EC45EFD43501572C9E16@SAFEX1MAIL1.st.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-10-09_08:2015-10-08, 2015-10-09,
	1970-01-01 signatures=0
Subject: Intelligent global config files setting
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
X-List-Received-Date: Fri, 09 Oct 2015 08:07:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9A1915A5EDF1BD429C7E67EC45EFD43501572C9E16SAFEX1MAIL1st_"

--_000_9A1915A5EDF1BD429C7E67EC45EFD43501572C9E16SAFEX1MAIL1st_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I have a concern regarding global config files to be put into rootfs when s=
everal components need to alter a common config file.
Let me explain with an example.
I have two components (recipes) that need to write options into /etc/direct=
fbrc.
Let's call the recipes c1.bb and c2.bb and respectively optc1 and optc2, th=
e options they want to write to /etc/directfbrc.

The fast (and not very clean) way to do it is to centralized all the settin=
gs in a single recipe but this is not what I want. For a matter of maintena=
nce, I would like the option settings be attached to their respective compo=
nents. If c1 is not required (not in dependency list) then optc1 is not set=
.

I tried to use ROOTFS_POSTPROCESS_COMMAND in c1.bb and c2.bb but this mecha=
nism only seems to work in images recipes. (inherit core-image)
Then I considered using base-file.bbappend in directories where c1 and c2 a=
re stored but this does not work as base-file.bbappend is always read even =
though c1 or c2 are disabled.

Any clue?

Thanks,
Best regards,
Gilles.


--_000_9A1915A5EDF1BD429C7E67EC45EFD43501572C9E16SAFEX1MAIL1st_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dus-ascii"><meta name=3DGenerator content=3D"Micros=
oft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:#002052;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3D"#0563C1=
" vlink=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal><span la=
ng=3DFR style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#002=
052'>Hi,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DFR style=3D=
'font-size:10.0pt;font-family:"Arial",sans-serif;color:#002052'><o:p>&nbsp;=
</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-=
family:"Arial",sans-serif;color:#002052'>I have a concern regarding global =
config files to be put into rootfs when several components need to alter a =
common config file.<o:p></o:p></span></p><p class=3DMsoNormal><span style=
=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#002052'>Let me e=
xplain with an example.<o:p></o:p></span></p><p class=3DMsoNormal><span sty=
le=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#002052'>I have=
 two components (recipes) that need to write options into /etc/directfbrc.<=
o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;f=
ont-family:"Arial",sans-serif;color:#002052'>Let&#8217;s call the recipes c=
1.bb and c2.bb and respectively optc1 and optc2, the options they want to w=
rite to /etc/directfbrc.<o:p></o:p></span></p><p class=3DMsoNormal><span st=
yle=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#002052'><o:p>=
&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt=
;font-family:"Arial",sans-serif;color:#002052'>The fast (and not very clean=
) way to do it is to centralized all the settings in a single recipe but th=
is is not what I want. For a matter of maintenance, I would like the option=
 settings be attached to their respective components. <b>If c1 is not requi=
red (not in dependency list) then optc1 is not set</b>.<o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial",=
sans-serif;color:#002052'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#00205=
2'>I tried to use ROOTFS_POSTPROCESS_COMMAND in c1.bb and c2.bb but this me=
chanism only seems to work in images recipes. (inherit core-image)<o:p></o:=
p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-fami=
ly:"Arial",sans-serif;color:#002052'>Then I considered using base-file.bbap=
pend in directories where c1 and c2 are stored but this does not work as ba=
se-file.bbappend is always read even though c1 or c2 are disabled.<o:p></o:=
p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-fami=
ly:"Arial",sans-serif;color:#002052'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial",sans-serif=
;color:#002052'>Any clue?<o:p></o:p></span></p><p class=3DMsoNormal><span s=
tyle=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color:#002052'><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span style=3D'font-size:10.0p=
t;font-family:"Arial",sans-serif;color:#002052'>Thanks,<o:p></o:p></span></=
p><p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial",=
sans-serif;color:#002052'>Best regards,<o:p></o:p></span></p><p class=3DMso=
Normal><span style=3D'font-size:10.0pt;font-family:"Arial",sans-serif;color=
:#002052'>Gilles.<o:p></o:p></span></p><p class=3DMsoNormal><span style=3D'=
font-size:10.0pt;font-family:"Arial",sans-serif;color:#002052'><o:p>&nbsp;<=
/o:p></span></p></div></body></html>=

--_000_9A1915A5EDF1BD429C7E67EC45EFD43501572C9E16SAFEX1MAIL1st_--
