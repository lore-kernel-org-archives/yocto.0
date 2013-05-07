Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E745E01472
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 05:56:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 May 2013 05:56:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,628,1363158000"; d="scan'208";a="333847036"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 07 May 2013 05:56:54 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Tue, 7 May 2013 13:56:18 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.244]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.245]) with mapi id
	14.01.0355.002; Tue, 7 May 2013 13:56:18 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 0/8] Refactoring of remotetools plugin
Thread-Index: AQHORbMXBhQ5KJfxw0i3Tip717cwZJjwoyWAgAkVuNY=
Date: Tue, 7 May 2013 12:56:18 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A46391560C4F0@IRSMSX102.ger.corp.intel.com>
References: <1367332592-2585-1-git-send-email-ioanax.grigoropol@intel.com>,
	<C6510F6D410BB64A8C15398EDC6B847C7077BAD9@fmsmsx152.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C7077BAD9@fmsmsx152.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.19.9.42]
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
X-List-Received-Date: Tue, 07 May 2013 12:56:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jessica,=0A=
=0A=
I have rebased the patches and included the changes you suggested. Please r=
eview v2 of these patches.=0A=
=0A=
Thanks,=0A=
Ioana=0A=
________________________________________=0A=
From: Zhang, Jessica=0A=
Sent: Wednesday, May 01, 2013 10:11 PM=0A=
To: Grigoropol, IoanaX; yocto@yoctoproject.org=0A=
Subject: RE: [yocto] [PATCH 0/8] Refactoring of remotetools plugin=0A=
=0A=
Hi Ioana,=0A=
=0A=
Overall looks good with few comment/question that I provide separately.=0A=
=0A=
Thanks,=0A=
Jessica=0A=
=0A=
-----Original Message-----=0A=
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Ioana Grigoropol=0A=
Sent: Tuesday, April 30, 2013 7:36 AM=0A=
To: yocto@yoctoproject.org=0A=
Subject: [yocto] [PATCH 0/8] Refactoring of remotetools plugin=0A=
=0A=
- refactor all remote tools plugin to have single points of control for rem=
ote utilities plugin=0A=
- remove all duplicate code=0A=
=0A=
Ioana Grigoropol (8):=0A=
  Remove UstLegacyModel since it is no longer supported=0A=
  Refactor Model(s) to display customized messages=0A=
  Unify preProcess for all commands models=0A=
  Add default behaviour for commands for post processing=0A=
  Remove duplicate code when getting remote data from powertop and ust2=0A=
  Refactor RemoteApplication implementation=0A=
  Refactor powertop, oprofile and ust2 models to remote duplicate code=0A=
  Refactor Latencytop and Perf Handler to remove duplicate code=0A=
=0A=
 .../yocto/sdk/remotetools/actions/BaseModel.java   |  114 +++++++---=0A=
 .../sdk/remotetools/actions/IBaseConstants.java    |    3 +=0A=
 .../sdk/remotetools/actions/LatencytopHandler.java |   22 +-=0A=
 .../sdk/remotetools/actions/OprofileModel.java     |   79 ++-----=0A=
 .../yocto/sdk/remotetools/actions/PerfHandler.java |   22 +-=0A=
 .../sdk/remotetools/actions/PowertopModel.java     |   91 ++------=0A=
 .../sdk/remotetools/actions/SystemtapModel.java    |   34 ++-=0A=
 .../sdk/remotetools/actions/TerminalHandler.java   |   16 +-=0A=
 .../yocto/sdk/remotetools/actions/Ust2Model.java   |  132 +++--------=0A=
 .../sdk/remotetools/actions/UstModelLegacy.java    |  238 ----------------=
----=0A=
 .../sdk/remotetools/remote/RemoteApplication.java  |  155 -------------=0A=
 .../sdk/remotetools/remote/RemoteShellExec.java    |  149 ++++++++++++=0A=
 12 files changed, 346 insertions(+), 709 deletions(-)  delete mode 100644 =
plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/Ust=
ModelLegacy.java=0A=
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/remote/RemoteApplication.java=0A=
 create mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/rem=
otetools/remote/RemoteShellExec.java=0A=
=0A=
--=0A=
1.7.9.5=0A=
=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

