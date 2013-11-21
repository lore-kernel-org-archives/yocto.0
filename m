Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6257EE0059E
	for <yocto@yoctoproject.org>; Thu, 21 Nov 2013 10:36:15 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Nov 2013 10:32:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,746,1378882800"; d="scan'208";a="412567412"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 21 Nov 2013 10:35:40 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.165]) with mapi id
	14.03.0123.003; Thu, 21 Nov 2013 10:35:40 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: strange explanation of how to add a package to an existing recipe
Thread-Index: AQHO5ugJO4ALuwN/Gkip19/ZsXmAwZowAuxQ
Date: Thu, 21 Nov 2013 18:35:40 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F50894@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311211327360.10963@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311211327360.10963@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Eggleton, Paul" <paul.eggleton@intel.com>
Subject: FW: strange explanation of how to add a package to an existing recipe
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
X-List-Received-Date: Thu, 21 Nov 2013 18:36:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

Moving this to the discussion group as there is likely issues involved here=
 beyond me.=20

Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Thursday, November 21, 2013 10:32 AM
>To: Rifenbark, Scott M
>Subject: strange explanation of how to add a package to an existing recipe
>
>
>  dev manual here:
>
>http://www.yoctoproject.org/docs/latest/dev-manual/dev-
>manual.html#usingpoky-extend-customimage-custombb
>
>suggests that, to customize an image, you should copy the existing .bb fil=
e for
>that image to another name and add a line like:
>
>  IMAGE_INSTALL +=3D "strace"
>
>but rather than *copy* the entire image file, isn't it easier to use what'=
s
>already being used; that is, just "include" or "require" the existing .bb =
file.
>example: core-image-minimal-mtdutils.bb contains:
>
>
>
>require core-image-minimal.bb
>
>DESCRIPTION =3D "Small image capable of booting a device with support for =
the
>\ Minimal MTD Utilities, which let the user interact with the MTD subsyste=
m in
>\ the kernel to perform operations on flash devices."
>
>IMAGE_INSTALL +=3D "mtd-utils"
>
>
>no copying involved -- just "require" the existing image file, and add a
>package. or am i misreading something?
>
>rday

