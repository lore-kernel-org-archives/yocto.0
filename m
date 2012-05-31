Return-Path: <kishore.k.bodke@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A09FE006D9
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:18:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 31 May 2012 11:18:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="150945077"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 31 May 2012 11:18:32 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 31 May 2012 11:18:32 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.232]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.163]) with mapi id
	14.01.0355.002; Thu, 31 May 2012 11:18:31 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: jfabernathy <jfabernathy@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] meta-cedartrail - serial console
Thread-Index: AQHNP0g7G3Yb1O/j10yH4rRy4+tABpbkNHnw
Date: Thu, 31 May 2012 18:18:31 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACB7838@ORSMSX105.amr.corp.intel.com>
References: <4FC79837.2070309@gmail.com>
In-Reply-To: <4FC79837.2070309@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: meta-cedartrail - serial console
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
X-List-Received-Date: Thu, 31 May 2012 18:18:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of jfabernathy
>Sent: Thursday, May 31, 2012 9:12 AM
>To: yocto@yoctoproject.org
>Subject: [yocto] meta-cedartrail - serial console
>
>Using a DN2800MT (Marshalltown) Intel board, I'm testing the
>meta-cedartrail using edison branch and noticed an issues with the
>serial console.
>
>The cedartrail.conf in the machine directory has the following statements:
>
>SYSLINUX_OPTS =3D "serial 0 115200"
>SERIAL_CONSOLE =3D "115200 ttyS0"
>APPEND +=3D "console=3DttyS0,115200 console=3Dtty0"
>

I just saw that Edison branch has ttyS3 enabled.

SYSLINUX_OPTS =3D "serial 3 115200"
SERIAL_CONSOLE =3D "115200 ttyS3"
APPEND +=3D "console=3DttyS3,115200 console=3Dtty3"

Are you looking into right branch?

Thanks
-Kishore.
=20
>However, when the image booted, I had no serial console on ttyS0.  I
>checked /etc/inittab and noticed that the following line existed:
>
>S:2345:respawn:/sbin/getty 115200 ttyS3
>
>I changed the ttyS3 to ttyS0 and then I have a serial console on the
>next reboot.  So it appears the override in the .conf file is not
>working.  Also I only have the console from getty, and not the kernel
>logging console.
>
>Anyone have a solution??
>
>If this is considered a bug I can put it on bugzilla.
>
>Jim A
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

