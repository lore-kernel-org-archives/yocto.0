Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A239E00282
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 10:50:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jul 2012 10:50:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="178928783"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jul 2012 10:50:14 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 17 Jul 2012 10:50:13 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.235]) with mapi id
	14.01.0355.002; Tue, 17 Jul 2012 10:50:13 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, July
	17, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNZESdQCPx5E5ee0WmwvBufglIkw==
Date: Tue, 17 Jul 2012 17:50:13 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A484C60BC@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, July 17, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 17 Jul 2012 17:50:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Cristian, Laurentiu, Ciby, Bogdan, ScottR, ScottG, Mark, Russ, Saul, Denys,=
 Paul, Tom, Gilbert, Richard, MichaelH, BruceA, Josh, Sean, Jessica, Nitin,=
 Darren, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* 1.2.1 release readiness - 10 min (ScottG)
  - The release build has passed full pass QA test. All bugs have been revi=
ewed and no release blocker found. We are ready to release pending CCB appr=
oval.
  - Asked community feedback on release readiness. No objection from the co=
mmunity.
  - Decision: will release after CCB approval.
* 1.1.2 release readiness - 10 min (Josh/Beth)
  - Full pass QA report is out, few issues are reported with distribution u=
pdate. Fedora 17 added something new and causing one issue. Fixing the issu=
e will probably take more than this point release can take. Matthew reporte=
d another issue yesterday. Josh will follow up with Matthew on those issues=
 and try to find solution.
  - Other than those, we are ready to release.
  - Decision: will ask CCB approval to release after following up with Matt=
hew.
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
  - M2 RC1 is under QA full pass testing. Report is expected tomorrow.=20
  - Bug counts is a little higher this week. Our speed of fixing bugs has b=
een lagging the speed of opening bugs a bit. The team need to focus more on=
 this to bring the bug count down.=20
  - Planning: M2 schedule is cleaned up. We got CCB approval and moved abou=
t 6 feature and 9 bugs (all P1) from M2 to M3. There are still planning to =
do for the Romania team and kernel team this week.
  - Master status: Saul: Will run a build on master today, master is open a=
nd ready.
  - Package update: Saul sent an email to oe-core with a list of packages w=
e need to update for M3, we targeted 80% for that list. That's our goal for=
 M3. If there are people interested in helping that please get in touch wit=
h maintainers.=20
=A0
* SWAT team rotation: Paul -> Ross
=A0
* Opens - 10 min
* Team sharing - 20 min
 - Paul: working on early phase construction (2614), some patches ready. mi=
ght need to talk to Mark about that. Working on web server (LAMP) layer.
 - Michael: spent time on tricky NFS issues. ID map server with shared stat=
es, causing time out, etc. All of that have been solved. Was pretty challen=
ging. Tagged 1.1.2 release, worked with Josh. Coming week will be in OSCON,=
 will work on documentation, autobuilder rotation, etc.



