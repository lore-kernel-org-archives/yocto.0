Return-Path: <song.liu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77E8FE004D2
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2012 11:25:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2012 11:25:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120652263"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2012 11:25:05 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 13 Mar 2012 11:25:05 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.137]) with mapi id
	14.01.0355.002; Tue, 13 Mar 2012 11:25:05 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, March
	13, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNAUacc84kcBfa30yfuav+WIosZw==
Date: Tue, 13 Mar 2012 18:25:05 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A3D0A15D2@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A257BE410@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, March 13, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 13 Mar 2012 18:25:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Saul, Michael, Darren, Richard, Sean, Jessica, Tom, Dave, Mark, Bruce, Niti=
n, Joshua, Venkata, Beth, Song
=A0
Agenda
=A0
* Opens collection - 5 min (Song)
* Yocto 1.2 M3/M4 status - 20 min (Song/Team)
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status=20
  - M3 RC1 and 1.1.1 are being released.
  - Bugzilla has not been updated. Please update feature/task status by the=
 end of day.
  - 1.2 feature freeze/complete is coming up on March. 18th. Please review =
features you own and send me email about which ones should be postponed.
  - We have an uptick for the number of open bugs. There will be more bugs =
coming   due to HOB2 review.
  - Current priority: feature development, bug fixing, package update, fixi=
ng warning messages.
=A0
* SWAT team rotation: Beth->Paul
=A0
* Opens - 10 min=A0
  - Mark: Reusing sstate cache, missing a testcase: found a bug in 1.1, fou=
nd a new bug in 1.2, try to use the st cache, the compiler will try to use =
compiler from previous compiler.=20
    Sean: Mentor are testing sstate cache. There is at least one issue iden=
tified. Sean to take a look at what's going on, make sure we are augmenting=
 what's done. We should see more mentor involvement in upstream.
    RP: Many sstate issues are known. There are warning messages the team c=
an help to fix and that should improve sstate stability.=20
=A0
    Action item: Mark will open a bug to identify and describe the testcase=
 missing for sstate testing and assign to Jiajun.=20
    Action item: Darren/Michael will work together to sort the janitor's li=
st and represent them properly in Bugzilla.
    Action item: RP will file a bug for writing scripts for this issue.=20
=A0
  - When to stop sending kernel updates: Feature freeze 3/18
=A0
  - RPM issue with x32 image: Working with Mark on this. Richard knows abou=
t it. RPM is failing on the final image, blocker for x32 work. It worked be=
fore, it stopped working. RPM is giving dependency errors. Mark: might be a=
 bug in our code. Trying to get this done this week or next. Nitin will fil=
e a bug and assign  it Mark.=20
 =20
* Team Sharing - 20 min
=A0
Huwei, Venkata, we are joining the Yocto Project and would like to contribu=
te to the project. Song: there is a meeting setup with Huawei to discuss th=
is.
Michael: new Yocto hardware. Backup for source code and data also for autob=
uilder testing. Bugzilla 4.2 to look at, we have 4.0 now. Will email when 4=
.2 is ready. Will be in conference today and next week, working from Denver=
 next week.
Beth: taking longer for the releases. Working on scripts to automate some o=
f the process. Should have M3 and 1.1.1 by the end of tomorrow. Song will s=
end Beth the list for M3 features and known issues.





