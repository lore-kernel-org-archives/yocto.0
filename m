Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81B30E0051D
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 10:48:49 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 May 2013 10:48:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,650,1363158000"; d="scan'208";a="300586058"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 10 May 2013 10:48:48 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 10 May 2013 10:48:47 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.150]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.84]) with mapi id
	14.01.0355.002; Fri, 10 May 2013 10:48:47 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/6] Separate org.yocto.remote.utils plugin
Thread-Index: AQHOTP26s8N1ZakiREGGqciw4rXKTZj+syWw
Date: Fri, 10 May 2013 17:48:47 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C7078A014@ORSMSX103.amr.corp.intel.com>
References: <1368134354-5816-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1368134354-5816-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH 0/6] Separate org.yocto.remote.utils plugin
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
X-List-Received-Date: Fri, 10 May 2013 17:48:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please fix your license to 2013.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, May 09, 2013 2:19 PM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 0/6] Separate org.yocto.remote.utils plugin

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

