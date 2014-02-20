Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB448E0087B
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 10:58:22 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 20 Feb 2014 10:58:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,513,1389772800"; d="scan'208";a="478642736"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2014 10:58:16 -0800
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 20 Feb 2014 10:58:16 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.166]) by
	ORSMSX155.amr.corp.intel.com ([169.254.7.248]) with mapi id
	14.03.0123.003; Thu, 20 Feb 2014 10:58:16 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Georgescu, Alexandru C" <alexandru.c.georgescu@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky-kepler][PATCH] Fix cloning for a Bitbake
	Commander Project
Thread-Index: AQHPLk97MqSWhz9jx0i1FQwIDUs5JJq+frYg
Date: Thu, 20 Feb 2014 18:58:16 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C8057366F@ORSMSX103.amr.corp.intel.com>
References: <1392909048-12471-1-git-send-email-alexandru.c.georgescu@intel.com>
In-Reply-To: <1392909048-12471-1-git-send-email-alexandru.c.georgescu@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [eclipse-poky-kepler][PATCH] Fix cloning for a Bitbake	Commander Project
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
X-List-Received-Date: Thu, 20 Feb 2014 18:58:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky-kepler master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Alexandru Georgescu
Sent: Thursday, February 20, 2014 7:11 AM
To: yocto@yoctoproject.org
Subject: [yocto] [eclipse-poky-kepler][PATCH] Fix cloning for a Bitbake Com=
mander Project

Previous commit changed the way YoctoCommand sets a command forcing use of =
bash.
However cloning a git repo passed the repository as argument, which doesn't=
 work anymore, fix it by using a single command string.

[YOCTO #5757]

Signed-off-by: Alexandru Georgescu <alexandru.c.georgescu@intel.com>
---
 .../src/org/yocto/bc/ui/wizards/install/InstallWizard.java           | 5 +=
+---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/In=
stallWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/inst=
all/InstallWizard.java
index 32a0b4d..f64401c 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/InstallWi=
zard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/install/Instal
+++ lWizard.java
@@ -148,11 +148,10 @@ public class InstallWizard extends FiniteStateWizard =
implements
 			CommandResponseHandler cmdHandler =3D new CommandResponseHandler(Remote=
Helper.getConsole(connection));
 			IWizardContainer container =3D this.getContainer();
 			if (((Boolean)options.get(GIT_CLONE)).booleanValue()) {
-				String cmd =3D "/usr/bin/git clone --progress";
-				String args =3D "git://git.yoctoproject.org/poky.git " + uri.getPath()=
;
+				String cmd =3D "git clone --progress=20
+git://git.yoctoproject.org/poky.git " + uri.getPath();
 				String taskName =3D "Checking out Yocto git repository";
=20
-				YoctoRunnableWithProgress adapter =3D new YoctoRunnableWithProgress(ne=
w YoctoCommand(cmd, "", args));
+				YoctoRunnableWithProgress adapter =3D new=20
+YoctoRunnableWithProgress(new YoctoCommand(cmd, "", ""));
=20
 				adapter.setRemoteConnection(remoteConnection);
 				adapter.setRemoteServices(remoteServices);
--
1.8.5.3

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

