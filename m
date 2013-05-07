Return-Path: <cristian.iorga@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC496E013D0
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 02:12:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 May 2013 02:12:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,627,1363158000"; d="scan'208";a="309454669"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga001.jf.intel.com with ESMTP; 07 May 2013 02:12:34 -0700
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.244]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.19]) with mapi id
	14.01.0355.002; Tue, 7 May 2013 10:12:28 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: Richard Cagley <rcagley@toyon.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Hob found an error
Thread-Index: Ac5Kl6AUzQI4iTYkRyO4TTWPUPTkGAAa0QeQ
Date: Tue, 7 May 2013 09:12:27 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB1622BCDF@IRSMSX102.ger.corp.intel.com>
References: <BA6FC03EA0815D428FB8A3C279ED49920740DB1D@mx.toyon.corp>
In-Reply-To: <BA6FC03EA0815D428FB8A3C279ED49920740DB1D@mx.toyon.corp>
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
X-List-Received-Date: Tue, 07 May 2013 09:12:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

