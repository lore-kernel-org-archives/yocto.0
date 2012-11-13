Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16A82E00348
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2012 11:19:10 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Nov 2012 11:18:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,768,1344236400"; d="scan'208";a="241614655"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga002.jf.intel.com with ESMTP; 13 Nov 2012 11:19:09 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.82]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.130]) with mapi id
	14.01.0355.002; Tue, 13 Nov 2012 11:19:09 -0800
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	November 13, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
Thread-Index: AQHNwdPBvCiHN3tyR0+hKrDwOF6Fyg==
Date: Tue, 13 Nov 2012 19:19:08 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A485D91BE@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, November 13, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada)
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
X-List-Received-Date: Tue, 13 Nov 2012 19:19:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
David wolfe, Jessica, Laurentiu, Iona, RichardP, MarkH, Eren T=FCrkay, Saul=
, ScottR, TomZ, Darren, Bruce, Mihai, Jefro, Richard, Paul, JeffP, Nitin, B=
rianR, MichaelH, BogdanM, AlexG, Ross,=20
=A0
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.4 status - 20 min (Song/team)
  - RP: 1.4 feature. Collected features, now features on the 1.4 feature li=
st wiki page, set release themes.
  - DavidW: system D for sure for 1.4? RP: yes it's high, which means must-=
have for the release.
  - Song: no specific target for M1 due to ELCE, but we certainly have a lo=
t of things integrated in master, so we will go with what we have, but stil=
l make sure we have a good quality milestone release.
  - Actions for the team: estimation done by next Tuesday for features owne=
d. Team leads will find proper owners for 1.4 features with the team. =20
  - 1.4 links:
    https://wiki.yoctoproject.org/wiki/Yocto_1.4_Schedule
    https://wiki.yoctoproject.org/wiki/Yocto_1.4_Features
    https://www.google.com/calendar/embed?height=3D600&wkst=3D1&bgcolor=3D%=
23FFFFFF&src=3Dmg0m150m30gs891eqqhtfu5jgg%40group.calendar.google.com&color=
=3D%238C500B&src=3Dsc7rov4ck552t2f0pav120t7r0%40group.calendar.google.com&c=
olor=3D%23528800&src=3Dtheyoctoproject%40gmail.com&color=3D%23182C57&ctz=3D=
America%2FLos_Angeles
=A0
* SWAT team rotation: Paul - Jessica
* Opens - 10 min =20
* Team Sharing - 20 min
  - RP: ELCE followed up with a developer day. Blimp was flying. A couple o=
f presentations in the conference. Dave had one. It's about what's in 1.3 w=
hat's coming in 1.4. The dev day is well attended. Presentation, lab sessio=
ns, etc. Enjoyable, grateful to people helping there.
  - Paul: panel discussion in dev day. Hoping some sessions will be availab=
le online.
  - Mark: Chris from mentor had presentation. Something like a QA session, =
15 slides, covering issues people likely run into and their solutions.
  - Action item: Jefro will follow up and get the materials online for ever=
yone.
  - Eren: some comments, hard to understand some of the usage issues. Will =
come up with a draftdocument. Would like to have feedback. Paul: the doc is=
 to explain in slight deeper and easier-to-understand way how systems hang =
together, how to put recipes in an image, etc.=20
  - Michael: Added a plugin in IRC, auto link to the bug when people are ta=
lking about bugs there. Alternate workload, ways we can track more useful d=
ata in Bugzilla, some display issues. Bugs moved from 1.3 to 1.4. New maili=
ng list: Meta-mentor, meta-intel, meta-freescale. Worked on the new website=
 with Jefro. New web site is launched before ELCE.
  - Ramana: from Huawei, woud like to talk about some 1.4 work, looking for=
 comments for the offline configuration. Will send out the proposal this we=
ek. Looking into test automation. Will work with Yocto QA together.



