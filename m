Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A012E0072C
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 12:01:39 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 Mar 2013 12:01:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,762,1355126400"; 
	d="scan'208,217";a="207872405"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Mar 2013 12:01:20 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.110]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.117]) with mapi id
	14.01.0355.002; Fri, 1 Mar 2013 12:01:18 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.4 M4 release readiness discussion
Thread-Index: Ac4Wt3IG0ZPfmR4dScWMDjE46t8FswAAAlfw
Date: Fri, 1 Mar 2013 20:01:17 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.4 M4 release readiness discussion
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
X-List-Received-Date: Fri, 01 Mar 2013 20:01:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1ORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
AlexG, ThaddeusL, Cristian, Dave, Richard, Jessica, Nitin, Song


Release criteria review:
Please see the wiki page:  https://wiki.yoctoproject.org/wiki/Yocto_Project=
_v1.4_Status#Milestone_4<https://wiki.yoctoproject.org/wiki/Yocto_Project_v=
1.4_Status>

1.      All release criteria has been reviewed. M4 met all the criteria.
2.      Highlights:
a.      12% performance increase on overall build time. Cut the rootfs buil=
d time with sstate on by half.
3.      Issues:
a.      The # of bugs seems high. Plan: Bug triage team is doing a round of=
 triage for all medium+ and medium bugs to focus the team on fixing the rig=
ht set of bugs. The team will focus more on bugs for the rest of the releas=
e.
b.      Dave: not enough CCB members present in this meeting. Cannot approv=
e the release.

Decision: Song will follow up with Dave and the CCB to get approval for the=
 release.





--_000_7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1ORSMSX101amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>AlexG, ThaddeusL, Cristian, Dave, Richard, Jessica, Nitin, Song</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>Release criteria review:</div>
<div>Please see the wiki page:&nbsp; <a href=3D"https://wiki.yoctoproject.o=
rg/wiki/Yocto_Project_v1.4_Status"><font color=3D"blue"><u>https://wiki.yoc=
toproject.org/wiki/Yocto_Project_v1.4_Status#Milestone_4</u></font></a></di=
v>
<div>&nbsp;</div>
<ol style=3D"margin:0;padding-left:27pt;">
<li>All release criteria has been reviewed. M4 met all the criteria.</li></=
ol>
<ol style=3D"margin:0;padding-left:27pt;">
<li>Highlights:</li></ol>
<ol type=3D"a" style=3D"margin:0;padding-left:54pt;">
<li>12% performance increase on overall build time. Cut the rootfs build ti=
me with sstate on by half.</li></ol>
<ol style=3D"margin:0;padding-left:27pt;">
<li>Issues:</li></ol>
<ol type=3D"a" style=3D"margin:0;padding-left:54pt;">
<li>The # of bugs seems high. Plan: Bug triage team is doing a round of tri=
age for all medium&#43; and medium bugs to focus the team on fixing the rig=
ht set of bugs. The team will focus more on bugs for the rest of the releas=
e.</li><li>Dave: not enough CCB members present in this meeting. Cannot app=
rove the release.</li></ol>
<div>&nbsp;</div>
<div>Decision: Song will follow up with Dave and the CCB to get approval fo=
r the release.</div>
<div><font color=3D"#1F497D">&nbsp;</font></div>
<div><font color=3D"#1F497D">&nbsp;</font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1ORSMSX101amrcor_--
