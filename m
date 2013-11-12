Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFF4CE017BE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 14:45:33 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Nov 2013 14:45:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,688,1378882800"; 
	d="scan'208,217";a="426486812"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2013 14:45:32 -0800
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 12 Nov 2013 14:45:32 -0800
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.149]) by
	ORSMSX111.amr.corp.intel.com ([169.254.11.246]) with mapi id
	14.03.0123.003; Tue, 12 Nov 2013 14:45:31 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	November 12,
	2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac7f+M6VJKPE9kTXQiuihlUV0WVtlwAAAu8g
Date: Tue, 12 Nov 2013 22:45:30 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EF9F4AB@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, November 12, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 12 Nov 2013 22:45:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EF9F4ABORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF9F4ABORSMSX108amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Jessica, Matthew, Nitin, Beth, Belen, IonutC, AlexD, ScottR, Bruce, Saul, D=
arren, Michael, Richard, JeffP, TomZ, Ross, Bj=F6rn, Corneliu, Mark, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.6 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_1.6_Features
  https://wiki.yoctoproject.org/wiki/Yocto_1.6_Schedule
  - Planning: We need to map every medium+ and high feature to each milesto=
ne. Team leads and Song will follow up with you if you have not done so.
  - Saul/Beth: Do a push to master today, do a full build, plan for a weekl=
y test from QA.
  - Beth: trying to optimize the git fetcher. Ross has been testing this. T=
hings are moving a lot quicker. Let beth know if you have any issues.
  - 1.5.1: first attempt after M1, week of Dec. 16th or earlier in the week=
 of Dec. 9th.  After new year is another window. Paul and Saul are working =
with Robert to reduce the patch set down.
  - Bug fixes. Bug count is going up, please keep an eye on it and fix when=
ever you have time.
* SWAT team rotation: Nitin -> Beth.
* Opens - 10 min
  - Saul- Ptest: in discussion with some folks on this. Automated testing i=
s priority for 1.6. There are a couple of teams interested in helping. Woul=
d like to see if we can setup a wiki page to coordinate recipes we are work=
ing on. Bjorn will start collecting this information tomorrow. ScottR: in t=
he doc, there is a ptest section with recipes enabled. Please keep ScottR i=
nvolved. Saul/RP: Maybe need to be generic on this. Give example recipes bu=
t no complete list.
  - Darren - bug management
    . Have a weekly bug triage. Over the years, bug count increased. A lot =
of bugs are in medium. A lot of not resolved because people will not get to=
 them. Expect to see bugs distributed more evenly across priorities. Move b=
ugs that people will not get to into 'future'. More janitor bugs for new pe=
ople to pick up and help.
  - RP: performance
    . Kernel build time took long time. Did analysis, multiple copying of f=
iles eliminated. A few patches sent, merged into the master. Reduced a minu=
te and half for kernel build time. Configuration optimization, but no signi=
ficant result. 3 ideas: strip binary, but time to strip is also significant=
. Native compiler, but that slows the build down.  Use hardlink instead of =
copy files. Help storage, but not so much on time. Any ideas, RP is interes=
ted.
  - Corneliu- oe-selftest
    . The feature has been in Bugzilla for a while. Started working on it. =
Unit test in the context of build environment or ourside of it. We have ske=
leton loading modules and testing it. Are improving it. Working on meta-sel=
ftest layer. Hope to send patches for review by the end of this weekend.
* Team Sharing - 20 min
  - MichaelH: new storage array testing, burning, etc. everything is going =
well. Increased our capacity, redundancy, etc. Planned swapping in devices =
last Friday, but did not work out. Will schedule this Friday. 5 hour down t=
ime for AB.





--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF9F4ABORSMSX108amrcor_
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
<div>Jessica, Matthew, Nitin, Beth, Belen, IonutC, AlexD, ScottR, Bruce, Sa=
ul, Darren, Michael, Richard, JeffP, TomZ, Ross, Bj=F6rn, Corneliu, Mark, S=
ong</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.6 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.6_Feature=
s"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_1.6_Fea=
tures</u></font></a></div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.6_Schedul=
e"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_1.6_Sch=
edule</u></font></a></div>
<div>&nbsp; - Planning: We need to map every medium&#43; and high feature t=
o each milestone. Team leads and Song will follow up with you if you have n=
ot done so.</div>
<div>&nbsp; - Saul/Beth: Do a push to master today, do a full build, plan f=
or a weekly test from QA. </div>
<div>&nbsp; - Beth: trying to optimize the git fetcher. Ross has been testi=
ng this. Things are moving a lot quicker. Let beth know if you have any iss=
ues.</div>
<div>&nbsp; - 1.5.1: first attempt after M1, week of Dec. 16th or earlier i=
n the week of Dec. 9th.&nbsp; After new year is another window. Paul and Sa=
ul are working with Robert to reduce the patch set down.</div>
<div>&nbsp; - Bug fixes. Bug count is going up, please keep an eye on it an=
d fix whenever you have time.</div>
<div>* SWAT team rotation: Nitin -&gt; Beth.</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Saul- Ptest: in discussion with some folks on this. Automated=
 testing is priority for 1.6. There are a couple of teams interested in hel=
ping. Would like to see if we can setup a wiki page to coordinate recipes w=
e are working on. Bjorn will start collecting
this information tomorrow. ScottR: in the doc, there is a ptest section wit=
h recipes enabled. Please keep ScottR involved. Saul/RP: Maybe need to be g=
eneric on this. Give example recipes but no complete list.&nbsp;&nbsp; </di=
v>
<div>&nbsp; - Darren - bug management</div>
<div>&nbsp;&nbsp;&nbsp; . Have a weekly bug triage. Over the years, bug cou=
nt increased. A lot of bugs are in medium. A lot of not resolved because pe=
ople will not get to them. Expect to see bugs distributed more evenly acros=
s priorities. Move bugs that people will not get
to into 'future'. More janitor bugs for new people to pick up and help. </d=
iv>
<div>&nbsp; - RP: performance</div>
<div>&nbsp;&nbsp;&nbsp; . Kernel build time took long time. Did analysis, m=
ultiple copying of files eliminated. A few patches sent, merged into the ma=
ster. Reduced a minute and half for kernel build time. Configuration optimi=
zation, but no significant result. 3 ideas: strip
binary, but time to strip is also significant. Native compiler, but that sl=
ows the build down.&nbsp; Use hardlink instead of copy files. Help storage,=
 but not so much on time. Any ideas, RP is interested.</div>
<div>&nbsp; - Corneliu- oe-selftest</div>
<div>&nbsp;&nbsp;&nbsp; . The feature has been in Bugzilla for a while. Sta=
rted working on it. Unit test in the context of build environment or oursid=
e of it. We have skeleton loading modules and testing it. Are improving it.=
 Working on meta-selftest layer. Hope to send patches
for review by the end of this weekend. </div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - MichaelH: new storage array testing, burning, etc. everything=
 is going well. Increased our capacity, redundancy, etc. Planned swapping i=
n devices last Friday, but did not work out. Will schedule this Friday. 5 h=
our down time for AB.</div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EF9F4ABORSMSX108amrcor_--
