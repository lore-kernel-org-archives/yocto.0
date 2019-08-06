Return-Path: <david.reyna@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C95B3E00CB9; Tue,  6 Aug 2019 10:43:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14C01E00C25
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 10:43:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x76Hgf2D018769
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Aug 2019 10:43:02 -0700
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.205]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000;
	Tue, 6 Aug 2019 10:42:39 -0700
From: "Reyna, David" <david.reyna@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting, 8/6/2019
Thread-Index: AdVMdX+1j0+VohozTaKpxEaHDehXFw==
Date: Tue, 6 Aug 2019 17:42:39 +0000
Message-ID: <5E53D14CE4667A45B9A06760DE5D13D0FAD7B7E8@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.117.202]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting, 8/6/2019
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
X-List-Received-Date: Tue, 06 Aug 2019 17:43:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5E53D14CE4667A45B9A06760DE5D13D0FAD7B7E8ALAMBDcorpadwrs_"

--_000_5E53D14CE4667A45B9A06760DE5D13D0FAD7B7E8ALAMBDcorpadwrs_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Minutes: Yocto Project Technical Team Meeting
When: Tuesday, August 09, 2019 8:00 AM-9:00 AM 1.
Attending: Richard, Armin, Michael, David, TrevorW, Tim, Vineela, Stephen, =
Randy, Joshua, Alex Kanavin, Jan-Simon, TrevorG, Ross, Alejandro, Tracy

* Stephen: General notes
  - M2 in final review
  - M3 making good progress
  - 2.6.3 QA, release next day
  - The 2.8 will become 3.0



* Richard: General notes

  - Hash Equivalency/runqueue merged this morning. The UI progress output a=
 little different, may be confusing. Joshua: is this on autobuilder? Richar=
d: not yet.

  - Spent a lot of time on runqueue. Trying to keep up with pseudo changes.

  - There is still a locale issue, not fixed. Probably easy once we figure =
it out.



* David: will Hash Equivalency/runqueue affect the documentation? Richard: =
no, it should be all be in the background. However, the UI progress output =
was setscene with a normal progress progression and then the real tasks wou=
ld start. Now, as hash equivalencies are discovered, "setscene done" messag=
es appear, which can happen several times over the processing. The progress=
 bars are thus not as linear as before, but Richard want to leave it verbos=
e so that any issues can be debugged before tuning the messages down.


* Armin: back from vacation, back on stable releases. Richard handled the s=
table releases in the meantime.

* Richard: 3 defects from QA from M2. Marked as blocking for M3.

* Question: plan for Rust? Randy: there has been interest over time, he wil=
l make and share a plan (probably in August).

* Xilinx: how to manage "meta-jupyter"? Richard: best as separate repo/laye=
r rather than trying to merge it into core. Notes that some people complain=
 about too many layers, but this is more a tools issue, and separate layers=
 in general allow more focused maintainer-ship and growth.

* Xilinx: What about npm, devtool support? Richard: no good solution yet, n=
o tests in autobuilder. Current bitbake model is one recipe per package, bu=
t npm is organized to have 1000+ 'packages' which is impractical for each t=
o have a recipe. There was some devtool support, but may not be current.

Randy: automation can help with npm package management, but does not want n=
pm manager on target.

Richard: difficult to give up control to outside manager like npm. Alejandr=
o: npm starts to download its own toolchain, and we lose reproducibility. N=
pm for YP did have changes to reduce that outside behavior, not sure curren=
t state,  concerned that Rust will have similar problem (Tim: as does Go).

Tim: Node is in core, but not tests. Issus around npm dependencies.

Alejandro: Python update cadence per release, but node changes much faster.=
 Richard: use the snapshot model, where we capture logical and stable packa=
ge sets, especially for Python and here npm. Joshua: image containers for n=
ode.js? Richard: that just moves the goal post, the snapshot captures "our =
part".

FYI: See "node.js" presentation with devtool from DevDay 2017: https://wiki=
.yoctoproject.org/wiki/File:Ypdd-2017.02-ELC-Portland.pdf

* Question: Twitch stream? Richard: conflicts with this meeting. Presentati=
ons are captured to YouTube, where they are getting additional views. These=
 presentations focus more on new developers.

* Vineela: will release number change (3.0) affect the Poky release number?=
 Richard: no, and he is not sure what uses that number anymore.

* Richard: thanks to David for supporting the meeting minutes in Stephen's =
absence.

- David


--_000_5E53D14CE4667A45B9A06760DE5D13D0FAD7B7E8ALAMBDcorpadwrs_
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
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">Minutes</span></b><=
span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quot;sans-s=
erif&quot;;color:windowtext">: Yocto Project Technical Team Meeting<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">When:</span></b><sp=
an style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quot;sans-ser=
if&quot;;color:windowtext"> Tuesday, August 09, 2019 8:00 AM-9:00 AM 1.<br>
<b>Attending: </b>Richard, Armin, Michael, David, TrevorW, Tim, Vineela, St=
ephen, Randy, Joshua, Alex Kanavin, Jan-Simon, TrevorG, Ross, Alejandro, Tr=
acy<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Stephen: General not=
es<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">&nbsp; - M2 in final r=
eview<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">&nbsp; - M3 making goo=
d progress<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">&nbsp; - 2.6.3 QA, rel=
ease next day<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">&nbsp; - The 2.8 will =
become 3.0<o:p></o:p></span></p>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>* Richard<span style=3D"color:#1F497D">:</span> General notes<o:p></o:p></=
span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>&nbsp; - Hash Equivalency/runqueue merged this morning. The UI progress ou=
tput a little different, may be confusing. Joshua: is this on autobuilder? =
Richard: not yet.<o:p></o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>&nbsp; - </span><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;">Spent a lot of time on runqueue. Trying to keep up with pseudo=
 changes. <o:p></o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>&nbsp;&nbsp;- There is still a locale issue, not fixed. Probably easy once=
 we figure it out.<o:p></o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>* David: will Hash Equivalency/runqueue affect the documentation? Richard:=
 no, it should be all be in the background. However, the UI progress output=
 was setscene with a normal progress progression and then the real tasks wo=
uld start. Now, as hash equivalencies are discovered, &#8220;setscene done&=
#8221; messages appear, which can happen several times over the processing.=
 The progress bars are thus not as linear as before, but Richard want to le=
ave it verbose so that any issues can be debugged before tuning the message=
s down.<o:p></o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Armin: back from vac=
ation, back on stable releases. Richard handled the stable releases in the =
meantime.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Richard: 3 defects f=
rom QA from M2. Marked as blocking for M3.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Question: plan for R=
ust? Randy: there has been interest over time, he will make and share a pla=
n (probably in August).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Xilinx: how to manag=
e &#8220;meta-jupyter&#8221;? Richard: best as separate repo/layer rather t=
han trying to merge it into core. Notes that some people complain about
 too many layers, but this is more a tools issue, and separate layers in ge=
neral allow more focused maintainer-ship and growth.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Xilinx: What about n=
pm, devtool support? Richard: no good solution yet, no tests in autobuilder=
. Current bitbake model is one recipe per package, but npm
 is organized to have 1000&#43; &#8216;packages&#8217; which is impractical=
 for each to have a recipe. There was some devtool support, but may not be =
current.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Randy: automation can =
help with npm package management, but does not want npm manager on target.<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Richard: difficult to =
give up control to outside manager like npm. Alejandro: npm starts to downl=
oad its own toolchain, and we lose reproducibility. Npm
 for YP did have changes to reduce that outside behavior, not sure current =
state,&nbsp; concerned that Rust will have similar problem (Tim: as does Go=
).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Tim: Node is in core, =
but not tests. Issus around npm dependencies.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">Alejandro: Python upda=
te cadence per release, but node changes much faster. Richard: use the snap=
shot model, where we capture logical and stable package
 sets, especially for Python and here npm. Joshua: image containers for nod=
e.js? Richard: that just moves the goal post, the snapshot captures &#8220;=
our part&#8221;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">FYI: See &#8220;node.j=
s&#8221; presentation with devtool from DevDay 2017: https://wiki.yoctoproj=
ect.org/wiki/File:Ypdd-2017.02-ELC-Portland.pdf<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Question: Twitch str=
eam? Richard: conflicts with this meeting. Presentations are captured to Yo=
uTube, where they are getting additional views. These presentations
 focus more on new developers.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Vineela: will releas=
e number change (3.0) affect the Poky release number? Richard: no, and he i=
s not sure what uses that number anymore.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Richard: thanks to D=
avid for supporting the meeting minutes in Stephen&#8217;s absence.<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">- David<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
</div>
</body>
</html>

--_000_5E53D14CE4667A45B9A06760DE5D13D0FAD7B7E8ALAMBDcorpadwrs_--
