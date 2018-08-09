Return-Path: <ee.peng.yeoh@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6356FE009AC; Wed,  8 Aug 2018 22:58:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91A6BE00875
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 22:58:33 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Aug 2018 22:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,213,1531810800"; 
	d="scan'208,217";a="253263116"
Received: from kmsmsx151.gar.corp.intel.com ([172.21.73.86])
	by fmsmga006.fm.intel.com with ESMTP; 08 Aug 2018 22:58:30 -0700
Received: from pgsmsx109.gar.corp.intel.com ([169.254.14.29]) by
	KMSMSX151.gar.corp.intel.com ([169.254.10.218]) with mapi id
	14.03.0319.002; Thu, 9 Aug 2018 13:57:55 +0800
From: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>, "Jolley, Stephen K"
	<stephen.k.jolley@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"'richard.purdie@linuxfoundation.org'" <richard.purdie@linuxfoundation.org>
Thread-Topic: QA cycle report for 2.6 M2 RC1
Thread-Index: AdQvpceD4Iqbq6f6QBi9URz0OzrpWA==
Date: Thu, 9 Aug 2018 05:57:54 +0000
Message-ID: <9DDD2658D1FE414E99172D2DB1E4D04335E9749B@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTcwZjFmNDgtZmQ2Yy00MzNmLTk0M2EtYzY2N2UyNDQ1MGNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY216dEdDMjRGU3FGTVBBcGNqMlwvendnc25razYrRFAyaWhNMzhtNmdyNm9VZVwvUFwvVUF3THZodHNXMVZ3K0dHZSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: QA cycle report for 2.6 M2 RC1
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
X-List-Received-Date: Thu, 09 Aug 2018 05:58:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9DDD2658D1FE414E99172D2DB1E4D04335E9749BPGSMSX109garcor_"

--_000_9DDD2658D1FE414E99172D2DB1E4D04335E9749BPGSMSX109garcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,



This is the full report for 2.6 M2 RC1:

https://wiki.yoctoproject.org/wiki/WW32_-_2018-08-07_-_Full_Test_Cycle_2.6_=
M2_rc1



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



All planned tests were executed except a few SDK automated tests were skipp=
ed in Autobuilder (testrun# 9830-9836, 9796-9797).  Team found that these S=
DK automated tests were running successfully in core-image-sato-sdk image b=
ut not the existing core-image-sato used by Autobuilder, investigating why =
these automated tests were skipped in core-image-sato and no message availa=
ble in testsdk logfile to explain why it was skipped.  Team also found that=
 eSDK devtool automated testcase(s) were skipped unexpectedly due to the un=
known error on testcase dependency logic, temporary removing the dependency=
 logic and successfully executed the devtool tests.



There were zero high milestone defect.  Team had found 3 new defects,  wher=
e buildhistorydifftest and wic test_fix_size failure [9] [10] and ptest for=
 libxml failed in current release but passed in previous 2.6 M1 rc1.



=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



No high milestone defect.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



New Bugs

[1] Bug 12866 - [2.6 M2 rc1] wic test_fix_size failed

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12866



[2] Bug 12864 - [2.6 M2 rc1] buildhistorydifftest failed

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12864



[3] Bug 12869 - [2.6 M2 rc1] libxml test cases failed

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12869



Regards

Yeoh Ee Peng




--_000_9DDD2658D1FE414E99172D2DB1E4D04335E9749BPGSMSX109garcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal;}
span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Hello All,</span=
><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif=
;color:black"><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">This is the full=
 report for 2.6 M2 RC1:&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://wiki.yoctoproject.org/wiki/WW32_-_2018-08-07_-_Full_Test_Cycle_2.6_M2_rc=
1">https://wiki.yoctoproject.org/wiki/WW32_-_2018-08-07_-_Full_Test_Cycle_2=
.6_M2_rc1</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">=3D=3D=3D=3D=3D=
=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">All planned test=
s were executed except a few SDK automated tests were skipped in Autobuilde=
r (testrun# 9830-9836, 9796-9797).&nbsp; Team found
 that these SDK automated tests were running successfully in core-image-sat=
o-sdk image but not the existing core-image-sato used by Autobuilder, inves=
tigating why these automated tests were skipped in core-image-sato and no m=
essage available in testsdk logfile
 to explain why it was skipped.&nbsp; Team also found that eSDK devtool aut=
omated testcase(s) were skipped unexpectedly due to the unknown error on te=
stcase dependency logic, temporary removing the dependency logic and succes=
sfully executed the devtool tests.&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">There were zero =
high milestone defect.&nbsp; Team had found 3 new defects,&nbsp; where buil=
dhistorydifftest and wic test_fix_size failure [9] [10]
 and ptest for libxml failed in current release but passed in previous 2.6 =
M1 rc1.&nbsp;&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">=3D=3D=3D=3D=3D=
=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">No high mileston=
e defect.&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">=3D=3D=3D=3D=3D=
=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">New Bugs<o:p></o=
:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[1] Bug 12866 - =
[2.6 M2 rc1] wic test_fix_size failed
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12866">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12866</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[2] Bug 12864 - =
[2.6 M2 rc1] buildhistorydifftest failed<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12864">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12864</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[3] Bug 12869 - =
[2.6 M2 rc1] libxml test cases failed<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12869">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12869</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regards<o:p></o:=
p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Yeoh Ee Peng
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
</div>
</body>
</html>

--_000_9DDD2658D1FE414E99172D2DB1E4D04335E9749BPGSMSX109garcor_--
