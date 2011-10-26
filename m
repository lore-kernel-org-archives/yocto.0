Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 000D5E006B4
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 08:13:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Oct 2011 08:13:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,409,1315206000"; d="scan'208,217";a="82607009"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 26 Oct 2011 08:13:24 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 26 Oct 2011 08:13:24 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.14]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.181]) with mapi id
	14.01.0323.003; Wed, 26 Oct 2011 08:13:23 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Thread-Topic: [yocto] Eclipse Plugin: ADT Version too old
Thread-Index: AQHMk17adrQ2KdJ0uUCj9KD+WXtam5WOvrKA///9LzA=
Date: Wed, 26 Oct 2011 15:13:22 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E9A084@ORSMSX101.amr.corp.intel.com>
References: <4EA529F5.4010706@communistcode.co.uk>
	<C10D3FB0CD45994C8A51FEC1227CE22F340768DA90@shsmsx502.ccr.corp.intel.com>
	<4EA52E9F.9070001@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E996E5@ORSMSX101.amr.corp.intel.com>
	<4EA587D6.1090406@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C16E9970A@ORSMSX101.amr.corp.intel.com>
	<4EA6CB6F.9060304@communistcode.co.uk>
	<CAPhnLPD5jXHHtjS=8Z-Yv-+2-qe5r5zhr6P7F1x3G3QFRTgLKA@mail.gmail.com>
	<4EA7C2AD.5000308@communistcode.co.uk>
In-Reply-To: <4EA7C2AD.5000308@communistcode.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse Plugin: ADT Version too old
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
X-List-Received-Date: Wed, 26 Oct 2011 15:13:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C16E9A084ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C16E9A084ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jack,



I push out a support in Eclipse for post 1.1 (1.1+snapshort*), you can upda=
te your eclipse plug-in against latest eclipse-poky master following the st=
eps in the ADT manual.  But it seems you still have some strange thing goin=
g on with your Edison build, it shouldn't contain "1.1+snapshot*" as versio=
n for both distro and adt.



Cheers,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jack Mitchell
Sent: Wednesday, October 26, 2011 1:20 AM
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Eclipse Plugin: ADT Version too old



On 25/10/2011 22:40, Flanagan, Elizabeth wrote:

On Tue, Oct 25, 2011 at 7:45 AM, Jack Mitchell <ml@communistcode.co.uk><mai=
lto:ml@communistcode.co.uk> wrote:


   Hi Jessica,

   I posted my environment settings earlier, which are located here:
   http://pastebin.com/4vnWPAD2

   Yes, I did use bitbake meta-ide-support to build my roo

   Hi Jessica,

   I just did a full fresh re-build from scratch and now my environment
   variables are as follows:

   http://ix.io/1Wf

   My current git status is:

   # On branch edision
   # Untracked files:
   #   (use "git add <file>..." to include in what will be committed)
   #
   #    ../bitbake/lib/bb/pysh/pyshtables.py
   #    ../conf/
   #    ./
   #    ../qemuarm-toolchain/
   nothing added to commit but untracked files present (use "git add" to tr=
ack)


Jack,

I just checked out a clean edison and ran bitbake meta-ide-support. My
env is showing export OECORE_DISTRO_VERSION=3D"1.1". My guess is that,
since you are not in master, then you have a TMPDIR from a master
build, or perhaps are using something left over from one, as the only
place DISTRO_VERSION =3D "1.1+snapshot-${DATE}" would be there. Prior to
c88b991 on edison, DISTRO_VERSION =3D "1.0+snapshot-${DATE}". So you're
picking that up from some prior master build. It's not an older
version of edison as if it was an older version of edison it would be
1.0+snapshot-${DATE

-b



Ok, this is some more debug info:

OE Build Configuration:
BB_VERSION        =3D "1.13.3"
TARGET_ARCH       =3D "arm"
TARGET_OS         =3D "linux-gnueabi"
MACHINE           =3D "qemuarm"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.1+snapshot-20111026"
TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
TARGET_FPU        =3D "soft"
meta
meta-yocto
meta-db-generic   =3D "edision:b4757833c3548b5ee3a1cce58e2f059b3f63cb09"

Could it be that because I have my own layer present it's skewing the git? =
Should the eclipse plug-in not match 1.1*?

Could you check your file of meta-yocto/conf/distro/poky.conf for the varia=
ble DISTRO_VERSION, it should be "1.1'.

It does indeed state 1.1.






--_000_C6510F6D410BB64A8C15398EDC6B847C16E9A084ORSMSX101amrcor_
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
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	color:black;}
span.EmailStyle19
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jack,<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I push out a support in E=
clipse for post 1.1 (1.1&#43;snapshort*), you can update your eclipse plug-=
in against latest eclipse-poky master following the steps in
 the ADT manual.&nbsp; But it seems you still have some strange thing going=
 on with your Edison build, it shouldn&#8217;t contain &#8220;1.1&#43;snaps=
hot*&#8221; as version for both distro and adt.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Cheers,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif=
&quot;;color:windowtext"> yocto-bounces@yoctoproject.org [mailto:yocto-boun=
ces@yoctoproject.org]
<b>On Behalf Of </b>Jack Mitchell<br>
<b>Sent:</b> Wednesday, October 26, 2011 1:20 AM<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Eclipse Plugin: ADT Version too old<o:p></o:p><=
/span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">On 25/10/2011 22:40, Flanagan, Elizabeth wrote: <o:p=
></o:p></p>
<pre>On Tue, Oct 25, 2011 at 7:45 AM, Jack Mitchell <a href=3D"mailto:ml@co=
mmunistcode.co.uk">&lt;ml@communistcode.co.uk&gt;</a> wrote:<o:p></o:p></pr=
e>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<pre><o:p>&nbsp;</o:p></pre>
<pre>Hi Jessica,<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>I posted my environment settings earlier, which are located here:<o:p>=
</o:p></pre>
<pre><a href=3D"http://pastebin.com/4vnWPAD2">http://pastebin.com/4vnWPAD2<=
/a><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Yes, I did use bitbake meta-ide-support to build my roo<o:p></o:p></pr=
e>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Hi Jessica,<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>I just did a full fresh re-build from scratch and now my environment<o=
:p></o:p></pre>
<pre>variables are as follows:<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre><a href=3D"http://ix.io/1Wf">http://ix.io/1Wf</a><o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>My current git status is:<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre># On branch edision<o:p></o:p></pre>
<pre># Untracked files:<o:p></o:p></pre>
<pre>#&nbsp;&nbsp; (use &quot;git add &lt;file&gt;...&quot; to include in w=
hat will be committed)<o:p></o:p></pre>
<pre>#<o:p></o:p></pre>
<pre>#&nbsp;&nbsp;&nbsp; ../bitbake/lib/bb/pysh/pyshtables.py<o:p></o:p></p=
re>
<pre>#&nbsp;&nbsp;&nbsp; ../conf/<o:p></o:p></pre>
<pre>#&nbsp;&nbsp;&nbsp; ./<o:p></o:p></pre>
<pre>#&nbsp;&nbsp;&nbsp; ../qemuarm-toolchain/<o:p></o:p></pre>
<pre>nothing added to commit but untracked files present (use &quot;git add=
&quot; to track)<o:p></o:p></pre>
</blockquote>
<pre><o:p>&nbsp;</o:p></pre>
<pre>Jack,<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>I just checked out a clean edison and ran bitbake meta-ide-support. My=
<o:p></o:p></pre>
<pre>env is showing export OECORE_DISTRO_VERSION=3D&quot;1.1&quot;. My gues=
s is that,<o:p></o:p></pre>
<pre>since you are not in master, then you have a TMPDIR from a master<o:p>=
</o:p></pre>
<pre>build, or perhaps are using something left over from one, as the only<=
o:p></o:p></pre>
<pre>place DISTRO_VERSION =3D &quot;1.1&#43;snapshot-${DATE}&quot; would be=
 there. Prior to<o:p></o:p></pre>
<pre>c88b991 on edison, DISTRO_VERSION =3D &quot;1.0&#43;snapshot-${DATE}&q=
uot;. So you're<o:p></o:p></pre>
<pre>picking that up from some prior master build. It's not an older<o:p></=
o:p></pre>
<pre>version of edison as if it was an older version of edison it would be<=
o:p></o:p></pre>
<pre>1.0&#43;snapshot-${DATE<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<pre>-b<o:p></o:p></pre>
<pre><o:p>&nbsp;</o:p></pre>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><br>
Ok, this is some more debug info:<br>
<br>
OE Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.13.3&quot;=
<br>
TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm&quot;<br>
TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;linux-g=
nueabi&quot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;qemuarm&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.1&#43;snapshot-20111026&quot;<=
br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;armv5 dsp thumb arm926ejs&q=
uot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;soft&quot;<b=
r>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <br>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
meta-db-generic&nbsp;&nbsp; =3D &quot;edision:b4757833c3548b5ee3a1cce58e2f0=
59b3f63cb09&quot;<br>
<br>
Could it be that because I have my own layer present it's skewing the git? =
Should the eclipse plug-in not match 1.1*?<br>
<span style=3D"font-family:&quot;Courier New&quot;"><br>
Could you check your file of meta-yocto/conf/distro/poky.conf for the varia=
ble DISTRO_VERSION, it should be &quot;1.1'.
</span><br>
<br>
It does indeed state 1.1.<br>
<br>
<br>
<br>
<o:p></o:p></p>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C16E9A084ORSMSX101amrcor_--
