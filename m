Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3AB2E00C22; Fri, 18 Nov 2016 06:58:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5E14E00AAB
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 06:58:07 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HuBgBlFi9Y/yYyC4deHAEBBAEBCgEBg?=
	=?us-ascii?q?xQjAQEBAQEfgV8BuzOGIQKCCkIRAQIBAQEBAQEBA18dC4RsAxIoUQEVFRRCJgE?=
	=?us-ascii?q?EGxqISgGcEIUZiToOg0QqAosvJYY8iSWDL4IwBZpLAZJLAYg/hg1JkR00IYELh?=
	=?us-ascii?q?T6IMAGBCwEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2HuBgBlFi9Y/yYyC4deHAEBBAEBCgEBgxQjAQEBAQEfgV8?=
	=?us-ascii?q?BuzOGIQKCCkIRAQIBAQEBAQEBA18dC4RsAxIoUQEVFRRCJgEEGxqISgGcEIUZi?=
	=?us-ascii?q?ToOg0QqAosvJYY8iSWDL4IwBZpLAZJLAYg/hg1JkR00IYELhT6IMAGBCwEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,510,1473134400"; d="scan'208";a="216805021"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	18 Nov 2016 09:58:05 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	18 Nov 2016 09:58:06 -0500
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0319.002;
	Fri, 18 Nov 2016 09:58:05 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: uninative vs. BB_NO_NETWORK
Thread-Index: AdJBq5b9+MknEgnPTiWNFPdz9UeQbg==
Date: Fri, 18 Nov 2016 14:58:04 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF82A5C@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: uninative vs. BB_NO_NETWORK
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
X-List-Received-Date: Fri, 18 Nov 2016 14:58:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Currently using Yocto 1.8, planning upgrade to 2.2

Per the Reference Manual, "The uninative class is now enabled by default in=
 Poky. [...]
With this class enabled, a tarball containing a pre-built C library is down=
loaded at the start of the build."

We have to build with BB_NO_NETWORK =3D "1"

How will this interact with uninative? Do we have to download the pre-built=
 C library
to our local mirror, like other package tarballs?

MV

