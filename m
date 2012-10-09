Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38F54E00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 10:55:35 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 Oct 2012 10:55:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,561,1344236400"; d="scan'208";a="202442183"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 09 Oct 2012 10:55:34 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.225.80) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 9 Oct 2012 10:55:33 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.223]) by
	ORSMSX107.amr.corp.intel.com ([169.254.10.146]) with mapi id
	14.01.0355.002; Tue, 9 Oct 2012 10:55:32 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFCv2 0/3] [eclipse-poky] Cheat sheet for hello world
	project
Thread-Index: AQHNokBagdaE7sAFF0iWZNU22blIYJexSc6g
Date: Tue, 9 Oct 2012 17:55:32 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B0CF7B@ORSMSX101.amr.corp.intel.com>
References: <cover.1349362044.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1349362044.git.atanas.gegov@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [RFCv2 0/3] [eclipse-poky] Cheat sheet for hello world	project
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
X-List-Received-Date: Tue, 09 Oct 2012 17:55:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,

The patch set is merged to eclipse-poky master, thanks for the contribution=
.

Cheers,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Thursday, October 04, 2012 7:54 AM
To: yocto@yoctoproject.org
Subject: [yocto] [RFCv2 0/3] [eclipse-poky] Cheat sheet for hello world pro=
ject

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi Jessica,

Please excuse my late reaction, but I was on vacation in August and had som=
e high-priority organisational issues at work in Septmeber. I improved the =
cheat sheet accroding to your feedback. I used conditional subitems to make=
 it both fit for the "Hello World C++ Autotools Project" and the "Hello Wor=
ld ANSI C Project". The user can now choose its preferred programming langu=
age and the cheat sheet adapts itself accordingly. I also took into account=
 that the SDK is now relocatable.

The patches apply both on the "master" and on the "master-indigo" branches.

Cheers,
Atanas

Atanas Gegov (3):
  plugins/sdk.ide.doc.user: Added plugin for ide specific user help
  feature/sdk: Added user doc plugin
  plugins/sdk.ide.doc.user: Added cheat sheet for hello world project

 features/org.yocto.sdk/feature.xml                 |    8 +
 plugins/org.yocto.sdk.ide.doc.user/.classpath      |    6 +
 plugins/org.yocto.sdk.ide.doc.user/.project        |   28 +++
 .../.settings/org.eclipse.jdt.core.prefs           |    8 +
 .../META-INF/MANIFEST.MF                           |    8 +
 .../OSGI-INF/l10n/bundle.properties                |    7 +
 .../org.yocto.sdk.ide.doc.user/build.properties    |    6 +
 .../cheatsheets/createNewHelloWorldProject.xml     |  222 ++++++++++++++++=
++++
 plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |   13 ++
 9 files changed, 306 insertions(+), 0 deletions(-)  create mode 100644 plu=
gins/org.yocto.sdk.ide.doc.user/.classpath
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.project
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/.settings/org.eclips=
e.jdt.core.prefs
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/OSGI-INF/l10n/bundle=
.properties
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/build.properties
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/cheatsheets/createNe=
wHelloWorldProject.xml
 create mode 100644 plugins/org.yocto.sdk.ide.doc.user/plugin.xml

--
1.7.5.4

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

