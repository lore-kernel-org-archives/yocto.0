Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85387E00860; Sat, 25 Oct 2014 14:12:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9498CE0080D
	for <yocto@yoctoproject.org>; Sat, 25 Oct 2014 14:12:09 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AkkFADcRTFTGmAcV/2dsb2JhbABcgmsjgTDVHwKBBhYBAXELhAQBAQMSKFEBFRUUQiYBBBsaiB8BpDaEcZ8YIJBXg2WBHgWSB5NvhFWJRIN4gjSBAwEBAQ
X-IronPort-AV: E=Sophos;i="5.04,787,1406606400"; d="scan'208";a="89184722"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	25 Oct 2014 17:12:08 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	25 Oct 2014 17:12:08 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Sat, 25 Oct 2014 17:12:08 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: "File exists" exception when IMAGE_LINK_NAME is empty ("")
Thread-Index: Ac/wlqEfmTHZl/OnSVS0OMbsFVYmxQ==
Date: Sat, 25 Oct 2014 21:12:07 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779841147C0F@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: "File exists" exception when IMAGE_LINK_NAME is empty ("")
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
X-List-Received-Date: Sat, 25 Oct 2014 21:12:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

After successfully building an image, the second and subsequent
attempts at building the image were failing with a python "OSError:
File exists" exception in do_rootfs.

Even bitbake <image> -c clean did not fix the problem.

Eventually tracked it down to IMAGE_LINK_NAME having been
configured as "" (empty string).

I think the problem is that, in meta/lib/oe/image.py, symlinks are created
when "self.d.getVar('IMAGE_LINK_NAME', True) is not None" is true but
they are cleaned-up when "self.d.getVar('IMAGE_LINK_NAME', True)" is true.

If my very basic understanding of Python is correct, when
IMAGE_LINK_NAME is the empty string, symlinks will not be cleaned-
up (because "" maps to false) before attempting to create them again,
resulting in the exception.

Is an empty string considered a valid value for IMAGE_LINK_NAME?

Is this the right place to report this issue?

Personally, I feel the correct behavior would be to not create the
symlinks when IMAGE_LINK_NAME is the empty string.

MV



