Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8259BE003D3
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 13:17:26 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 13 Aug 2013 13:17:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,872,1367996400"; 
	d="scan'208,217";a="281531084"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Aug 2013 13:17:25 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 13 Aug 2013 13:17:24 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.212]) by
	ORSMSX156.amr.corp.intel.com ([169.254.8.154]) with mapi id
	14.03.0123.003; Tue, 13 Aug 2013 13:17:24 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	August 13, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac6YYgvMWLBYbuhlRGCdPumjpQ05FQAAAsaA
Date: Tue, 13 Aug 2013 20:17:24 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7EEB5BDC@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, August 13, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 13 Aug 2013 20:17:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB5BDCORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB5BDCORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
DavidW, Nitin, SteveL, Saul, DaveST, Beth, ChrisL, ScottR, TomZ, MichaelH, =
MarkH, Denys, BruceA, Cristian, Cristiana, Richard, JeffP, Darren, Belen, S=
imar, PaulE, Song

Welcome back, Richard!

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Bug fixing: 32 bugs fixed in the past week. WDD number is coming down. =
Reiterate the priority: bug fixing and package update. Wondering if we can =
have a bug squashing contest for the release. Anyone has any ideas?
  - feature development:
    . 3429. Duplicate of Fenrus updater moving to the future.
    . 3847/Tom: Design ready, waiting for Darren to review. It seems risky =
to make M4. Kernel team will discuss tomorrow.
    . 3867/Saul: Saul is working with Mulhern on this. Not sure if it can m=
ake M4.
    . 4072/Bruce: in progress, several people working on it. So far, it is =
on track.
    . 4079/Paul/Mark: Mark is working with Paul on this. Today there will b=
e some patches for the first phase. Mark will work on the second pass which=
 involves package group, figuring out the solution.
  - Nitin 4444:video encode/transcode, depending on some work to be upstrea=
med, is trending toward late August or early Sep.
  - M4 cut-off date, feature complete: 8/25. Please get your code in asap.
  - Ramana: Richard is back, would like him to review the binary configurat=
ion tool.
    .Richard: Many things on hand, trying to take a look at this.
* SWAT team rotation: Ross -> Cristiana
* Opens - 10 min
  - Paul: 1.4.2. Final patch sets have been merged. But noticed Saul just s=
ent more fixed we would like to have.
    . Song/Alex: a short window this week and next. If we can get the build=
 done this week, then QA can test. Otherwise, we will have to wait until 1.=
5 releases (Oct. 18th).
* Team Sharing - 20 min
  -Beth: there is a new feature in AB. If a build is a release, you need to=
 indicate it is a release, it will be marked, and won't be deleted. Bug #44=
81, human readable release, you need to name the release. Will be sending o=
ut a note/email on this.



--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB5BDCORSMSX108amrcor_
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
<font face=3D"Consolas" size=3D"2"><span style=3D"font-size:11pt;">
<div>Attendees:</div>
<div>DavidW, Nitin, SteveL, Saul, DaveST, Beth, ChrisL, ScottR, TomZ, Micha=
elH, MarkH, Denys, BruceA, Cristian, Cristiana, Richard, JeffP, Darren, Bel=
en, Simar, PaulE, Song&nbsp; </div>
<div>&nbsp;</div>
<div>Welcome back, Richard!</div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Bug fixing: 32 bugs fixed in the past week. WDD number is com=
ing down. Reiterate the priority: bug fixing and package update. Wondering =
if we can have a bug squashing contest for the release. Anyone has any idea=
s?</div>
<div>&nbsp; - feature development:</div>
<div>&nbsp;&nbsp;&nbsp; . 3429. Duplicate of Fenrus updater moving to the f=
uture.</div>
<div>&nbsp;&nbsp;&nbsp; . 3847/Tom: Design ready, waiting for Darren to rev=
iew. It seems risky to make M4. Kernel team will discuss tomorrow.</div>
<div>&nbsp;&nbsp;&nbsp; . 3867/Saul: Saul is working with Mulhern on this. =
Not sure if it can make M4.</div>
<div>&nbsp;&nbsp;&nbsp; . 4072/Bruce: in progress, several people working o=
n it. So far, it is on track. </div>
<div>&nbsp;&nbsp;&nbsp; . 4079/Paul/Mark: Mark is working with Paul on this=
. Today there will be some patches for the first phase. Mark will work on t=
he second pass which involves package group, figuring out the solution.</di=
v>
<div>&nbsp; - Nitin 4444:video encode/transcode, depending on some work to =
be upstreamed, is trending toward late August or early Sep.</div>
<div>&nbsp; - M4 cut-off date, feature complete: 8/25. Please get your code=
 in asap. </div>
<div>&nbsp; - Ramana: Richard is back, would like him to review the binary =
configuration tool.</div>
<div>&nbsp;&nbsp;&nbsp; .Richard: Many things on hand, trying to take a loo=
k at this. </div>
<div>* SWAT team rotation: Ross -&gt; Cristiana</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Paul: 1.4.2. Final patch sets have been merged. But noticed S=
aul just sent more fixed we would like to have.</div>
<div>&nbsp;&nbsp;&nbsp; . Song/Alex: a short window this week and next. If =
we can get the build done this week, then QA can test. Otherwise, we will h=
ave to wait until 1.5 releases (Oct. 18th).</div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; -Beth: there is a new feature in AB. If a build is a release, y=
ou need to indicate it is a release, it will be marked, and won't be delete=
d. Bug #4481, human readable release, you need to name the release. Will be=
 sending out a note/email on this.</div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7EEB5BDCORSMSX108amrcor_--
