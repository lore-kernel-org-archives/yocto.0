Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B18C5E011AF
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 15:03:19 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Nov 2012 15:03:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,174,1355126400"; d="scan'208";a="173309619"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Nov 2012 15:03:14 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 27 Nov 2012 15:03:14 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.236]) with mapi id
	14.01.0355.002; Tue, 27 Nov 2012 15:03:05 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	November 27,
	2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNzPNgF+9zK4McMky2C0EpFcuxFA==
Date: Tue, 27 Nov 2012 23:03:13 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48607B7F@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, November 27, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 27 Nov 2012 23:03:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Dave, MichaelH, Ciby, PaulE, ScottG, Bj=F6rnS, Ramana, KevinS, TomZ, Eren, =
AlexG, ALexD, Richard, BrianR,Jefro, LaurentiuP, Nitin, BruceA, RossB, Scot=
tR, JeffP, MarkH, CristianI, DarrenH, DaveST, JessicaZ, Beth, Song, IoanaG.
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.4 status - 20 min (Song/team)
  - This week will have RC1 for QA to run a full pass testing.
  - QA will send out report on the full pass testing on last weekly build.
  - M1 feature complete has come and gone. This week is the planning week f=
or M2. Please schedule your features into M2 and make sure you understand t=
he requirement and please consider holidays and your vacation.
  - Master status: Ross: a couple of problems, mostly green. Saul: connman =
issue. Mihai: looking at it. Seems to be autobuilder issue. Can fix it by i=
ncreasing the timeout.
=A0
* SWAT team rotation: Ross -> LaurentiuP (Friday, RO national holiday, Beth=
 will cover that day)
* Opens - 10 min=20
  - Ramana: offline configuration tool. Have some ideas and thoughts, would=
 like to hear more feedback on it. Especially from Mark.=20
    . Dave: It is a good idea.=20
    . RP: would like to do it in bitbake. Darren and Mark are working on si=
milar things.=20
    . Mark: Initial idea is to use bitbake. Pass in packages, etc. without =
all recipe parsing, etc.=20
    . RP: The good place to discuss this is the mailing list.
    . Mark will respond this week. Darren will do so too.
  - Eren - location of the team.=20
    . Song: we have teams in US, UK, Romania, Canada, China. There are peop=
le here from Sweden, India, etc. We are across the globe.=20
    - Jefro:  website and wiki. Thanks for everyone who provided feedback, =
new website was launched. We are going to setup engineering process for mai=
ntenance and production. Anyone interested to help, please let Jefro know.
=A0
* Team Sharing - 20 min
  - Darren: have been working on ext for file generation code. Got a protot=
ype for pre-populating files/directories, basic frameworks is there. Will h=
ave patches out soon.=20
  - RP: traveling, fixing bugs on autobuilder, sstates, etc. Been an intere=
sting week, the autobuilder is mostly green now.
  - Cristian: trying to improve build appliance. Updated to a more recent v=
ersion of poky repos. Network testing is fixed. Produced some build to test=
 it. Tested in vmware player. Working on virualbox.=20
  - Radu: working system D. fixing some issues and failures on core-image-m=
inimal. Will work on sato. Code is in contrib branch with my name and 'syst=
emd', welcome comments and feedback.=20
  - LaurentiuP: working on package upgrades. Struggling with some relocatio=
n issues. It's fixed. Hopefully to move on to the next stage.=20
  - Iona: working on Eclipse for windows. Committed a few patches. A few ot=
her issues to be addressed, will send patches today. =20
  - MichaelH: Worked on bugzilla field description, newest version of Bugzi=
lla has the feature. Making sure we have more hard drives. Holiday networki=
ng maintenance. Had 4 short network outages. Coming week, generation of the=
 graphs RP asked. Recofnigration for testopia, etc.



