Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE002.bigfish.com (tx2ehsobe001.messaging.microsoft.com
	[65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0891EE004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 23:58:41 -0700 (PDT)
Received: from mail15-tx2-R.bigfish.com (10.9.14.252) by
	TX2EHSOBE002.bigfish.com (10.9.40.22) with Microsoft SMTP Server id
	14.1.225.22; Wed, 28 Sep 2011 06:58:39 +0000
Received: from mail15-tx2 (localhost.localdomain [127.0.0.1])	by
	mail15-tx2-R.bigfish.com (Postfix) with ESMTP id 84C257782FA	for
	<yocto@yoctoproject.org>; Wed, 28 Sep 2011 06:58:39 +0000 (UTC)
X-SpamScore: -3
X-BigFish: VS-3(zz98bKzz1202hzzz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail15-tx2 (localhost.localdomain [127.0.0.1]) by mail15-tx2
	(MessageSwitch) id 1317193055380202_32348;
	Wed, 28 Sep 2011 06:57:35 +0000 (UTC)
Received: from TX2EHSMHS039.bigfish.com (unknown [10.9.14.248])	by
	mail15-tx2.bigfish.com (Postfix) with ESMTP id A304DDE80A3	for
	<yocto@yoctoproject.org>; Wed, 28 Sep 2011 06:55:34 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS039.bigfish.com
	(10.9.99.139) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 28 Sep 2011 06:55:33 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.01.0323.007; Wed, 28 Sep 2011 01:55:33 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-toolchain-sdk build issue
Thread-Index: AQHMfaudka2w22cFUkOWhAfemjFCdQ==
Date: Wed, 28 Sep 2011 06:55:32 +0000
Message-ID: <CAEsOVNe2YSDfDXWNmZUP_t13aGOGD0pys7C=Gx28-PyLJDKxew@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Subject: meta-toolchain-sdk build issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 28 Sep 2011 06:58:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A2CCBFB36A93E248BFDCD35C66ED472D@freescale.net>
Content-Transfer-Encoding: quoted-printable

I'm seeing the following on a fresh meta-toolchain-sdk build. Is this
being addressed in one of the recent RPM fixups?

-M

Log data follows:
| ERROR: Function 'do_populate_sdk' failed (see
/opt/yocto/cache-build/p2020ds/build_p2020ds_release/tmp/work/ppce500v2-fsl=
-linux-gnuspe/meta-toolchain-gmae-1.0-r6/temp/log.do_populate_sdk.19005
for further information)
| Generating solve db for
/opt/yocto/cache-build/p2020ds/build_p2020ds_release/tmp/deploy/rpm/p2020ds=
...
|    total:               1      0.000000 MB      0.363415 secs
|    fingerprint:         9      0.000010 MB      0.000208 secs
|    install:             3      0.000000 MB      0.020971 secs
|    dbadd:               3      0.000000 MB      0.018530 secs
|    dbget:              12      0.000000 MB      0.000043 secs
|    dbput:               3      0.009264 MB      0.002016 secs
|    readhdr:            31      0.018504 MB      0.011336 secs
|    hdrload:            15      0.027000 MB      0.000092 secs
|    hdrget:            489      0.000000 MB      0.000833 secs
| Generating solve db for
/opt/yocto/cache-build/p2020ds/build_p2020ds_release/tmp/deploy/rpm/ppce500=
v2...
|    total:               1      0.000000 MB     45.155298 secs
|    fingerprint:     12252      0.148182 MB     10.303211 secs
|    install:          4084      0.000000 MB      6.286617 secs
|    dbadd:            4084      0.000000 MB      6.162064 secs
|    dbget:           44399      0.000000 MB      0.090908 secs
|    dbput:            4084     21.316012 MB      5.347684 secs
|    readhdr:         40841     42.252986 MB     18.715437 secs
|    hdrload:         21468     68.054034 MB      0.126545 secs
|    hdrget:         731362      0.000000 MB      1.124512 secs
| Generating solve db for
/opt/yocto/cache-build/p2020ds/build_p2020ds_release/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.359030 secs
|    fingerprint:        21      0.000750 MB      0.263044 secs
|    install:             7      0.000000 MB      0.023569 secs
|    dbadd:               7      0.000000 MB      0.021483 secs
|    dbget:              82      0.000000 MB      0.000153 secs
|    dbput:               7      0.050776 MB      0.005504 secs
|    readhdr:            71      0.100808 MB      0.031987 secs
|    hdrload:            35      0.149920 MB      0.000166 secs
|    hdrget:           1167      0.000000 MB      0.001608 secs
| Generating solve db for
/opt/yocto/cache-build/p2020ds/build_p2020ds_release/tmp/deploy/rpm/x86_64-=
nativesdk...
|    total:               1      0.000000 MB      2.310403 secs
|    fingerprint:       555      0.025268 MB      0.140790 secs
|    install:           185      0.000000 MB      0.389988 secs
|    dbadd:             185      0.000000 MB      0.382386 secs
|    dbget:            8904      0.000000 MB      0.013013 secs
|    dbput:             185      2.038600 MB      0.321168 secs
|    readhdr:          1851      4.040990 MB      1.196836 secs
|    hdrload:          1076      7.384418 MB      0.007267 secs
|    hdrget:          31599      0.000000 MB      0.057209 secs
| Generating solve db for
/opt/yocto/cache-build/p2020ds/build_p2020ds_release/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.099607 secs
|    fingerprint:        21      0.000750 MB      0.002739 secs
|    install:             7      0.000000 MB      0.048432 secs
|    dbadd:               7      0.000000 MB      0.044145 secs
|    dbget:              82      0.000000 MB      0.000276 secs
|    dbput:               7      0.050776 MB      0.010381 secs
|    readhdr:            71      0.100808 MB      0.000313 secs
|    hdrload:            35      0.149920 MB      0.000322 secs
|    hdrget:           1167      0.000000 MB      0.002785 secs
| Processing task-core-standalone-gmae-sdk-target...
| Processing task-core-standalone-gmae-sdk-target-dbg...
| error: Failed dependencies:
| 	/bin/sh is needed by gstreamer-0.10.32-r1.ppce500v2
NOTE: package meta-toolchain-gmae-1.0-r6: task do_populate_sdk: Failed
ERROR: Task 8 (/opt/yocto/cache-build/p2020ds/meta/recipes-core/meta/meta-t=
oolchain-gmae.bb,
do_populate_sdk) failed with exit code '1'
ERROR: '/opt/yocto/cache-build/p2020ds/meta/recipes-core/meta/meta-toolchai=
n-gmae.bb'
failed=


