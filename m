Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AD80E0149A
	for <yocto@yoctoproject.org>; Sun, 26 May 2013 16:07:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 May 2013 16:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,746,1363158000"; 
	d="scan'208,217";a="343484146"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga002.jf.intel.com with ESMTP; 26 May 2013 16:07:25 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.15]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.106]) with mapi id
	14.03.0123.003; Sun, 26 May 2013 16:07:25 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Precipice Development <precipice.development@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] ADT_REPO Issue
Thread-Index: AQHOWjWYDswR6K8Nlkasxyrue9CuqZkYFbGQ
Date: Sun, 26 May 2013 23:07:24 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C3358F@ORSMSX103.amr.corp.intel.com>
References: <034977B3-A653-4991-A2DF-2859B8C14EAC@gmail.com>
In-Reply-To: <034977B3-A653-4991-A2DF-2859B8C14EAC@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: ADT_REPO Issue
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
X-List-Received-Date: Sun, 26 May 2013 23:07:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C73C3358FORSMSX103amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C73C3358FORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jerry,



Please file a bug and in the meantime, please change the repo in config to =
1.4.



Thanks,

Jessica



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Precipice Development
Sent: Sunday, May 26, 2013 10:21 AM
To: yocto@yoctoproject.org
Subject: [yocto] ADT_REPO Issue



Hello



I am installing Yocto on a new machine.  I did  a GIT pull to grab Poky as =
per the docs (git clone -b dylan git://git.yoctoproject.org/poky.git)



Subsequently I tried to build the art_installer which went through without =
issues.  However,  when I run the art_installer scripts I get an error that=
 it is looking for the http://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_64=
-nativesdk.  The values seems to be configured in opkg/conf/opkg-sdk-x86_64=
.conf (and corresponding x86 conf file).  There is no such URL.  Only 1.4 e=
xists.



Should I try to edit and just use http://adtrepo.yoctoproject.org/1.4/adt-i=
pk/x86_64-nativesdk/ or is that going to cause some issues.  Or when will t=
here be a 1.4.1?



Thanks



Jerry



When I installed yocto on a laptop earlier using the tar ball (about 2 week=
s ago) this was a not issue.   My conf file on that machine is:

arch all 1

arch any 6

arch noarch 11

arch x86_64-nativesdk 16

src yp-x86_64-nativesdk http://adtrepo.yoctoproject.org//1.4/adt-ipk/x86_64=
-nativesdk<http://adtrepo.yoctoproject.org/1.4/adt-ipk/x86_64-nativesdk>





On my new machine it is:

arch all 1

arch any 6

arch noarch 11

arch x86_64-nativesdk 16

src yp-x86_64-nativesdk http://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_6=
4-nativesdk



Note the different version number and the double // in the first conf file


--_000_C6510F6D410BB64A8C15398EDC6B847C73C3358FORSMSX103amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi Jerry,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Please file a bug and in =
the meantime, please change the repo in config to 1.4.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Precipice Development<br>
<b>Sent:</b> Sunday, May 26, 2013 10:21 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] ADT_REPO Issue<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hello<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I am installing Yocto on a new machine. &nbsp;I did =
&nbsp;a GIT pull to grab Poky as per the docs (<span style=3D"font-size:10.=
0pt;font-family:&quot;Courier New&quot;;color:white;background:black">git c=
lone -b dylan
<a href=3D"git://git.yoctoproject.org/poky.git">git://git.yoctoproject.org/=
poky.git</a>)</span><o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Subsequently I tried to build the art_installer whic=
h went through without issues. &nbsp;However, &nbsp;when I run the art_inst=
aller scripts I get an error that it is looking for the&nbsp;<a href=3D"htt=
p://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk">http://adtrepo=
.yoctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk</a>.
 &nbsp;The values seems to be configured in&nbsp;opkg/conf/opkg-sdk-x86_64.=
conf (and corresponding x86 conf file). &nbsp;There is no such URL. &nbsp;O=
nly 1.4 exists. &nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Should I try to edit and just use&nbsp;<a href=3D"ht=
tp://adtrepo.yoctoproject.org/1.4/adt-ipk/x86_64-nativesdk/">http://adtrepo=
.yoctoproject.org/1.4/adt-ipk/x86_64-nativesdk/</a> or is that going to cau=
se some issues. &nbsp;Or when will there be a
 1.4.1?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Jerry<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">When I installed yocto on a laptop earlier using the=
 tar ball (about 2 weeks ago) this was a not issue. &nbsp; My conf file on =
that machine is:<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">arch all 1<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">arch any 6<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">arch noarch 11<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">arch x86_64-nativesdk 16<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">src yp-x86_64-nativesdk <a href=3D"http://adtrepo.yo=
ctoproject.org/1.4/adt-ipk/x86_64-nativesdk">
http://adtrepo.yoctoproject.org//1.4/adt-ipk/x86_64-nativesdk</a><o:p></o:p=
></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">On my new machine it is:<o:p></o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">arch all 1<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">arch any 6<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">arch noarch 11<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">arch x86_64-nativesdk 16<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">src yp-x86_64-nativesdk <a href=3D"http://adtrepo.yo=
ctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk">
http://adtrepo.yoctoproject.org/1.4.1/adt-ipk/x86_64-nativesdk</a><o:p></o:=
p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Note the different version number and the double // =
in the first conf file<o:p></o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C73C3358FORSMSX103amrcor_--
