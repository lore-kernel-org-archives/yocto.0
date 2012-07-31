Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 960FEE00283
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 10:09:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 31 Jul 2012 10:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191267037"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2012 10:08:58 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 31 Jul 2012 10:08:58 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.166]) with mapi id
	14.01.0355.002; Tue, 31 Jul 2012 10:08:57 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Atanas Gegov <atanas.gegov.oss@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [RFC 0/3] Cheat sheet for hello world project
Thread-Index: AQHNabTH0Ju4XwU1sEWjtp3HrI1M9pdDqPIQ
Date: Tue, 31 Jul 2012 17:08:56 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46ABCE36@ORSMSX101.amr.corp.intel.com>
References: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
In-Reply-To: <cover.1343140579.git.atanas.gegov@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [RFC 0/3] Cheat sheet for hello world project
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
X-List-Received-Date: Tue, 31 Jul 2012 17:09:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Atanas,

This patch set looks nice, couple comments:

1. Is it just meant for C++ project since it's applicable to C project as w=
ell
2. I'd think this should be targeted for the upcoming 1.3 release that's ta=
rgeted for Oct.. For 1.3 release we are based on the latest Juno release an=
d also, there's a new feature added for SDK which makes it rellocatable whi=
ch is under patch review atm.  I'd suggest you  follow bug 2383 once it's m=
arked resolved, which means the patch is merged into master.  Then pull dow=
n the latest master and the latest Eclipse plug-in to capture the latest be=
havior and update the cheatsheet contents accordingly.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Atanas Gegov
Sent: Tuesday, July 24, 2012 8:54 AM
To: yocto@yoctoproject.org
Subject: [yocto] [RFC 0/3] Cheat sheet for hello world project

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Hi,

currently the adt manual contains a description of how to create a new proj=
ect (chapter 4.2). Also some videos are explaining how to achieve this. Ecl=
ipse provides a nice way of interactive tutorials with the cheat sheets and=
 I thought it would be nice to have this kind of user help. So I have creat=
ed a cheat sheet for the 'Hello World C++ Autotools Project' project delive=
red with the yocto ide. It guides the user through the process of creating =
and building the hello world project. Some operations such as changing to t=
he C/C++ perspective can even be automated helping the user to get started =
with the project.

Cheers, Atanas

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
 .../cheatsheets/createNewHelloWorldProject.xml     |  187 ++++++++++++++++=
++++
 plugins/org.yocto.sdk.ide.doc.user/plugin.xml      |   13 ++
 9 files changed, 271 insertions(+), 0 deletions(-)  create mode 100644 plu=
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

