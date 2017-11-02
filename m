Return-Path: <MBishop@smithsinterconnectinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB004E00C45; Thu,  2 Nov 2017 13:16:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.smithsinterconnectinc.com (mail.smithsinterconnectinc.com
	[66.32.24.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72981E00AAF
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 13:16:23 -0700 (PDT)
X-ASG-Debug-ID: 1509653782-0abaef13ff19c62d0001-yzSStA
Received: from ERDCSEXCH01.SMITHSSII.NET ([10.16.188.3]) by
	mail.smithsinterconnectinc.com with ESMTP id 7sQDZaST20LqgdhR
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Thu, 02 Nov 2017 16:16:22 -0400 (EDT)
X-Barracuda-Envelope-From: MBishop@smithsinterconnectinc.com
Received: from ERDCSEXCH01.SMITHSSII.NET (10.16.188.3) by
	ERDCSEXCH01.SMITHSSII.NET (10.16.188.3) with Microsoft SMTP Server
	(TLS) id 15.0.847.32; Thu, 2 Nov 2017 16:16:22 -0400
Received: from ERDCSEXCH01.SMITHSSII.NET ([fe80::4852:cd1d:f04f:f07]) by
	ERDCSEXCH01.SMITHSSII.NET ([fe80::4852:cd1d:f04f:f07%12]) with mapi id
	15.00.0847.040; Thu, 2 Nov 2017 16:16:22 -0400
From: "Bishop, Mark (STRT)" <MBishop@smithsinterconnectinc.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_kernel_checkout() not using the correct directory
X-ASG-Orig-Subj: RE: do_kernel_checkout() not using the correct directory
Thread-Index: AdNUACvR6mlT8t+vTISl73pgmu+gzwAFq+Ig
Date: Thu, 2 Nov 2017 20:16:21 +0000
Message-ID: <980e80dba47f4e8787556a88ccade2fe@ERDCSEXCH01.SMITHSSII.NET>
References: <1b231688863c4060b428c93d3b40fa0e@ERDCSEXCH01.SMITHSSII.NET>
In-Reply-To: <1b231688863c4060b428c93d3b40fa0e@ERDCSEXCH01.SMITHSSII.NET>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.178.96]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.16.188.3]
X-Barracuda-Start-Time: 1509653782
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://sirblockalot.smithssii.net:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 6526
X-Virus-Scanned: by bsmtpd at smithsinterconnectinc.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=7.0 KILL_LEVEL=8.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.44430
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: do_kernel_checkout() not using the correct directory
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
X-List-Received-Date: Thu, 02 Nov 2017 20:16:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I changed the code in  arm/layers/core/meta/classes/kernel-yocto.bbclass

From:
=2E
else
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 # case: we have no git reposi=
tory at all.=20
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0# To support low bandwidth =
options for building the kernel, we'll just=20
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0# convert the tree to a git=
 repo and let the rest of the process work unchanged

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 # if ${S} hasn't been set to =
the proper subdirectory a default of "linux" is=20
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0# used, but we can't initia=
lize that empty directory. So check it and throw a
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 # clear error

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cd ${S}
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if [ ! -f "Makefile" ]; then
..

To:
else
                # case: we have no git repository at all.=20
                # To support low bandwidth options for building the kernel,=
 we'll just=20
                # convert the tree to a git repo and let the rest of the pr=
ocess work unchanged

                # if ${S} hasn't been set to the proper subdirectory a defa=
ult of "linux" is=20
                # used, but we can't initialize that empty directory. So ch=
eck it and throw a
                # clear error

                if [ -d "${WORKDIR}/trunk/" ]; then
                        source_workdir=3D"${WORKDIR}/trunk"
                        if [ "${source_dir}" !=3D "${source_workdir}" ]; th=
en
                                rm -rf ${S}
                                mv ${WORKDIR}/trunk ${S}
                        fi
                fi

                cd ${S}
                if [ ! -f "Makefile" ]; then

And everything is working but it seems that this would be the wrong way to =
do this as this is me editing a base class file.=20=20



From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Bishop, Mark (STRT)
Sent: Thursday, November 02, 2017 1:48 PM
To: yocto@yoctoproject.org
Subject: [yocto] do_kernel_checkout() not using the correct directory

I am trying to compile a kernel located in SVN.

I get this error message:
ERROR: linux-xlnx-4.9-xilinx-v2017.2+git20-r0 do_kernel_checkout: S /tmp/st=
ride/work-shared/plnx_arm/kernel-source is not set to the linux source dire=
ctory. Check=20
ERROR: linux-xlnx-4.9-xilinx-v2017.2+git20-r0 do_kernel_checkout: the recip=
e and set S to the proper extracted subdirectory
ERROR: linux-xlnx-4.9-xilinx-v2017.2+git20-r0 do_kernel_checkout: Function =
failed: do_kernel_checkout (log file is located at /tmp/stride/work/plnx_ar=
m-xilinx-linux-gnueabi/linux-xlnx/4.9-xilinx-v2017.2+git20-r0/temp/log.do_k=
ernel_checkout.34928)
ERROR: Logfile of failure stored in: /tmp/stride/work/plnx_arm-xilinx-linux=
-gnueabi/linux-xlnx/4.9-xilinx-v2017.2+git20-r0/temp/log.do_kernel_checkout=
.34928
ERROR: Task (/opt/pkg/petalinux/2017.2/components/yocto/source/arm/layers/m=
eta-xilinx/recipes-kernel/linux/linux-xlnx_4.9.bb:do_kernel_checkout) faile=
d with exit code '1'

And my kernel gets downloaded to:
/tmp/stride/work/plnx_arm-xilinx-linux-gnueabi/linux-xlnx/4.9-xilinx-v2017.=
2+git20-r0/trunk
But Yocto is looking for it in /tmp/stride/work-shared/plnx_arm/kernel-sour=
ce
Which is why it is failing in kernel-yocto.bbclass when I try and compile a=
 kernel located in SVN.

If it is a git repo it gets copied into /tmp/stride/work-shared/plnx_arm/ke=
rnel-source and things work nicely.


do_kernel_checkout() {
...
if [ -d "${WORKDIR}/git/" ]; then
       # case: git repository
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 # if S is WORKDIR/git, then w=
e shouldn't be moving or deleting the tree.
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if [ "${source_dir}" !=3D "${=
source_workdir}" ]; then
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if [ =
-d "${source_workdir}/.git" ]; then
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 # regular git repository with .git
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 rm -rf ${S}
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 mv ${WORKDIR}/git ${S}
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 else
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 # create source for bare cloned git repository
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 git clone ${WORKDIR}/git ${S}
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 rm -rf ${WORKDIR}/git
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fi
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fi
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cd ${S}
else
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 # case: we have no git reposi=
tory at all.=20
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0# To support low bandwidth =
options for building the kernel, we'll just=20
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0# convert the tree to a git=
 repo and let the rest of the process work unchanged

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 # if ${S} hasn't been set to =
the proper subdirectory a default of "linux" is=20
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0# used, but we can't initia=
lize that empty directory. So check it and throw a
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 # clear error

=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cd ${S}
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 if [ ! -f "Makefile" ]; then
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bberr=
or "S ${S} is not set to the linux source directory. Check "
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bbfat=
al "the recipe and set S to the proper extracted subdirectory"
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 fi
..

${S} is set to /tmp/stride/work-shared/plnx_arm/kernel-source when I need o=
ne of the two things to happen:
A) ${S} set to =A0${WORKDIR}/trunk=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 OR
B) ${WORKDIR}/trunk copied to ${S}/

I could modify that file directly on my machine and move on, but is there a=
 way I can create an .bbappend or something that will change ${S}

I'm pretty new to Yocto and I'd like to have a solution that resides in my =
project folder instead of having to modify Yocto files so that when I do to=
ol installs on new development machines I can just checkout my project data=
 and have it work.=A0 I'm using Petalinux, so the process would be install =
that, then checkout the project and then build it, with the correct ${S} di=
rectory flowing into kernel-yocto.bbclass:do_kernel_checkout()

I'm new Yocto but I've been reading a ton and am looking for some advice.




This e-mail contains proprietary information some or all of which may be le=
gally privileged. It is intended for the recipient only. If an addressing o=
r transmission error has misdirected this e-mail, please notify the authori=
ty by replying to this e-mail. If you are not the intended recipient you mu=
st not use, disclose, distribute, copy, print, or rely on this e-mail. In a=
ddition, information contained in or attached to this e-mail may be subject=
 to either 22 C.F.R. Parts 120?130, or 15 C.F.R. Parts 730-774. These regul=
ations prohibit the release or disclosure of certain information contained =
herein to anyone who is not a U.S. citizen or permanent resident alien, wit=
hout a license first having been issued. Failure to observe such requiremen=
ts is a violation of U.S. law that carries serious penalties. =A0=A0=A0=A0



