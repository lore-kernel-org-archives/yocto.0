Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDDB2E01481
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 01:10:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 09 May 2013 01:10:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,639,1363158000"; d="scan'208";a="331276712"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 09 May 2013 01:10:47 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 9 May 2013 09:10:46 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.244]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.185]) with mapi id
	14.01.0355.002; Thu, 9 May 2013 09:11:03 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH 00/12] Refactor Remote tools plugin & create Remote
	Utils separate plugin
Thread-Index: AQHOTIw2V+zW1VvHrkaTkpgvFGHobpj8gDip
Date: Thu, 9 May 2013 08:10:46 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A46391560E020@IRSMSX102.ger.corp.intel.com>
References: <1368085635-24575-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1368085635-24575-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
MIME-Version: 1.0
Subject: Re: [PATCH 00/12] Refactor Remote tools plugin & create Remote Utils separate plugin
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
X-List-Received-Date: Thu, 09 May 2013 08:10:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please disregard this patch set, I will send a clean batch.=0A=
________________________________________=0A=
From: Grigoropol, IoanaX=0A=
Sent: Thursday, May 09, 2013 10:46 AM=0A=
To: yocto@yoctoproject.org=0A=
Cc: Grigoropol, IoanaX=0A=
Subject: [PATCH 00/12] Refactor Remote tools plugin & create Remote Utils s=
eparate plugin=0A=
=0A=
- some more refactoring for the org.yocto.sdk.remotetools=0A=
- create & populate org.yocto.remote.utils=0A=
=0A=
Ioana Grigoropol (12):=0A=
  Separate remote logic from GUI login in TerminalHandler=0A=
    implementation=0A=
  Move remote system type checkings from GUI Dialogs and to RSEHelper=0A=
  Move logic for waiting for RSE initialization to RSEHelper=0A=
  Move filtering of suitable connections to RSEHelper=0A=
  Initial commit for separate remote utilities plugin=0A=
  Move RSEHelper to a separate plugin=0A=
  Move RemoteShellExec to separate plugin=0A=
  Move ShellSession to org.yocto.remote.utils separate plugin=0A=
  Move CommonHelper to org.yocto.remote.utils separate plugin=0A=
  Move TerminalHandler to org.yocto.remote.utils=0A=
  Remove unused TCFTerminalConnectors=0A=
  Remove all plugin dependencies to RSE APi from remote tools plugin=0A=
=0A=
 plugins/org.yocto.remote.utils/.classpath          |    7 +=0A=
 plugins/org.yocto.remote.utils/.project            |   28 +++=0A=
 .../.settings/org.eclipse.jdt.core.prefs           |    7 +=0A=
 .../org.yocto.remote.utils/META-INF/MANIFEST.MF    |   27 +++=0A=
 plugins/org.yocto.remote.utils/build.properties    |    4 +=0A=
 .../src/org/yocto/remote/utils/Activator.java      |   62 +++++++=0A=
 .../src/org/yocto/remote/utils}/CommonHelper.java  |   20 ++-=0A=
 .../src/org/yocto/remote/utils/Messages.java       |   35 ++++=0A=
 .../src/org/yocto/remote/utils}/RSEHelper.java     |  178 +++++++---------=
----=0A=
 .../org/yocto/remote/utils}/RemoteShellExec.java   |   95 +++++------=0A=
 .../src/org/yocto/remote/utils}/ShellSession.java  |   68 +++-----=0A=
 .../org/yocto/remote/utils}/TerminalHandler.java   |  121 +++++--------=0A=
 .../org.yocto.sdk.remotetools/META-INF/MANIFEST.MF |   13 +-=0A=
 .../yocto/sdk/remotetools/actions/BaseModel.java   |    4 +-=0A=
 .../sdk/remotetools/actions/BaseSettingDialog.java |   29 +---=0A=
 .../sdk/remotetools/actions/DialogHandler.java     |   42 +++++=0A=
 .../sdk/remotetools/actions/LatencytopHandler.java |    2 +-=0A=
 .../sdk/remotetools/actions/OprofileModel.java     |    2 +-=0A=
 .../yocto/sdk/remotetools/actions/PerfHandler.java |    2 +-=0A=
 .../sdk/remotetools/actions/SystemtapModel.java    |    2 +-=0A=
 .../actions/SystemtapSettingDialog.java            |    2 +-=0A=
 .../remotetools/views/TCFTerminalConnector.java    |   49 ------=0A=
 .../views/TCFTerminalConnectorImpl.java            |   98 -----------=0A=
 23 files changed, 416 insertions(+), 481 deletions(-)=0A=
 create mode 100644 plugins/org.yocto.remote.utils/.classpath=0A=
 create mode 100644 plugins/org.yocto.remote.utils/.project=0A=
 create mode 100644 plugins/org.yocto.remote.utils/.settings/org.eclipse.jd=
t.core.prefs=0A=
 create mode 100644 plugins/org.yocto.remote.utils/META-INF/MANIFEST.MF=0A=
 create mode 100644 plugins/org.yocto.remote.utils/build.properties=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Activator.java=0A=
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools =
=3D> org.yocto.remote.utils/src/org/yocto/remote/utils}/CommonHelper.java (=
77%)=0A=
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/uti=
ls/Messages.java=0A=
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools =
=3D> org.yocto.remote.utils/src/org/yocto/remote/utils}/RSEHelper.java (77%=
)=0A=
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/re=
mote =3D> org.yocto.remote.utils/src/org/yocto/remote/utils}/RemoteShellExe=
c.java (69%)=0A=
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools =
=3D> org.yocto.remote.utils/src/org/yocto/remote/utils}/ShellSession.java (=
95%)=0A=
 rename plugins/{org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/ac=
tions =3D> org.yocto.remote.utils/src/org/yocto/remote/utils}/TerminalHandl=
er.java (55%)=0A=
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/actions/DialogHandler.java=0A=
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/views/TCFTerminalConnector.java=0A=
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/views/TCFTerminalConnectorImpl.java=0A=
=0A=
--=0A=
1.7.9.5=0A=
=0A=

