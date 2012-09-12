Return-Path: <song.liu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F163E0144C
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 22:20:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Sep 2012 22:20:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,407,1344236400"; d="scan'208";a="191893990"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 11 Sep 2012 22:19:59 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 11 Sep 2012 22:19:59 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.146]) with mapi id
	14.01.0355.002; Tue, 11 Sep 2012 22:19:59 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	September 11,
	2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNkKZAYA+bkahy+k6Wvacj3N4+DQ==
Date: Wed, 12 Sep 2012 05:19:58 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4852F777@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, September 11, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 12 Sep 2012 05:20:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
MichaelH, Christiana, Bogdan, Christy, PaulE, Andrei, Tima, Tom, Ross, Bele=
n, Kevin, Mark, LaurentiuP, Richard,  Andy, Bjorn, Jessica, Darren, Dave, S=
ong
=A0
Andy: from UK, observing for any firm involvement , looking to get more inf=
ormation.
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
    - Bug fixing: good progress last week, 2 high M4 bugs. One is closed. T=
he other one (2162) already has patches in review.
    - RC status/Saul: We recreated RC1 (which can be called RC2), Beth did =
some work on AB, worked with Jessica for adt installer, there was some issu=
es, resolved over the weekend. We dropped RC1 and moved forward. Now workin=
g on RC2.=20
    - X32 progress: With recent update in the kernel, eglibc and gcc, we ca=
n now create x32 BSPs without the x32 layer, but with one simple change in =
kernel config. We are working to trigger the change automatically. Should b=
e done this week or so.=20
    - QA: We started weekly testing this morning. The full pass testing sho=
uld be done by the end of this week.
    - RP: wants to highlight the point on the schedule we're at - starting =
to switch from feature development to stabilization and bug fixing. If ther=
e is any big change you would like to put in, please let me know asap. We a=
re at a point we need to concentrate on bug fixing. HOB has some good fixes=
.=20
=A0
* SWAT team rotation: Laurentiu -> Mihai
* Opens - 10 min
=A0
* Team sharing - 20 min
=A0
  - Mark: across link, some patches, arm has particular issues, if you see =
any prelink issue, we probably have a fix for it. We are working one meta-s=
elinux. If you can help, let me know. Last week in LinuxCon, we already hav=
e a large number of patches for se-linux.
  - MichaelH: Worked on bugzilla, adt issues, did some work for the data ce=
nter. There were some people locked out of the servers. Resolved those issu=
e. Layers cleanup, basic information for layers, very easy to do. But make =
a big difference. RP/Dave: our code should be self documenting in many plac=
es such as layers.
  - RP: sstate checksum changes going in. (sorry to miss this here, Richard=
. Please feel free to fill in if necessary), looking for feedback. Disk cle=
an needs to be hold off to 1.4.=20
  - Paul: ability to specify task and follow dependency recursively, etc.



