Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8661AE013D2
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 11:09:47 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 18 Sep 2012 11:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,444,1344236400"; d="scan'208";a="223677158"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 18 Sep 2012 11:09:44 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.246]) with mapi id
	14.01.0355.002; Tue, 18 Sep 2012 11:09:44 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	September 18,
	2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNlcjHaoW/dsKuz0eSclIolhW64A==
Date: Tue, 18 Sep 2012 18:09:43 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48534F2C@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, September 18, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 18 Sep 2012 18:09:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Denys, Jessica, Radu, Fred (Intel), Brian lloyd, AlexG, Tom, Jefro, ScottR,=
 LaurentiuP, Nitin, BogdanM, Kevin, Mihai, Sean, Darren, Song
=A0
Minutes:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
=A0
Beth/1.3_M4 status: Yesterday, restarted some infrastructure work around me=
ta-intel. Meta-intel build for RC4 is available for QA. There was an issue =
causing memory leak, fixed, as of yesterday, we had  an entirely green buil=
d.  Will have AB work this weekend, need some downtime. Now we can build ni=
ghtly within 5 hours. (150GB, not including meta-intel).  Beth will follow =
up with Matthew on Freescale testing.
Saul: master, wait for RP, first release RC this week. Will work with RP on=
 it.
Bug fixing: congrats and thanks to the team, we resolved 44 >medium bugs in=
 the past week. Broke our release record. The trend is certainly going to t=
he right direction.=20
=A0
* Yocto 1.4 planning - 10 min (Song)
  - Feature planning: started feature planning, the wiki page is open. Plea=
se put your feature request I bugzilla. Any questions or discussion around =
features can either happen in the mailing list or here in this meeting. If =
you would like to discuss any new features for 1.4 here, please feel free t=
o bring it up as an open or send Song email before the meeting to add it on=
 the agenda. (https://wiki.yoctoproject.org/wiki/Yocto_1.4_Features)
  - Process improvement: we have an retrospective process internally and we=
 would like to improve our way of doing things around the Yocto Project. Pl=
ease feel free to send emails to Song or the mailing list if you see anythi=
ng we can do better.=20
=A0
* SWAT team rotation: Mihai-> Stefan Stanacar=A0=20
* Opens - 10 min
  - Jefro: Yocto Project Dev Day in Barcelona, November 8. We will have a d=
eveloper day at the ELCE Europe.  It's free, feel free to drop by.
  - Brian: usage concern, code churn causing issues for users to use YP. Do=
cumentation is lagging behind. =20
    . Saul: master is always moving. There are stable branches you can base=
 on.
    . ScottR: we have the most updated doc on the YP website. The nature of=
 docs are sadly always lagging, but I always try to make it up to date. We =
have a one combined doc file with every doc inside, it's a better way to se=
arch.
    . Brian: things that got changed between revisions/releases. Auto tools=
, bb classes are incorporated from oe... There are quite a few packages tha=
t don't include enough to generate right configs, etc.=20
Over time, increased package count, 3rd party to add on. It's hard for user=
s to adopt as a base line. When the cutting edge has churns, we should have=
 docs that describe what's changed and what they will break.=20
    .Sean: Very good feedback. Could open a bug report on this or send emai=
l to the mailing list.
    .Song: Indeed good feedback, we can tackle this from both the QA and th=
e documentation front. Would like to see more detailed information and disc=
ussion and then take action. Looking forward to the email/report.
=A0
* Team sharing - 20 min
=A0
Beth: last week, lots of AB updates. Discussed on license manifest. There s=
hould be a much longer discussion. It won't be all in 1.3, but we are worki=
ng on it now. We have blimp demo using helium. Build with Yocto. 9 feet lon=
g, 5 feet tall. Yesterday, Kevin got streaming video working, remote contro=
l working. Sometime this week, it should fly all in one package.
=A0
ScottR: Work with Tim from BMW IT, for yp Eclipse plugin, it all worked out=
 this morning. Users who installed plugin can pull out the YP doc from the =
Eclipse help menu. Will push the changes today. Tim already pushed his chan=
ges. Jessica: These are independent changes, should not have any impact on =
other part of the system and stability.=20
=A0
Michael: getting account for Song. Getting access to Intel campus to help A=
B and other things. Working with Mentor to get eglic on YP infrastructure. =
Got a backup at LF, started training him. Continue automating stats for Bug=
zilla. More cross training, basic update on os, etc. All work I'm doing is =
on my Trello board. Can invite anyone who's interested. (Song signed up)



