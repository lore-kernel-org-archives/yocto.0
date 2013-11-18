Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E368E00324
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 22:12:45 -0800 (PST)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 7977936B64
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 11:42:25 +0530 (IST)
Received: from GUREXHT02.ASIAN.AD.ARICENT.COM (gurexht02.asian.ad.aricent.com
	[10.203.171.138])
	by jaguar.aricent.com (Postfix) with ESMTP id 642F536B87
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 11:42:24 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT02.ASIAN.AD.ARICENT.COM ([10.203.171.138]) with mapi;
	Mon, 18 Nov 2013 11:42:24 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 18 Nov 2013 11:42:24 +0530
Thread-Topic: Toolchain compilation issue
Thread-Index: Ac7kD61Y316ivSpgSWmU+sY2oIPM/QAFNLMQ
Message-ID: <17797116383D4341B029FDF34C22BF6A6C4D3CA1FF@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.97.1384744332.26702.yocto@yoctoproject.org>
In-Reply-To: <mailman.97.1384744332.26702.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: No
Subject: Toolchain compilation issue
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
X-List-Received-Date: Mon, 18 Nov 2013 06:12:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We have a requirement to build our own custom toolchain for BSP mips64 arch=
itecture.

We have to use glibc(2.13) instead of eglibc and newlib(1.20) instead of uc=
libc as libraries. Toolchain to be build with version 4.6.3 . I am able to =
override existing toolchain version SRC 4.7.2 to 4.6.3 but when I try to co=
mpile toolchain gcc-cross-initial steps successfully completed but fails in=
 step eglibc in asking for cupid.h header file which it searches for librar=
ies and header files it installed in sysroots during gcc-cross-initial reci=
pe execution.

I have bypassed eglibc-initial step . Does it may have some impact on eglib=
c ??

Please help me out


Regards,
Rohit Jindal







=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

