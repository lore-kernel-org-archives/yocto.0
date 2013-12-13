Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC076E00796
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 10:12:33 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2013 10:12:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,480,1384329600"; 
	d="scan'208,217";a="449715371"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2013 10:12:32 -0800
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 13 Dec 2013 10:12:31 -0800
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.59]) by
	ORSMSX113.amr.corp.intel.com ([10.22.240.9]) with mapi id
	14.03.0123.003; Fri, 13 Dec 2013 10:12:31 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project 1.6 M1 release readiness review -
	Friday, December 13, 2013 8:00 AM-8:30 AM (UTC-08:00) Pacific Time (US &
	Canada).
Thread-Index: Ac74LtODgVavkC65TZWz9Cf7A9hqDQAAAgYw
Date: Fri, 13 Dec 2013 18:12:31 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EFCEBA8@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project 1.6 M1 release readiness review - Friday, December 13, 2013 8:00 AM-8:30 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Fri, 13 Dec 2013 18:12:34 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EFCEBA8ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFCEBA8ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Dave, Saul, ScottR, Matthew, Richard, AlexG, Jessica, Mark, Beth, Song

Minutes:

1.      Systemd failed to build. Some sort of timeout. Ross/stephan has try=
ing to debug this. Not a release blocking issue.
2.      A number of medium+ bugs, open bug count high. We should all be con=
cerned.
3.      Autobuilder builder hung on Opensuse build. We have a fix in master=
, but not tried yet.
4.      Performance issue for rootfs. There is a possible fix. will see the=
 performance after the fix. Will open a bug if the fix does not work.
5.      142 package update, average 60% upgrade rate. We were targeting 70%=
. We have been there before. No concerns on M1 release. Upstream status is =
fine.

Decision: unanimously agree on M1 release.
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.6_Status#Milestone_1<ht=
tps://wiki.yoctoproject.org/wiki/Yocto_Project_v1.6_Status>




--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFCEBA8ORSMSX108amrcor_
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
<div>Dave, Saul, ScottR, Matthew, Richard, AlexG, Jessica, Mark, Beth, Song=
</div>
<div>&nbsp;</div>
<div>Minutes:</div>
<div>&nbsp;</div>
<ol style=3D"margin:0;padding-left:27pt;">
<li>Systemd failed to build. Some sort of timeout. Ross/stephan has trying =
to debug this. Not a release blocking issue.</li><li>A number of medium&#43=
; bugs, open bug count high. We should all be concerned. </li><li>Autobuild=
er builder hung on Opensuse build. We have a fix in master, but not tried y=
et.</li><li>Performance issue for rootfs. There is a possible fix. will see=
 the performance after the fix. Will open a bug if the fix does not work.</=
li><li>142 package update, average 60% upgrade rate. We were targeting 70%.=
 We have been there before. No concerns on M1 release. Upstream status is f=
ine. </li></ol>
<div style=3D"padding-left:27pt;">&nbsp;</div>
<div>Decision: unanimously agree on M1 release. </div>
<div><font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12p=
t;"><a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.6_Status=
"><font face=3D"Calibri" size=3D"2" color=3D"blue"><span style=3D"font-size=
:11pt;"><u>https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.6_Status#Mil=
estone_1</u></span></font></a></span></font></div>
<div>&nbsp;</div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFCEBA8ORSMSX108amrcor_--
