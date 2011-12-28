Return-Path: <shane.wang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F4C0E00744
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 06:47:42 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Dec 2011 06:47:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="90243208"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 28 Dec 2011 06:47:41 -0800
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 28 Dec 2011 22:47:40 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.199]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.223]) with mapi id
	14.01.0355.002; Wed, 28 Dec 2011 22:47:38 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "omxil-devel@lists.sourceforge.net" <omxil-devel@lists.sourceforge.net>
Thread-Topic: [PATCH 0/2] Fix Makefiles
Thread-Index: AczFb6HrogT6T36lSD+TYKUy5dp38Q==
Date: Wed, 28 Dec 2011 14:47:37 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC0116F1@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {2EF0138F-F152-44AC-8D51-DF6A05EAF226}
x-cr-hashedpuzzle: AgXo AhaA BNas CmR3 CnfQ DGii ETzg FMqO FWB1 FmxH LW7G
	LsCq L7Tc N2G8 SdXt TDqW; 2;
	bwBtAHgAaQBsAC0AZABlAHYAZQBsAEAAbABpAHMAdABzAC4AcwBvAHUAcgBjAGUAZgBvAHIAZwBlAC4AbgBlAHQAOwB5AG8AYwB0AG8AQAB5AG8AYwB0AG8AcAByAG8AagBlAGMAdAAuAG8AcgBnAA==;
	Sosha1_v1; 7; {2EF0138F-F152-44AC-8D51-DF6A05EAF226};
	cwBoAGEAbgBlAC4AdwBhAG4AZwBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Wed,
	28 Dec 2011 14:47:33 GMT;
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
X-List-Received-Date: Wed, 28 Dec 2011 14:47:43 -0000
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

