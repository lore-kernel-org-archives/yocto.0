Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DECAE006C2
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 10:44:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Jun 2013 10:44:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,801,1363158000"; 
	d="scan'208,217";a="312184831"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 04 Jun 2013 10:44:38 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 4 Jun 2013 10:44:37 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.163]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.69]) with mapi id
	14.03.0123.003; Tue, 4 Jun 2013 10:44:37 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, June
	04, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac5hSxygR7IbKYILTAO4k9MzzcydJwAAAmNA
Date: Tue, 4 Jun 2013 17:44:36 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A7B0193D9@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, June 04, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 04 Jun 2013 17:44:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A7B0193D9ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A7B0193D9ORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
MichaelH, Saul, MarkH, Jessica, TomZ, Beth, KevinS, PaulE, RichardP, Bj=F6r=
nS, Corneliu, Denys, LaurentiuP, Belen, Ramana, Nitin, Darren, AnnM, Song

Minutes:

* Opens collection - 5 min (Song)
* Yocto 1.4.1 status - 10 min (Paul)
 - One build started last night, came up with 1 failure. We need to fix it =
and rebuild.
 - Will kick off another build after 1.5 M1 RC1.
 - Schedule: https://www.google.com/calendar/embed?src=3D3a0927ctps51u8rs2j=
v1uligdc%40group.calendar.google.com&ctz=3DAmerica/Los_Angeles
* Yocto 1.5 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status
  - Bug fixing: 293 open bugs, we may expect more bugs since QA will start =
M1 RC testing.
  - AB/build (Beth): Working on some issues: minnow hanging, some freescale=
 issues. 1.5 M1 RC1 is on track.
  - RP: Trying to get complier update (4.8) into M1. Have kernel hang, not =
making M1. Need to get it in M2. Mark: ppc e500 is failing, overall it is w=
orking well. Bruce will be back this week, we need to solve the arm kernel =
hang issue. Saul/mark: will sync on grub building issue with multi-lib enab=
led.
 - Saul: pulling things into M2 later this week, pending patches will be on=
 hold until M1 is built.

* SWAT team rotation: Bogdan Marinescu -> Cristian Iorga  (Song to follow u=
p)
* Opens - 10 min
* Team Sharing - 20 min
 - Saul: last week in Japan Linuxcon, did a couple of presentations about Y=
P. They are definitely interested. Hard to see how much uptake there is due=
 to language barrier, etc. Would like to touch base with Bjorn on ptest. Af=
ter the meeting.
 - Bjorn: preparing a release. Ptest is on hold, hope to get back on this s=
hortly. Will send update on what packages being worked on.
  RP: bitbake work, mqueue, worker process, it turned out to be challenging=
. There are some patches available if anyone is interested.



--_000_7E680CB2A76BB8438D08CF13C09FC53A7B0193D9ORSMSX108amrcor_
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
<div>MichaelH, Saul, MarkH, Jessica, TomZ, Beth, KevinS, PaulE, RichardP, B=
j=F6rnS, Corneliu, Denys, LaurentiuP, Belen, Ramana, Nitin, Darren, AnnM, S=
ong</div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div>Minutes:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.4.1 status - 10 min (Paul)</div>
<div> - One build started last night, came up with 1 failure. We need to fi=
x it and rebuild.</div>
<div> - Will kick off another build after 1.5 M1 RC1.</div>
<div> - Schedule: <a href=3D"https://www.google.com/calendar/embed?src=3D3a=
0927ctps51u8rs2jv1uligdc%40group.calendar.google.com&amp;ctz=3DAmerica/Los_=
Angeles"><font color=3D"blue"><u>https://www.google.com/calendar/embed?src=
=3D3a0927ctps51u8rs2jv1uligdc%40group.calendar.google.com&amp;ctz=3DAmerica=
/Los_Angeles</u></font></a></div>
<div>* Yocto 1.5 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
5_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.5_Status</u></font></a></div>
<div>&nbsp; - Bug fixing: 293 open bugs, we may expect more bugs since QA w=
ill start M1 RC testing. </div>
<div>&nbsp; - AB/build (Beth): Working on some issues: minnow hanging, some=
 freescale issues. 1.5 M1 RC1 is on track. </div>
<div>&nbsp; - RP: Trying to get complier update (4.8) into M1. Have kernel =
hang, not making M1. Need to get it in M2. Mark: ppc e500 is failing, overa=
ll it is working well. Bruce will be back this week, we need to solve the a=
rm kernel hang issue. Saul/mark: will
sync on grub building issue with multi-lib enabled.</div>
<div> - Saul: pulling things into M2 later this week, pending patches will =
be on hold until M1 is built.</div>
<div>&nbsp;</div>
<div>* SWAT team rotation: Bogdan Marinescu -&gt; Cristian Iorga&nbsp; (Son=
g to follow up)</div>
<div>* Opens - 10 min </div>
<div>* Team Sharing - 20 min</div>
<div> - Saul: last week in Japan Linuxcon, did a couple of presentations ab=
out YP. They are definitely interested. Hard to see how much uptake there i=
s due to language barrier, etc. Would like to touch base with Bjorn on ptes=
t. After the meeting.</div>
<div> - Bjorn: preparing a release. Ptest is on hold, hope to get back on t=
his shortly. Will send update on what packages being worked on.</div>
<div>&nbsp; RP: bitbake work, mqueue, worker process, it turned out to be c=
hallenging. There are some patches available if anyone is interested.</div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A7B0193D9ORSMSX108amrcor_--
