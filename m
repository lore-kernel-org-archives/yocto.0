Return-Path: <jessica.zhang@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D5AEE01409
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 11:46:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 23 May 2013 11:46:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,729,1363158000"; d="scan'208";a="342437442"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga002.fm.intel.com with ESMTP; 23 May 2013 11:46:05 -0700
Received: from orsmsx109.amr.corp.intel.com (10.22.240.7) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 23 May 2013 11:46:05 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.15]) by
	ORSMSX109.amr.corp.intel.com ([169.254.2.228]) with mapi id
	14.03.0123.003; Thu, 23 May 2013 11:46:05 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse-poky][branch:windows-build][PATCH 0/4] Adapt
	remote bb plugin code & fix remaining issues
Thread-Index: AQHOV8Y08+VoPgo6mku0ZsyCEj5gI5kTG4jQ
Date: Thu, 23 May 2013 18:46:04 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C32372@ORSMSX103.amr.corp.intel.com>
References: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1369319915-25590-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
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
X-List-Received-Date: Thu, 23 May 2013 18:46:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ioana,

Since we're doing the overall refactor and this part for bitbake commander =
need to adopt the remote.util changes that's underway, and windows-build br=
anch shouldn't be the one that we use.  Please incorporate this change to b=
itbake commander change to use the remote.util tool.

Thanks
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Thursday, May 23, 2013 7:39 AM
To: yocto@yoctoproject.org
Subject: [yocto] [eclipse-poky][branch:windows-build][PATCH 0/4] Adapt remo=
te bb plugin code & fix remaining issues

- adapted remote bitbake commander project code to use upstream changes in =
the LocalHostShell code
- added fixes for recipe parsing
- added fixes for messages displayed during git clone


Ioana Grigoropol (4):
  Adapt usage of LocalHostShell lock and reader to upstream changes
  Fix recipe parsing when using Remote host
  Refactor processing of commands output
  Customize Output processor for git clone command and fix message
    display

 plugins/org.yocto.bc.ui/META-INF/MANIFEST.MF       |    1 +
 .../bc/remote/utils/CommandOutputProcessor.java    |   33 +++++++
 .../org/yocto/bc/remote/utils/CommandRunnable.java |    7 +-
 .../org/yocto/bc/remote/utils/OutputProcessor.java |  102 ++++++++++++++++=
++++
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |   13 ++-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |   65 +------------
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |   13 +--
 .../org/yocto/bc/remote/utils/YoctoCommand.java    |    2 +-
 .../bc/remote/utils/YoctoRunnableWithProgress.java |   31 +++++-
 9 files changed, 181 insertions(+), 86 deletions(-)  create mode 100644 pl=
ugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/CommandOutputProcessor.=
java
 create mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/O=
utputProcessor.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

