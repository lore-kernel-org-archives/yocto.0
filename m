Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A6A9E015E3
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 14:32:57 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 24 Sep 2013 14:32:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,973,1371106800"; 
	d="scan'208,217";a="406623231"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 24 Sep 2013 14:32:55 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.125]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.200]) with mapi id
	14.03.0123.003; Tue, 24 Sep 2013 14:32:55 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Dusty Clark <dclark@mmto.org>, "Zhang, Jessica" <jessica.zhang@intel.com>
Thread-Topic: [yocto] Problems with the ADT installation
Thread-Index: AQHOuVl5KczfBvtmxE2DQejDXvlj/JnVzGOAgAAK9QD//5DoQA==
Date: Tue, 24 Sep 2013 21:32:54 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F3134A@ORSMSX101.amr.corp.intel.com>
References: <CABYvHN7hqRob6p_DxOQNuOjSOHXNft2OH94jApnFWW3fHK09Pg@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73CB48DE@ORSMSX103.amr.corp.intel.com>
	<CABYvHN52zuzjeBrHS_JwnG0MKHz4sRK9n_pRskYFaZ_Y4ms06w@mail.gmail.com>
In-Reply-To: <CABYvHN52zuzjeBrHS_JwnG0MKHz4sRK9n_pRskYFaZ_Y4ms06w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems with the ADT installation
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
X-List-Received-Date: Tue, 24 Sep 2013 21:32:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F3134AORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F3134AORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Looks like the link in the 1.4.2 manual does barf... the link in the 1.4.1 =
manual resolves.  Not sure why there is no tarball of the ADT Installer at =
the 1.4.2  location.

Scott

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Dusty Clark
Sent: Tuesday, September 24, 2013 2:09 PM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Problems with the ADT installation

Hello Jessica,

OK, so for plain application development, I don't need eglibc-devel library=
...just the cross-development toolchain and whatever recipes and whatnot fo=
r my target, yes?

For the record, I downloaded the ADT tarball from here:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/adt-installer/
The link in the manual is a 404, so I found this one by modifying the link =
location in the browser.
Then I browsed around and found what I thought was the closest snapshot, an=
d edited the adt_installer.conf as follows:

#YOCTOADT_REPO=3D"http://adtrepo-dev.yoctoproject.org//1.4.2-d734ab491a3007=
8d43dee5440c03acce2d251425-dylan<http://adtrepo-dev.yoctoproject.org/1.4.2-=
d734ab491a30078d43dee5440c03acce2d251425-dylan>"

#Edit by Dusty 9/24/13, since the original repo target is a 404:
YOCTOADT_REPO=3D"http://adtrepo-dev.yoctoproject.org/1.4+snapshot-6b4f7e4b2=
6c51f0c1517c0a697031e7bc488b76f-master/"
And of course this failed as mentioned. I attach the installer logfile for =
your reference...I tried it twice, once with the bad link and again with th=
e edit.
Thanks for your help!

Dusty Clark
Staff Engineer Sr.
MMT Observatory
University of Arizona
Tucson, AZ 85721

On Tue, Sep 24, 2013 at 1:30 PM, Zhang, Jessica <jessica.zhang@intel.com<ma=
ilto:jessica.zhang@intel.com>> wrote:
Hi Dusty,

The prerequisite for eglibc-devel are for running a yocto build on your hos=
t. adt-installer is for  setup the cross development environment for applic=
ation development so it's not the tool to install those prerequisite packag=
es.

As to your adt-installer issues, we've heard similar report from our QA eng=
ineer as well, so to confirm, are you using the latest built out of adt-ins=
taller?

Thanks,
Jessica

From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>=
 [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg>] On Behalf Of Dusty Clark
Sent: Tuesday, September 24, 2013 12:08 PM
To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Subject: [yocto] Problems with the ADT installation

Reading the Quick Start and ADT manuals, it was recommended to use the ADT =
installer script as the easiest method to get the tools and the Eclipse plu=
gin in place. I'm running a Fedora 17 VM as the development host, and would=
 like to target Beaglebone and vanilla x86 devices using Eclipse. However, =
I ran into some issues:

First, the prerequisites lists a package "eglibc-devel" that does not seem =
to exist as a yum package, although it looks like the poky tarball has it i=
nside -- so it should be built from the source tarball during installation =
of poky -- e.g. NOT using the ADT installation? The ADT guide warns against=
 mixing installation methods, building ADT from poky vs. the ADT installer,=
 etc. So, what is the recommended method for having this prerequisite libra=
ry for Yocto?

Second, the ADT installer script is pointing to 404s when getting packages:=
 the YOCTOADT_REPO variable is pointing to a repo at http://adtrepo-dev.yoc=
toproject.org//$VERSION<http://adtrepo-dev.yoctoproject.org/$VERSION> that =
doesn't exist. I edited adt_installer.conf to point to what I thought was t=
he appropriate master as /1.4+snapshot-$hash-master, but the install script=
 failed with a message about wget trying to get the opkg portion of the rep=
o. There appears to be no opkg folder at all to be found there...so is the =
ADT installer now deprecated and one should just install poky and build the=
 ADT stuff from there on?

Thanks for any help!



--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F3134AORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
	{mso-style-type:export-only;}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Looks like the link in th=
e 1.4.2 manual does barf&#8230; the link in the 1.4.1 manual resolves.&nbsp=
; Not sure why there is no tarball of the ADT Installer at the 1.4.2&nbsp;
 location.&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Dusty Clark<br>
<b>Sent:</b> Tuesday, September 24, 2013 2:09 PM<br>
<b>To:</b> Zhang, Jessica<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Problems with the ADT installation<o:p></o:p></=
span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hello Jessica,<br>
<br>
OK, so for plain application development, I don't need eglibc-devel library=
...just the cross-development toolchain and whatever recipes and whatnot fo=
r my target, yes?<br>
<br>
For the record, I downloaded the ADT tarball from here:<br>
<a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/adt-i=
nstaller/">http://downloads.yoctoproject.org/releases/yocto/yocto-1.4/adt-i=
nstaller/</a><o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">The link in the manua=
l is a 404, so I found this one by modifying the link location in the brows=
er.<o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Then I browsed around=
 and found what I thought was the closest snapshot, and edited the adt_inst=
aller.conf as follows:<br>
<br>
#YOCTOADT_REPO=3D&quot;<a href=3D"http://adtrepo-dev.yoctoproject.org/1.4.2=
-d734ab491a30078d43dee5440c03acce2d251425-dylan">http://adtrepo-dev.yoctopr=
oject.org//1.4.2-d734ab491a30078d43dee5440c03acce2d251425-dylan</a>&quot;<b=
r>
<br>
#Edit by Dusty 9/24/13, since the original repo target is a 404:<br>
YOCTOADT_REPO=3D&quot;<a href=3D"http://adtrepo-dev.yoctoproject.org/1.4&#4=
3;snapshot-6b4f7e4b26c51f0c1517c0a697031e7bc488b76f-master/">http://adtrepo=
-dev.yoctoproject.org/1.4&#43;snapshot-6b4f7e4b26c51f0c1517c0a697031e7bc488=
b76f-master/</a>&quot;<o:p></o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">And of course this fa=
iled as mentioned. I attach the installer logfile for your reference...I tr=
ied it twice, once with the bad link and again with the edit.
<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">Thanks for your help!<br>
<br>
Dusty Clark<br>
Staff Engineer Sr.<o:p></o:p></p>
</div>
<p class=3D"MsoNormal">MMT Observatory<br>
University of Arizona<br>
Tucson, AZ 85721<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Tue, Sep 24, 2013 at 1:30 PM, Zhang, Jessica &lt;=
<a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@=
intel.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Hi Dusty,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">The prerequisite for eglibc-devel are f=
or running a yocto build on your host. adt-installer is for
 &nbsp;setup the cross development environment for application development =
so it&#8217;s not the tool to install those prerequisite packages.</span><o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">As to your adt-installer issues, we&#82=
17;ve heard similar report from our QA engineer as well, so to confirm,
 are you using the latest built out of adt-installer?</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Thanks,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Jessica</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Dusty Clark<br>
<b>Sent:</b> Tuesday, September 24, 2013 12:08 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Problems with the ADT installation</span><o:p></o:p=
></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Reading the Quick Start and ADT manuals, it was recommended to use=
 the ADT installer script as the easiest method to get the tools and the Ec=
lipse plugin in place. I'm running a
 Fedora 17 VM as the development host, and would like to target Beaglebone =
and vanilla x86 devices using Eclipse. However, I ran into some issues:<o:p=
></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">First, the prerequisites lists a package &quot;eglibc-devel&quot; =
that does not seem to exist as a yum package, although it looks like the po=
ky tarball has it inside -- so it should be built
 from the source tarball during installation of poky -- e.g. NOT using the =
ADT installation? The ADT guide warns against mixing installation methods, =
building ADT from poky vs. the ADT installer, etc. So, what is the recommen=
ded method for having this prerequisite
 library for Yocto?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Second, the ADT installer script is pointing to 404s when getting =
packages: the YOCTOADT_REPO variable is pointing to a repo at
<a href=3D"http://adtrepo-dev.yoctoproject.org/$VERSION" target=3D"_blank">=
http://adtrepo-dev.yoctoproject.org//$VERSION</a> that doesn't exist. I edi=
ted adt_installer.conf to point to what I thought was the appropriate maste=
r as /1.4&#43;snapshot-$hash-master, but
 the install script failed with a message about wget trying to get the opkg=
 portion of the repo. There appears to be no opkg folder at all to be found=
 there...so is the ADT installer now deprecated and one should just install=
 poky and build the ADT stuff from
 there on?<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Thanks for any help!<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237983F3134AORSMSX101amrcor_--
