Return-Path: <julie.n.fleischer@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE0D34C804FF
	for <yocto@yoctoproject.org>; Tue, 31 May 2011 10:48:07 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 May 2011 08:48:07 -0700
X-ExtLoop1: 1
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga002.jf.intel.com with ESMTP; 31 May 2011 08:48:07 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 31 May 2011 08:48:07 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.114]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.209]) with mapi id
	14.01.0289.001; Tue, 31 May 2011 08:48:06 -0700
From: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Technical Team meeting minutes from May 31st
Thread-Index: AQHMH6ohBjHverCN4E2iuuqaf9y3NA==
Date: Tue, 31 May 2011 15:48:06 +0000
Message-ID: <68002A430AC0584FB0A5391B435E93A902FB28@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Subject: Yocto Technical Team meeting minutes from May 31st
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
X-List-Received-Date: Tue, 31 May 2011 15:48:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Attendees:  Saul, Darren, Paul, Jeff P, Richard, Jessica, Song, Dennis, Tom=
, Julie, Jefro, Mark, Bruce

Agenda:
1) Review Yocto 1.1 Release Criteria
See details at:  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.1_Rele=
ase_Criteria=20
Julie/Song:  Ask Jiajun which distros he is testing against.
Julie/Song:  Add tests for N+1 of Fedora and Ubuntu to our M2, M3, M4 relea=
se criteria.

2) Discuss M1 1.1 Release Status
RC2 was available on Sunday, May 29th.  Team will have a Go/No-Go meeting o=
n June 7th during the Technical Team meeting.

3) Discuss M2 1.1 Scope=20
Song is leading a meeting to discuss M2 1.1 scope with maintainers.

4) Opens

Paul:  Quick Start should reference 5.0.1.  Paul will ask Beth to make sure=
 this happens.
Richard:  We need a plan for bugs:
1. [PPC] kernel panic when booting poky-image-sdk-qemuppc through UNFS
    http://bugzilla.pokylinux.org/show_bug.cgi?id=3D414=20
2. [mpc8315e-rdb] USB does not work on mpc8315e-rdb
   http://bugzilla.pokylinux.org/show_bug.cgi?id=3D766=20
Bruce/Mark will kick off the discussions.


