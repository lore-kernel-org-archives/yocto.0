Return-Path: <nicolas.labriet@transport.alstom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A804FE00B8E; Tue, 22 Nov 2016 05:16:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [159.245.16.221 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 619 seconds by postgrey-1.32 at yocto-www;
	Tue, 22 Nov 2016 05:16:11 PST
Received: from MCEGSMTP1.alstom.com (mcegsmtp1.alstom.com [159.245.16.221])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4283E00AF2
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 05:16:11 -0800 (PST)
Received: from 041-smtp-out.Alstom.com (unknown [141.251.119.211]) by
	MCEGSMTP1.alstom.com with smtp
	(TLS: TLSv1/SSLv3,256bits,ECDHE-RSA-AES256-SHA384)
	id 4a40_1253_6fb8e102_5790_4ca9_822d_69b92af0d5d9;
	Tue, 22 Nov 2016 14:05:50 +0100
Received: from AMXPR48MB0103.041d.mgd.msft.net (141.251.119.211) by
	AMXPR48MB0103.041d.mgd.msft.net (141.251.119.211) with Microsoft SMTP
	Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.734.8; Tue, 22 Nov 2016 13:05:44 +0000
Received: from AMXPR48MB0103.041d.mgd.msft.net ([141.251.119.211]) by
	AMXPR48MB0103.041d.mgd.msft.net ([141.251.119.211]) with mapi id
	15.01.0734.014; Tue, 22 Nov 2016 13:05:44 +0000
From: LABRIET Nicolas <nicolas.labriet@transport.alstom.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: baremetal toolchain for aarch64
Thread-Index: AdJEwRdbOzJbwgWHTJC7aa1uqMxFBQ==
Date: Tue, 22 Nov 2016 13:05:44 +0000
Message-ID: <3e68c48556d544608c903285ffbf4623@AMXPR48MB0103.041d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.121.132]
x-ms-office365-filtering-correlation-id: cb7185ec-4a1a-4d0a-5d57-08d412d844c5
MIME-Version: 1.0
Subject: baremetal toolchain for aarch64
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
X-List-Received-Date: Tue, 22 Nov 2016 13:16:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to produce a baremetal cross-compiler for aarch64 using Jethro.
In my local.conf I set TCLIBC =3D "baremetal" and run bitbake meta-toolchai=
n.

The first error is: Exception: KeyError: 'aarch64'.
I think insane.bbclass will need to be updated by adding aarch64 to elf:
             "elf" : {
+                        "aarch64" :   (183,    0,    0,          True,    =
      64),

Then I get a QA error on ILP32 in libgcc-dev:
ERROR: QA Issue: Bit size did not match (64 to 32) libgcc on work/aarch64-f=
sl-elf/libgcc/linaro-4.9-r2015.03/packages-split/libgcc-dev/usr/lib/aarch64=
-fsl-elf/4.9.3/ilp32/crtbegin.o [arch]

I manage to get over this one by disabling multilib on libgcc-linaro, but t=
he build fails on:
ERROR: libgcc-dev not found in the base feeds (ls1043ardb aarch64 noarch an=
y all).

Disabling multilib on libgcc-linaro may not be the right thing to do.

How can I proceed to build the baremetal toolchain?

Nicolas

________________________________
CONFIDENTIALITY : This e-mail and any attachments are confidential and may =
be privileged. If you are not a named recipient, please notify the sender i=
mmediately and do not disclose the contents to another person, use it for a=
ny purpose or store or copy the information in any medium.

