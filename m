Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC15DE011C3
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2011 23:13:38 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Aug 2011 23:13:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,327,1309762800"; d="scan'208,217";a="38500623"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 05 Aug 2011 23:13:44 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 5 Aug 2011 23:13:44 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.180]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.81]) with mapi id
	14.01.0323.003; Fri, 5 Aug 2011 23:13:44 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Liu, Song" <song.liu@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: M4 is bug fixing and stabilization milestone
Thread-Index: AcxTizr6u4qI28tUQX2Hv6X5/wkGMAAQ8KJwAAvXcLA=
Date: Sat, 6 Aug 2011 06:13:43 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C13709615@ORSMSX101.amr.corp.intel.com>
References: <C6510F6D410BB64A8C15398EDC6B847C13707160@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A13763778@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A13763778@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: M4 is bug fixing and stabilization milestone
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
X-List-Received-Date: Sat, 06 Aug 2011 06:13:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C13709615ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C13709615ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Song,



Thanks for pointing the white board info out.



684 is med enhancement, in general,  people should focus on bug fixing.  En=
hancements will be pushed out for post 1.1 unless people has no bug to work=
 on and has bandwidth to work on enhancement.

932 is waiting for upstream, I don't think that should impact the bug prior=
ity but may impact whether the bug can be resolved in M4.



Thanks,

Jessica

From: Liu, Song
Sent: Friday, August 05, 2011 5:31 PM
To: Zhang, Jessica; yocto@yoctoproject.org
Subject: RE: M4 is bug fixing and stabilization milestone



Jessica, the following 2 bugs have comments in the whiteboard asking not to=
 include them in 1.1 or lower the priority to low. I'm not sure if you guys=
 missed those or do not agree with the owners. Would you please double chec=
k them?



684

932



Thanks,

Song



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Zhang, Jessica
Sent: Friday, August 05, 2011 9:18 AM
To: yocto@yoctoproject.org
Subject: [yocto] M4 is bug fixing and stabilization milestone



Hi All,



As we marching into our final milestone M4, which is bug fixing and stabili=
zation,  the bug triage team did a bug scrub on the medium+low bugs (since =
we've been closely monitoring the high and major bugs) + the new multilib b=
ugs to set a correct target for the bugs.



We urge people to please start working on their bugs since bug fixing is as=
 important as feature implementation as to ensure a successful release.  He=
re're couple guidelines that the bug triage team want to call out:



1.       Please use the whiteboard field to update your bug status between =
"accept" and "fixed" stage. Couple example entries like, still under develo=
pment, patch out for review, etc.

2.       As to general bug fixing priority order, Critical and Major bugs a=
re must be resolved for milestone.  Medium bugs should be resolved by relea=
se.  And once we entered RC build phase.  To ensure stability, in general w=
e will stop accepting medium bug fixes into the release branch.



Here's a link to the list of 1.1 bugs(http://bugzilla.pokylinux.org/buglist=
.cgi?query_format=3Dadvanced&bug_status=3DNEW&bug_status=3DACCEPTED&bug_sta=
tus=3DREOPENED&bug_status=3DNEEDINFO&bug_status=3DWaitForUpstream&target_mi=
lestone=3D---&target_milestone=3D1.1&target_milestone=3D1.1%20M1&target_mil=
estone=3D1.1%20M2&target_milestone=3D1.1%20M3&target_milestone=3D1.1%20M4&t=
arget_milestone=3DQ1&target_milestone=3DQ2&target_milestone=3DQ3&target_mil=
estone=3DQ4). <http://bugzilla.pokylinux.org/buglist.cgi?query_format=3Dadv=
anced&bug_status=3DNEW&bug_status=3DACCEPTED&bug_status=3DREOPENED&bug_stat=
us=3DNEEDINFO&bug_status=3DWaitForUpstream&target_milestone=3D---&target_mi=
lestone=3D1.1&target_milestone=3D1.1%20M1&target_milestone=3D1.1%20M2&targe=
t_milestone=3D1.1%20M3&target_milestone=3D1.1%20M4&target_milestone=3DQ1&ta=
rget_milestone=3DQ2&target_milestone=3DQ3&target_milestone=3DQ4).%20%20>



Here's a link to the 1.1 RC build schedules (https://wiki.yoctoproject.org/=
wiki/Yocto_1.1_Schedule#M4_.28Aug_15_to_Oct_6_--_Stabilize_Complete_Aug_29.=
2C_Release_Complete_Oct_3.29<https://wiki.yoctoproject.org/wiki/Yocto_1.1_S=
chedule%23M4_.28Aug_15_to_Oct_6_--_Stabilize_Complete_Aug_29.2C_Release_Com=
plete_Oct_3.29>), so you can plan your bugs' fixes accordingly.



Thanks for your hard works and continuous contributions to the Yocto Projec=
t.



Jessica


--_000_C6510F6D410BB64A8C15398EDC6B847C13709615ORSMSX101amrcor_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle20
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
/* List Definitions */
@list l0
	{mso-list-id:828325400;
	mso-list-type:hybrid;
	mso-list-template-ids:-1746095778 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level4
	{mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level7
	{mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Song,<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks for pointing th=
e white board info out.&nbsp;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">684 is med enhancement=
, in general, &nbsp;people should focus on bug fixing.&nbsp; Enhancements w=
ill be pushed out for post 1.1 unless people has no bug to work on and has =
bandwidth to work on enhancement.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">932 is waiting for ups=
tream, I don&#8217;t think that should impact the bug priority but may impa=
ct whether the bug can be resolved in M4.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Jessica<o:p></o:p></sp=
an></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> Liu, Son=
g
<br>
<b>Sent:</b> Friday, August 05, 2011 5:31 PM<br>
<b>To:</b> Zhang, Jessica; yocto@yoctoproject.org<br>
<b>Subject:</b> RE: M4 is bug fixing and stabilization milestone<o:p></o:p>=
</span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Jessica, the following=
 2 bugs have comments in the whiteboard asking not to include them in 1.1 o=
r lower the priority to low. I&#8217;m not sure if you guys missed those or=
 do not agree with the owners. Would you please
 double check them?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">684<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">932<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Song<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Zhang, Jessica<br>
<b>Sent:</b> Friday, August 05, 2011 9:18 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] M4 is bug fixing and stabilization milestone<o:p></=
o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As we marching into our final milestone M4, which is=
 bug fixing and stabilization,&nbsp; the bug triage team did a bug scrub on=
 the medium&#43;low bugs (since we&#8217;ve been closely monitoring the hig=
h and major bugs) &#43; the new multilib bugs to set
 a correct target for the bugs. <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We urge people to please start working on their bugs=
 since bug fixing is as important as feature implementation as to ensure a =
successful release.&nbsp; Here&#8217;re couple guidelines that the bug tria=
ge team want to call out:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Please use the whiteboard field to update your bug =
status between &#8220;accept&#8221; and &#8220;fixed&#8221; stage. Couple e=
xample entries like, still under development, patch out for review, etc.<o:=
p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo2"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>As to general bug fixing priority order, Critical a=
nd Major bugs are must be resolved for milestone.&nbsp; Medium bugs should =
be resolved by release.&nbsp; And once we entered RC build phase. &nbsp;To =
ensure stability, in general we will stop accepting
 medium bug fixes into the release branch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here's a link to the list of 1.1 bugs(<a href=3D"htt=
p://bugzilla.pokylinux.org/buglist.cgi?query_format=3Dadvanced&amp;bug_stat=
us=3DNEW&amp;bug_status=3DACCEPTED&amp;bug_status=3DREOPENED&amp;bug_status=
=3DNEEDINFO&amp;bug_status=3DWaitForUpstream&amp;target_milestone=3D---&amp=
;target_milestone=3D1.1&amp;target_milestone=3D1.1%20M1&amp;target_mileston=
e=3D1.1%20M2&amp;target_milestone=3D1.1%20M3&amp;target_milestone=3D1.1%20M=
4&amp;target_milestone=3DQ1&amp;target_milestone=3DQ2&amp;target_milestone=
=3DQ3&amp;target_milestone=3DQ4).%20%20">http://bugzilla.pokylinux.org/bugl=
ist.cgi?query_format=3Dadvanced&amp;bug_status=3DNEW&amp;bug_status=3DACCEP=
TED&amp;bug_status=3DREOPENED&amp;bug_status=3DNEEDINFO&amp;bug_status=3DWa=
itForUpstream&amp;target_milestone=3D---&amp;target_milestone=3D1.1&amp;tar=
get_milestone=3D1.1%20M1&amp;target_milestone=3D1.1%20M2&amp;target_milesto=
ne=3D1.1%20M3&amp;target_milestone=3D1.1%20M4&amp;target_milestone=3DQ1&amp=
;target_milestone=3DQ2&amp;target_milestone=3DQ3&amp;target_milestone=3DQ4)=
.
</a>&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here&#8217;s a link to the 1.1 RC build schedules (<=
a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.1_Schedule%23M4_.28Aug=
_15_to_Oct_6_--_Stabilize_Complete_Aug_29.2C_Release_Complete_Oct_3.29">htt=
ps://wiki.yoctoproject.org/wiki/Yocto_1.1_Schedule#M4_.28Aug_15_to_Oct_6_--=
_Stabilize_Complete_Aug_29.2C_Release_Complete_Oct_3.29</a>),
 so you can plan your bugs&#8217; fixes accordingly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks for your hard works and continuous contributi=
ons to the Yocto Project.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Jessica <o:p></o:p></p>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C13709615ORSMSX101amrcor_--
