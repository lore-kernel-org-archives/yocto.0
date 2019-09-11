Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2286CE00E08; Wed, 11 Sep 2019 16:15:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.222.82.68 listed in list.dnswl.org]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[209.222.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3612E00DA5
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 16:15:41 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx7.us-east-2b.ess.aws.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Wed, 11 Sep 2019 23:15:40 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Wed, 11 Sep 2019 16:15:38 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Wed, 11 Sep 2019 16:15:38 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Thread-Topic: [meta-raspberrypi][ostree] build errors
Thread-Index: AQHVaPNxponm5V5gg0Cp38rjpvyqpw==
Date: Wed, 11 Sep 2019 23:15:38 +0000
Message-ID: <27002ae78aef4a1e9feb3eea2d788ce3@sakuraus.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1568243738-893013-18325-38-5
X-BESS-VER: 2019.1_20190911.2255
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2,
	rules version 3.2.2.218314 [from 
	cloudscan16-96.us-east-2b.ess.aws.cudaops.com]
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Subject: [meta-raspberrypi][ostree] build errors
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
X-List-Received-Date: Wed, 11 Sep 2019 23:15:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to include ostree into a raspberry pi boot2qt build based on thu=
d.

I'm getting a warning:
WARNING: linux-raspberrypi-1_4.14.112+gitAUTOINC+6b5c4a2508-r0 do_kernel_me=
tadata: defconfig detected in WORKDIR. bcm2709_defconfig skipped

Which I figure that I can probably ignore, but may find I have a problem wi=
th it if it is missing out on my config changes.

More concerning is the following error:

ERROR: ostree-v2018.9-r0 do_unpack: gitsm: submodule unpack failed: UnpackE=
rror Unpack failure for URL: 'gitsm://gitlab.gnome.org/GNOME/libglnx.git;pr=
otocol=3Dhttps;name=3Dlibglnx;subpath=3Dlibglnx;bareclone=3D1;nobranch=3D1'=
. No up to date source found: clone directory not available or not up to da=
te: /home/gwilson/Qt/Qt-5.13.1/Yocto-build-RPi3/build-raspberrypi3/../downl=
oads/git2/gitlab.gnome.org.GNOME.libglnx.git; shallow clone not enabled

The 'gitlab.gnome.org/GNOME/libglnx' subdirectory is there, so that would i=
mply that something is wrong with the initial protocol or other decorators.=
 I also did a clean on ostree just to make sure there wasn't any problem wi=
th git -> gitsm changes.

Is there anyone with familiarity with the ostree system that could give me =
a hand on this? It is possible that I'm missing some configuration, the doc=
s are not the clearest.

Thanks in advance,
Greg Wilson-Lindberg=A0=20
=20

