Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BA7BE013D3
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 23:10:34 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 Aug 2012 23:10:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,771,1336374000"; d="scan'208";a="180877924"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga001.jf.intel.com with ESMTP; 14 Aug 2012 23:10:33 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 14 Aug 2012 23:10:33 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.138]) with mapi id
	14.01.0355.002; Tue, 14 Aug 2012 23:10:33 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	August 14, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNeqyt3A9L+yWGPkmPfnCG93FEzg==
Date: Wed, 15 Aug 2012 06:10:32 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48513FD5@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, August 14, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 15 Aug 2012 06:10:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Mark, Jessica, Ross, Beth, Saul, Kevin, MichaelH, JeffP, Nitin, Dave, Laure=
ntiuS, Paul, Richard, ScottR, ChrisL, Bogdan, LaurentiuP, Bruce, Sean, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
=A0
    -QA(Laurentiu): tested on the master last week. Have some bugs opened. =
No issue on qemu, HOB is clear, ADT has more issue. Most of the issues are =
in core build system. Will start testing on RC1 this week.
     Beth: which build did you test? Laurentiu: used some partial build and=
 master. As long as we know the commit, we can start testing.=20
    - Release (Beth): ab/1.3 status
     .  ab, one of ab's is not working well, will work on this today. There=
 is a bug last week caused problem, has been corrected, will push that out =
to AB today.
     .  1.3 M3 is building on a new RC. So far so good, no major issues.
    - Status wiki page updated. Got CCB approval for high items we moved fr=
om M3 to future milestones.=20
    - Bug trend: open above-medium bugs are going up. There is a steeper up=
tick this week, that is due to our priority change to use new settings. Wou=
ld like to ask the team/community to focus more on bug fixing.  If anyone i=
n the community has any free cycle, please try to help fix any bug you can =
help.
   =20
* SWAT team rotation: Paul -> Jessica=20
  - 4 new members joined: LaurentiuP, LaurentiuS, MihaiL, StefanS
=A0
* Opens - 10 min
Richard: Bitbake console UI change=20
  - heads-up, this is about knotty and knotty-2, the idea is to fix that an=
d make it a default. We talked about it in 1.2. Now we would like to make i=
nto 1.3. Plan is to get this in by the end of the week.=20
=A0
=A0
=A0
* Team sharing - 20 min
=A0
Michael: last week moved all public ip's to new spaces, which gave us bette=
r protection. Had to work on wired hours. 4am. Working with Beth to fix abs=
, documented how and why, trying to make more things automatic. Collaborati=
ng with laurentiuP on bug statistics. Updated all the kernels for service o=
riented machines. Bugzilla has issues with some queries. Coming week, solvi=
ng AB scripts and IRC bugs.
=A0
Saul: take the next batch in the next 24 hours, running a little behind on =
this. Has been dealing with issues with 1.3 release. =A0
=A0
Paul: worked on swat tasks last week, diagnosing issues. This week back to =
general bug fixing. Will send out an RFC for reworking some task recipes to=
 make them more useful. If you have any suggestions, please let me know. Fe=
edback we got: existing task recipes are not very useful. So will do some a=
nalysis and see what's missing. One obvious thing is that Obsolete tasks wi=
ll be pulled out. Sean: a couple of guys in mentor are working on this. In =
a process integrating different things into Yocto.. Will collaborate more o=
n this.




