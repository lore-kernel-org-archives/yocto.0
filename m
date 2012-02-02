Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB9D6E004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 17:10:23 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Feb 2012 17:10:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="102908352"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2012 17:10:23 -0800
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 1 Feb 2012 17:10:22 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.175]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.96]) with mapi id
	14.01.0355.002; Wed, 1 Feb 2012 17:10:21 -0800
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: jfabernathy <jfabernathy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] serial consoles
Thread-Index: AQHM3Rt/X4CRZDKigUOqmUng5fZy+ZYo0ymg
Date: Thu, 2 Feb 2012 01:10:20 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49002A4CE@ORSMSX103.amr.corp.intel.com>
References: <4F22E29E.3040105@gmail.com>
In-Reply-To: <4F22E29E.3040105@gmail.com>
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
X-List-Received-Date: Thu, 02 Feb 2012 01:10:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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

