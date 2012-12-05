Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13169E0045D
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 04:30:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Dec 2012 04:30:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,221,1355126400"; d="scan'208";a="229261235"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga001.jf.intel.com with ESMTP; 05 Dec 2012 04:30:46 -0800
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.13]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.74]) with mapi id
	14.01.0355.002; Wed, 5 Dec 2012 12:30:45 +0000
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/3] [eclipse-poky] Eclipse plugin on Windows -
	fixes for progress update on wizards & input validation
Thread-Index: AQHN0nJha74TNRE8w0G9fdYPlLJ785gKGjNw
Date: Wed, 5 Dec 2012 12:30:45 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A4639AB07A0@IRSMSX101.ger.corp.intel.com>
References: <1354627583-16084-1-git-send-email-ioanax.grigoropol@intel.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B6874D@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B6874D@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: [PATCH 0/3] [eclipse-poky] Eclipse plugin on Windows -	fixes for progress update on wizards & input validation
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
X-List-Received-Date: Wed, 05 Dec 2012 12:30:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,

I have apparently associated my Execution Environment 1.6 with a jre 1.7. I=
 have sent a patch for the syntax error.
As for the error shown for the existing repository, I have sent a patch to =
validate the entries when switching between an existing repo and a new clon=
e.=20
I think that we should perform some kind of validation on the existing repo=
 (oe-build-env-init script exists, etc.) from the very creation of the proj=
ect otherwise at some point things will stop working with bitbake and the u=
ser will not know why. Indeed, check for an existing git directory does not=
 fall into this category and should be removed.=20

Thanks,
Ioana


-----Original Message-----
From: Zhang, Jessica=20
Sent: Wednesday, December 05, 2012 12:55 AM
To: Grigoropol, IoanaX; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH 0/3] [eclipse-poky] Eclipse plugin on Windows -=
 fixes for progress update on wizards & input validation

Hi Ioana,

There's issue as to syntax for YoctoHostShellProcessAdaptor since it's only=
 supported by JDK version 1.7 and above.  Also, when I tried the plugin on =
Linux, it still failed for creating a project for an existing metadata dire=
ctory.   With a not very clear error message " Directory /home/jzhang/poky =
contains a repository, please select validate repository" which is what I d=
id.  It seems we are calling out the git repository for bitbake commander p=
roject, which I don't think there's the need. I think we should preserve th=
e existing interface that only provide user the option to clone a new one i=
f there's the need.  Otherwise, we should just validate the project repo be=
hind the scene.  And we shouldn't make the clone a new one as the default a=
s the current implementation.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, December 04, 2012 5:26 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 0/3] [eclipse-poky] Eclipse plugin on Windows - fix=
es for progress update on wizards & input validation

- Resending patches with proper header for eclipse-poky
- Include fixes for showing progress information for long time running task=
s on wizards for Bitbake Commander project & Bitbake recipe
- Includes validation for the location & name of a new Bitbake Commander in=
 a new repo clone or an existing one
=20
Ioana Grigoropol (3):
  Show progress bar for New Bitbake Commander project
  Show progress bar for building new Recipe in Bitbake commander
    perspective
  Validate project name and location for Bitbake command project

 .../src/org/yocto/bc/bitbake/ShellSession.java     |  116 +++-----
 .../yocto/bc/remote/utils/ProcessStreamBuffer.java |    3 +-
 .../org/yocto/bc/remote/utils/RemoteHelper.java    |  155 +++++------
 .../org/yocto/bc/remote/utils/RemoteMachine.java   |    4 +-
 .../remote/utils/YoctoHostShellProcessAdapter.java |  136 +++++-----  .../=
bc/remote/utils/YoctoRunnableWithProgress.java |  106 ++++++++
 .../bc/ui/wizards/NewBitBakeFileRecipeWizard.java  |    2 +-
 .../ui/wizards/NewBitBakeFileRecipeWizardPage.java |  285 ++++++++++------=
----  .../yocto/bc/ui/wizards/install/InstallWizard.java |  113 ++------
 .../yocto/bc/ui/wizards/install/OptionsPage.java   |  178 ++++++------
 .../BBConfigurationInitializeOperation.java        |    6 +-
 .../newproject/CreateBBCProjectOperation.java      |   31 +--
 12 files changed, 551 insertions(+), 584 deletions(-)  create mode 100644 =
plugins/org.yocto.bc.ui/src/org/yocto/bc/remote/utils/YoctoRunnableWithProg=
ress.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

