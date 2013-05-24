Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BBF9E014E9
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 11:55:27 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 24 May 2013 11:55:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,737,1363158000"; d="scan'208";a="307487915"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 24 May 2013 11:55:26 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.15]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.91]) with mapi id
	14.03.0123.003; Fri, 24 May 2013 11:55:25 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky][PATCH 0/7] Introducing a
	YoctoSDKCMakeProjectNature
Thread-Index: AQHOWHbFMK7XXNX5mESP7L3UykD/l5kUrv6w
Date: Fri, 24 May 2013 18:55:25 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C32CD4@ORSMSX103.amr.corp.intel.com>
References: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
In-Reply-To: <1369397005-3262-1-git-send-email-atanas.gegov.oss@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [eclipse-poky][PATCH 0/7] Introducing a	YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Fri, 24 May 2013 18:55:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,

All the cmake related patches have been merged to eclipse-poky master.   Al=
so, can you provide some detailed information regarding how to test the fea=
ture so QA can add adequate test cases in the existing eclipse plug-in test=
ing.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Friday, May 24, 2013 5:03 AM
To: yocto@yoctoproject.org
Subject: [yocto] [eclipse-poky][PATCH 0/7] Introducing a YoctoSDKCMakeProje=
ctNature

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

This patch series introduces a YoctoSDKCMakeProjectNature as a new nature f=
or CMake-based Yocto Projects in the IDE. It requires the basic YoctoSDKPro=
jectNature and is an alternative to the YoctoSDKAutotoolsProjectNature.

This does not affect the currently existing Autotools template projects.

Upcoming patch series will add the last missing parts for having CMake proj=
ects in the IDE: a ManagedBuilder for CMake (CMake toolchain for building i=
n Eclipse) and some template projects.

Cheers, Atanas

P.S: This patch series apply on the current master "Fix the issue introduce=
d by code refactoring since DialogHandler inherit IHandler, execute expect =
to return an object"
(dd7ab69282f7c9cc18ff06fffaa9681e4b297cfa).


Atanas Gegov (7):
  plugins/sdk.ide: Prepared templates for CMake nature
  plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
  plugins/sdk.ide: Enable the creation of CMake projects
  plugins/sdk.ide: Update CMake projects on Yocto settings change
  plugins/sdk.ide: Renamed template process
  plugins/sdk.ide: Fixed whitespace issues
  plugins/sdk.ide: Extracted member variables

 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   25 +-
 .../ide/natures/YoctoSDKCMakeProjectNature.java    |   92 +++++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    7 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  245 ----------------=
--
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |  267 ++++++++++++++++=
++++
 .../EmptyCAutotoolsProject/template.xml            |    1 +
 .../EmptyCPPAutotoolsProject/template.xml          |    1 +
 .../HelloWorldCAutotoolsProject/template.xml       |    1 +
 .../HelloWorldCGTKAutotoolsProject/template.xml    |    1 +
 .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
 11 files changed, 395 insertions(+), 247 deletions(-)  create mode 100644 =
plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/natures/YoctoSDKCMakeProjec=
tNature.java
 delete mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/=
NewYoctoCProjectTemplate.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/wizard/=
NewYoctoProjectTemplateProcess.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

