Return-Path: <jessica.zhang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 936A1E0034C
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 16:19:21 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Dec 2012 16:19:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,241,1355126400"; d="scan'208";a="230563494"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by orsmga001.jf.intel.com with ESMTP; 07 Dec 2012 16:19:20 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 7 Dec 2012 16:19:20 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.66]) with mapi id
	14.01.0355.002; Fri, 7 Dec 2012 16:19:19 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "mail@timomueller.eu" <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/8][eclipse-poky] Enable setting yocto
	settings in	the project properties dialog
Thread-Index: AQHN0gEKZSWF0YKoQ0mWwPyGHahlmpgODyCQ
Date: Sat, 8 Dec 2012 00:19:19 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B69C8A@ORSMSX101.amr.corp.intel.com>
References: <cover.1354608536.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1354608536.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [PATCH 0/8][eclipse-poky] Enable setting yocto settings in	the project properties dialog
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
X-List-Received-Date: Sat, 08 Dec 2012 00:19:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Timo,

Great patch set and merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of mail@timomueller.eu
Sent: Tuesday, December 04, 2012 1:22 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [PATCH 0/8][eclipse-poky] Enable setting yocto settings in=
 the project properties dialog

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

changing the yocto settings of a project is currently achieved through a se=
parate dialog. This dialog can be opened via the eclipse menu bar (project =
-> change yocto project settings). Typically all project related settings i=
n eclipse are located in the project properties dialog.

This patch series adds yocto settings to the project properties dialog. It =
also removes the separate dialog. Instead the yocto section in the project =
properties is opened if "change yocto project settings"
is selected from the menu bar.

Best regards,
         Atanas and Timo

Atanas Gegov (4):
  plugins/sdk.ide: Allow using a YoctoUIElement to set the input of a
    yocto settings widget
  plugins/sdk.ide: Create a default YoctoUIElement from the preference
    store
  plugins/sdk.ide: Use new setCurrentInput method to set defaults
  plugins/sdk.ide: Remove fControl array that is no longer needed

Timo Mueller (4):
  plugins/sdk.ide: Added empty yocto preference page to project
    properties
  plugins/sdk.ide: Move modification of yocto project settings to utils
    class
  plugins/sdk.ide: Show yocto ui setting widget in project property
    page
  plugins/sdk.ide: Open project properties instead of standalone yocto
    settings dialog

 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   14 +++
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |   67 ++++++++++++
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      |   54 +++++++---
 .../yocto/sdk/ide/actions/ReconfigYoctoAction.java |   64 ++---------
 .../yocto/sdk/ide/actions/SDKLocationDialog.java   |   89 ----------------
 .../ide/preferences/YoctoSDKPreferencePage.java    |   51 +---------
 .../preferences/YoctoSDKProjectPropertyPage.java   |  111 ++++++++++++++++=
++++
 8 files changed, 247 insertions(+), 204 deletions(-)  delete mode 100644 p=
lugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/SDKLocationDialog.ja=
va
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/prefere=
nces/YoctoSDKProjectPropertyPage.java

--
1.7.7.6

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

