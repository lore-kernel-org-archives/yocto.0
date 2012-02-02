Return-Path: <rahul.saxena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91DC6E004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 17:12:22 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 Feb 2012 17:12:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102213423"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 17:12:21 -0800
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 1 Feb 2012 17:12:20 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.175]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.146]) with mapi id
	14.01.0355.002; Wed, 1 Feb 2012 17:12:13 -0800
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: jfabernathy <jfabernathy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] serial consoles
Thread-Index: AQHM3Rt/X4CRZDKigUOqmUng5fZy+ZYo0ymggAAByxA=
Date: Thu, 2 Feb 2012 01:12:19 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49002A4DF@ORSMSX103.amr.corp.intel.com>
References: <4F22E29E.3040105@gmail.com> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: serial consoles
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
X-List-Received-Date: Thu, 02 Feb 2012 01:12:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Forgot to mention, I tried these statements on machine/cedartrail.conf

-----Original Message-----
From: Saxena, Rahul=20
Sent: Wednesday, February 01, 2012 5:10 PM
To: 'jfabernathy'; yocto@yoctoproject.org
Subject: RE: [yocto] serial consoles

The following format worked for me Cedar Trail Canoe Creek boards:

         SYSLINUX_OPTS =3D "serial 3 115200"
         SERIAL_CONSOLE =3D "115200 ttyS3"
         APPEND +=3D "console=3DttyS3,115200 console=3Dtty3"

This format is based on Fish River 2 BSP: http://git.yoctoproject.org/cgit/=
cgit.cgi/meta-intel/tree/meta-fri2/conf/machine/fri2.conf?h=3Dedison


Rahul

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of jfabernathy
Sent: Friday, January 27, 2012 9:45 AM
To: yocto@yoctoproject.org
Subject: [yocto] serial consoles

I have the meta-cedartrail image running on hardware (Marshalltown=20
board).  To make the serial console work, I have in the=20
machine/cedartrail.conf file:

SERIAL_CONSOLE =3D "115200 ttyS0"

this works fine, but only after Linux is up and the login prompts are=20
sent out. I'm trying to also get the Kernel boot console log out, and=20
possibly syslinux or grub console.

If I look at the release notes for the meta-n450, it has suggestions to=20
do this for that BSP as below:

         # Serial Port Setup for Intel Embedded Development Board 1-N40
         SYSLINUX_OPTS_atom-pc =3D "serial 0 115200"
         SERIAL_CONSOLE_atom-pc =3D "115200 ttyS0"
         APPEND_atom-pc =3D "console=3DttyS0,115200 console=3Dtty0"

However, those notes talk  about added these statements to the=20
local.conf file.

I have not been able to translate what works on the n450 to cedartrail.

Any ideas?

Jim A

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

