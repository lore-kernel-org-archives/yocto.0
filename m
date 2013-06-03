Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C06BE014E1
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 15:57:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Jun 2013 15:57:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,795,1363158000"; d="scan'208";a="311776519"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 03 Jun 2013 15:57:31 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.62]) with mapi id
	14.03.0123.003; Mon, 3 Jun 2013 15:57:31 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky][PATCH 0/7] Fixed bug in creating remote
	debug launcher
Thread-Index: AQHOYDSnCO6fdc5n9kCMPaUxVY6v+Zkkmvjw
Date: Mon, 3 Jun 2013 22:57:30 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C3654D@ORSMSX103.amr.corp.intel.com>
References: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
In-Reply-To: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [eclipse-poky][PATCH 0/7] Fixed bug in creating remote	debug launcher
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
X-List-Received-Date: Mon, 03 Jun 2013 22:57:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Monday, June 03, 2013 1:30 AM
To: yocto@yoctoproject.org
Subject: [yocto] [eclipse-poky][PATCH 0/7] Fixed bug in creating remote deb=
ug launcher

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

this patch series fixes a bug where the remote debug launcher is not correc=
tly created because not all Yocto natures are added to the project at the p=
oint where the method is being called. The path to the binary was in some c=
ases (by new CMake project) not correctly set.

This fix required some code refactoring. Some further refactoring was also =
done in order to reduce the complexity of the very large YoctoSDKUtils clas=
s.

Cheers,
Atanas

P.S: This patch series apply on the current master "Add remote.utils plugin=
 to sdk features" (ff4ccb4d65243f2a28eb89c72e9b425702b6c3aa).

Atanas Gegov (7):
  plugins/sdk.ide: Extracted a private method
  plugins/sdk.ide: Extracted launchers creation
  plugins/sdk.ide: Decoupled launcher creation from environment setting
  plugins/sdk.ide: Moved a locally used method
  plugins/sdk.ide: Changed access level modifiers for some methods
  plugins/sdk.ide: Removed unused methods
  plugins/sdk.ide: Moved more locally used methods

 .../managedbuilder/job/ExecuteConfigureJob.java    |   29 +-
 .../src/org/yocto/sdk/ide/YoctoSDKChecker.java     |   26 +-
 .../natures/YoctoSDKAutotoolsProjectNature.java    |   21 +-
 .../ide/preferences/YoctoSDKPreferencePage.java    |   25 +-
 .../preferences/YoctoSDKProjectPropertyPage.java   |  119 +++++-
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |  388 +++++-----------=
----
 .../sdk/ide/utils/YoctoSDKUtilsConstants.java      |    2 +-
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |    2 +
 8 files changed, 306 insertions(+), 306 deletions(-)

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

