Return-Path: <cristiana.voicu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E127AE013D0
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 03:13:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 May 2013 03:13:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,627,1363158000"; d="scan'208";a="298779714"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by azsmga001.ch.intel.com with ESMTP; 07 May 2013 03:13:04 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.244]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.73]) with mapi id
	14.01.0355.002; Tue, 7 May 2013 11:11:59 +0100
From: "Voicu, Cristiana" <cristiana.voicu@intel.com>
To: "Iorga, Cristian" <cristian.iorga@intel.com>, Richard Cagley
	<rcagley@toyon.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Hob found an error
Thread-Index: Ac5Kl6AUzQI4iTYkRyO4TTWPUPTkGAAa0QeQAAH9MdA=
Date: Tue, 7 May 2013 10:11:59 +0000
Message-ID: <BE68E9C8E0850C43B0F0B0B7D57FA5AE2DE0066F@IRSMSX102.ger.corp.intel.com>
References: <BA6FC03EA0815D428FB8A3C279ED49920740DB1D@mx.toyon.corp>
	<969F26A8BAB325438E7EB80D3C3134FB1622BCDF@IRSMSX102.ger.corp.intel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1622BCDF@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: Hob found an error
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
X-List-Received-Date: Tue, 07 May 2013 10:13:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

I tried to reproduce this bug on master branch, but I do not receive this e=
rror. Do you have "meta-hob" layer in your poky directory? Because, there i=
s located 'hob-image.bb', and it seems that bitbake can't find it.
Thanks,
Cristiana

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Iorga, Cristian
Sent: Tuesday, May 07, 2013 12:12 PM
To: Richard Cagley; yocto@yoctoproject.org
Subject: Re: [yocto] Hob found an error

Hi Richard,

What bitbake/poky/hob are you using (versions)?
/Cristian

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Richard Cagley
Sent: Monday, May 06, 2013 11:25 PM
To: yocto@yoctoproject.org
Subject: [yocto] Hob found an error

When I try to add the videotestsrc plugin during package editing and the tr=
y to build the image I get this message in a popup window. No clue even whe=
re to start in debugging this.

Hob Exception - Error running command '['matchFile', 'hob-image.bb']':
Traceback (most recent call last):
  File "/opt/fsl-community-bsp/sources/poky/bitbake/lib/bb/command.py",
line 68, in runCommand
    result =3D command_method(self, commandline)
  File "/opt/fsl-community-bsp/sources/poky/bitbake/lib/bb/command.py",
line 210, in matchFile
    return command.cooker.matchFile(fMatch)
  File "/opt/fsl-community-bsp/sources/poky/bitbake/lib/bb/cooker.py",
line 1142, in matchFile
    raise NoSpecificMatch
NoSpecificMatch



_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

