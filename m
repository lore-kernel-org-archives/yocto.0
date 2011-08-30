Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1779E01200
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2011 10:05:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 Aug 2011 10:05:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,303,1312182000"; d="scan'208";a="43964472"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 30 Aug 2011 10:05:06 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 30 Aug 2011 10:05:05 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.193]) with mapi id
	14.01.0323.003; Tue, 30 Aug 2011 10:05:05 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Technical Team Meeting - (August 30, 2011 8:00
	AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMZzb2oU6Qpa1M2UO2zm+g8/GQpQ==
Date: Tue, 30 Aug 2011 17:05:05 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16EDC304@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Minutes: Yocto Technical Team Meeting - (August 30, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 30 Aug 2011 17:05:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Paul, Beth, Jessica, Tom,  Scott, Richard, Darren, Denys, Mark, Josh, Matth=
ew, Dave, Bruce
=A0
Minutes:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.1 M4 status review and issues - 20 min (team) https://wiki.yoctop=
roject.org/wiki/Yocto_Project_v1.1_Release_Criteria#Milestone_=20
    - Status summary
       1. We are making good progress on bug fixes. Fixed 10 more bugs last=
 week than the week before. (if we keep this acceleration, we should not ha=
ve many medium bugs left before RC1). If you look at the bug trend chart, o=
ur weighted defect density number is pretty close to our lowest point in hi=
story. So great work, thank you all for your hard work in the past weeks.
      2. All M4 tasks on schedule are still on track.=20
      3. ScottR will follow up with Jessica on ADT and HOB videos.     =20
    - Build status (Beth)
      * Have some issues with autobuilder master, resolving them. In the pr=
ocess of upgrading autobuilder infrastructure. Will run autobuilder on both=
 the existing and upgraded infrastructure. Will compare build images this W=
ednesday, if everything is well, will complete the upgrade this week. New i=
nfrastructure will improve build performance significantly. =20
      * Will have autobuilder down time this Thursday.=20
    - Build performance: We had many new features in Yocto 1.1, which impac=
ted our build performance.  At this point, there seems nothing we can do fo=
r this in the 1.1 timeframe. So we don't have any release target for build =
performance.  Although, Dongxiao has signed up to do some analysis and impr=
ovement on build performance.
=A0
*  Opens
   1. Paul: supported distros for yocto 1.1
       - Song will send the list of distros we support to Paul and Scott. (=
done, also updated the wiki page: https://wiki.yoctoproject.org/wiki/Yocto_=
Project_v1.1_Release_Criteria#Milestone_4 with this )
       - We should create a list of distros that the community have tested =
and include that list in our release document. (Song will talk to Jiajun ab=
out this)
       - Beth will add this list in the release check list.=20
       - Dave will consider adding a new feature for Yocto 1.2: automating =
distros we test


