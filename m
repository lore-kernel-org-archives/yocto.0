Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 426A1E00848; Mon, 27 Oct 2014 17:38:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [216.205.24.210 listed in list.dnswl.org]
X-Greylist: delayed 420 seconds by postgrey-1.32 at yocto-www;
	Mon, 27 Oct 2014 17:38:06 PDT
Received: from us-smtp-delivery-210.mimecast.com
	(us-smtp-delivery-210.mimecast.com [216.205.24.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77023E007A0
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 17:38:06 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-1.us.mimecast.lan; Mon, 27 Oct 2014 20:31:04 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 27 Oct 2014 17:31:04 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Mon, 27 Oct 2014 17:31:03 -0700
Thread-Topic: How to get fw_env.config installed
Thread-Index: Ac/yRnSH94yU2ZvqRsuuq4poMo2PSA==
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD87F9848@MSXBEBVT12.planar.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: x5x63mEaQBW4kwEyu6JEjA-1
Subject: How to get fw_env.config installed
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
X-List-Received-Date: Tue, 28 Oct 2014 00:38:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

I'm working on including the u-boot fw utility tools in my image, specifica=
lly fw_printenv and fw_setenv.=20
For these to work the file fw_env.config needs to be placed at /etc/fw_env.=
config.=20

I can see in oe-core/meta/recipes-bsp/u-boot/u-boot.inc there is a test tha=
t if fw_env.config is in the working dir it will be installed in ${sysconfd=
ir} and I can see in the meta-ti/recipes-bsp/u-boot/u-boot-beagleboard_2011=
.09.bb they simply include file://fw_env.conf in the SRC_URI list to get th=
e file in the working dir.=20

So I created a bbappend file for the ti u-boot recipe (u-boot-ti-staging_20=
13.10.bb) that I'm using and build and I don't get the file in my image roo=
t filesystem.

If I run bitbake -c install virtual/bootloader I can see that the file does=
 get copied into u-boot's working dir image/etc directory but it never make=
s it into the final root filesystem.=20

What am I missing?=20

Thanks,
Matt S.

PS I should note that I'm working Dylan branch with the TI Arago layer.=20



