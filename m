Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5399DE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 13:57:26 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Dec 2012 13:57:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,262,1355126400"; d="scan'208";a="232463029"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2012 13:57:25 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.66]) with mapi id
	14.01.0355.002; Tue, 11 Dec 2012 13:57:25 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "mail@timomueller.eu" <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCHv3 0/3][eclipse-poky] Add option to allow
	building	from local repo
Thread-Index: AQHN13do1qnly6FbQU2QtVdZ2cc+fJgUJf2Q
Date: Tue, 11 Dec 2012 21:57:24 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B6ADE3@ORSMSX101.amr.corp.intel.com>
References: <cover.1355213278.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1355213278.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCHv3 0/3][eclipse-poky] Add option to allow building	from local repo
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
X-List-Received-Date: Tue, 11 Dec 2012 21:57:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of mail@timomueller.eu
Sent: Tuesday, December 11, 2012 12:13 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCHv3 0/3][eclipse-poky] Add option to allow building f=
rom local repo

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

as Paul requested I've signed-off the patches. Other than that it's still t=
he rebased patch series from PATCHv2.

Best regards,
         Timo

From the original cover letter:
<snip>
if you build eclipse-poky with the provided build script it will always use=
 the upstream version of the IDE.
During development I wanted to use my local repository to make sure that my=
 changes don't break the build system. Therefor I added an option to the bu=
ild script to allow building from the local eclipse-poky git repository.
</snip>

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

