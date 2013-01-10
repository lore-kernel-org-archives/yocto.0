Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74FD4E00720
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 15:55:40 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Jan 2013 15:55:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,447,1355126400"; d="scan'208";a="189946953"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Jan 2013 15:55:39 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Thu, 10 Jan 2013 15:55:39 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.237]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.195]) with mapi id
	14.01.0355.002; Thu, 10 Jan 2013 15:55:39 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/3][eclipse-poky][branch:windows-build]
Thread-Index: AQHN70a/TIDTtf4k/0CTdMkuQR/L/phDPF5w
Date: Thu, 10 Jan 2013 23:55:38 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B81216@ORSMSX101.amr.corp.intel.com>
References: <1357831490-15478-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1357831490-15478-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH 0/3][eclipse-poky][branch:windows-build]
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
X-List-Received-Date: Thu, 10 Jan 2013 23:55:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

I'm still seeing problems:

1. seems the reinstate OEFilesystem etc. changes is not taking effect, I'm =
still running into heap space error with my metadata directory with huge bu=
ild data.  So can you create such a metadata directory and run toolchain, a=
nd sato-sdk build and see whether you can create the project against it?
2. Ran into another issue while playing with these patch set, if I leave th=
e clone box checked, even though I do see the error message telling me the =
directory/project already a clone directory, I was still able to click on f=
inish and all process continue on instead of being blocked by the error mes=
sage.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, January 10, 2013 7:25 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 0/3][eclipse-poky][branch:windows-build]

*** BLURB HERE ***

Ioana Grigoropol (1):
  Fix variables hoover & remote file system detection

yocto (2):
  Allow '-' in project names     Signed-off-by: yocto
    <yocto@yocto-VirtualBox.(none)>
  Reinstate OEFileSystem, OEFile and Ignored Paths for Linux

 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    2 +-
 plugins/org.yocto.bc.ui/plugin.xml                 |    3 +-
 .../src/org/yocto/bc/bitbake/BBSession.java        |    4 +
 .../org/yocto/bc/bitbake/ProjectInfoHelper.java    |   24 ++--
 .../src/org/yocto/bc/bitbake/ShellSession.java     |   13 ++-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |    7 +-
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    8 +-
 .../src/org/yocto/bc/ui/Activator.java             |   45 +++++---
 .../org/yocto/bc/ui/BCResourceChangeListener.java  |    1 -
 .../bc/ui/editors/bitbake/BBVariableTextHover.java |   12 +-
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |  120 ++++------------=
----
 .../org/yocto/bc/ui/filesystem/OEFileSystem.java   |   50 ++++++--
 .../bc/ui/filesystem/OEFileSystemContributor.java  |    7 +-
 .../org/yocto/bc/ui/filesystem/OEIgnoreFile.java   |   31 ++++-
 .../src/org/yocto/bc/ui/model/ProjectInfo.java     |   21 +++-
 .../src/org/yocto/bc/ui/model/YoctoHostFile.java   |  100 ++++++++++++----
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |    3 +-
 .../newproject/CreateBBCProjectOperation.java      |   23 ++--
 18 files changed, 281 insertions(+), 193 deletions(-)

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

