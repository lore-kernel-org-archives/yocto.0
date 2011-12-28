Return-Path: <shane.wang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DC42E0127E
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 06:55:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Dec 2011 06:55:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="90972854"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 28 Dec 2011 06:55:52 -0800
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 28 Dec 2011 22:53:35 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.199]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.223]) with mapi id
	14.01.0355.002; Wed, 28 Dec 2011 22:53:33 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "omxil-devel@lists.sourceforge.net" <omxil-devel@lists.sourceforge.net>
Thread-Topic: [PATCH 0/2] Fix Makefiles
Thread-Index: AczFb6HrogT6T36lSD+TYKUy5dp38Q==
Date: Wed, 28 Dec 2011 14:53:32 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC01171F@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {6D26D28A-E6EE-4356-8B6C-9BED24BF12C1}
x-cr-hashedpuzzle: AGax ALVX Byqq Di9r D9GI FsHj Ib0m MT2b M1rZ P1aB P4DU
	P9wG RAA/ R14W SeDD S6uO; 2;
	bwBtAHgAaQBsAC0AZABlAHYAZQBsAEAAbABpAHMAdABzAC4AcwBvAHUAcgBjAGUAZgBvAHIAZwBlAC4AbgBlAHQAOwB5AG8AYwB0AG8AQAB5AG8AYwB0AG8AcAByAG8AagBlAGMAdAAuAG8AcgBnAA==;
	Sosha1_v1; 7; {6D26D28A-E6EE-4356-8B6C-9BED24BF12C1};
	cwBoAGEAbgBlAC4AdwBhAG4AZwBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Wed,
	28 Dec 2011 14:53:28 GMT;
	WwBQAEEAVABDAEgAIAAwAC8AMgBdACAARgBpAHgAIABNAGEAawBlAGYAaQBsAGUAcwA=
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 0/2] Fix Makefiles
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
X-List-Received-Date: Wed, 28 Dec 2011 14:55:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Here are two patches to send to omxil upstream in order to fix Makefiles in=
 libomxil 0.9.3 release.

- makefile-docdir-fix.patch: to fix the wrong directory for $docdir.
- parallel-make.patch: to enable "make -jN" in parallel.

Please review, thanks.

--
Shane

http://www.yoctoproject.org/=20
It's not an embedded Linux distribution -
It creates a custom one for you.

