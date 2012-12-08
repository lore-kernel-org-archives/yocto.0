Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 283A6E0034C
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 16:24:07 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Dec 2012 16:24:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,241,1355126400"; d="scan'208";a="177729476"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Dec 2012 16:24:06 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.125]) with mapi id
	14.01.0355.002; Fri, 7 Dec 2012 16:24:05 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "mail@timomueller.eu" <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/3][eclipse-poky] Add option to allow building
	from	local repo
Thread-Index: AQHNzuYiyvlIHKu1lkKVBq7G4UOGnJgOFo0g
Date: Sat, 8 Dec 2012 00:24:05 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B69CA9@ORSMSX101.amr.corp.intel.com>
References: <cover.1354197844.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354197844.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH 0/3][eclipse-poky] Add option to allow building from	local repo
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
X-List-Received-Date: Sat, 08 Dec 2012 00:24:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

There're some changes made to eclipse build scripts, so your patch won't be=
 able to apply.  Can you rebase against latest master and resend?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of mail@timomueller.eu
Sent: Friday, November 30, 2012 2:33 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCH 0/3][eclipse-poky] Add option to allow building fro=
m local repo

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

if you build eclipse-poky with the provided build script it will always use=
 the upstream version of the IDE.
During development I wanted to use my local repository to make sure that my=
 changes don't break the build system. Therefor I added an option to the bu=
ild script to allow building from the local eclipse-poky git repository.

Best regards,
         Timo

Timo Mueller (3):
  scripts/build.sh: Added function to use the local repository for
    building
  scripts/build.sh: Added help option to the cmdline
  script/build.sh: Added option to enable building from local
    repository.

 scripts/build.sh |   30 ++++++++++++++++++++++++++----
 1 files changed, 26 insertions(+), 4 deletions(-)

--
1.7.7.6

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

