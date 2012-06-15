Return-Path: <juergen.messerer@bbv.ch>
Received: from owa.outnet.ch (owa.outnet.ch [80.67.146.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17A91E013EB
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 02:07:36 -0700 (PDT)
Received: from TKSSREX01.outnet.ch ([10.10.10.1]) by tkssrexhcu01.outnet.ch
	([172.17.220.45]) with mapi; Fri, 15 Jun 2012 11:07:33 +0200
From: =?iso-8859-1?Q?J=FCrgen_Messerer?= <juergen.messerer@bbv.ch>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 15 Jun 2012 11:07:32 +0200
Thread-Topic: Bug 2256 - kernel menuconfig confusion with sstate 
Thread-Index: Ac1K1dJq7Qw8BbIIQMii5nfgeGL9Fg==
Message-ID: <A7B59F6D52627C44813C136D437B0832068BC78CB34A@TKSSREX01.outnet.ch>
Accept-Language: en-US, de-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, de-CH
MIME-Version: 1.0
Cc: "Darren Hart \(dvhart@linux.intel.com\)" <dvhart@linux.intel.com>
Subject: Bug 2256 - kernel menuconfig confusion with sstate
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
X-List-Received-Date: Fri, 15 Jun 2012 09:07:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A7B59F6D52627C44813C136D437B0832068BC78CB34ATKSSREX01ou_"

--_000_A7B59F6D52627C44813C136D437B0832068BC78CB34ATKSSREX01ou_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Darren

You suggested in Bug 2256 the following:

$ bitbake virtual/kernel -c cleansstate
$ bitbake virtual/kernel -c menuconfig
$ bitbake virtual/kernel -c compile -f; bitbake virtual/kernel


Can you tell me what the difference is between
"bitbake virtual/kernel -c compile -f"
and
"bitbake virtual/kernel"

Shouldn't be the last command "bitbake -c deploy virtual/kernel"?

Thanks for the infos

Regards

Juergen


--_000_A7B59F6D52627C44813C136D437B0832068BC78CB34ATKSSREX01ou_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Diso-8859-1"><meta name=3DGenerator content=3D"Micr=
osoft Word 14 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	mso-fareast-language:DE-CH;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DDE-CH link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-=
US>Dear Darren<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>You su=
ggested in Bug 2256 the following:<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";mso-farea=
st-language:DE-CH'>$ bitbake virtual/kernel -c cleansstate<o:p></o:p></span=
></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Courier New";mso-fareast-language:DE-CH'>$ bitbake virtual/kernel =
-c menuconfig<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Courier New";mso-fareast-language:DE=
-CH'>$ bitbake virtual/kernel -c compile -f; bitbake virtual/kernel<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US>Can you tell me what the difference=
 is between <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Courier New";mso-fareast-language:DE-=
CH'>&#8220;bitbake virtual/kernel -c compile &#8211;f&#8221;<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Courier New";mso-fareast-language:DE-CH'>and </span><span lang=
=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Courier New";mso-fareast-language:DE-CH'=
>&#8220;bitbake virtual/kernel&#8221;<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New"=
;mso-fareast-language:DE-CH'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier New";m=
so-fareast-language:DE-CH'>Shouldn&#8217;t be the last command &#8220;bitba=
ke &#8211;c deploy virtual/kernel&#8221;?<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier =
New";mso-fareast-language:DE-CH'><o:p>&nbsp;</o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Courier Ne=
w";mso-fareast-language:DE-CH'>Thanks for the infos<o:p></o:p></span></p><p=
 class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Courier New";mso-fareast-language:DE-CH'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US>Regards<o:p></o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>Juergen<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>=

--_000_A7B59F6D52627C44813C136D437B0832068BC78CB34ATKSSREX01ou_--
