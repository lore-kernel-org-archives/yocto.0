Return-Path: <david.reyna@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64356E00C25; Tue, 17 Sep 2019 11:20:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43794E00BF7
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2019 11:20:36 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x8HIJwpF020969
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Sep 2019 11:20:09 -0700
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.87]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0468.000;
	Tue, 17 Sep 2019 11:19:48 -0700
From: "Reyna, David" <david.reyna@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting, 9/17/2019
Thread-Index: AdVthHPUzTzroMwNRPqj85qRhzG9rg==
Date: Tue, 17 Sep 2019 18:19:47 +0000
Message-ID: <5E53D14CE4667A45B9A06760DE5D13D0FADF1C0C@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.118.61]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting, 9/17/2019
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
X-List-Received-Date: Tue, 17 Sep 2019 18:20:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5E53D14CE4667A45B9A06760DE5D13D0FADF1C0CALAMBDcorpadwrs_"

--_000_5E53D14CE4667A45B9A06760DE5D13D0FADF1C0CALAMBDcorpadwrs_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Minutes: Yocto Project Technical Team Meeting
When: Tuesday, September 17, 2019 8:00 AM-9:00 AM 1.
Attending: Richard, Armin, Michael, David, Trevor,  TrevorG, Joshua, Scott,=
 Jan-Simon, Tim, Vineela, Stephen, Khem, Ross, Tom Hochstein


* Stephen/Richard: General notes

  - Project status sent (http://lists.openembedded.org/pipermail/openembedd=
ed-core/2019-September/287038.html)

  - Not built M3 yet, three issues remain

  - Strace/ptest issues due to recent kernels (Alex has patch)

  - Systemd patch merged

  - QEMU MIPS appears to be regenerating hardware database everywhere (30-4=
0 seconds on QEMU MIPS), leading to timeouts. Scott will take a look. Looks=
 to be faulty code.



* Joshua: Hash Equivalency server update. Richard: will schedule on Autobui=
lder



* Richard: who knows how docs get published to the website? Answer: Michael=
, Tracy, and Vineela



* David: who has experience with cve-checker? Answer: check with commit log=
 (e.g. Pierre Le Magourou)



* Richard: Hash Equivalency users? Should be easy to enable. None on this c=
all. "local.conf" settings send to IRC:

    BB_SIGNATURE_HANDLER =3D "OEEquivHash"

    BB_HASHSERVE =3D "auto"

* Armin: his toolchain group runs tests in different ways, would like to co=
nsolidate on new toolchain tests, can that be wrapped as a layer for easy c=
onsumption across releases? Richard: hard given all that it touches, but wi=
ll look.

* Tim: IBM open sourced MIPS. Perhaps new org (Weave Computing?) would cons=
ider YP membership?

* Scott: Pulse Audio update. Richard: no new features at point.

* Joshua: can provide help getting Hash Equivalency up on Autobuilder

* Richard: touched on scope of ptest execution (1M mark?)
    https://autobuilder.yocto.io/pub/non-release/20190916-9/testresults/tes=
tresult-report.txt

* Michael: mail list transition still under test

* Vineela: can help with doc publishing

- David


--_000_5E53D14CE4667A45B9A06760DE5D13D0FADF1C0CALAMBDcorpadwrs_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
tax=3D"http://schemas.microsoft.com/sharepoint/taxonomy/soap/" xmlns:tns=3D=
"http://schemas.microsoft.com/sharepoint/soap/recordsrepository/" xmlns:sps=
up=3D"http://microsoft.com/webservices/SharePointPortalServer/UserProfileSe=
rvice" xmlns:mml=3D"http://www.w3.org/1998/Math/MathML" xmlns:st=3D"&#1;" x=
mlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
p.emailquote, li.emailquote, div.emailquote
	{mso-style-name:emailquote;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:1.0pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle25
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle26
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle27
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle28
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle29
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle30
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
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
<body bgcolor=3D"white" lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Minutes</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D">: Yocto Project Technical Team Meeting<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">When:</span></b><span =
style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&=
quot;;color:#1F497D"> Tuesday, September 1</span><span style=3D"font-size:1=
0.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"=
>7</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">,
 2019 8:00 AM-9:00 AM 1.<br>
<b>Attending: </b>Richard, Armin, Michael, David, Trevor, &nbsp;</span><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quot;sans-seri=
f&quot;;color:#1F497D">TrevorG,
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1F497D">Joshua, Scott, Jan-Simon, Tim, Vineela, S=
tephen, Khem</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibr=
i&quot;,&quot;sans-serif&quot;;color:#1F497D">, Ross, Tom Hochstein</span><=
span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quot;sans-s=
erif&quot;;color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">* </span><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Stephen=
/Richard</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,&quot;sans-serif&quot;;color:#1F497D">: General notes<o:p></o:p></span>=
</pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - Project status sent (http://lists.=
openembedded.org/pipermail/openembedded-core/2019-September/287038.html)<o:=
p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - Not built M3 yet, </span><span sty=
le=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quo=
t;;color:#1F497D">three issues remain</span><span style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p=
></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - Strace/ptest issues due to recent =
kernels (Alex has patch)<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - Systemd patch merged<o:p></o:p></s=
pan></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - QEMU MIPS appears to be regenerati=
ng hardware database everywhere (30-40 seconds on QEMU MIPS), leading to ti=
meouts. Scott will take a look. Looks to be faulty code.<o:p></o:p></span><=
/pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"> <o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">* Joshua: </span><span style=3D"font-size:1=
1.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"=
>Hash Equivalency </span><span style=3D"font-size:11.0pt;font-family:&quot;=
Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">server update. Richard:=
 will schedule on Autobuilder<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">* Richard: who knows how docs get published=
 to the website? Answer: Michael, Tracy, and Vineela<o:p></o:p></span></pre=
>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">* David: who has experience with cve-checke=
r? Answer: check with commit log (e.g. Pierre Le Magourou) <o:p></o:p></spa=
n></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">* Richard: Hash Equivalency users? Should b=
e easy to enable. None on this call. &#8220;local.conf&#8221; settings send=
 to IRC:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp;&nbsp;&nbsp; BB_SIGNATURE_HANDLER =3D=
 &quot;OEEquivHash&quot;<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp;&nbsp; &nbsp;BB_HASHSERVE =3D &quot;a=
uto&quot;<o:p></o:p></span></pre>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">* Armin: his toolchain gr=
oup runs tests in different ways, would like to consolidate on new toolchai=
n tests, can that be wrapped as a layer for easy consumption
 across releases? Richard: hard given all that it touches, but will look.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">* Tim: IBM open sourced M=
IPS. Perhaps new org (Weave Computing?) would consider YP membership?<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">* Scott: Pulse Audio upda=
te. Richard: no new features at point.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">* Joshua: can provide hel=
p getting Hash Equivalency up on Autobuilder<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">* Richard: touched on sco=
pe of ptest execution (1M mark?)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">&nbsp; &nbsp;&nbsp;<a hre=
f=3D"https://autobuilder.yocto.io/pub/non-release/20190916-9/testresults/te=
stresult-report.txt">https://autobuilder.yocto.io/pub/non-release/20190916-=
9/testresults/testresult-report.txt</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">* Michael: mail list tran=
sition still under test<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">* Vineela: can help with =
doc publishing<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">- David<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
</div>
</body>
</html>

--_000_5E53D14CE4667A45B9A06760DE5D13D0FADF1C0CALAMBDcorpadwrs_--
