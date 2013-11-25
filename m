Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1377E006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 10:06:23 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2013 10:02:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,769,1378882800"; d="scan'208";a="414508866"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 25 Nov 2013 10:06:02 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 25 Nov 2013 10:05:58 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX115.amr.corp.intel.com ([10.22.240.11]) with mapi id
	14.03.0123.003; Mon, 25 Nov 2013 10:05:58 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: William Mills <wmills@ti.com>
Thread-Topic: [yocto] SPL_IMAGE, SPL_BINARY, and SPL_SYMLINK definitions
Thread-Index: Ac7p53940i9pY5imQlGMIAvbYssoVAAZBOGAABCnlHA=
Date: Mon, 25 Nov 2013 18:05:57 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F513AF@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F510DC@ORSMSX101.amr.corp.intel.com>
	<529390BB.3020005@ti.com>
In-Reply-To: <529390BB.3020005@ti.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Dmytriyenko,
	Denys" <denys@ti.com>
Subject: Re: SPL_IMAGE, SPL_BINARY, and SPL_SYMLINK definitions
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
X-List-Received-Date: Mon, 25 Nov 2013 18:06:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks - good info.

Scott

>-----Original Message-----
>From: William Mills [mailto:wmills@ti.com]
>Sent: Monday, November 25, 2013 10:03 AM
>To: Rifenbark, Scott M
>Cc: Yocto discussion list; Dmytriyenko, Denys
>Subject: Re: [yocto] SPL_IMAGE, SPL_BINARY, and SPL_SYMLINK definitions
>
>On 11/25/2013 09:06 AM, Rifenbark, Scott M wrote:
>> Anyone have descriptions for these three variables?  I would like to
>document them and am wondering if anyone has used them or knows how
>they work.
>>
>
>SPL is the preloader for U-boot required on some platforms.
>
>The base include for u-boot defines the SPL_IMAGE and SPL_SYMLINK
>http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-bsp/u-
>boot/u-boot.inc
>
>One example of use of SPL_BINARY is here:
>http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/tree/recipes-bsp/u-boot/=
u-
>boot_2011.12.bb
>
>So the SPL_BINARY defines the name of the file in the filesystem image.
>The SPL_IMAGE and SPL_SYMLINK appear to specific the long version specific
>image file produced by the build and the somewhat shorter symlink that
>points to it.  These will be in a machine specific dir on the build machin=
e; the
>same place the kernel is found.
>(The kernel also gets a very long name and a symlink  you can reuse wordin=
g
>from the description if you have that already.)


