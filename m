Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21CC0E01489
	for <yocto@yoctoproject.org>; Fri, 24 May 2013 00:54:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 May 2013 00:54:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,733,1363158000"; d="scan'208";a="318848443"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga001.jf.intel.com with ESMTP; 24 May 2013 00:54:02 -0700
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.127]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.193]) with mapi id
	14.03.0123.003; Fri, 24 May 2013 08:54:02 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky][branch:windows-build][PATCH 0/4] Adapt
	remote bb plugin code & fix remaining issues
Thread-Index: AQHOV+XJOpiI2Vcq/EicqlkUvL2fTJkT9qJd
Date: Fri, 24 May 2013 07:54:00 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A463915FE82C0@IRSMSX101.ger.corp.intel.com>
References: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C73C32372@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C73C32372@ORSMSX103.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.41]
MIME-Version: 1.0
Subject: Re: [eclipse-poky][branch:windows-build][PATCH 0/4] Adapt	remote bb plugin code & fix remaining issues
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
X-List-Received-Date: Fri, 24 May 2013 07:54:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
These changes can be applied independently on the windows-build branch, and=
 I have sent the patches to make sure that this part works properly before =
merging them to a common remote plugin assuming that everything works.=0A=
Since I will porting these utilities to the remote plugin, I think that it =
is important  to have the original source of the code separted.=0A=
=0A=
Ioana=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Thursday, May 23, 2013 9:46 PM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [eclipse-poky][branch:windows-build][PATCH 0/4] Adapt =
     remote bb plugin code & fix remaining issues=0A=
=0A=
Hi Ioana,=0A=
=0A=
Since we're doing the overall refactor and this part for bitbake commander =
need to adopt the remote.util changes that's underway, and windows-build br=
anch shouldn't be the one that we use.  Please incorporate this change to b=
itbake commander change to use the remote.util tool.=0A=
=0A=
Thanks=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Thursday, May 23, 2013 7:39 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [eclipse-poky][branch:windows-build][PATCH 0/4] Adapt remo=
te bb plugin code & fix remaining issues=0A=
=0A=
- adapted remote bitbake commander project code to use upstream changes in =
the LocalHostShell code=0A=
- added fixes for recipe parsing=0A=
- added fixes for messages displayed during git clone=0A=
=0A=
=0A=
Ioana Grigoropol (4):=0A=
  Adapt usage of LocalHostShell lock and reader to upstream changes=0A=
  Fix recipe parsing when using Remote host=0A=
  Refactor processing of commands output=0A=
  Customize Output processor for git clone command and fix message=0A=
    display=0A=
=0A=
 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    1 +=0A=
 .../bc/remote/utils/CommandOutputProcessor.java    |   33 +++++++=0A=
 .../org/yocto/bc/remote/utils/CommandRunnable.java |    7 +-=0A=
 .../org/yocto/bc/remote/utils/OutputProcessor.java |  102 ++++++++++++++++=
++++=0A=
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |   13 ++-=0A=
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   65 +------------=0A=
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |   13 +--=0A=
 .../org/yocto/bc/remote/utils/YoctoCommand.java    |    2 +-=0A=
 .../bc/remote/utils/YoctoRunnableWithProgress.java |   31 +++++-=0A=
 9 files changed, 181 insertions(+), 86 deletions(-)  create mode 100644 pl=
ugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandOutputProcessor.=
java=0A=
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/O=
utputProcessor.java=0A=
=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

