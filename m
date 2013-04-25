Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA4FE01517
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 07:54:25 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Apr 2013 07:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,551,1363158000"; 
	d="scan'208,217";a="325189618"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 25 Apr 2013 07:54:15 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 25 Apr 2013 07:54:14 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.227]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.150]) with mapi id
	14.01.0355.002; Thu, 25 Apr 2013 07:54:07 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.4 release readiness meeting - 4/25/2013
Thread-Index: Ac5BxKRh9ErROSGjTcekilDy44uutgAABDLw
Date: Thu, 25 Apr 2013 14:54:13 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A718F41CD@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.4 release readiness meeting - 4/25/2013
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
X-List-Received-Date: Thu, 25 Apr 2013 14:54:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A718F41CDORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A718F41CDORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
MarkH (also represents KevinM), Saul, Corneliu, AlexG, Cristiana, AlexD, La=
urentiu, Ionut, Jessica (also represents DaveST), Ross, BogdanM, Richard, C=
ristian, Song

Notes:

- We have all CCB members here or represented here.
- Review release criteria: please see: https://wiki.yoctoproject.org/wiki/Y=
octo_Project_v1.4_Status#Milestone_6.2C_1.4_release<https://wiki.yoctoproje=
ct.org/wiki/Yocto_Project_v1.4_Status>
- There are some failures on AB due to racing issues. So we did not have a =
completely green build. But these are random issue (4358), should not block=
 the release.
- Postinstall issues found by the community lately. We will address them in=
 1.5, but they should not block the release.
- 1.5 release criteria or QA test summary could include community feedback =
to reflect more of the community's opinion . Action item for Song: review 1=
.5 release criteria.
- CentOS should be tested more. Many commercial vendors are using CentOS. W=
ill consider this when we review the 1.5 release.

* Decision: 1.4 release is a go.

Thank you all, and congratulations to the team and everyone involved in thi=
s release!





--_000_7E680CB2A76BB8438D08CF13C09FC53A718F41CDORSMSX108amrcor_
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
<div>MarkH (also represents KevinM), Saul, Corneliu, AlexG, Cristiana, Alex=
D, Laurentiu, Ionut, Jessica (also represents DaveST), Ross, BogdanM, Richa=
rd, Cristian, Song</div>
<div>&nbsp;</div>
<div>Notes:</div>
<div>&nbsp;</div>
<div>- We have all CCB members here or represented here.</div>
<div>- Review release criteria: please see: <a href=3D"https://wiki.yoctopr=
oject.org/wiki/Yocto_Project_v1.4_Status"><font color=3D"blue"><u>https://w=
iki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status#Milestone_6.2C_1.4_rele=
ase</u></font></a></div>
<div>- There are some failures on AB due to racing issues. So we did not ha=
ve a completely green build. But these are random issue (4358), should not =
block the release.</div>
<div>- Postinstall issues found by the community lately. We will address th=
em in 1.5, but they should not block the release.</div>
<div>- 1.5 release criteria or QA test summary could include community feed=
back to reflect more of the community's opinion . Action item for Song: rev=
iew 1.5 release criteria.</div>
<div>- CentOS should be tested more. Many commercial vendors are using Cent=
OS. Will consider this when we review the 1.5 release.</div>
<div>&nbsp;</div>
<div>* Decision: 1.4 release is a go. </div>
<div>&nbsp;</div>
<div>Thank you all, and congratulations to the team and everyone involved i=
n this release!</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A718F41CDORSMSX108amrcor_--
