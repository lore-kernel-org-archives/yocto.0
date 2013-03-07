Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64CE6E0147E
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 15:36:57 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Mar 2013 15:36:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,804,1355126400"; d="scan'208";a="266384524"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 07 Mar 2013 15:36:55 -0800
Received: from orsmsx110.amr.corp.intel.com (10.22.225.11) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 7 Mar 2013 15:36:54 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.213]) by
	ORSMSX110.amr.corp.intel.com ([10.22.225.11]) with mapi id
	14.01.0355.002; Thu, 7 Mar 2013 15:36:54 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky][PATCHv3 0/6] Refactorings in
	org.yocto.sdk.ide plugin
Thread-Index: AQHOG2Dlg7KKziVZUE2mdULZ5358T5ia4mdQ
Date: Thu, 7 Mar 2013 23:36:53 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6F406F7A@ORSMSX101.amr.corp.intel.com>
References: <1362665352-8259-1-git-send-email-atanas.gegov.oss@gmail.com>
In-Reply-To: <1362665352-8259-1-git-send-email-atanas.gegov.oss@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [eclipse-poky][PATCHv3 0/6] Refactorings in	org.yocto.sdk.ide plugin
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Mar 2013 23:36:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.  Thanks for the contribution.

Cheers,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Thursday, March 07, 2013 6:09 AM
To: yocto@yoctoproject.org
Subject: [yocto] [eclipse-poky][PATCHv3 0/6] Refactorings in org.yocto.sdk.=
ide plugin

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

Currently the org.yocto.sdk.ide plugin has the YoctoSDKEmptyProjectNature a=
nd the YoctoSDKProjectNature. The latter is strongly coupled with the Autot=
ools nature since this is by now the only supported build system. It would =
be nice if it is possible to introduce other Yocto IDE projects,e.g. projec=
ts using CMake for building.

This patch series does some refactoring in the org.yocto.sdk.ide plugin.
This allows a simplified addition of further natures and enables the decoup=
ling between YoctoSDKProjectNature and the Autotools nature.

The natures and the utils get their own packages.
Some methods and members were also moved to suitable classes.

Cheers,
Atanas

Atanas Gegov (6):
  Moved YoctoSDK natures to their own package
  Moved functionality that does not belong to YoctoSDKProjectNature
  Moved utils to their own package
  Moved nature-related utils in own class
  Export the new subpackages of org.yocto.sdk.ide
  Performed a whitespaces cleanup

 plugins/org.yocto.sdk.ide/META-INF/MANIFEST.MF     |    2 +
 plugins/org.yocto.sdk.ide/plugin.xml               |    4 +-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   12 +-
 .../yocto/sdk/ide/YoctoSDKEmptyProjectNature.java  |   38 -
 .../org/yocto/sdk/ide/YoctoSDKProjectNature.java   |  267 -------
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       |  607 ----------------
 .../ide/natures/YoctoSDKEmptyProjectNature.java    |   39 +
 .../yocto/sdk/ide/natures/YoctoSDKNatureUtils.java |   39 +
 .../sdk/ide/natures/YoctoSDKProjectNature.java     |  111 +++
 .../ide/preferences/YoctoSDKPreferencePage.java    |    4 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |    2 +-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  743 ++++++++++++++++=
++++
 .../sdk/ide/utils/YoctoSDKUtilsConstants.java      |   18 +
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |    6 +-
 14 files changed, 969 insertions(+), 923 deletions(-)  delete mode 100644 =
plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKEmptyProjectNature.=
java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSD=
KProjectNature.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSD=
KUtils.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures=
/YoctoSDKEmptyProjectNature.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures=
/YoctoSDKNatureUtils.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures=
/YoctoSDKProjectNature.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/Y=
octoSDKUtils.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/Y=
octoSDKUtilsConstants.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

