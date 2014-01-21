Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59CF3E00851
	for <yocto@yoctoproject.org>; Tue, 21 Jan 2014 11:05:47 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jan 2014 11:05:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,697,1384329600"; 
	d="scan'208,217";a="468545528"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2014 11:05:38 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 21 Jan 2014 11:05:37 -0800
Received: from orsmsx108.amr.corp.intel.com ([169.254.4.180]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.167]) with mapi id
	14.03.0123.003; Tue, 21 Jan 2014 11:05:37 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	January 21, 2014 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac8W2xcY6LD1p0G9Q9Wp4yhoJEweWgAAKGwg
Date: Tue, 21 Jan 2014 19:05:36 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A8EFE8B14@ORSMSX108.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, January 21, 2014 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 21 Jan 2014 19:05:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A8EFE8B14ORSMSX108amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFE8B14ORSMSX108amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:
Vali, Stephen, Matthew, Paul, Jessica, ScottR, Cristian, Richard, Tom, Mark=
H, Saul, Ross, Beth, MichaelH, Nitin, AlexG, AlexD, Belen, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.6 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.6_Status
  https://wiki.yoctoproject.org/wiki/Yocto_1.6_Features
  - Had a bug sprint week last week, resolved 26 bugs, better than we norma=
lly do. The WDD number is coming down a little. We stopped the trend, but d=
id not make a huge dent on the bug numbers.
  - Planning a RC2 for M2, compared with RC1, it has a lot more changes, pr=
obably 80 or so. It's certainly not a small incremental changes. But no big=
 features. Will have RC2 once we have the full pass report and the build ap=
pliance issue is fixed.
  - There was a small performance issue. We got a patch in for it, overall =
build time has been improved by 2 minutes. The patch queue is moving, looki=
ng good.
  - QA run full pass on RC1, report will be out soon. So far no major issue=
s.
  - Saul: 1.4.3 Paul is looking in some issues, once resolved, will generat=
e a build for QA. Looking at mid Feb release.
* SWAT team rotation: Ross -> Cristian
* Opens - 10 min
* Team Sharing - 20 min
  - Cristian: package upgrade and bug fix. Next step will work on feature r=
elated to HW testing. There are lots of change in communication and media s=
tack. Vali would like to talk with Cristian. Paul: there are some talk rega=
rding future direction. There is a mailing list for this, feel free to join=
.(https://lists.yoctoproject.org/listinfo/automated-testing)
  - Beth: switched over to new AB software. 3 and half hour rebuild/rootfs =
now, reduced by one hour. Need more run for an average. Removed YP blocker.=
 Changed git. RP: package part won't start until non-package part completes=
. Still some improvement there. Beth is aware of that.
  - Michael: Replacing drives, continuing to refresh builders, Google compu=
te engine available, looking into how that will work.




--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFE8B14ORSMSX108amrcor_
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
<div>Vali, Stephen, Matthew, Paul, Jessica, ScottR, Cristian, Richard, Tom,=
 MarkH, Saul, Ross, Beth, MichaelH, Nitin, AlexG, AlexD, Belen, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.6 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
6_Status"><font face=3D"Calibri" color=3D"blue"><u>https://wiki.yoctoprojec=
t.org/wiki/Yocto_Project_v1.6_Status</u></font></a></div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_1.6_Feature=
s"><font face=3D"Calibri" color=3D"blue"><u>https://wiki.yoctoproject.org/w=
iki/Yocto_1.6_Features</u></font></a></div>
<div>&nbsp; - Had a bug sprint week last week, resolved 26 bugs, better tha=
n we normally do. The WDD number is coming down a little. We stopped the tr=
end, but did not make a huge dent on the bug numbers.</div>
<div>&nbsp; - Planning a RC2 for M2, compared with RC1, it has a lot more c=
hanges, probably 80 or so. It's certainly not a small incremental changes. =
But no big features. Will have RC2 once we have the full pass report and th=
e build appliance issue is fixed.</div>
<div>&nbsp; - There was a small performance issue. We got a patch in for it=
, overall build time has been improved by 2 minutes. The patch queue is mov=
ing, looking good.</div>
<div>&nbsp; - QA run full pass on RC1, report will be out soon. So far no m=
ajor issues.</div>
<div>&nbsp; - Saul: 1.4.3 Paul is looking in some issues, once resolved, wi=
ll generate a build for QA. Looking at mid Feb release.</div>
<div>* SWAT team rotation: Ross -&gt; Cristian </div>
<div>* Opens - 10 min </div>
<div>* Team Sharing - 20 min</div>
<div>&nbsp; - Cristian: package upgrade and bug fix. Next step will work on=
 feature related to HW testing. There are lots of change in communication a=
nd media stack. Vali would like to talk with Cristian. Paul: there are some=
 talk regarding future direction. There
is a mailing list for this, feel free to join.(<a href=3D"https://lists.yoc=
toproject.org/listinfo/automated-testing"><font size=3D"2" color=3D"blue"><=
span style=3D"font-size:10pt;"><u>https://lists.yoctoproject.org/listinfo/a=
utomated-testing</u></span></font></a>)
</div>
<div>&nbsp; - Beth: switched over to new AB software. 3 and half hour rebui=
ld/rootfs now, reduced by one hour. Need more run for an average. Removed Y=
P blocker. Changed git. RP: package part won't start until non-package part=
 completes. Still some improvement there.
Beth is aware of that.</div>
<div>&nbsp; - Michael: Replacing drives, continuing to refresh builders, Go=
ogle compute engine available, looking into how that will work. </div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Times New Roman">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A8EFE8B14ORSMSX108amrcor_--
