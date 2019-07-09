Return-Path: <david.reyna@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2AC7E00C6A; Tue,  9 Jul 2019 09:41:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F9EE00B9C
	for <yocto@yoctoproject.org>; Tue,  9 Jul 2019 09:41:47 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x69GfG2v027066
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 9 Jul 2019 09:41:37 -0700
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.194]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0439.000;
	Tue, 9 Jul 2019 09:41:28 -0700
From: "Reyna, David" <david.reyna@windriver.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Engineering Sync, 7/09/2019
Thread-Index: AdU2dMfHhYgi1EnMQwGfBgNGP3GNyw==
Date: Tue, 9 Jul 2019 16:41:27 +0000
Message-ID: <5E53D14CE4667A45B9A06760DE5D13D0FAD02D21@ALA-MBD.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.118.190]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Engineering Sync, 7/09/2019
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
X-List-Received-Date: Tue, 09 Jul 2019 16:41:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5E53D14CE4667A45B9A06760DE5D13D0FAD02D21ALAMBDcorpadwrs_"

--_000_5E53D14CE4667A45B9A06760DE5D13D0FAD02D21ALAMBDcorpadwrs_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Minutes: Yocto Project Engineering Sync
When: Tuesday, July 09, 2019 8:00 AM-9:00 AM 1.
Attending: Richard, Armin, Michael, David, Trevor, Tim, Vineela, Bruce

* Richard: General notes
  - Status report was sent last night: https://lists.yoctoproject.org/piper=
mail/yocto/2019-July/045968.html

  - Richard got work done on the runqueue changes (to run setscene and norm=
al tasks in parallel)
  - Autobuilder still has NFS issues
  - 2.7.1 is now out of QA and waiting for TSC to approve for release, pend=
ing review of a ptest issue.
    * Vineela: Ok to publish test report? Richard: yes.

  - Nathan posted a patch of test suites for the toolchain components (binu=
tils/gcc/glibc). Good mailing list discussion.



* Richard: question to David about effect on Toaster for setscene events in=
 parallel and thus somewhat out of order (e.g. effect on progress bar). Dav=
id: probably no problem since Toaster just gathers the events (and progress=
 is progress), will review the update.



* Michael: updated firewall, installed Debian Time (sp?).



* Tim: email transition? Michael: need to update list and resubmit, will ge=
t update on timeframe.



* Armin: posted security patch for Patchworks - who will receive it and app=
ly it? Michael: ok with Django change. Michael went ahead and tested the pa=
tch during the call, and got support to post the update to the repo.



* Richard: mentioned that Sandy from WR is working on getting up to speed o=
n PatchTest, but realized that she may not be also covering PatchWorks. We =
need to review how PatchWorks has diverged from the community.



* Tim: concerned about patches from Martin that dropping rdepends for Perl =
in core might affect native Perl, and concerned about potential broader sco=
pe of the issues/changes across Perl. Richard noted that (a) native Perl no=
t split like target Perl is, (b) there is an open bug about the whole issue=
 plus Ross is also concerned, and that (c) the big problem is that to fix i=
t we probable need to change "PN-native" to "native-PN". Tim posted this li=
nk that may show unexpected target rdepends contamination on native Perl:



  https://git.openembedded.org/meta-openembedded-contrib/commit/?h=3Djansa/=
warrior&id=3Dd98e62e64219b365063fdb299d35f2af999d8f6e

* Richard: had sync meeting last week while North America was on vacation. =
Short meeting, no minutes.

* Tim: Khem travelling and patches are backing up. Richard: Khem should be =
back next week and will address queue. Discussion whether Tim as maintainer=
 of Perl should go ahead and push patches himself to help relieve queue.

- David


--_000_5E53D14CE4667A45B9A06760DE5D13D0FAD02D21ALAMBDcorpadwrs_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
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
erif&quot;;color:windowtext">: Yocto Project Engineering Sync<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:windowtext">When:</span></b><sp=
an style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quot;sans-ser=
if&quot;;color:windowtext"> Tuesday, July 09, 2019 8:00 AM-9:00 AM 1.<br>
<b>Attending: </b>Richard, Armin, Michael, David, Trevor, Tim, Vineela, Bru=
ce<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Richard: General not=
es<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">&nbsp; - Status report=
 was sent last night:
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:windowtext">https://lists.yoctoproject.org/piperma=
il/yocto/2019-July/045968.html<o:p></o:p></span></p>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>&nbsp; - Richard got work done on the runqueue changes (to run setscene an=
d normal tasks in parallel)<o:p></o:p></span></pre>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">&nbsp; -
</span><span style=3D"font-size:10.0pt;font-family:&quot;Calibri&quot;,&quo=
t;sans-serif&quot;;color:windowtext">Autobuilder still has NFS issues<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">&nbsp; - 2.7.1 is now =
out of QA and waiting for TSC to approve for release, pending review of a p=
test issue.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">&nbsp;&nbsp;&nbsp;&nbs=
p;* Vineela: Ok to publish test report? Richard: yes.<o:p></o:p></span></p>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>&nbsp; - Nathan posted a patch of test suites for the toolchain components=
 (binutils/gcc/glibc). Good mailing list discussion.<o:p></o:p></span></pre=
>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>* Richard: question to David about effect on Toaster for setscene events i=
n parallel and thus somewhat out of order (e.g. effect on progress bar). Da=
vid: probably no problem since Toaster just gathers the events (and progres=
s is progress), will review the update.<o:p></o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>* Michael: updated firewall, installed Debian Time (sp?).<o:p></o:p></span=
></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>* Tim: email transition? Michael: need to update list and resubmit, will g=
et update on timeframe.<o:p></o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>* Armin: posted security patch for Patchworks - who will receive it and ap=
ply it? Michael: ok with Django change. Michael went ahead and tested the p=
atch during the call, and got support to post the update to the repo.<o:p><=
/o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>* Richard: mentioned that Sandy from WR is working on getting up to speed =
on PatchTest, but realized that she may not be also covering PatchWorks. We=
 need to review how PatchWorks has diverged from the community.<o:p></o:p><=
/span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>* Tim: concerned about patches from Martin that dropping rdepends for Perl=
 in core might affect native Perl, and concerned about potential broader sc=
ope of the issues/changes across Perl. Richard noted that (a) native Perl n=
ot split like target Perl is, (b) there is an open bug about the whole issu=
e plus Ross is also concerned, and that (c) the big problem is that to fix =
it we probable need to change &#8220;PN-native&#8221; to &#8220;native-PN&#=
8221;. Tim posted this link that may show unexpected target rdepends contam=
ination on native Perl:<o:p></o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;"=
>&nbsp; https://git.openembedded.org/meta-openembedded-contrib/commit/?h=3D=
jansa/warrior&amp;id=3Dd98e62e64219b365063fdb299d35f2af999d8f6e<o:p></o:p><=
/span></pre>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Richard: had sync me=
eting last week while North America was on vacation. Short meeting, no minu=
tes.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">* Tim: Khem travelling=
 and patches are backing up. Richard: Khem should be back next week and wil=
l address queue. Discussion whether Tim as maintainer of
 Perl should go ahead and push patches himself to help relieve queue.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext">- David<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:windowtext"><o:p>&nbsp;</o:p></spa=
n></p>
</div>
</body>
</html>

--_000_5E53D14CE4667A45B9A06760DE5D13D0FAD02D21ALAMBDcorpadwrs_--
