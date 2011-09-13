Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AAE4E006C7
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 10:48:42 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Sep 2011 10:48:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,375,1312182000"; d="scan'208";a="50847844"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 13 Sep 2011 10:48:42 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 13 Sep 2011 10:48:42 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.19]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.122]) with mapi id
	14.01.0323.003; Tue, 13 Sep 2011 10:48:41 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - (Tuesday, September
	13, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMcj1fcSk2xzwnQkSCXpbCUaFP5A==
Date: Tue, 13 Sep 2011 17:48:41 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F098BD@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - (Tuesday, September 13, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Josh, Darren, Richard, Jessica, Matthew, Saul, ScottR, Tom, Mark, Jeff, Pau=
l, Beth, Song
=A0
Note: Richard is travelling in China next week for team training and others=
.
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1 M4 status review and issues - 15 min (team) https://wiki.yoctop=
roject.org/wiki/Yocto_Project_v1.1_Release_Criteria#Milestone_=20
=A0
  - Status summary for bug fixes and QA:=20
    . We still have 35 1.1 bugs, and among them 10 are high bugs we need to=
 fix for 1.1. So the current focus for the team is still bug fixing, especi=
ally high and critical bugs.
    . Fix for 1473 (Mark) may destabilize the code base and RC build, so we=
 need this fix in for RC2 this week. The plan is to wait for Mark's estimat=
e on the fix to decide whether we can include it in RC2. If not, we have to=
 disable prelink in this release.
    . Josh will have fix for 1468 and a workaround for 1458.
    . Beth's high bug (1444) should already be resolved.
=A0
  - Infrastructure (Saul/Beth)
    . We are affected by the Linux Foundation security breach. We lost acce=
ss to autobuilder servers, git repos servers and emails for some team membe=
rs.
    . We have cleaned up our servers and are working to switch our servers =
to another switch so that we can have access again. We should be back in bu=
siness today.
    . Patches can be sent to mailing list, Richard and Saul are collecting =
patches, reviewing and integrating them in RCs.=20
=A0
  - Build Status (Beth/Song)
    . We had RC1 but RC1 had some problem and its schedule has been impacte=
d by the Linux Foundation downtime. So we are scrapping RC1 and starting RC=
2 this week. We will wait for Mark's assessment on bug 1473 to decide on th=
e timing oc RC2 this week. Then next week, we will have RC3. QA will run fu=
ll test on these two RCs.
=A0
* Opens - 10 min
  - Infrastructure (Saul): covered above.
=A0
* Weekly sharing - 30 min (team, 2 min for each person, hard stop)
  - This is for team sharing and synchronization, no minutes kept. Please j=
oin the meeting if you would like to sync with the team.
  - Issues surfaced:
    . Tom has some fixes that need to be in RC2.=20
    . Paul will connect with Jiajun on the wiki page maintaining distros th=
at we and the community have tested. Will keep Scott Rifenbark in the loop.
    . Mark will respond Dongxiao on the RPM issue.


