Return-Path: <song.liu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A150CE013DB
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 16:48:06 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 10 Oct 2012 16:48:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,567,1344236400"; d="scan'208";a="154830896"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Oct 2012 16:48:05 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 10 Oct 2012 16:48:05 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.223]) by
	ORSMSX108.amr.corp.intel.com ([169.254.9.202]) with mapi id
	14.01.0355.002; Wed, 10 Oct 2012 16:48:04 -0700
From: "Liu, Song" <song.liu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Minutes: Yocto Project Technical Team Meeting - Tuesday,
	October 09, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
Thread-Index: AQHNp0Gw5kjNKRtCwUu1Yknt9wgUHQ==
Date: Wed, 10 Oct 2012 23:48:03 +0000
Message-ID: <7E680CB2A76BB8438D08CF13C09FC53A4856F99C@ORSMSX101.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4844CAD5@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Minutes: Yocto Project Technical Team Meeting - Tuesday, October 09, 2012 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Wed, 10 Oct 2012 23:48:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Sorry for the late.=20

Attendees:
ScottR, Jessica, Beth, DaveST, PaulE, Richard, Sea, Fahad, DavidW,  Denys, =
AlexG, Ross, Song
=A0
Amit: MontaVista, based in India, Bangalore. Replacing Mark in this meeting=
 for MontaVista Dave, Michael,=20
=A0
Minutes:
=A0
* Opens collection - 5 min (Song)
* Yocto 1.3 status  - 10 min (Song/team)
  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.3_Status
  - RC4 is due out tomorrow. Larger, invasive less possibility going in. 3.=
4.10 kernel caused segfault on arm. We are going to move to 3.4.11. Master =
is still in bug fixing mode. At the moment we will take everything into the=
 release branch. Hoping to release RC4.
  - If you expect anything in the release, please get them in today. If you=
.
 - Medium+ bugs review: https://bugzilla.yoctoproject.org/buglist.cgi?bug_s=
tatus=3DNEW&bug_status=3DACCEPTED&bug_status=3DREOPENED&bug_status=3DNEEDIN=
FO&bug_status=3DWaitForUpstream&list_id=3D16013&priority=3DMedium%2B&query_=
format=3Dadvanced&target_milestone=3D1.3&target_milestone=3D1.3%20M1&target=
_milestone=3D1.3%20M2&target_milestone=3D1.3%20M3&target_milestone=3D1.3%20=
M4&target_milestone=3D1.3%20M5&target_milestone=3D1.3.1&target_milestone=3D=
1.3.2&order=3Dassigned_to%20DESC%2Cpriority%2Cbug_status%20DESC%2Cbug_id&qu=
ery_based_on=3D
=A0
3176: delay to 1.4. not doable, easy to workaround, release note this one.
1640: How to document, it will be wiki for 1.3 release 3080, release note.
3231, release note.
  - Non-bug issues: Paul to send song email.
=A0
* SWAT team rotation: Saul
* Opens - 10 min
* Team sharing - 20 min
  - Paul: documentation and bug fixes recently. Got some time to release th=
e build history tool. This is a little web app allows you to go through war=
ning, mark each one needing attention. Will send email today with more deta=
ils. Publish the meta-webserver layer. Apache, modphp, php myadmin. It's fu=
nctional, but there are some bugs. Still working on it. RP: QA can use this=
.=20
  - Michael: last week SSD upgrade on servers. worked with Beth on release =
prep. Working on some of the internal servers, space issues, etc.
  - Beth: Last week worked with Michael on external ABs. should speed up bu=
ild time a little bit. Working on 2 release script. 1.main YP release scrip=
t. It does major release. Related to the eclipse bug. Single push button. 2=
. release script for people using YP to build and release with GPL complian=
ce. Bring together all the source code, release, etc. together.=20
  - David Wolf: if you submit a patch, how do we know if it is applied. Sau=
l: we review the patches on the mailing list. Saul pull into Master under t=
est, then send to Richard. Richard pull them into master. There are times R=
ichard see something to be directly pulled in without MUT. You should see a=
 email if it's merged. If you don't see any response, ping it.=20
    . RP: for managing the balance of updating to the latest master and mai=
ntaining a queue of un-merged patches, recommend looking at Git, probably m=
aintaining a branch in git with master update/rebase and local fixes. If th=
e master does merge those patches, rebase.=20
    . Some fixes on master will be back ported to stable releases. The patc=
hes need to be based on master generally, then back ported. Read only http =
pull (Michael has been working on) will help.



