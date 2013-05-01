Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6752FE01503
	for <yocto@yoctoproject.org>; Wed,  1 May 2013 12:11:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 May 2013 12:11:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,590,1363158000"; d="scan'208";a="327239481"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by fmsmga001.fm.intel.com with ESMTP; 01 May 2013 12:11:18 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 1 May 2013 12:11:18 -0700
Received: from fmsmsx152.amr.corp.intel.com ([169.254.6.6]) by
	FMSMSX113.amr.corp.intel.com ([169.254.4.18]) with mapi id
	14.01.0355.002; Wed, 1 May 2013 12:11:18 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/8] Refactoring of remotetools plugin
Thread-Index: AQHORbL0BlkX1Xaji0e2vo6zJ2/oUpjws6qw
Date: Wed, 1 May 2013 19:11:17 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C7077BAD9@fmsmsx152.amr.corp.intel.com>
References: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>
In-Reply-To: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.107]
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
X-List-Received-Date: Wed, 01 May 2013 19:11:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

