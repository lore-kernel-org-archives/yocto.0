Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59F46E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 12:59:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Jul 2012 12:59:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="165626607"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 13 Jul 2012 12:59:07 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 13 Jul 2012 12:59:07 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.165]) with mapi id
	14.01.0355.002; Fri, 13 Jul 2012 12:59:07 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Dallas Clement <dallas.a.clement@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] sysroot / external toolchain
Thread-Index: AQHNYTAtSE4QBAXTu0GSWUziGLAxV5cnoQdQ
Date: Fri, 13 Jul 2012 19:59:06 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A3BF09@ORSMSX101.amr.corp.intel.com>
References: <CAE9DZUR_W2vDPL+UjAqn_5A-2xig7x9GUx_JKQEd_R0HrrRyzQ@mail.gmail.com>
In-Reply-To: <CAE9DZUR_W2vDPL+UjAqn_5A-2xig7x9GUx_JKQEd_R0HrrRyzQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: sysroot / external toolchain
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
X-List-Received-Date: Fri, 13 Jul 2012 19:59:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Here is a FAQ entry I happen to be working on at the moment.  I am not a de=
veloper... just the tech writer but let me know if this helps at all.

http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.htm=
l#id1422633

ScottR

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Dallas Clement
Sent: Friday, July 13, 2012 12:45 PM
To: yocto@yoctoproject.org
Subject: [yocto] sysroot / external toolchain

I'm using an external toolchain for my project.  What is the proper
way to include my external toolchain libc files in the sysroot?

Currently I have

TOOLCHAIN_OPTIONS =3D " --sysroot=3D${STAGING_DIR_HOST}"

and

EXTERNAL_TOOLCHAIN_SYSROOT_CMD =3D "${TARGET_PREFIX}gcc
${TARGET_CC_ARCH} -print-sysroot"
EXTERNAL_TOOLCHAIN_SYSROOT ??=3D "${@exttc_run(d,
EXTERNAL_TOOLCHAIN_SYSROOT_CMD)}"

which resolves to
/opt/armada-sdk-5.0-64k/armv7-marvell-linux-gnueabi-softfp/arm-marvell-linu=
x-gnueabi/libc/

I also have a recipe for my external toolchain which includes the following=
:

do_install() {
        # Use optimized files if available
        sysroot=3D"${EXTERNAL_TOOLCHAIN_SYSROOT}"
}

The EXTERNAL_TOOLCHAIN_SYSROOT doesn't seem to have any effect.  My
libc header files are not visible during compilation. It looks like I
may have to copy them to the staging dir or setup some symlinks.  Is
this the right approach?

Thanks
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

