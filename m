Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B067EE01532
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 06:20:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 10 Jun 2013 06:20:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,837,1363158000"; d="scan'208";a="347550617"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2013 06:20:23 -0700
Received: from irsmsx151.ger.corp.intel.com (163.33.192.59) by
	IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 10 Jun 2013 14:19:37 +0100
Received: from irsmsx101.ger.corp.intel.com ([169.254.1.105]) by
	IRSMSX151.ger.corp.intel.com ([169.254.4.91]) with mapi id
	14.03.0123.003; Mon, 10 Jun 2013 14:19:36 +0100
From: "Grigoropol, IoanaX" <ioanax.grigoropol@intel.com>
To: Yocto DEV Romania <yocto.dev.romania@intel.com>, Yocto GB DEV Romania
	<yocto.gb.dev.romania@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: WSR WW23: Ioana Grigoropol
Thread-Index: AQHOZZ/U2xANmGYcu0iLX5DizHKk2Zkuz68wgAAfQRA=
Date: Mon, 10 Jun 2013 13:19:36 +0000
Message-ID: <3E179CF0D7162B4AA4E2B324209A463915FF4D5D@IRSMSX101.ger.corp.intel.com>
References: <20130610060016.GA6018@lpalcu-linux>
	<3E179CF0D7162B4AA4E2B324209A463915FF4CF2@IRSMSX101.ger.corp.intel.com>
In-Reply-To: <3E179CF0D7162B4AA4E2B324209A463915FF4CF2@IRSMSX101.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: WSR WW23: Ioana Grigoropol
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
X-List-Received-Date: Mon, 10 Jun 2013 13:20:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Wrong mailing list, please disregard this.

-----Original Message-----
From: Grigoropol, IoanaX=20
Sent: Monday, June 10, 2013 2:49 PM
To: Yocto DEV Romania; Yocto GB DEV Romania; yocto@yoctoproject.org
Subject: WSR WW23: Ioana Grigoropol

 (features):
4362  Refactor plug-in code to create a common remote communication util   =
      1.5 M1   enh  Medium+  IN P
	- modified API to use upstream changes
	- renamed and refactored RSEHelper to RemoteHelper (in order to match futu=
re bitbake usages)
	- added utility classes for running remote commands and processing error/o=
utput streams
	- modified entire org.yocto.bc.ui plugin to use URI instead of  String for=
 storing project infos
	- changed bitbake environment parsing to be stored in a file and only proc=
essed if there were no errors and the command finished running
	- add YoctoHostFile wrapper for IHostFile in order to provide both actual =
URI location and OEFile URI
	- fix save & delete & hoover for bitbake recipes
	-  use location URI instead of String path when launching Hob
	- adapt ShellSession to use RemoteHelper for running remote the source com=
mand
	- modify Bitbake project Wizard:=09
		-  use PTP GUI component for selecting the connection and remote services
		- refactor Wizard to use RemoteHelper & CommandRunnable implementation
	- modify Bitbake recipe Wizard:
		- refactor populate method to use RemoteHelper implementation and run in =
the wizard container
		- use URI instead of String for  recipe location
		- validate project name
	- clean-up unused methods and classes(for compilation reasons)=20
=09
-> v1 RFC Refactor -> 42 patches in 4 batches
-> v2 RFC Refactor  -> Splitted second patch in 6 more patches
			-> 50 patches - can be found on poky-contrib, branch:igrigorx/common-rem=
ote-refactor
		=09

Thanks,
Ioana
	=20

