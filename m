Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9626DE014D8
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 11:50:44 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 23 Apr 2013 11:50:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,536,1363158000"; d="scan'208";a="323721476"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 23 Apr 2013 11:50:43 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 23 Apr 2013 11:50:43 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.3.124]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.227]) with mapi id
	14.01.0355.002; Tue, 23 Apr 2013 11:50:42 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky][RFC 0/6] Introducing a
	YoctoSDKCMakeProjectNature
Thread-Index: AQHOP1I8mBJ7dw3LVkmg+KdTtl+DN5jkI6Wg
Date: Tue, 23 Apr 2013 18:50:41 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C6FDCDC04@ORSMSX104.amr.corp.intel.com>
References: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
In-Reply-To: <1366632363-6064-1-git-send-email-atanas.gegov.oss@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [eclipse-poky][RFC 0/6] Introducing a	YoctoSDKCMakeProjectNature
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
X-List-Received-Date: Tue, 23 Apr 2013 18:50:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,

Overall, the patches look good.  Couple comments:

1. So from the end user perspective, after the 2nd patch set, user will see=
 "Yocto Project ADT CMake Project" category when they want to create a new =
project?
2. Can we change the API for addNatures by using an enum type for projectNa=
ture instead of explicitly listing all of them out.  This way is easier for=
 code maintenance and API usability.
3. Don't know whether you've created a bugzilla account at bugzilla.yoctopr=
oject.org or not, if not, please do, since I'd hope you're able to help fix=
ing certain bugs in this area down the road.  Also, from project planning p=
rocess wise, we're right in the 1.5 planning, and I'd like to create an ent=
ry in the bugzilla for extending eclipse for CMake support and assign that =
to you, so it's easier to track what are the community contribution to the =
project.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Monday, April 22, 2013 5:06 AM
To: yocto@yoctoproject.org
Subject: [yocto] [eclipse-poky][RFC 0/6] Introducing a YoctoSDKCMakeProject=
Nature

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

This patch series introduces a YoctoSDKCMakeProjectNature as a new nature f=
or CMake-based Yocto Projects in the IDE. It requires the basic YoctoSDKPro=
jectNature and is an alternative to the YoctoSDKAutotoolsProjectNature.

This does not affect the currently existing Autotools template projects.

Upcoming patch series will add the last missing parts for having CMake proj=
ects in the IDE: a ManagedBuilder for CMake (CMake toolchain for building i=
n Eclipse) and some template projects. However, I already wanted to post th=
is series for a review and make sure that the concept is acceptable, so tha=
t we can build on top of it.

Cheers, Atanas

P.S: This patch series apply on the current master "plugins/sdk.ide:
Extracted error message to YoctoSDKMessages"
(7142c5fc82a41a9d5f86c48b289db0ef44f5a897).

Atanas Gegov (6):
  plugins/sdk.ide: Prepared templates for CMake nature
  plugins/sdk.ide: Added a new YoctoSDKCMakeProjectNature
  plugins/sdk.ide: Enable the creation of CMake projects
  plugins/sdk.ide: Update CMake projects on Yocto settings change
  plugins/sdk.ide: Renamed template process
  plugins/sdk.ide: Fixed whitespace issues

 .../OSGI-INF/l10n/bundle.properties                |    1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |   25 +-
 .../ide/natures/YoctoSDKCMakeProjectNature.java    |   92 +++++++
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |    7 +-
 .../sdk/ide/wizard/NewYoctoCProjectTemplate.java   |  245 ----------------=
---
 .../ide/wizard/NewYoctoProjectTemplateProcess.java |  256 ++++++++++++++++=
++++
 .../EmptyCAutotoolsProject/template.xml            |    1 +
 .../EmptyCPPAutotoolsProject/template.xml          |    1 +
 .../HelloWorldCAutotoolsProject/template.xml       |    1 +
 .../HelloWorldCGTKAutotoolsProject/template.xml    |    1 +
 .../HelloWorldCPPAutotoolsProject/template.xml     |    1 +
 11 files changed, 384 insertions(+), 247 deletions(-)  create mode 100644 =
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

