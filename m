Return-Path: <david.reyna@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A71A6E00D88; Sun,  1 Sep 2019 02:39:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 465D7E008D3
	for <yocto@yoctoproject.org>; Sun,  1 Sep 2019 02:39:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x819dCMx027423
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 1 Sep 2019 02:39:13 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.36]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0468.000;
	Sun, 1 Sep 2019 02:39:11 -0700
From: "Reyna, David" <david.reyna@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting, 8/27/2019
Thread-Index: AdVgqLt5r0N+0aG4QQ+EFDrE+27wiw==
Date: Sun, 1 Sep 2019 09:39:11 +0000
Message-ID: <5E53D14CE4667A45B9A06760DE5D13D0FADD37DE@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.116.220]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting, 8/27/2019
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
X-List-Received-Date: Sun, 01 Sep 2019 09:39:17 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5E53D14CE4667A45B9A06760DE5D13D0FADD37DEALAMBDcorpadwrs_"

--_000_5E53D14CE4667A45B9A06760DE5D13D0FADD37DEALAMBDcorpadwrs_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Minutes: Yocto Project Technical Team Meeting
When: Tuesday, August 27, 2019 8:00 AM-9:00 AM 1.
Attending: Richard, Armin, Michael, David, TrevorW, Tim, Vineela,  Randy, J=
oshua, Manju, Alex Kanavin, Scott, TrevorG, Bruce


* Richard: General notes

  - Just sent weekly update "[OE-core] Yocto Project Status WW35'19"

  - M3 is over, we are now in feature freeze for M4

  - Patch merge in progress, backlog for M3

  - Systemd (as default) versus SysVinit still in progress

  - Removal of LSB, test builder not set up yet

  - Many patches for hash equivalency

  - Joshua has many patches for reproducible builds (tested without sstate)=
, problems with existing sstate. Richard: always build from scratch.



* Manju: status of patch set for devtool? Richard is reviewing them.



* AR: Triage Team: provide list of respective bugs to Xilinx for review



* Manju: Is WIC the only way to create images to SD Card? Richard: WIC is p=
referred - any errors in WIC should be filed as defects. Manju: ramfs prepa=
ration has race condition. Scott: meta-raspberrypi did use "mkimg" but now =
has WIC support.



* Manju: Status of Nathan's patches? Richard needs time to review them.



* Scott: The 2.8 list versus Python2 status? Notes that python2 goes unsupp=
orted this December. Richard: people currently treating this as a low prior=
ity (but will probably heighten when we get closer). Bruce has patch set fo=
r the perf/kernel, and this will be a big step forward to removing Python2.=
 Richard: someone should do a scan on the remaining Python2 usage. Question=
: libftd? Richard: no, low priority. High priority are target tools over ho=
st/build tools.



* Bruce: will send 5.2 kernel and libc headers. Will check default BSPs.



* Richard: will need to merge each patch set in isolation given the number =
of merge failures he has been encountering.



* Manju: Is there a way to choose system versus SysVinit? Richard: yes ther=
e is an init manager variable that you can set. We are not dropping SysVini=
t but switch to system as default. Poky-init, poky-alternate. Richard: 4 di=
fferent variants - tiny/busybox/..., system size constraints.



Notes from ELC BOF:



* Joshua: a lot of people want an LTS. Armin: specifically they like CVEs a=
pplied/backported to stable branches. Richard: people want no changes but a=
ll the features. Joshua: LTS to help convince silicon vendors to stabilize =
on releases (e.g. kernel has LTS releases). Richard: kernel has 4 releases =
a year where YP has two, so cadence is good. We could do a major/minor rele=
ase designation but then which release gets which designation? Manju: mostl=
y looking for CVE patches for last 2-3 years. Khem's general answer was to =
"send patches", not just let other people do the work.



* David: Questions about low activity on the security mailing list. Richard=
: most CVE patches are managed via normal patches. Armin: the person was lo=
oking for a security team. Tim: is he volunteering? Richard: we do fix the =
important stuff. David will follow up on team question.



* Manju: has a sstate-cache paper, covering their 600 gbyte sstate-cache. R=
ichard: excellent paper for ELCE YP summit.



* Richard out next Tuesday. Stephen still out next week.


- David


--_000_5E53D14CE4667A45B9A06760DE5D13D0FADD37DEALAMBDcorpadwrs_
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
if&quot;;color:windowtext"> Tuesday, August 27, 2019 8:00 AM-9:00 AM 1.<br>
<b>Attending: </b>Richard, Armin, Michael, David, TrevorW, Tim, Vineela, &n=
bsp;Randy, Joshua, Manju, Alex Kanavin, Scott, TrevorG, Bruce<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Richard: General notes<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp; - Just sent weekly update &#8220;[OE-core] Yocto P=
roject Status WW35&#8217;19&#8221;<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp; - M3 is over, we are now in feature freeze for M4<=
o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp; - Patch merge in progress, backlog for M3 <o:p></o=
:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp;&nbsp;- Systemd (as default) versus </span><span st=
yle=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&qu=
ot;">SysVinit </span><span style=3D"font-size:11.0pt;font-family:&quot;Cali=
bri&quot;,&quot;sans-serif&quot;">still in progress<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"> &nbsp;- Removal of LSB, test builder not set up yet<o:p>=
</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp; - Many patches for hash equivalency <o:p></o:p></s=
pan></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp;&nbsp;- Joshua has many patches for reproducible bu=
ilds (tested without sstate), problems with existing sstate. Richard: alway=
s build from scratch.<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Manju: status of patch set for devtool? Richard is revi=
ewing them.<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* AR: Triage Team: provide list of respective bugs to Xil=
inx for review<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Manju: Is WIC the only way to create images to SD Card?=
 Richard: WIC is preferred - any errors in WIC should be filed as defects. =
Manju: ramfs preparation has race condition. Scott: meta-raspberrypi did us=
e &#8220;mkimg&#8221; but now has WIC support.<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Manju: Status of Nathan&#8217;s patches? Richard needs =
time to review them. <o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Scott: The 2.8 list versus Python2 status? Notes that p=
ython2 goes unsupported this December. Richard: people currently treating t=
his as a low priority (but will probably heighten when we get closer). Bruc=
e has patch set for the perf/kernel, and this will be a big step forward to=
 removing Python2. Richard: someone should do a scan on the remaining Pytho=
n2 usage. Question: libftd? Richard: no, low priority. High priority are ta=
rget tools over host/build tools.<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Bruce: will send 5.2 kernel and libc headers. Will chec=
k default BSPs.<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Richard: will need to merge each patch set in isolation=
 given the number of merge failures he has been encountering.<o:p></o:p></s=
pan></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Manju: Is there a way to choose system versus </span><s=
pan style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-se=
rif&quot;">SysVinit</span><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;">? Richard: yes there is an init mana=
ger variable that you can set. We are not dropping </span><span style=3D"fo=
nt-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;">SysV=
init </span><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;=
,&quot;sans-serif&quot;">but switch to system as default. Poky-init, poky-a=
lternate. Richard: 4 different variants &#8211; tiny/busybox/&#8230;, syste=
m size constraints.<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">Notes from ELC BOF:<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Joshua: a lot of people want an LTS. Armin: specificall=
y they like CVEs applied/backported to stable branches. Richard: people wan=
t no changes but all the features. Joshua: LTS to help convince silicon ven=
dors to stabilize on releases (e.g. kernel has LTS releases). Richard: kern=
el has 4 releases a year where YP has two, so cadence is good. We could do =
a major/minor release designation but then which release gets which designa=
tion? Manju: mostly looking for CVE patches for last 2-3 years. Khem&#8217;=
s general answer was to &#8220;send patches&#8221;, not just let other peop=
le do the work.<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* David: Questions about low activity on the security mai=
ling list. Richard: most CVE patches are managed via normal patches. Armin:=
 the person was looking for a security team. Tim: is he volunteering? Richa=
rd: we do fix the important stuff. David will follow up on team question.<o=
:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Manju: has a sstate-cache paper, covering their 600 gby=
te sstate-cache. Richard: excellent paper for ELCE YP summit.<o:p></o:p></s=
pan></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">* Richard out next Tuesday. Stephen still out next week.<=
o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">- David<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
</div>
</body>
</html>

--_000_5E53D14CE4667A45B9A06760DE5D13D0FADD37DEALAMBDcorpadwrs_--
