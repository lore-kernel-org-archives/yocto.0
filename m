Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA7CDE009C6; Thu, 23 Apr 2015 12:37:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.205.24.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [216.205.24.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49811E009BE
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2015 12:37:33 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-13.us.mimecast.lan; Thu, 23 Apr 2015 15:37:31 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Thu, 23 Apr 2015 12:37:30 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Thu, 23 Apr 2015 12:37:30 -0700
Thread-Topic: Strange error trying to use externalsrc
Thread-Index: AdB9/PAou+GPzr5fTZSpK+QJWWGhWQ==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDCA58B01@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: z9zKOD-kQuOIpMEMrVULyA-1
Subject: Strange error trying to use externalsrc
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
X-List-Received-Date: Thu, 23 Apr 2015 19:37:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I'm trying to use the externalsrc class to make it easier build an applicat=
ion under active development.=20

I'm working off of the Dylan branch.=20

If I add the following 2 lines to my site.conf

INHERIT +=3D "externalsrc"
S_pn-keypadd =3D "/home/dev/builds/zanzibar/keypadd"

I get the following error when I try to build the keypadd recipe.=20

ERROR: Function failed: gnu-config-native: LIC_FILES_CHKSUM points to an in=
valid file: /home/dev/builds/zanzibar/tisdk/zanzibar/build/arago-tmp-extern=
al-linaro-toolchain/work/i686-linux/gnu-config-native/20120814-r0/gnu-confi=
g-20120814/config.guess
ERROR: Logfile of failure stored in: /home/dev/builds/zanzibar/tisdk/zanzib=
ar/build/arago-tmp-external-linaro-toolchain/work/i686-linux/gnu-config-nat=
ive/20120814-r0/temp/log.do_configure.11698
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| DEBUG: Shell function do_configure finished
| DEBUG: Executing python function do_qa_configure
| NOTE: Checking autotools environment for common misconfiguration
| DEBUG: Python function do_qa_configure finished
| ERROR: Function failed: gnu-config-native: LIC_FILES_CHKSUM points to an =
invalid file: /home/dev/builds/zanzibar/tisdk/zanzibar/build/arago-tmp-exte=
rnal-linaro-toolchain/work/i686-linux/gnu-config-native/20120814-r0/gnu-con=
fig-20120814/config.guess
ERROR: Task 26 (virtual:native:/home/dev/builds/zanzibar/tisdk/zanzibar/sou=
rces/oe-core/meta/recipes-devtools/gnu-config/gnu-config_20120814.bb, do_co=
nfigure) failed with exit code '1'


The keypadd recipe is marked as CLOSED but I've also tried MIT and GPL. I'v=
e even added a license file and MD5 checksum.=20
Interestingly externalsrc seems to work if I add these 2 lines to the recip=
e.=20

inherit externalsrc
S =3D "/home/dev/builds/zanzibar/keypadd"

But I don't want to have to edit the recipe every time I want to switch to =
building from a local directory.=20

Any suggestions as to what is wrong?=20

Thanks,
Matt S.=20


