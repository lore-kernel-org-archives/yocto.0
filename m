Return-Path: <song.liu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E621FE011AC
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2011 20:09:42 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 17 Oct 2011 20:09:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,362,1315206000"; d="scan'208";a="74901828"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2011 20:09:42 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 17 Oct 2011 20:09:41 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.101]) with mapi id
	14.01.0323.003; Mon, 17 Oct 2011 20:09:41 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Agenda: Yocto Technical Team Meeting - (Tuesday, October 18,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMjUNTDyyNnq8Bdk+fYO8iorOzMQ==
Date: Tue, 18 Oct 2011 03:09:19 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A16F3939A@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Agenda: Yocto Technical Team Meeting - (Tuesday, October 18, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Tue, 18 Oct 2011 03:09:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Agenda:

* Opens collection - 5 min (Song)
* Yocto 1.2 planning and bug fixing - 15 min (team)

1587 =A0=A0=A0=A0=A0 maj =A0=A0=A0=A0=A0=A0 Med =A0=A0=A0=A0 =A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Richard.Purdie@intel.com =A0=A0=A0=A0=A0=
=A0=A0=A0=A0 NEW =A0=A0=A0=A0 --- =A0=A0=A0=A0=A0=A0=A0=A0=A0 Patch resolut=
ion always fails
1541 [SEC] =A0=A0=A0=A0=A0=A0=A0=A0=A0 maj =A0=A0=A0=A0=A0=A0 Med =A0=A0=A0=
=A0 x86_ =A0=A0=A0=A0 bruce.ashfield@windriver.com =A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 ACCE =A0=A0=A0 --- =A0=A0=A0=A0=A0=A0=A0=A0=A0 preemp=
t-rt kernel shutdown now command does not work
1536 =A0=A0=A0=A0=A0 maj =A0=A0=A0=A0=A0=A0 Med =A0=A0=A0=A0 =A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Richard.Purdie@intel.com =A0=A0=A0=A0=A0=
=A0=A0=A0=A0 NEW =A0=A0=A0=A0 --- =A0=A0=A0=A0=A0=A0=A0=A0=A0 minimal sstat=
e fails
1518 =A0=A0=A0=A0=A0 maj =A0=A0=A0=A0=A0=A0 Med =A0=A0=A0=A0 =A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Richard.Purdie@intel.com =A0=A0=A0=A0=A0=
=A0=A0=A0=A0 NEW =A0=A0=A0=A0 --- =A0=A0=A0=A0=A0=A0=A0=A0=A0 Usage of spaw=
ned terminals is inconsistent
1489 =A0=A0=A0=A0=A0 maj =A0=A0=A0=A0=A0=A0 Med =A0=A0=A0=A0 =A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 lianhao.lu@intel.com =A0=A0=A0 REOP =A0=
=A0=A0 --- =A0=A0=A0=A0=A0=A0=A0=A0=A0 tcf-agent segmentaion fault cause th=
e re-running remote debug fail in Eclipse
1462 =A0=A0=A0=A0=A0 maj =A0=A0=A0=A0=A0=A0 Med =A0=A0=A0=A0 =A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 mark.hatle@windriver.com =A0=A0=A0=A0=A0=
=A0 NEW =A0=A0=A0=A0 --- =A0=A0=A0=A0=A0=A0=A0=A0=A0 pango fails to run in =
qemux86-64
1459 =A0=A0=A0=A0=A0 maj =A0=A0=A0=A0=A0=A0 Med =A0=A0=A0=A0 =A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ke.yu@intel.com =A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 NEW =A0=A0=A0=A0 --- =A0=A0=A0=A0=A0=A0=A0=A0=A0 cmake fails to e=
xecute on Ubuntu 10.04 LTS due to new GLIBC API Usage
1308 =A0=A0=A0=A0=A0 maj =A0=A0=A0=A0=A0=A0 Med =A0=A0=A0=A0 =A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 elizabeth.flanagan@intel.com =A0 ACCE =A0=
=A0=A0 --- =A0=A0=A0=A0=A0=A0=A0=A0=A0 license.bbclass returns incorrect li=
censes.

* Opens - 10 min
* Weekly team sharing (30 min)



