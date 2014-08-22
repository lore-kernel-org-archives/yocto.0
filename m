Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E966E007A0; Fri, 22 Aug 2014 05:17:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C364DE00796
	for <yocto@yoctoproject.org>; Fri, 22 Aug 2014 05:17:30 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0158.001; Fri, 22 Aug 2014 14:17:24 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] kernel patches
Thread-Index: Ac++AOGJ0aOsyc+eRLCHkCR0nskcKA==
Date: Fri, 22 Aug 2014 12:17:23 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48256DB954@SESTOEX04.enea.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.6]
MIME-Version: 1.0
Subject: kernel patches
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
X-List-Received-Date: Fri, 22 Aug 2014 12:17:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I wonder how you handle the kernel patches?=20

I want to apply a security kernel patch to Linux-yocto 3.10  which is used =
by Romely:

meta-inte/meta-romley/conf/machine/romley-ivb.conf:PREFERRED_VERSION_linux-=
yocto ?=3D "3.10%"

For me the obvious way to fix this is:
1) Create >> "poky/meta/recipes-kernel/linux/files" directory and add the p=
atch file there

2) modify: poky/meta/recipes-kernel/linux/linux-yocto_3.10.bb


-SRC_URI =3D "git://git.yoctoproject.org/linux-yocto-3.10.git;bareclone=3D1=
;branch=3D${KBRANCH},${KMETA};name=3Dmachine,meta"
+FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

+SRC_URI =3D "git://git.yoctoproject.org/linux-yocto-3.10.git;bareclone=3D1=
;branch=3D${KBRANCH},${KMETA};name=3Dmachine,meta \
+          file://Fix_for_CVE-2014-0196_pty_layer_race_condition.patch \
+          "

Please let me know if this is the correct way. And also let me know if I up=
stream this kernel patch to yocto, will yocto accept it (if the patch looks=
 correct of course). Please let me know if you prefer to apply security pat=
ches to kernels in some different way.

Thanks
BR - Sona


