Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96FADE00771
	for <yocto@yoctoproject.org>; Fri,  5 Aug 2011 09:18:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Aug 2011 09:18:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,324,1309762800"; d="scan'208,217";a="38271050"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 05 Aug 2011 09:18:25 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 5 Aug 2011 09:18:21 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.180]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.81]) with mapi id
	14.01.0323.003; Fri, 5 Aug 2011 09:18:21 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: M4 is bug fixing and stabilization milestone
Thread-Index: AcxTizr6u4qI28tUQX2Hv6X5/wkGMA==
Date: Fri, 5 Aug 2011 16:18:21 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C13707160@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: M4 is bug fixing and stabilization milestone
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
X-List-Received-Date: Fri, 05 Aug 2011 16:18:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C13707160ORSMSX101amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C13707160ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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


--_000_C6510F6D410BB64A8C15398EDC6B847C13707160ORSMSX101amrcor_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">1.<span style=
=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;
</span></span><![endif]>Please use the whiteboard field to update your bug =
status between &#8220;accept&#8221; and &#8220;fixed&#8221; stage. Couple e=
xample entries like, still under development, patch out for review, etc.<o:=
p></o:p></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"mso-list:Ignore">2.<span style=
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

--_000_C6510F6D410BB64A8C15398EDC6B847C13707160ORSMSX101amrcor_--
