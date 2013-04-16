Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59821E01469
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 15:27:18 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 16 Apr 2013 15:27:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,487,1363158000"; 
	d="scan'208,217";a="287129391"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 16 Apr 2013 15:27:16 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 16 Apr 2013 15:27:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.150]) with mapi id
	14.01.0355.002; Tue, 16 Apr 2013 15:27:16 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Project Technical Team Meeting - Tuesday, April 16, 2013
	8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac468XU7WkgD/qIoTNmSG84uXa8oigAAApbQ
Date: Tue, 16 Apr 2013 22:27:15 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A70F364BC@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Yocto Project Technical Team Meeting - Tuesday, April 16, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 16 Apr 2013 22:27:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_7E680CB2A76BB8438D08CF13C09FC53A70F364BCORSMSX101amrcor_"

--_000_7E680CB2A76BB8438D08CF13C09FC53A70F364BCORSMSX101amrcor_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Beth, ScottR, Bj=F6rnS, KevinS, TomZ, Corneliu, JeffP, Belen, Richard=
P, RossB, PaulE, Nitin, SeanH, Bruce, Darren, Song

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.3.1 Release - Ross.
  - The release is out. Building out 1.3.2. Hopefully won't take as long as=
 1.3.1
  - This is the first release with new AB infrastructure. We did comparison=
 between 1.3.1 and 1.3, less than 0.1% difference.
  - Big thanks to Ross, Beth and everyone who contributed to this release. =
Congratulations to the team.
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
  - 1.4 RC1 is out for testing. There are a few fixes that need to be in RC=
2. So this week we will generate RC2 and run full pass on RC2.
  - a whole lot of patches went in, not happy, but no choice. Performance d=
egradation found and fixed. Showed the value of the performance testing. A =
few bugs recently opened. Worry me (RP) a little bit, seems like we are sti=
ll finding issues.
  - 1.4 release looking good. Saul seems to have introduced an issue with b=
usybox, Saul will look into it today.
  - Patches not going in in the next few hours probably won't make the rele=
ase. ScottR: does the deadline apply for docs? No.
  - Big thanks to the QA team, all 1.4 merged features have been verified.
  - Bug fixing: 80 bugs resolved last week. Record for the release. Now the=
 total # of open bugs stands at around 270. looking good for the release.
  - RP has been closing bugs. Cleanup. Low hanging fruits. Encourage others=
 to do the same.
  - Let's keep our focus on 1.4 release. Keep our fingers crossed before we=
 get 1.4 out of the door.

* SWAT team rotation: Saul would like to stay on for this week
* Opens - 10 min
  - Web HOB (Belen): The plan is to do something for 1.5. probably starting=
 from build and analysis. Some features are already in Bugzilla. If you are=
 interested in help in anyway, any feedback, please get in touch with the m=
ailing list, getting touch with Belen. (https://wiki.yoctoproject.org/wiki/=
Web_Hob_design_project_with_T%26T & http://www.yoctoproject.org/webhob/phas=
e3_final_web_prototype/dashboard.html)
* Team Sharing - 20 min




--_000_7E680CB2A76BB8438D08CF13C09FC53A70F364BCORSMSX101amrcor_
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
<div>Saul, Beth, ScottR, <font size=3D"2"><span style=3D"font-size:10pt;">B=
j=F6rnS, </span></font>KevinS, TomZ, Corneliu, JeffP, Belen, RichardP, Ross=
B, PaulE, Nitin, SeanH, Bruce, Darren, Song</div>
<div>&nbsp;</div>
<div>Agenda:</div>
<div>&nbsp;</div>
<div>* Opens collection - 5 min (Song)</div>
<div>* Yocto 1.3.1 Release - Ross. </div>
<div>&nbsp; - The release is out. Building out 1.3.2. Hopefully won't take =
as long as 1.3.1</div>
<div>&nbsp; - This is the first release with new AB infrastructure. We did =
comparison between 1.3.1 and 1.3, less than 0.1% difference.</div>
<div>&nbsp; - Big thanks to Ross, Beth and everyone who contributed to this=
 release. Congratulations to the team.</div>
<div>* Yocto 1.4 status - 10 min (Song/team)</div>
<div>&nbsp; <a href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.=
4_Status"><font color=3D"blue"><u>https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.4_Status</u></font></a></div>
<div>&nbsp; - 1.4 RC1 is out for testing. There are a few fixes that need t=
o be in RC2. So this week we will generate RC2 and run full pass on RC2.</d=
iv>
<div>&nbsp; - a whole lot of patches went in, not happy, but no choice. Per=
formance degradation found and fixed. Showed the value of the performance t=
esting. A few bugs recently opened. Worry me (RP) a little bit, seems like =
we are still finding issues.</div>
<div>&nbsp; - 1.4 release looking good. Saul seems to have introduced an is=
sue with busybox, Saul will look into it today. </div>
<div>&nbsp; - Patches not going in in the next few hours probably won't mak=
e the release. ScottR: does the deadline apply for docs? No.</div>
<div>&nbsp; - Big thanks to the QA team, all 1.4 merged features have been =
verified. </div>
<div>&nbsp; - Bug fixing: 80 bugs resolved last week. Record for the releas=
e. Now the total # of open bugs stands at around 270. looking good for the =
release.</div>
<div>&nbsp; - RP has been closing bugs. Cleanup. Low hanging fruits. Encour=
age others to do the same. </div>
<div>&nbsp; - Let's keep our focus on 1.4 release. Keep our fingers crossed=
 before we get 1.4 out of the door.</div>
<div><font face=3D"Calibri">&nbsp;</font></div>
<div>* SWAT team rotation: Saul would like to stay on for this week</div>
<div>* Opens - 10 min </div>
<div>&nbsp; - Web HOB (Belen): The plan is to do something for 1.5. probabl=
y starting from build and analysis. Some features are already in Bugzilla. =
If you are interested in help in anyway, any feedback, please get in touch =
with the mailing list, getting touch
with Belen. (<a href=3D"https://wiki.yoctoproject.org/wiki/Web_Hob_design_p=
roject_with_T%26T"><font size=3D"2" color=3D"blue"><span style=3D"font-size=
:10pt;"><u>https://wiki.yoctoproject.org/wiki/Web_Hob_design_project_with_T=
%26T</u></span></font></a> &amp; <a href=3D"http://www.yoctoproject.org/web=
hob/phase3_final_web_prototype/dashboard.html"><font size=3D"2" color=3D"bl=
ue"><span style=3D"font-size:10pt;"><u>http://www.yoctoproject.org/webhob/p=
hase3_final_web_prototype/dashboard.html</u></span></font></a>)</div>
<div>* Team Sharing - 20 min</div>
<div><font face=3D"Calibri" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Calibri" color=3D"#1F497D">&nbsp;</font></div>
<div><font face=3D"Calibri">&nbsp;</font></div>
</span></font>
</body>
</html>

--_000_7E680CB2A76BB8438D08CF13C09FC53A70F364BCORSMSX101amrcor_--
