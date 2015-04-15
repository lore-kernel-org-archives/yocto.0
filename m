Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AFF3E00954; Wed, 15 Apr 2015 05:35:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 110 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Apr 2015 05:35:42 PDT
Received: from thoth.sbs.de (thoth.sbs.de [192.35.17.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3707E00954
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 05:35:41 -0700 (PDT)
Received: from mail1.sbs.de (localhost [127.0.0.1])
	by thoth.sbs.de (8.14.3/8.14.3) with ESMTP id t3FCXjQq017897
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 14:33:45 +0200
Received: from DEFTHW99ERLMSX.ww902.siemens.net
	(defthw99erlmsx.ww902.siemens.net [139.22.70.136])
	by mail1.sbs.de (8.14.3/8.14.3) with ESMTP id t3FCXjgO027887
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 15 Apr 2015 14:33:45 +0200
Received: from DENBGAT9ERTMSX.ww902.siemens.net (139.22.70.192) by
	DEFTHW99ERLMSX.ww902.siemens.net (139.22.70.136) with Microsoft SMTP
	Server (TLS) id 14.3.235.1; Wed, 15 Apr 2015 14:33:44 +0200
Received: from DEFTHW99EH4MSX.ww902.siemens.net ([169.254.2.16]) by
	DENBGAT9ERTMSX.ww902.siemens.net ([139.22.70.192]) with mapi id
	14.03.0235.001; Wed, 15 Apr 2015 14:33:44 +0200
From: "Bach, Pascal" <pascal.bach@siemens.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Move device tree generation from include file to bbclass
Thread-Index: AdB3eGjK7YGDKod2SwGI2itxu3cnLQ==
Date: Wed, 15 Apr 2015 12:33:43 +0000
Message-ID: <355BE46A91031048906B695426A8D8E616B7BE37@DEFTHW99EH4MSX.ww902.siemens.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.43]
MIME-Version: 1.0
Subject: Move device tree generation from include file to bbclass
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
X-List-Received-Date: Wed, 15 Apr 2015 12:35:46 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

As ARM now also moved to device tree it look like in future we will have mo=
re kernels that are using device tree then ones that are not.
As far as I understand currently the generation of device trees is controll=
ed via KERNEL_DEVICETREE and is handled in via an include file recipes-kern=
el/linux/linux-dtb.inc.

I was thinking about moving this include into a class so it becomes easier =
to use. Before I dive into implementing something I would like some feedbac=
k from the community.

I have the following variant in mind.

Add the device tree generation to the current kernel.bbclass (or let kernel=
.bblcass inherit from a kernel-dtb.bbclass).
This way all kernels would automatically be DT enabled.
The class would check if KERNEL_DEVICETREE is set and generate device trees=
 based on this information. For boards that don't have KERNEL_DEVICETREE se=
t the class would do nothing and the behavior is like before.
The advantage I see with this approach is that the only thing a user needs =
to do is to set KERNEL_DEVICETREE in the board and make sure the device tre=
es are available in the kernel they like to build.

I appreciate your feedback?

Regards
Pascal

