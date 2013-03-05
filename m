Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 472B3E014CC
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 15:21:51 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Mar 2013 15:21:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,791,1355126400"; d="scan'208";a="264890971"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 05 Mar 2013 15:21:22 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 5 Mar 2013 15:21:00 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.185]) with mapi id
	14.01.0355.002; Tue, 5 Mar 2013 15:21:00 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/5][eclipse-poky] Improve SDK check error
	messages
Thread-Index: AQHOGZHi1sofo+nF6EGxnGeXN6SmFpiXvMfQ
Date: Tue, 5 Mar 2013 23:20:59 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6F404028@ORSMSX101.amr.corp.intel.com>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1362414084.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH 0/5][eclipse-poky] Improve SDK check error messages
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
X-List-Received-Date: Tue, 05 Mar 2013 23:21:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Tuesday, March 05, 2013 12:29 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCH 0/5][eclipse-poky] Improve SDK check error messages

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

these are some minor changes to improve the display of the SDK check error =
messages on the property and preference pages.

The 'lifetime' of the error messages has been changed slightly. If an SDK c=
heck failed the error message will now only be shown until the user changes=
 the settings (typing, selecting). If he does so a new message is shown ask=
ing him to revalidate changes by clicking apply again.

01..02: Refining error messages
03..05: Clear error message when user changes the settings

Best regards,
Timo

Timo Mueller (5):
  plugins/sdk.ide: Rephrase error messages
  plugins/sdk.ide: Add new error message for unselected target arch
  plugins/sdk.ide: Fix setting layout of parent composite
  plugins/sdk.ide: Relay events from child widgets to the parent
    composite
  plugins/sdk.ide: Inform user that the settings have to revalidated

 .../src/org/yocto/sdk/ide/YoctoProfileSetting.java |  1 -  .../yocto/sdk/i=
de/YoctoProjectSpecificSetting.java |  1 -
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |  6 ++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |  7 ++--
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      | 40 ++++++++++++++++++=
+---
 .../ide/preferences/YoctoSDKPreferencePage.java    | 28 ++++++++++++++-
 .../preferences/YoctoSDKProjectPropertyPage.java   | 32 ++++++++++++++++-
 7 files changed, 104 insertions(+), 11 deletions(-)

--
1.7.11.7

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

