Return-Path: <david.reyna@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B219EE00C9B; Wed, 25 Sep 2019 20:30:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0E9FE009A5
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 20:29:59 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8Q3Tvdt014855
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 25 Sep 2019 20:29:57 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.153]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0468.000;
	Wed, 25 Sep 2019 20:29:57 -0700
From: "Reyna, David" <david.reyna@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting, 9/24/2019
Thread-Index: AdV0F8362uea7bjfQfu0tnrr7FC7vw==
Date: Thu, 26 Sep 2019 03:29:55 +0000
Message-ID: <5E53D14CE4667A45B9A06760DE5D13D0FAE021EE@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.118.220]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting, 9/24/2019
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
X-List-Received-Date: Thu, 26 Sep 2019 03:30:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5E53D14CE4667A45B9A06760DE5D13D0FAE021EEALAMBDcorpadwrs_"

--_000_5E53D14CE4667A45B9A06760DE5D13D0FAE021EEALAMBDcorpadwrs_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Minutes: Yocto Project Technical Team Meeting
When: Tuesday, September 24, 2019 8:00 AM-9:00 AM 1.
Attending: Richard, Armin, David, TrevorG, Joshua, Tim, Vineela, Stephen, D=
enys, Bruce, Randy


* Stephen/Richard: General notes

  - Project status sent (http://lists.openembedded.org/pipermail/openembedd=
ed-core/2019-September/287297.html)

  - Built M3, QA this week, looks good, three issues have fixes or workarou=
nds

  - Still Hash Equivalency server issues

  - Sstate growth issues

  - Would like to get back on schedule with M4 next week

  - Would like release around 25 October timeframe



* Vineela: LSB artifacts? Richard: concern about build re-names, does not w=
ant to break Warrior with renamed build scripts.



*Hash Equivalency server update. Richard: found many fixes. Fundamental iss=
ue around re-running sstate tasks if re-hashing. First answer was "yes", bu=
t now trying "no" because it behaves better.



Joshua: problem for example around relating to do_pack and do_fetch, skippe=
d by set_scene, but then missing do_populate_license information.



Richard: Build cannot go backwards. Currently main queue already past (skip=
ped) set_scene task. We could delay runqueue until all dependencies resolve=
d, or re-execute skipped tasks. This would of course mess with the task cou=
nt and build determinacy goes "out the window", as well as the risk of touc=
hing runqueue.



Richard: current plan is to "not rerun tasks", fix other issues, then come =
back to this problem.



* Richard: eSDK failures ow found regularly by build servers, but not on Ri=
chard's local host. Meta data is not matching expected values, so we are lo=
oking at the hashes. Devtool with unlocked task hash is misbehaving.



* Denys: M3 =3D strace and system timeout workarounds.

* Richard: Sumo issues hard to keep up to date with current staffing levels=
.

* Richard: call out for people to help with performance issues.

- David


--_000_5E53D14CE4667A45B9A06760DE5D13D0FAE021EEALAMBDcorpadwrs_
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle31
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
quot;;color:#1F497D"> Tuesday, September
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1F497D">24</span><span style=3D"font-size:10.0pt;=
font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">, 201=
9 8:00 AM-9:00 AM 1.<br>
<b>Attending: </b>Richard, Armin, David, TrevorG, Joshua, Tim, Vineela, Ste=
phen, </span>
<span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1F497D">Denys</span><span style=3D"font-size:10.0pt;font=
-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">,
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1F497D">Bruce</span><span style=3D"font-size:10.0=
pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">,
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1F497D">Randy</span><span style=3D"font-size:10.0=
pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">* Stephen/Richard: General notes<o:p></o:p>=
</span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - Project status sent (</span><span =
style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&=
quot;;color:#1F497D">http://lists.openembedded.org/pipermail/openembedded-c=
ore/2019-September/287297.html</span><span style=3D"font-size:11.0pt;font-f=
amily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">)<o:p></o:p=
></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - </span><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">=
B</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;;color:#1F497D">uilt M3, </span><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497=
D">QA this week, looks good, </span><span style=3D"font-size:11.0pt;font-fa=
mily:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">three issues=
 </span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&qu=
ot;sans-serif&quot;;color:#1F497D">have fixes or workarounds</span><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;;color:#1F497D"><o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - Still Hash Equivalency server issu=
es<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - </span><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">=
Sstate growth issues</span><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p></o:p></span></p=
re>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - </span><span style=3D"font-size:11=
.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">=
Would like to get back on schedule with M4 next week</span><span style=3D"f=
ont-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;colo=
r:#1F497D"><o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">&nbsp; - Would like release around 25 Octob=
er timeframe<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">* </span><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Vineela=
</span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:#1F497D">: </span><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">LSB a=
rtifacts? Richard: concern about build re-names, does not want to break War=
rior with renamed build scripts.<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">*</span><span style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hash Equ=
ivalency server update. Richard: </span><span style=3D"font-size:11.0pt;fon=
t-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">found ma=
ny fixes. Fundamental issue around re-running sstate tasks if re-hashing. F=
irst answer was &#8220;yes&#8221;, but now trying &#8220;no&#8221; because =
it behaves better.&nbsp; <o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">Joshua: problem for example around relating=
 to do_pack and do_fetch, skipped by set_scene, but then missing do_populat=
e_license information. <o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">Richard: Build cannot go backwards. Current=
ly main queue already past (skipped) set_scene task. We could delay runqueu=
e until all dependencies resolved, or re-execute skipped tasks. This would =
of course mess with the task count and build determinacy goes &#8220;out th=
e window&#8221;, as well as the risk of touching runqueue.<o:p></o:p></span=
></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">Richard: current plan is to &#8220;not reru=
n tasks&#8221;, fix other issues, then come back to this problem.<o:p></o:p=
></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">* Richard: eSDK failures ow found regularly=
 by build servers, but not on Richard&#8217;s local host. Meta data is not =
matching expected values, so we are looking at the hashes. Devtool with unl=
ocked task hash is misbehaving. <o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;;color:#1F497D">* Denys: M3 =3D strace and system timeout w=
orkarounds.<o:p></o:p></span></pre>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">* Richard: Sumo issues ha=
rd to keep up to date with current staffing levels.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">* Richard: call out for p=
eople to help with performance issues.<o:p></o:p></span></p>
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

--_000_5E53D14CE4667A45B9A06760DE5D13D0FAE021EEALAMBDcorpadwrs_--
