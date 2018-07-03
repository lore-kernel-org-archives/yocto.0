Return-Path: <stephen.k.jolley@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FE52E01506; Tue,  3 Jul 2018 08:36:05 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E89F7E00D82
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 08:36:03 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Jul 2018 08:36:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,304,1526367600"; 
	d="scan'208,217";a="242312773"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
	by fmsmga005.fm.intel.com with ESMTP; 03 Jul 2018 08:35:56 -0700
Received: from fmsmsx122.amr.corp.intel.com (10.18.125.37) by
	FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 3 Jul 2018 08:35:56 -0700
Received: from fmsmsx111.amr.corp.intel.com ([169.254.12.188]) by
	fmsmsx122.amr.corp.intel.com ([169.254.5.181]) with mapi id
	14.03.0319.002; Tue, 3 Jul 2018 08:35:56 -0700
From: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@intel.com>,
	"'richard.purdie@linuxfoundation.org'" <richard.purdie@linuxfoundation.org>
Thread-Topic: QA cycle report for 2.6 M1 RC1
Thread-Index: AdQSbfLP3hUPOOW/Q0+p+gU4hyut4QAdE83w
Date: Tue, 3 Jul 2018 15:35:55 +0000
Message-ID: <9ADD3FDE8B189B4AA2F8A3C711F8155EC734F49A@fmsmsx111.amr.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335E6E78E@PGSMSX109.gar.corp.intel.com>
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04335E6E78E@PGSMSX109.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTcwZjFmNDgtZmQ2Yy00MzNmLTk0M2EtYzY2N2UyNDQ1MGNjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiY216dEdDMjRGU3FGTVBBcGNqMlwvendnc25razYrRFAyaWhNMzhtNmdyNm9VZVwvUFwvVUF3THZodHNXMVZ3K0dHZSJ9
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.6 M1 RC1
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
X-List-Received-Date: Tue, 03 Jul 2018 15:36:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC734F49Afmsmsx111amrcor_"

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC734F49Afmsmsx111amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

You will need to request access via AGS See: https://soco.intel.com/docs/DO=
C-2009343 on how to do so.
You should go to: https://ags.intel.com/ and follow the steps in the above =
document.  The item to search for is DevTools - JIRA - Yocto Project - User

Thanks,

Stephen

From: Yeoh, Ee Peng
Sent: Tuesday, July 03, 2018 12:10 AM
To: 'yocto@yoctoproject.org' <yocto@yoctoproject.org>; Jolley, Stephen K <s=
tephen.k.jolley@intel.com>; Eggleton, Paul <paul.eggleton@intel.com>; 'rich=
ard.purdie@linuxfoundation.org' <richard.purdie@linuxfoundation.org>
Cc: Sangal, Apoorv <apoorv.sangal@intel.com>; Kirkiris, Nectar <nectar.kirk=
iris@intel.com>
Subject: QA cycle report for 2.6 M1 RC1


Hello All,



This is the full report for 2.6 M1 RC1:

https://wiki.yoctoproject.org/wiki/WW27_-_2018-07-02_-_Full_Test_Cycle_2.6_=
M1_rc1



=3D=3D=3D=3D=3D=3D=3D Summary =3D=3D=3D=3D=3D=3D=3D=3D



99% of planned tests were executed except automated SDK test for buildgalcu=
lator (testrun# 9747-9753) and automated SDK image tests for core-image-sat=
o-sdk-qemumips (testrun# 9713-9714), where those tests were excluded from t=
he automated test suites and it was still under investigation why they were=
 excluded.



There were zero high milestone defect.  Team had found 9 new defects where =
Edgerouter [1] & Beaglebone Black [3] defects were resolved.  Team found th=
at pTest for busybox and valgrind had testcases passed in previous 2.5 M4 r=
c1 but failed during this release [8] [9].  Team had also found that existi=
ng automated xorg test was passed successfully while it was not able to cat=
ch matchbox window manager issue on qemumips [4], thus team had added manua=
l graphic tests as temporary solution.



=3D=3D=3D=3D=3D=3D=3D QA-Hints=3D=3D=3D=3D=3D=3D=3D=3D



Two medium+ defects where 1 was resolved and 1 under design.



=3D=3D=3D=3D=3D=3D=3D Bugs =3D=3D=3D=3D=3D=3D=3D=3D



New Bugs

[1] Bug 12790 - [2.6 M1] Edgerouter can not boot

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12790



[2] Bug 12804 - [QA 2.6 M1 rc1 ][Build Appliance]: proxy issue in VM ware

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12804



[3] Bug 12795 - [2.6 M1] gcc/g++ doesn't work on beaglebone black

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12795



[4] Bug 12806 - [2.6 M1 rc1 ][BSP][Test Run 9708]: Qemuppc image was not bo=
oting with graphic even though runtime/xorg.py test passed

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12806



[5] Bug 12832 - [ 2.6 M1 rc1 ][BSP][Test case 267]: audio and video does no=
t play in media player[Mturbot x86-64 and NUC7]

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12832



[6] Bug 12802 - [Yocto-2.6_M1.RC1] Crosstap doesn't work on 2.6 M1 RC1

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12802



[7] Bug 12813 - [QA 2.6 M1 rc1 ][Toaster]:Build stopped without error, to t=
erminate by ctrl+c

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12813



[8] Bug 12836 - [2.6 M1 RC1] busybox ptest failed

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12836



[9] Bug 12837 - [2.6 M1 RC1] valgrind ptest failed

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12837



Regards

Ee Peng


--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC734F49Afmsmsx111amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Helvetica;
	panose-1:2 11 6 4 2 2 2 2 2 4;}
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
<p class=3D"MsoNormal"><a name=3D"_MailEndCompose"><span style=3D"color:#1F=
497D">You will need to request access via AGS See:
</span></a><a href=3D"https://soco.intel.com/docs/DOC-2009343">https://soco=
.intel.com/docs/DOC-2009343</a><span style=3D"color:#1F497D"> on how to do =
so.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">You should go to: </sp=
an><a href=3D"https://ags.intel.com/">https://ags.intel.com/</a><span style=
=3D"color:#1F497D"> and follow the steps in the above document. &nbsp;The i=
tem to search for is
</span><b><span style=3D"font-size:10.5pt;font-family:&quot;Helvetica&quot;=
,sans-serif;color:#717171;background:#F9FAFC">DevTools - JIRA - Yocto Proje=
ct - User</span></b><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Stephen<o:p></o:p></sp=
an></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><a name=3D"_____replyseparator"></a><b>From:</b> Yeo=
h, Ee Peng
<br>
<b>Sent:</b> Tuesday, July 03, 2018 12:10 AM<br>
<b>To:</b> 'yocto@yoctoproject.org' &lt;yocto@yoctoproject.org&gt;; Jolley,=
 Stephen K &lt;stephen.k.jolley@intel.com&gt;; Eggleton, Paul &lt;paul.eggl=
eton@intel.com&gt;; 'richard.purdie@linuxfoundation.org' &lt;richard.purdie=
@linuxfoundation.org&gt;<br>
<b>Cc:</b> Sangal, Apoorv &lt;apoorv.sangal@intel.com&gt;; Kirkiris, Nectar=
 &lt;nectar.kirkiris@intel.com&gt;<br>
<b>Subject:</b> QA cycle report for 2.6 M1 RC1<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Hello All,<o:p><=
/o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">This is the full=
 report for 2.6 M1 RC1:&nbsp;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://wiki.yoctoproject.org/wiki/WW27_-_2018-07-02_-_Full_Test_Cycle_2.6_M1_rc=
1">https://wiki.yoctoproject.org/wiki/WW27_-_2018-07-02_-_Full_Test_Cycle_2=
.6_M1_rc1</a><o:p></o:p></span></p>
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
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">99% of planned t=
ests were executed except automated SDK test for buildgalculator (testrun# =
9747-9753) and automated SDK image tests for core-image-sato-sdk-qemumips
 (testrun# 9713-9714), where those tests were excluded from the automated t=
est suites and it was still under investigation why they were excluded.&nbs=
p;
<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">There were zero =
high milestone defect.&nbsp; Team had found 9 new defects where Edgerouter =
[1] &amp; Beaglebone Black [3] defects were resolved.&nbsp;
 Team found that pTest for busybox and valgrind had testcases passed in pre=
vious 2.5 M4 rc1 but failed during this release [8] [9].&nbsp; Team had als=
o found that existing automated xorg test was passed successfully while it =
was not able to catch matchbox window
 manager issue on qemumips [4], thus team had added manual graphic tests as=
 temporary solution.&nbsp;&nbsp;
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
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Two medium&#43; =
defects where 1 was resolved and 1 under design.&nbsp;
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
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[1] Bug 12790 - =
[2.6 M1] Edgerouter can not boot<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12790">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12790</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[2] Bug 12804 - =
[QA 2.6 M1 rc1 ][Build Appliance]: proxy issue in VM ware<o:p></o:p></span>=
</p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12804">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12804</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[3] Bug 12795 - =
[2.6 M1] gcc/g&#43;&#43; doesn't work on beaglebone black<o:p></o:p></span>=
</p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12795">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12795</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[4] Bug 12806 - =
[2.6 M1 rc1 ][BSP][Test Run 9708]: Qemuppc image was not booting with graph=
ic even though runtime/xorg.py test passed<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12806">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12806</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[5] Bug 12832 - =
[ 2.6 M1 rc1 ][BSP][Test case 267]: audio and video does not play in media =
player[Mturbot x86-64 and NUC7]<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12832">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12832</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[6] Bug 12802 - =
[Yocto-2.6_M1.RC1] Crosstap doesn't work on 2.6 M1 RC1<o:p></o:p></span></p=
>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12802">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12802</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[7] Bug 12813 - =
[QA 2.6 M1 rc1 ][Toaster]:Build stopped without error, to terminate by ctrl=
&#43;c<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12813">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12813</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[8] Bug 12836 - =
[2.6 M1 RC1] busybox ptest failed<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12836">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12836</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">[9] Bug 12837 - =
[2.6 M1 RC1] valgrind ptest failed<o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black"><a href=3D"https=
://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12837">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12837</a><o:p></o:p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">&nbsp;<o:p></o:p=
></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Regards<o:p></o:=
p></span></p>
<p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-size:11.0=
pt;font-family:&quot;Calibri&quot;,sans-serif;color:black">Ee Peng
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_9ADD3FDE8B189B4AA2F8A3C711F8155EC734F49Afmsmsx111amrcor_--
