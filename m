Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A057E006C2
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 14:36:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 23 May 2013 14:36:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,730,1363158000"; d="scan'208";a="339102130"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga001.fm.intel.com with ESMTP; 23 May 2013 14:36:28 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.15]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.91]) with mapi id
	14.03.0123.003; Thu, 23 May 2013 14:36:22 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH v2 0/6] Separate org.yocto.remote.utils plugin
Thread-Index: AQHOT771DAReMRX1kUaIqlllfEi9rJkTK1ewgAAvrEA=
Date: Thu, 23 May 2013 21:36:21 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C32476@ORSMSX103.amr.corp.intel.com>
References: <1368437194-28574-1-git-send-email-ioanax.grigoropol@intel.com> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/6] Separate org.yocto.remote.utils plugin
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
X-List-Received-Date: Thu, 23 May 2013 21:36:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I noticed an issue with the patches and reverted the changes.  The 2nd patc=
h  in the series is corrupted, after applying that patch, the plugin loaded=
 in IDE with an error which is caused by:

+>>>>>>> 2504c89... Move RSEHelper to a separate plugin

Please run some unit testing before sending the patch.

Thanks,
Jessica

-----Original Message-----
From: Zhang, Jessica
Sent: Thursday, May 23, 2013 11:44 AM
To: Grigoropol, IoanaX; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH v2 0/6] Separate org.yocto.remote.utils plugin

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Monday, May 13, 2013 2:26 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH v2 0/6] Separate org.yocto.remote.utils plugin

- initial commit & populate for remote utils common plugin

Ioana Grigoropol (6):
  Initial commit for separate remote utilities plugin
  Move RSEHelper to a separate plugin
  Move RemoteShellExec to separate plugin
  Move ShellSession to org.yocto.remote.utils separate plugin
  Move CommonHelper to org.yocto.remote.utils separate plugin
  Move TerminalHandler to org.yocto.remote.utils

 plugins/org.yocto.remote.utils/.classpath          |    7 +
 plugins/org.yocto.remote.utils/.project            |   28 ++
 .../.settings/org.eclipse.jdt.core.prefs           |    7 +
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   28 ++
 plugins/org.yocto.remote.utils/build.properties    |    4 +
 .../org.yocto.remote.utils/resources/ust_tar.sh    |   19 +
 .../org.yocto.remote.utils/resources/yocto_tool.sh |  125 ++++++
 .../org.yocto.remote.utils/resources/yocto_ust.sh  |   35 ++
 .../src/org/yocto/remote/utils/Activator.java      |   62 +++
 .../src/org/yocto/remote/utils/CommonHelper.java   |   46 +++
 .../src/org/yocto/remote/utils/Messages.java       |   35 ++
 .../src/org/yocto/remote/utils/RSEHelper.java      |  344 ++++++++++++++++
 .../org/yocto/remote/utils/RemoteShellExec.java    |  140 +++++++
 .../src/org/yocto/remote/utils/ShellSession.java   |  327 +++++++++++++++
 .../org/yocto/remote/utils/TerminalHandler.java    |  128 ++++++
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |    3 +-
 .../org.yocto.sdk.remotetools/resources/ust_tar.sh |   19 -
 .../resources/yocto_tool.sh                        |  125 ------
 .../resources/yocto_ust.sh                         |   35 --
 .../org/yocto/sdk/remotetools/CommonHelper.java    |   44 --
 .../src/org/yocto/sdk/remotetools/RSEHelper.java   |  419 ----------------=
----
 .../org/yocto/sdk/remotetools/ShellSession.java    |  341 ----------------
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    4 +-
 .../sdk/remotetools/actions/BaseSettingDialog.java |    2 +-
 .../sdk/remotetools/actions/DialogHandler.java     |    1 +
 .../sdk/remotetools/actions/OprofileModel.java     |    2 +-
 .../sdk/remotetools/actions/SystemtapModel.java    |    2 +-
 .../actions/SystemtapSettingDialog.java            |    2 +-
 .../sdk/remotetools/actions/TerminalHandler.java   |  128 ------
 .../sdk/remotetools/remote/RemoteShellExec.java    |  149 -------
 30 files changed, 1344 insertions(+), 1267 deletions(-)  create mode 10064=
4 plugins/org.yocto.remote.utils/.classpath
 create mode 100644 plugins/org.yocto.remote.utils/.project
 create mode 100644 plugins/org.yocto.remote.utils/.settings/org.eclipse.jd=
t.core.prefs
 create mode 100644 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF
 create mode 100644 plugins/org.yocto.remote.utils/build.properties
 create mode 100755 plugins/org.yocto.remote.utils/resources/ust_tar.sh
 create mode 100755 plugins/org.yocto.remote.utils/resources/yocto_tool.sh
 create mode 100755 plugins/org.yocto.remote.utils/resources/yocto_ust.sh
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Activator.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/CommonHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Messages.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/RSEHelper.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/RemoteShellExec.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/ShellSession.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/TerminalHandler.java
 delete mode 100755 plugins/org.yocto.sdk.remotetools/resources/ust_tar.sh
 delete mode 100755 plugins/org.yocto.sdk.remotetools/resources/yocto_tool.=
sh
 delete mode 100755 plugins/org.yocto.sdk.remotetools/resources/yocto_ust.s=
h
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/CommonHelper.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/RSEHelper.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/ShellSession.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/actions/TerminalHandler.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/remote/RemoteShellExec.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

