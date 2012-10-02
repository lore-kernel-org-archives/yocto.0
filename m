Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 221CAE01199
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 16:59:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 Oct 2012 16:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,525,1344236400"; d="scan'208";a="229794072"
Received: from fmsmsx104.amr.corp.intel.com ([10.19.9.35])
	by fmsmga002.fm.intel.com with ESMTP; 02 Oct 2012 16:59:07 -0700
Received: from fmsmsx151.amr.corp.intel.com ([169.254.6.213]) by
	FMSMSX104.amr.corp.intel.com ([169.254.4.231]) with mapi id
	14.01.0355.002; Tue, 2 Oct 2012 16:59:06 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	October 02, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNoPnnV4Q/jV9Lr0Koi4Qgu4yZlg==
Date: Tue, 2 Oct 2012 23:59:05 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A48554059@FMSMSX151.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, October 02, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 02 Oct 2012 23:59:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
David Wolf, Michael, Mark, AlexG, Bjorn, Dave, Paul, Jessica, Ross, Saul, B=
eth, Kevin, Richard, Bruce, Nitin, LaurentiuP, Cristian, ScottR, Jeff, Miha=
iL, Denys, Song
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
  - Congrats to the team on M4 release.
=A0
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status =20
    - Status wiki page updated, bug fixing on the right direction, total # =
of bugs down.
    - RC3 this week, please get fixes in as soon as possible.
    - We will be scrutinizing patches more carefully to make sure it's not =
something invasive that could destabilize the master.
    - Most of the high bugs have solutions and can be closed within a week.
    - Medium+ bugs review:=20
      . 3143: has a workaround. Laurentiu will send workaround patches.
      . 3176: there is a solution but hard to implement. May need to move t=
o  1.4
      . 3183: did improve with better messaging. May need to push to 1.4. R=
ichard/Dave will decide.
      . 3186: Bruce/mark will look into this and find someone from Wind Riv=
er to fix.
      . 3119/3175: cristian. Work with Paul. Need to get this one fixed
      . Others are mostly ok and can be turned around in a week or so.
* SWAT team rotation: Mihai Liner - > Saul
* Opens - 10 min
* Team sharing - 20 min
  - Michael: Updated bugzilla last week. Should not affect functionality. B=
ugzilla reports, fixed the schedule wiki problem.




