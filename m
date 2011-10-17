Return-Path: <song.liu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF0F0E00506
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2011 09:04:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Oct 2011 09:04:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,359,1315206000"; d="scan'208";a="74689595"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2011 09:03:50 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 17 Oct 2011 09:03:50 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.129]) with mapi id
	14.01.0323.003; Mon, 17 Oct 2011 09:03:49 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto 1.1 release go/no-go meeting
Thread-Index: AcyILS5D21OAr1FKSS6cLFWoh2qm9AEuL62gAAAXWRA=
Date: Mon, 17 Oct 2011 16:03:28 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F38D1D@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16F325C7@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto 1.1 release go/no-go meeting
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
X-List-Received-Date: Mon, 17 Oct 2011 16:04:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
Mark Orvek, Mark Hatle, Saul, Jessica, Dave, Richard, Tom, Matthew, Scott, =
Sean (Mentor), Beth, Darren, Denys,
=A0
* Release criteria review:
1. Functional complete: function complete, fixed 186 bugs since the beginni=
ng of M4. 6 remaining 1.1 bugs, will be documented in the release note. Gre=
en
2. Build and release (Yocto and BSPs): Full QA report out, no major issue o=
r show stoppers. Emenlow is rebuilt, bugs are fixed. There are a spike on b=
ugs opened in the last week or so. Those are features (filed as enhancement=
 bugs) since we are using bugzilla to track features now. Green
3. Open bugs: 0 new bugs for 1.1, 0 high bugs remaining for 1.1, Green
4. Functional Tests: complete, green
5. Distro Tested: Fedora 15, Ubuntu 11.04, Opensuse 11.4, Fedora 16 Alpha, =
Ubuntu 11.10 Alpha3, Opensuse 12.1 M5: Complete and all passed , Green
6. BSP testing: Completed, green
7. Documentation: complete, pending release note review. Scott and Beth wil=
l get it done today. Green.
8. Upstream commits: status updated, ongoing maintenance. Green.
=A0
* Vote for the release:
  Mark Orvek (MontaVista): go
  Mark Hatle (Wind River): go
  Dave Stewart (Intel): go=20
  Denys Dmytriyenko (TI): go
  Matthew McClintock (Freescale): go
=A0
* Decision: Unanimous go with the release today.
=A0
* Next step:=20
1. Beth and Scott will get the release note done and reviewed today.
2. Beth will package the release
3. Beth will announce the release in the mailing list
4. Dave will announce the release in the blog




