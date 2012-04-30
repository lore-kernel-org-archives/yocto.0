Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog115.obsmtp.com (eu1sys200aog115.obsmtp.com
	[207.126.144.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 350D0E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 01:45:33 -0700 (PDT)
Received: from beta.dmz-eu.st.com ([164.129.1.35]) (using TLSv1) by
	eu1sys200aob115.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT55RK/3Ni9CrVmPQfUv7NEJvO2GZOKoh@postini.com;
	Mon, 30 Apr 2012 08:45:34 UTC
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 9A5C1117;
	Mon, 30 Apr 2012 08:45:22 +0000 (GMT)
Received: from relay2.stm.gmessaging.net (unknown [10.230.100.18])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 46CD02580;
	Mon, 30 Apr 2012 08:45:22 +0000 (GMT)
Received: from exdcvycastm003.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm003", Issuer "exdcvycastm003" (not verified))
	by relay2.stm.gmessaging.net (Postfix) with ESMTPS id 27702A8083;
	Mon, 30 Apr 2012 10:45:18 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.230.100.3]) by
	exdcvycastm003.EQ1STM.local ([10.230.100.1]) with mapi; Mon, 30 Apr 2012
	10:45:21 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Mon, 30 Apr 2012 10:45:20 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac0mOL6jqvLU4NkdS2qEzAt3ksAkMgAcX3Ke
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CD@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F7C42E5.8000301@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>
	<CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>,
	<CAMKF1srQQsDuVgGjpom2V0hC-EqWJE=3upfkcf-2GgGpQO8Y+w@mail.gmail.com>
In-Reply-To: <CAMKF1srQQsDuVgGjpom2V0hC-EqWJE=3upfkcf-2GgGpQO8Y+w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting of specific Kernel/Driver into yocto.
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
X-List-Received-Date: Mon, 30 Apr 2012 08:45:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


________________________________________
From: Khem Raj [raj.khem@gmail.com]
Sent: Monday, April 30, 2012 12:18 AM
To: Om Prakash PAL
Cc: Bruce Ashfield; yocto@yoctoproject.org
Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.

On Sun, Apr 29, 2012 at 2:58 AM, Om Prakash PAL
<omprakash.pal@stericsson.com> wrote:
> Hi Bruce,
> for porting of our local kernel,we have created an BSP layer and to chang=
e the the kernel,  we have created an linux-yocto_3.0.bbappend file inside =
meta<BSP>/recipes-kernel/linux/
> like this:-
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
> COMPATIBLE_MACHINE_<BSP_name> =3D "BSP_name"
>
> # KMACHINE is the branch to build
> KMACHINE_<BSP_name> =3D "local_branch"
>
> SRCREV_machine_pn_linux-yocto_<BSP_name> ?=3D "XXXXXXXX" (here we have as=
sign top commit ID of our local kernel)

that should be SRCREV_machine_pn-linux-yocto_<BSP_name>

yes I have done same and same Error is coming again then set=20
YOCTO_KERNEL_EXTERNAL_BRANCH =3D"local_branch"; in conf/local.conf file and=
 now its working bu now problem is something different:

ERROR: Function 'do_patch' failed (see /home/apallan/yocto/hello_build/tmp/=
work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd08=
7bec5ec7cd8a448383-r3/temp/log.do_patch.20524 for further information)
ERROR: Logfile of failure stored in: /home/apallan/yocto/hello_build/tmp/wo=
rk/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd087b=
ec5ec7cd8a448383-r3/temp/log.do_patch.20524
Log data follows:
| ERROR. meta data not found, check upstream repo for tags and branches
| ERROR: Function 'do_patch' failed (see /home/apallan/yocto/hello_build/tm=
p/work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd=
087bec5ec7cd8a448383-r3/temp/log.do_patch.20524 for further information)
NOTE: package linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd087bec5ec7cd8a4483=
83-r3: task do_patch: Failed
ERROR: Task 516 (/home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/li=
nux/linux-yocto_3.0.bb, do_patch) failed with exit code '1'

Best Regards,
Om Prakash Pal



