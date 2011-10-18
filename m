Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CDE8E004E9
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2011 08:53:55 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 18 Oct 2011 08:53:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,365,1315206000"; d="scan'208,217";a="63770646"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 18 Oct 2011 08:53:54 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 18 Oct 2011 08:53:54 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.14]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.170]) with mapi id
	14.01.0323.003; Tue, 18 Oct 2011 08:53:53 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - (Tuesday, October 18,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMja4hiFt/axRY9UGz6aWxHFaURQ==
Date: Tue, 18 Oct 2011 15:53:51 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F4BBA5@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - (Tuesday, October 18, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 18 Oct 2011 15:53:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A16F4BBA5ORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A16F4BBA5ORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Beth, Sean, Paul, Tom, Saul, Jessica, Joshua, Scott, Denys, Jeff, Matthew, =
Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.2 planning and bug fixing - 15 min (team)
  - In the process of individual team planning now, team planning should be=
 done by the end of this week. Consolidated schedule before ELCE.
  - Estimation for each feature: the key is to come up with the relative si=
ze of the features. We will all use 'perfect/utopian day' for the size.
  - Saul asked the community if they have capacity to work on any features =
and if they want to put any features in 1.2
    .Denys: TI's team has been looking into this and will have this discuss=
ion in ELCE.
    .Matthew: still trying to resource people, cannot commit, will chat wit=
h everyone this week.
    .Sean: would like to discuss this during ELCE also.
  - Jessica identified some major defects we should be working on. Tom has =
fixed one, Beth is working on 1308, already know the cause.
* Opens - 10 min
  .Stable point release (Josh)
   Pulling together the point release, security patches and others for 1.0.=
2. Would like people to be aware of this. If there is any suggestions, plea=
se let him know. The branch already there and doing well.

* Weekly team sharing (30 min)
  Matthew: haven't been working on anything around Yocto last week
  Jeff: not much from this week. Alex and Bruce working on the demo for ELC=
E.
  Denys: Working on the demo for ELCE. We do have 2 platforms. 1 brand new =
platforms. Setup Meta-TI mailing list. Working with Jefro.
  Scott: Last week, wrapping up final things for the docs. Taking care of s=
omething on the web. Meta-Intel BSP release note will be done.
  Joshua: last week working on 1.1 release, finish the video, point release=
. (ScottR) All HOB and ADT videos are available on the doc section of yocto=
project.org
  Jessica: working on 1.2 planning, prepare for ELCE.
  Saul: 1.2 planning, wrapping up 1.1, updates, incoming patches, starting =
to work on 1.2 features.
  Tom: last week getting meta-intel in buildable state, some other BSP work=
, review, streamlining BSP work, prepare for ELCE.
  Paul: worked on bug fixes. 1.2 planning. Writing recipes for web admin to=
ols on devices, good exercise for learning how to package plugins, etc., ca=
rry on with that this week, prepare for ELCE.
  Sean: preparations around Yocto, AB board related activities.
  Beth: Getting 1.1 out, this week, getting meta-intel out. Planning for 1.=
2. Already send out the announcement email for 1.1 release.





--_000_7E680CB2A76BB8438D08CF13C09FC53A16F4BBA5ORSMSX101amrcor_
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
<div>Beth, Sean, Paul, Tom, Saul, Jessica, Joshua, Scott, Denys, Jeff, Matt=
hew, Song</div>
<div>&nbsp;</div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">A=
genda:</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp;</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">*=
 Opens collection &#8211; 5 min (Song)</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">*=
 Yocto 1.2 planning and bug fixing &#8211; 15 min (team)</span></font></div=
>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; - In the process of individual team planning now, team planning shoul=
d be done by the end of this week. Consolidated schedule before ELCE.</span=
></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; - Estimation for each feature: the key is to come up with the relativ=
e size of the features. We will all use 'perfect/utopian day' for the size.=
</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; - Saul asked the community if they have capacity to work on any featu=
res and if they want to put any features in 1.2</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp;&nbsp;&nbsp; .Denys: TI's team has been looking into this and will hav=
e this discussion in ELCE.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp;&nbsp;&nbsp; .Matthew: still trying to resource people, cannot commit,=
 will chat with everyone this week.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp;&nbsp;&nbsp; .Sean: would like to discuss this during ELCE also. </spa=
n></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; - Jessica identified some major defects we should be working on. Tom =
has fixed one, Beth is working on 1308, already know the cause.</span></fon=
t></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">*=
 Opens - 10 min</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; .Stable point release (Josh)</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp;&nbsp; Pulling together the point release, security patches and others=
 for 1.0.2. Would like people to be aware of this. If there is any suggesti=
ons, please let him know. The branch already there
and doing well.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp;</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">*=
 Weekly team sharing (30 min)</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Matthew: haven't been working on anything around Yocto last week</spa=
n></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Jeff: not much from this week. Alex and Bruce working on the demo for=
 ELCE.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Denys: Working on the demo for ELCE. We do have 2 platforms. 1 brand =
new platforms. Setup Meta-TI mailing list. Working with Jefro.</span></font=
></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Scott: Last week, wrapping up final things for the docs. Taking care =
of something on the web. Meta-Intel BSP release note will be done.</span></=
font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Joshua: last week working on 1.1 release, finish the video, point rel=
ease. (ScottR) All HOB and ADT videos are available on the doc section of y=
octoproject.org</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Jessica: working on 1.2 planning, prepare for ELCE.</span></font></di=
v>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Saul: 1.2 planning, wrapping up 1.1, updates, incoming patches, start=
ing to work on 1.2 features.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Tom: last week getting meta-intel in buildable state, some other BSP =
work, review, streamlining BSP work, prepare for ELCE.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Paul: worked on bug fixes. 1.2 planning. Writing recipes for web admi=
n tools on devices, good exercise for learning how to package plugins, etc.=
, carry on with that this week, prepare for
ELCE.</span></font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Sean: preparations around Yocto, AB board related activities.</span><=
/font></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp; Beth: Getting 1.1 out, this week, getting meta-intel out. Planning fo=
r 1.2. Already send out the announcement email for 1.1 release.</span></fon=
t></div>
<div><font face=3D"Consolas" size=3D"2"><span style=3D"font-size:10.5pt;">&=
nbsp;</span></font></div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A16F4BBA5ORSMSX101amrcor_--
