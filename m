Return-Path: <jessica.zhang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1CD5E0127D
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 13:45:02 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 May 2013 13:45:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,629,1363158000"; d="scan'208";a="238224182"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by AZSMGA002.ch.intel.com with ESMTP; 07 May 2013 13:44:59 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.27]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.213]) with mapi id
	14.01.0355.002; Tue, 7 May 2013 13:44:58 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/8] Refactoring of remotetools plugin
Thread-Index: AQHORbL0BlkX1Xaji0e2vo6zJ2/oUpjws6qwgAl60ACAAA2EwA==
Date: Tue, 7 May 2013 20:44:57 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C70780DDE@ORSMSX103.amr.corp.intel.com>
References: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C7077BAD9@fmsmsx152.amr.corp.intel.com>
	<3E179CF0D7162B4AA4E2B324209A46391560C4F0@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <3E179CF0D7162B4AA4E2B324209A46391560C4F0@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH 0/8] Refactoring of remotetools plugin
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
X-List-Received-Date: Tue, 07 May 2013 20:45:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to eclipse-poky master.

Thanks,
Jessica

-----Original Message-----
From: Grigoropol, IoanaX
Sent: Tuesday, May 07, 2013 5:56 AM
To: Zhang, Jessica; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH 0/8] Refactoring of remotetools plugin

Hi Jessica,

I have rebased the patches and included the changes you suggested. Please r=
eview v2 of these patches.

Thanks,
Ioana
________________________________________
From: Zhang, Jessica
Sent: Wednesday, May 01, 2013 10:11 PM
To: Grigoropol, IoanaX; yocto@yoctoproject.org
Subject: RE: [yocto] [PATCH 0/8] Refactoring of remotetools plugin

Hi Ioana,

Overall looks good with few comment/question that I provide separately.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol
Sent: Tuesday, April 30, 2013 7:36 AM
To: yocto@yoctoproject.org
Subject: [yocto] [PATCH 0/8] Refactoring of remotetools plugin

- refactor all remote tools plugin to have single points of control for rem=
ote utilities plugin
- remove all duplicate code

Ioana Grigoropol (8):
  Remove UstLegacyModel since it is no longer supported
  Refactor Model(s) to display customized messages
  Unify preProcess for all commands models
  Add default behaviour for commands for post processing
  Remove duplicate code when getting remote data from powertop and ust2
  Refactor RemoteApplication implementation
  Refactor powertop, oprofile and ust2 models to remote duplicate code
  Refactor Latencytop and Perf Handler to remove duplicate code

 .../yocto/sdk/remotetools/actions/BaseModel.java   |  114 +++++++---
 .../sdk/remotetools/actions/IBaseConstants.java    |    3 +
 .../sdk/remotetools/actions/LatencytopHandler.java |   22 +-
 .../sdk/remotetools/actions/OprofileModel.java     |   79 ++-----
 .../yocto/sdk/remotetools/actions/PerfHandler.java |   22 +-
 .../sdk/remotetools/actions/PowertopModel.java     |   91 ++------
 .../sdk/remotetools/actions/SystemtapModel.java    |   34 ++-
 .../sdk/remotetools/actions/TerminalHandler.java   |   16 +-
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |  132 +++--------
 .../sdk/remotetools/actions/UstModelLegacy.java    |  238 ----------------=
----
 .../sdk/remotetools/remote/RemoteApplication.java  |  155 -------------
 .../sdk/remotetools/remote/RemoteShellExec.java    |  149 ++++++++++++
 12 files changed, 346 insertions(+), 709 deletions(-)  delete mode 100644 =
plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust=
ModelLegacy.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/remote/RemoteApplication.java
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/remote/RemoteShellExec.java

--
1.7.9.5

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

