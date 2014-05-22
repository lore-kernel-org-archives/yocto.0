Return-Path: <jessica.zhang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86A49E00A44; Thu, 22 May 2014 11:03:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga03.intel.com (unknown [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2001FE00975
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 11:03:53 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 May 2014 11:03:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,888,1392192000"; d="scan'208";a="435665177"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 22 May 2014 11:03:51 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.198]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.115]) with mapi id
	14.03.0123.003; Thu, 22 May 2014 11:03:51 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Timo Mueller <mail@timomueller.eu>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [eclipse][PATCH 0/4] Add cmake error to build failure
	dialog
Thread-Index: AQHPdaU9OF5iLCvR/EqgB/zSvx+iRptM5Omw
Date: Thu, 22 May 2014 18:03:51 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C805D6671@ORSMSX103.amr.corp.intel.com>
References: <cover.1400744551.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1400744551.git.timo.mueller@bmw-carit.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [eclipse][PATCH 0/4] Add cmake error to build failure dialog
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
X-List-Received-Date: Thu, 22 May 2014 18:03:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Pulled into eclipse-poky-kepler master.  Thanks for the contribution!  - Je=
ssica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Timo Mueller
Sent: Thursday, May 22, 2014 2:58 AM
To: yocto@yoctoproject.org
Cc: Timo Mueller
Subject: [yocto] [eclipse][PATCH 0/4] Add cmake error to build failure dial=
og

From: Timo Mueller <timo.mueller@bmw-carit.de>

Hi,

when problems occured during configuring the project with CMake we showed a=
 messge dialog with a generic 'build failed' method. In parallel the reason=
 for the error was captured in the configuration console. But as the dialog=
 did not contain any note on the existence of this console the user might e=
nd up with no hint on what went wrong and how he can fix it.

To help the user fix syntax errors or other errors with CMake the error is =
captured and added to the message dialog. While complete CMake log is still=
 available in the configuration console, the dialog now contains all inform=
ation on what went wrong, e.g.
CMake Error at CMakeLists.txt:8 (include_directoriesBOGUS):
  Unknown CMake command "include_directoriesBOGUS".

01..03: Enable logging the stderr from CMake to a console while capturing i=
t in a string
04: Add the reported CMake error to the configuration error dialog

Best regards,
Timo

Timo Mueller (4):
  plugins/cmake: Allow multiple targets when logging process output
  plugins/cmake: Enable separate capturing of cmake stderr
  plugins/cmake: Use generic output stream
  plugins/cmake: Add cmake error message to error dialog

 .../managedbuilder/YoctoCMakeMessages.properties   |  2 +-
 .../managedbuilder/job/ExecuteConfigureJob.java    | 12 +++++---
 .../cmake/managedbuilder/util/SystemProcess.java   | 34 ++++++++++++++++++=
----
 3 files changed, 38 insertions(+), 10 deletions(-)

--
1.9.0

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

