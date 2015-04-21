Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 718CCE0099B; Mon, 20 Apr 2015 22:23:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1B41E00952
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 22:23:26 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4%14]) with
	mapi; Tue, 21 Apr 2015 15:23:22 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 21 Apr 2015 15:23:20 +1000
Thread-Topic: U-Boot with a different default device tree, for
	BeagleBone-similar system
Thread-Index: AdB78viqlJ5qJYybRMyc3PkOSJJQuQ==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A402227F4FA218@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-7.500.1018-21492.005
x-tm-as-result: No--36.063300-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: U-Boot with a different default device tree, for BeagleBone-similar system
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
X-List-Received-Date: Tue, 21 Apr 2015 05:23:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm working on a system based on the TI Sitara AM335x similar to the Beagle=
Bone Black, but with various custom hardware. I've got a custom device tree=
 for it, and it's working well.

In Yocto, I've defined a custom machine in a custom layer under conf/machin=
e, derived from the BeagleBone Black machine with modifications. The kernel=
 is compiling my device tree named something like am335x-myfantasticdevice.=
dtb, due to a KERNEL_DEVICETREE... line. However, U-Boot is still looking f=
or the stock BeagleBone Black device tree named am335x-boneblack.dtb.

How can I modify my Yocto build so that U-Boot by default will expect a dev=
ice tree with the name am335x-myfantasticdevice.dtb? I can see UBOOT_MACHIN=
E but I'm not sure what I can do with it.

--=20
Craig McQueen


