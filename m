Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74097E006DA
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 10:03:13 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 May 2012 10:03:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="143484849"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 15 May 2012 10:03:12 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 15 May 2012 10:02:55 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.121]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.192]) with mapi id
	14.01.0355.002; Tue, 15 May 2012 10:02:55 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, May
	15, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNMryRLljqoSyA90e8oT1Ea8+03g==
Date: Tue, 15 May 2012 17:02:54 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A483F1AB8@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, May 15, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 15 May 2012 17:03:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Josh, Sean, Jessica, ScottG, Mark, Darren, Denys, Jefro, Beth, Jeff, Matthe=
w, Laurentiu, Michael, Bruce, Chris Larson, Ciby, Song
=A0
Agenda
* Opens collection - 5 min (Song)
* 1.2.1 update - 10 min (ScottG)
  - We have 21 bugs fixed for 1.2.1, 23 more remain open. Current RC1 is Ju=
ly 2nd. First Monday in July. A little behind on merging patches.
* 1.1.2 update - 10 min (Josh)
  - Not much changed, going through bug list, the branch has not changed mu=
ch.
  - Matthew: It's nice to have a release, but we are tracking fixes closely=
. Matthew will talk Josh on IRC to possibly include those in 1.1.2.
* Yocto 1.3 status  - 10 min (Song/team)
  - 1.3 feature list: https://wiki.yoctoproject.org/wiki/Yocto_1.3_Features=
=20
  - 1.3 schedule: https://wiki.yoctoproject.org/wiki/Yocto_1.3_Schedule=20
  - Process doc, will put it on wiki and send it to the public mailing list=
 for review this week
  - Action Item for the team: complete 1.3 planning by EOD tomorrow. Comple=
te M1 planning by EOD this Friday: features in M1 need to be smaller than 5=
D, estimate can be updated based on latest information.
  - QA: test plan for 1.3, Laurentiu will work with Jiajun.
  - Release criteria review: https://wiki.yoctoproject.org/wiki/Yocto_Proje=
ct_v1.3_Status=20
* Beth: AB has some infrastructure upgrade, there is some instability. Havi=
ng some issues with build history repo, Paul was working on that yesterday.=
 Some other failures. Right now we are building meta-intel. Mails will be c=
ontinued for build status.
* SWAT team rotation: Saul - Darren
* Opens - 10 min
  - Sean: glibc changes (header change) are causing some problems, 2.16 may=
 have this fixed. Need to update. Sean will open a bug on this.
* Team Sharing - 20 min
  - Bruce: working on a few bugs, concentrating on 3.4, qemu64, simulation,=
 etc.
  - Michael: moving service to dedicated VMs, fighting network attack. Fina=
lly got linux foundation address. This week will work on dev cluster for be=
th. Bugilla re-classification got postponed. Sean: Can we post the categori=
es on the wiki. There is no reason that we cannot.
  - Beth: Yocto Project is going to have an intern, working on training. Lo=
ok at some code for license manifest, rewriting it to fix some issues. Prep=
ing something to minimize AB downtime, ETA either this week or next week.
  - Darren: Working FRI II BSP, working through final enablement I2C, GPIO,=
 polished, etc. Helping with some kernel work. Additional BSPs. Finishing u=
p FRI II this week.=20
  - Mark: working on RPM, got it finally complete, hopefully I can submit t=
oday. Got some performance issues. 2420, generic issue. Slow performance ss=
tate cache data. Did some optimization things.=20
  - ScottG: 1.2.1 work, outline for YP training screencast, how to customiz=
e image, how to use some tools in 1.2, 5-min screencast on making use of ou=
r source control, work on recipe. Linux-Zigbee is building and running, it'=
s not interacting with hardware, 90% complete. Doing another 90% to make it=
 work
  - Jessica: bug scrub for 1.3, 400 bugs, bucket them, working on bugs for =
1.3 and 1.2.1. Song: Richard needs help on prioritizing HOB2 bugs, Jessica =
will take a look.
  - Sean: eglic bug, category, will work with Song
  - Josh: last week on 1.1.2, this week continue 1.1.2, and other bugs.
  - Ciby: Nothing specific.
  - Chris: primary working on fixing some bugs on oe-core, master, working =
on mentor backlog.=20
  - Paul: Continuing to work on the ability to take changes from local chan=
ges and files. 2044, 75% done.=20


