Return-Path: <song.liu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81CE6E014C2
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 15:27:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 02 Apr 2013 15:27:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,396,1363158000"; d="scan'208";a="279879138"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 02 Apr 2013 15:27:16 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.197]) with mapi id
	14.01.0355.002; Tue, 2 Apr 2013 15:27:16 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday, April
	02, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: Ac4v8R7druPdohFYTeqKFwHYvsZA/QAAAwfw
Date: Tue, 2 Apr 2013 22:27:14 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A70F1A193@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, April 02, 2013 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 02 Apr 2013 22:27:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Attendees:
MichaelH, BethF, BruceA, MarkH, Bj=F6rnS, DaveST, KevinS, TomZ, SaulW, Bele=
n, RichardP, SeanH, PaulE, SongL.=20
=A0
Agenda:
=A0
* Opens collection - 5 min (Song)
* Yocto Project 1.3.1 status - 10 min (Beth)
  . Initial build is without distro version, old build is deleted. New AB h=
as a bug that did not build LSB. Some sanity failures on LSB.
  . There are bugs opened for AB by QA. Some of them are AB bugs, for examp=
les GPL bugs. Some other may not be. Beth will be working on these issues.=
=20
  . ScottR has a doc change, it got pulled into the new build.
  . Beth: there will be some AB downtime. This afternoon.
  . Plan: Generating a new build for 1.3.1. Using the same tag. Certainly h=
as more fixes. Already had a QA run on the same code. Got CCB approval. The=
re are already people using this branch. So we are confident on the quality=
. There won't be additional QA needed. But Beth will compare the file count=
 with 1.3. Make sure we are not missing anything.
=A0
* Yocto 1.4 status - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.4_Status
  . No feature development as expected. But bug count is high (318). A lot =
of people were on vacation last week. That probably contributed to more bug=
s than we liked. AB changes is another reason. We are back to the normal pr=
ocedure and staffing now focusing on bug fixing.
   . Mark: LSB result, looks like generally we are in good shape. Couple of=
 concerns: number of failures gone up. Many of them can be explained. But t=
here are 3 python failures we are concerned. We know our users are using py=
thon. M5 LSB issues have decreased compared with M4. but higher than M1. Ma=
rk will follow up to create bugs if necessary. Song will follow up with QA =
to find out if we changed LSB testing in anyway in 1.4.=20
=A0
* SWAT team rotation: Radu Moisan -> Bogdan Marinescu> (Song will to email =
Bogdan to confirm)
=A0
* Opens - 10 min=20
* Team Sharing - 20 min
  . Paul: new OE layer index is online now. (http://layers.openembedded.org=
/) Populated with layers, recipes and machine information. Submit your feed=
back. Thanks to Mike for setting it up. Working on bugs, helping Scott with=
 doc.
  - Sean: Supersede the old infrastructure? Will put a link on the top of t=
he current wiki (http://www.openembedded.org/wiki/LayerIndex).
  - Scott: change the manual later? Paul: make the change now.
  . Michael: did get the power upgrade done. Took 20 minutes longer. Additi=
onal capacity there for new servers. had a ram failures on one machine. Reb=
uilding that machine. Trying to get it back online. Package reporting syste=
m. New layer index app. Security people is scanning that site to make sure =
good security.


