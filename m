Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BDC7E014C8
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 11:39:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2013 11:37:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,590,1363158000"; 
	d="scan'208,217";a="329731520"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2013 11:39:44 -0700
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 1 May 2013 11:39:43 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.227]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.179]) with mapi id
	14.01.0355.002; Wed, 1 May 2013 11:39:44 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, April
	30, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac5GmxWj0UT8Wqj+QJCQDp9aN41P2QAABzbw
Date: Wed, 1 May 2013 18:39:43 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A718F9C58@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, April 30, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 01 May 2013 18:39:45 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A718F9C58ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A718F9C58ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Ramana, Saurav, Saul, LaurentiuP, KevinS, ScottR, JeffP, Bj=F6rnS, Beth, RP=
, TomZ, Corneliu, MarkH, Nitin, Denys, AlexG, PaulE, Ross, Song

Congratulations to all on the 1.4 release! Now let's focus on 1.5 planning =
this week.

Notes:

* Opens collection - 5 min (Song)
* Point release dates:
https://www.google.com/calendar/embed?src=3D3a0927ctps51u8rs2jv1uligdc%40gr=
oup.calendar.google.com&ctz=3DAmerica/Los_Angeles
 - 1.3.2 (Ross)
    5/7: RC1 build
    5/8 - 5/14: RC 1 testing
    5/21: RC2 build
    5/22-5/28: RC2 testing
    5/31: Release
 - 1.4.1 release: (PaulE)
    6/19: RC1 build
    6/20-6/25: RC1 testing
    6/26: RC2 build
    6/26-7/3: RC2 testing
    7/8: Release

* Yocto 1.5 release criteria review - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status#Yocto_Projec=
t_1.5_Release_Criteria<https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status>

  - Centos: most current version of centos testing should be tested
  - We should review the number of medium+ bugs when we release, and addres=
s any concern.
  - Bugs dispositioned: triaged, assigned to proper priority and target mil=
estone.

* SWAT team rotation: Laurentiu Palcu -> Nitin
* Opens - 10 min
* Team Sharing - 20 min
  - Beth: Yocto Project now is sponsored by outreach program for Women. hav=
e an intern working in summer. $ 5000 for 3 month. Attended Collab summit, =
spdx, start looking at the functionality. Some work came out from the work =
at university of omaha. FOSSology project, code inspection for license cont=
amination. Had a meeting yesterday with Mark, Jefro, and others. Long discu=
ssion, driving 2.0 specification.
  - Michael: last week, ordering the new hardware. Will get even faster bui=
ld. Meta-lsi layer released. Working on oe mailing list. Lots of preparatio=
n. Working on the QA chart automation.
  - RP: moving from giving update in the meetings to the mailing list as pr=
omised to the community.
  - Python version 3/RP: collecting data and community input, no decisions =
made. working with 2.0. If we were to upgrade to 3, would that cause major =
pain?
Concern: a lot of distros don't have python 3?. Compatibility could be an i=
ssue. Let me know if you have strong opinion. Beth: AB is an concern. But B=
uildbot should run python 3.




--_000_7E680CB2A76BB8438D08CF13C09FC53A718F9C58ORSMSX108amrcor_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>Ramana, Saurav, Saul, LaurentiuP, KevinS, ScottR, JeffP, Bj=F6rnS, Bet=
h, RP, TomZ, Corneliu, MarkH, Nitin, Denys, AlexG, PaulE, Ross, Song </div>
<div>&nbsp;</div>
<div>Congratulations to all on the 1.4 release! Now let&#8217;s focus on 1.=
5 planning this week.</div>
<div>&nbsp;</div>
<div>Notes:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Point release dates: </div>
<div><font face=3D"Times New Roman" size=3D"3"><span style=3D"font-size:12p=
t;"><a href=3D"https://www.google.com/calendar/embed?src=3D3a0927ctps51u8rs=
2jv1uligdc%40group.calendar.google.com&amp;ctz=3DAmerica/Los_Angeles"><font=
 face=3D"Consolas" size=3D"2" color=3D"blue"><span style=3D"font-size:11pt;=
"><u>https://www.google.com/calendar/embed?src=3D3a0927ctps51u8rs2jv1uligdc=
%40group.calendar.google.com&amp;ctz=3DAmerica/Los_Angeles</u></span></font=
></a><font face=3D"Consolas" size=3D"2" color=3D"#222222"><span style=3D"fo=
nt-size:11pt;"><b>&nbsp;</b></span></font></span></font></div>
<div> - 1.3.2 (Ross)</div>
<div style=3D"padding-left:27pt;">5/7: RC1 build </div>
<div style=3D"padding-left:27pt;">5/8 - 5/14: RC 1 testing</div>
<div style=3D"padding-left:27pt;">5/21: RC2 build</div>
<div style=3D"padding-left:27pt;">5/22-5/28: RC2 testing</div>
<div style=3D"padding-left:27pt;">5/31: Release</div>
<div> - 1.4.1 release: (PaulE)</div>
<div>&nbsp;&nbsp;&nbsp; 6/19: RC1 build</div>
<div>&nbsp;&nbsp;&nbsp; 6/20-6/25: RC1 testing</div>
<div>&nbsp;&nbsp;&nbsp; 6/26: RC2 build</div>
<div>&nbsp;&nbsp;&nbsp; 6/26-7/3: RC2 testing</div>
<div>&nbsp;&nbsp;&nbsp; 7/8: Release&nbsp;</div>
<div>&nbsp;</div>
<div>* Yocto 1.5 release criteria review - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status#Yocto_Project_1.5_Release_Criteria</u></font></a> </div=
>
<div>&nbsp;</div>
<div>&nbsp; - Centos: most current version of centos testing should be test=
ed</div>
<div>&nbsp; - We should review the number of medium&#43; bugs when we relea=
se, and address any concern.</div>
<div>&nbsp; - Bugs dispositioned: triaged, assigned to proper priority and =
target milestone.</div>
<div>&nbsp;</div>
<div>* SWAT team rotation: Laurentiu Palcu -&gt; Nitin</div>
<div>* Opens - 10 min </div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Beth: Yocto Project now is sponsored by outreach program for =
Women. have an intern working in summer. $ 5000 for 3 month. Attended Colla=
b summit, spdx, start looking at the functionality. Some work came out from=
 the work at university of omaha. FOSSology
project, code inspection for license contamination. Had a meeting yesterday=
 with Mark, Jefro, and others. Long discussion, driving 2.0 specification.<=
/div>
<div>&nbsp; - Michael: last week, ordering the new hardware. Will get even =
faster build. Meta-lsi layer released. Working on oe mailing list. Lots of =
preparation. Working on the QA chart automation. </div>
<div>&nbsp; - RP: moving from giving update in the meetings to the mailing =
list as promised to the community.</div>
<div>&nbsp; - Python version 3/RP: collecting data and community input, no =
decisions made. working with 2.0. If we were to upgrade to 3, would that ca=
use major pain? </div>
<div>Concern: a lot of distros don't have python 3?. Compatibility could be=
 an issue. Let me know if you have strong opinion. Beth: AB is an concern. =
But Buildbot should run python 3.&nbsp; </div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A718F9C58ORSMSX108amrcor_--
