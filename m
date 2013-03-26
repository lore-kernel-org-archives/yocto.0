Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20A0CE01471
	for <yocto@yoctoproject.org>; Tue, 26 Mar 2013 16:56:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Mar 2013 16:56:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,915,1355126400"; d="scan'208";a="308878596"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga001.fm.intel.com with ESMTP; 26 Mar 2013 16:56:16 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.225.11) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 26 Mar 2013 16:56:15 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX110.amr.corp.intel.com ([10.22.225.11]) with mapi id
	14.01.0355.002; Tue, 26 Mar 2013 16:56:15 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, March
	26, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac4qfWIvlSOkNlSETASY7nqPnxu+pAAAA0hw
Date: Tue, 26 Mar 2013 23:56:15 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A70F16AC3@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 26, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 26 Mar 2013 23:56:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
MichaelH, Sean, KevinS, Corneliu, TomZ, BruceA, DaveST, JeffP, MarkH, Belen=
, Paul, Nitin, ScottR, Bj=F6rn Stenberg, RP, CristianI, Ioana, AlexG, Fahad=
U, SongL =20
=A0
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* 1.3.1:
  . We had a build and passed QA full pass testing. Got approval from CCB t=
o release. But the build was automatically removed before we reached the de=
cision to release. Beth recovered part of the build and is trying to regene=
rate the missing part. Expecting it to be released soon.
  . MichaelH: 14 days, how long we keep the nightly. We changed this and wi=
ll move release build out of the auto removal directory. This won't happen =
again.
  . ScottR: Will the release be in April? If so I need to change the doc. S=
ong: hope we can make March. But we may need more QA and it may slip into A=
pril.
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
    . 3/17 feature complete. Two medium+ features left.  Small BSP to suppo=
rt as many hardware as possible:  (RP)Still formulating plans, will not mak=
e 1.4.
    . Bug count is up 298 as last Sunday. Expected for various reasons incl=
uding more QA testing, etc. The team should focus on bug fixing in the rema=
ining weeks of 1.4.
    . 1.4 M5 RC1 is incomplete, weekly test is done. regenerating RC2 this =
week. QA will run full pass testing.
    . Schedule: https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule#M6_St=
abilization_Milestone_.283.2F18.2F2013_-_4.2F26.2F2013.29
    . RP/1.4 AB infrastructure change: there has been changes upstream, we =
worked on the new AR. We switched to the new infrastructure. Over the past =
2 weeks, we are trying to get the build succeed. Has been problematic. Lots=
 of issues resolved. There are still some random sanity failures. Occasiona=
l segfault for some images. Using SMART command against the database. Looks=
 like database corruption. If you download and do it locally, it succeeds. =
It reproduced locally once. It might be the new version of qemu. If anyone =
can help or has seen this, would like to have a discussion. We have been do=
ing a lot work to make the AB switch successful.
=A0
* Yocto 1.5 Planning - 5 min (RP)
  - Mid way through 1.5 planning. If you would like to have 1.5 features, p=
lease put them in Bugzilla as soon as possible
  - It would be great if you can get them in by the end of this month for 1=
.5 planning to pick them up.
=A0
* SWAT team rotation: Cristiana Voicu -> Radu Moisan (Song to send an email=
 to Radu)
=A0
* Opens - 10 min=20
  - MichaelH: infrastructure downtime.
    Working on getting the power upgraded. Finally have a date for that. Th=
is Friday (3/29). An hour down time. It's probably around noon to 1pm PST. =
Already coordinated with several people in YP team, they are ok. Once we ar=
e done we will have additional room for more AB machines.
* Team Sharing - 20 min
  - AlexD: still trying to debug problem (3828?). Vmware driver problem? Wh=
y the patch change does not go down from driver to qemu.
  - Corneliu: RO QA. A new report we made to replace the old one: https://w=
iki.yoctoproject.org/wiki/1.4_QA_Status
  - Paul: working on bug fixing, reducing bug count. Build history. Report =
content of the SDK. Sent a patch to change the way we recording source rev =
information. You can actually print out the actual revision, etc.=20
  - RP: separated source and build directory, now enabled by default in pok=
y.=20
  - Michael: working on getting the layer index app out. Finally got someth=
ing for Paul last night. Changing the backup script to keep data as long as=
 the space is available. Package reporting system has a new version, ready =
to be deployed in production.


