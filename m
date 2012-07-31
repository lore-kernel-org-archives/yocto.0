Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E613E0027B
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 16:16:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 Jul 2012 16:16:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="180001636"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 31 Jul 2012 16:16:32 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 31 Jul 2012 16:16:31 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.44]) with mapi id
	14.01.0355.002; Tue, 31 Jul 2012 16:16:31 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, July
	31, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHNb3KEr2F0YlWe/kyFP7+D9I9L+Q==
Date: Tue, 31 Jul 2012 23:16:30 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A484D7668@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 31, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 31 Jul 2012 23:16:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Dave, LaurentiuP, LaurentiuS, Alex, Mark, Nitin, Beth, Paul, MichaelH, Kevi=
n, Tom, Jessica, Richard, Darren, Bruce, Jefro, Ross, JeffP, ChrisL, Bjorn,=
 Song
=A0
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
  - Reminder to the team: feature freeze for M3 is coming up this Sunday ni=
ght (US time). Please get your features in asap and allow some patch review=
 and rework time.
  - Bug trend is still going up. We got more open medium+ bugs. Please focu=
s more on bug fixing.
  - P1+high item review:
    . 2038/BogdanM: at risk, maybe delayed to M4
    . 1649/Bruce: on track.
    . 2396/Bruce: LTSI integration. The LTSI release may not be out until t=
he end of this year. We are forming up a plan now. Expect to announce in th=
e upcoming LinuxCon on our plan.
    . 2165/Cristian: working on it, on track.
    . 1621/LaurentiuP: working on this. Will try to get it in for M3.
    . 1991/anliming: 80% done. Song is following up with Shane/Liming on th=
is.
    . 2614/Paul: on track.
    . 1179/Richard: On track. Will pull patches together this week.
    . 1369/BogdanM: at risk, may need to move to M4.=20
    . 61/LaurentiuP: at risk, may need to move to M4.
    . 2010/MichaelH: at risk. Need another 2 weeks after the 2 new AB machi=
nes online. Need to move to M4.
    . 2420/Paul: Original problems have been fixed. Will close this bug and=
 open new ones to track progress on other related issues. New ones won't be=
 high.
    . 2775/PaulG,Darren: MPC BSP has been fixed. Waiting for a patch merge =
in kernel. Will close this one if the patch merges. If not, then close this=
 one and open new bugs to track remaining issues.
    . 2319/RossB: will look at it tomorrow. Song will follow up.
    . 2162/Valentin: at risk, may be moved to M4.
  - RP/Master status: a number of changes coming in. various people on vaca=
tion, limited resource. Master is not stable, it's being worked on, will st=
abilize as soon as we can. May slow down the rate of changes going in. Comp=
licated by the 2 new autobuilder machines, related to sstate changes.=20
=A0
* SWAT team rotation: Nitin -> Beth
=A0
* Opens - 10 min
  Nitin: SWAT team rotation. Covered.
* Team sharing - 20 min
 =20
  - Mark: refactoring image creation deployment mechanism. Will send email =
today on the solution. Appreciate if people can comment. Sent to Richard an=
d Darren first. RP: it seems like a rewrite. Mark: The intent is not to rew=
rite. We want to change something, would like to do it step by step. It doe=
s not have to be done in 1.3. Darren: we do have a bug open for image creat=
ion. Dave: We have done related work (PaulE). Mark: what we have for 1.3 is=
 good enough, this is the next step. RP: try to improve the code legibility=
, etc.
=A0
  - Paul: some changes on rootfs, all of them in master. There were a coupl=
e of issues, they are merged now as well. Things are looking reasonably goo=
d there. Looking at some QT bugs now. Work in conjunction with recipe work.=
 A bunch of cleanup work, created a simple wiki page. Next week continue on=
 bugs.
=A0
  - Michael: working on problems of down network interfaces under heavy loa=
d. They are working now. Will be watching closely. Centralized logging setu=
p now. Central logging server is working. Wiki, networking change is coming=
 up. LF moving YP to a quieter subnet. This week renumbering internal addre=
sses, should not notice any downtime. Bug stats, not matching in the wiki, =
working with LaurentiuP, Converting into charts.
=A0
RP: ssates changes: if we use different OS such as ubuntu and fedora, sstat=
e checksum could have problems due to different libs, etc., we fixed this i=
ssue. Migration of existing structures may not be that important at this po=
int. It will just use the new structure.=20
=A0
Laurentiu: relocatable SDK, 2383

