Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18A4FE007F9; Mon, 18 Aug 2014 19:25:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AD37E0079B
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 19:25:00 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,354,1406563200"; d="scan'208";a="34767342"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 19 Aug 2014 10:22:04 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s7J2OsSF014959
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 10:24:54 +0800
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Tue, 19 Aug 2014 10:25:01 +0800
From: "leimaohui@cn.fujitsu.com" <leimaohui@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] how to use the new features of the toaster
Thread-Index: Ac+7VEVTfhZFRokrTmOMvT73GVteYA==
Date: Tue, 19 Aug 2014 02:25:00 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDAB0C92@G08CNEXMBPEKD01.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.75]
MIME-Version: 1.0
Subject: how to use the new features of the toaster
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
X-List-Received-Date: Tue, 19 Aug 2014 02:25:04 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: quoted-printable

Hi,
=20
 Because I noticed that in poky(master), the toaster has the ability to tri=
gger a build command, and have
 the build executed.
 --------------------------------------------------
 commit 6e71c276b582135228419d95174b7e7784d496b2
 Author: Alexandru DAMIAN <alexandru.damian@intel.com>
 Date:   Mon Jun 30 18:33:04 2014 +0100

    bitbake: toaster: add project main edit page

    This is the first commit on the project main edit page.

    At this point we have:
    * the default settings for a newly created project
    * the ability to add targets
    * the ability to trigger a build command, and have
    the build executed
    ......
 -----------------------------------------------------------
=20
 So, I tried to use the new features of the toaster. But I don't know how .
=20
 Is there anybody tell me where can I find the documentation how to use the=
 new features?
=20
 Best Regards,
 Lei Maohui

