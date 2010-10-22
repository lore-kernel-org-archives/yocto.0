Return-Path: <david.c.stewart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 28A2E4C810B4
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 17:48:16 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 22 Oct 2010 15:48:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,225,1286175600"; d="scan'208";a="669999937"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 22 Oct 2010 15:48:15 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 22 Oct 2010 15:48:15 -0700
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Fri, 22 Oct 2010 15:48:15 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 22 Oct 2010 15:48:14 -0700
Thread-Topic: RC3 vs RC4a
Thread-Index: ActyOzXSVwV712kEQ5yVUlQVucujnA==
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC1832E6@orsmsx501.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: RC3 vs RC4a
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 22:48:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We have an RC3 which we feel confident in based on our no-nogo launch decis=
ion.

However, there are a handful of issues which are not critical but would be =
desirable to address them - for example, having to do with errors being "fa=
tal" which are not, etc.

So I have asked Saul to create an RC4a with these patched in. Would like Sa=
nity and BAT tests run on RC4a to see if we should ship it, or with stick w=
ith RC3.

RP - will complete the patch tonight.
Saul - will complete the RC4a build by 5PM Sunday (Pacific)
Kevin and Jiajun and whole team - test this build as much as you have time =
for.

Late Monday, we will decide whether to go with the RC3 build or RC4a build.

Dave

