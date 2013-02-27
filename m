Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59514E00348
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 16:37:41 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 26 Feb 2013 16:37:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,744,1355126400"; d="scan'208";a="296326473"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga002.fm.intel.com with ESMTP; 26 Feb 2013 16:37:40 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.110]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.248]) with mapi id
	14.01.0355.002; Tue, 26 Feb 2013 16:37:40 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/5][eclipse-poky] Rename target profiles and
	handle	global changes
Thread-Index: AQHOFCg43xWHLu476USMLhuPHxpxE5iM3OOg
Date: Wed, 27 Feb 2013 00:37:39 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6F3FAB91@ORSMSX101.amr.corp.intel.com>
References: <cover.1361867924.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1361867924.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH 0/5][eclipse-poky] Rename target profiles and handle	global changes
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
X-List-Received-Date: Wed, 27 Feb 2013 00:37:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Tuesday, February 26, 2013 5:49 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCH 0/5][eclipse-poky] Rename target profiles and handl=
e global changes

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

this implements two of Jessica's comments regarding the target profiles tha=
t have been introduced recently.

01..02: Small cleanup work
03:     Changes the name of target profiles to cross development
        profiles
04..05: If a global profile is updated this will also update affected
        projects. Also a warning is shown to the user.

Best regards,
Timo

Timo Mueller (5):
  Added eclipse bin folders to gitignore
  plugins/sdk.ide: Remove exception that is never thrown
  plugin/sdk.ide: Change name of target profiles to cross development
    profiles
  plugin/sdk.ide: Added methods for comparing UIElements
  plugin/sdk.ide: Update projects on profile update

 .gitignore                                         |  1 +
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  | 16 +++---
 .../src/org/yocto/sdk/ide/YoctoUIElement.java      | 58 ++++++++++++++++++=
++++
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |  4 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    | 32 +++++++++---
 5 files changed, 95 insertions(+), 16 deletions(-)  create mode 100644 .gi=
tignore

--
1.7.11.7

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

