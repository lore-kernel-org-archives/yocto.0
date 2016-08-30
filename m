Return-Path: <o.campana@videotec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC61E00A08; Mon, 29 Aug 2016 23:43:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [95.229.80.3 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.videotec.com (mail2.videotec.com [95.229.80.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B910E009B4
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 23:42:58 -0700 (PDT)
Received: from maia.sede.videotec.com (unknown [192.168.68.109])
	by mail.videotec.com (Postfix) with ESMTPS id BBD852417F8
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 08:42:55 +0200 (CEST)
Received: from MAIA.sede.videotec.com ([fe80::f8bc:1eb3:ca06:a09c]) by
	MAIA.sede.videotec.com ([fe80::f8bc:1eb3:ca06:a09c%11]) with mapi id
	14.03.0301.000; Tue, 30 Aug 2016 08:41:44 +0200
From: Ottavio Campana <o.campana@videotec.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Building kernel with non standard source structure
Thread-Index: AdICiCS0YyjEMCqbRLuiyfdONmEvgg==
Date: Tue, 30 Aug 2016 06:41:42 +0000
Message-ID: <5637116E3E13BE46B0D936BF364783C1F694D2@MAIA.sede.videotec.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [92.223.223.26]
MIME-Version: 1.0
Subject: Building kernel with non standard source structure
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
X-List-Received-Date: Tue, 30 Aug 2016 06:43:05 -0000
Content-Language: it-IT
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,=0A=
=0A=
I'm trying to port the kernel compilation of a bsp to yocto. My problem is =
that this kernel has a bunch of drivers that are out of the kernel sources =
tree and all the includes are hard coded with an uncommon structure.=0A=
=0A=
To give you the idea, the source is organized in this way=0A=
=0A=
kernel/linux/ # Where the kernel sources are (there are pointers to the oth=
er directories)=0A=
gpldrivers/ # Some drievrs with GPL license (there are pointers to the othe=
r directories)proprietarydrivers/ # Some drivers wit non free license (ther=
e are pointers to the other directories)=0A=
=0A=
Kernel and drivers are in git repository.=0A=
=0A=
I started to develop a recipe inhering from kernel, I am having doubts abou=
t setting the S and B variables=0A=
=0A=
S =3D "${WORKDIR}/git"=0A=
B =3D "${WORKDIR}/git/kernel/linux"=0A=
=0A=
By using this settings, if I run bitbake -c devshell I enter into a kernel-=
source directory that has the directories kernel, gpldrivers and proprietar=
ydrivers correctly copied.=0A=
=0A=
My problem is that at this point if I try to compile the kernel I get the e=
rror that in kernel-source there is no way to a make oldconfig.=0A=
=0A=
How can I have the recipe entering into kernel/linux before copying defconf=
ig and starting compilation?=0A=
=0A=
Thank you=0A=
=0A=
Ottavio=0A=

