Return-Path: <vrajaram@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03FE9E00897; Fri,  5 Dec 2014 06:54:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -7.5 USER_IN_DEF_DKIM_WL From: address is in the default
	DKIM white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.37.86.76 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Dec 2014 06:54:14 PST
Received: from rcdn-iport-5.cisco.com (rcdn-iport-5.cisco.com [173.37.86.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2A9FE002A6
	for <yocto@yoctoproject.org>; Fri,  5 Dec 2014 06:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=751; q=dns/txt; s=iport;
	t=1417791256; x=1419000856;
	h=from:to:subject:date:message-id:content-id:
	content-transfer-encoding:mime-version;
	bh=YifH5ux0E4wB9ysl2OkLGIXCf46gYKn80QsMvgrFOBU=;
	b=Qn6XU0ApQU4NJPHlUOFisW+kRWIEpEDiKFOfKiBfXuHB0kdvV9dFFP8K
	f3zd/5PePAsIihAGpB0GBIUZ6+aCaGjDhOngau330ddT5qBLYfyHOCf+Q
	dT+jsjhVA8lR9zQ3MyL85BNL7OZLAA2MvURsWozgLyXwvvNX9e4byU5gc 8=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Aj8FAJHGgVStJV2Y/2dsb2JhbABZgwZSWATEJYIehzoWAQEBAQF9hAmBCwGBACcEiE6wV6YuAQEIAgEflQwFigCFRoN+hhuBVoksiD2Db2+BRX4BAQE
X-IronPort-AV: E=Sophos;i="5.07,522,1413244800"; d="scan'208";a="377859520"
Received: from rcdn-core-1.cisco.com ([173.37.93.152])
	by rcdn-iport-5.cisco.com with ESMTP; 05 Dec 2014 14:53:13 +0000
Received: from xhc-rcd-x01.cisco.com (xhc-rcd-x01.cisco.com [173.37.183.75])
	by rcdn-core-1.cisco.com (8.14.5/8.14.5) with ESMTP id sB5ErBdb024642
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 5 Dec 2014 14:53:11 GMT
Received: from xmb-rcd-x10.cisco.com ([169.254.15.204]) by
	xhc-rcd-x01.cisco.com ([173.37.183.75]) with mapi id 14.03.0195.001;
	Fri, 5 Dec 2014 08:53:11 -0600
From: "Vinodh Rajaraman (vrajaram)" <vrajaram@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: using preferred_provider
Thread-Index: AQHQEJsve1U5a69pv0i2zB4s3Wbf7w==
Date: Fri, 5 Dec 2014 14:53:10 +0000
Message-ID: <D0A7C4AC.AE92%vrajaram@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.65.35.167]
MIME-Version: 1.0
Subject: using preferred_provider
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
X-List-Received-Date: Fri, 05 Dec 2014 14:54:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A3A4DCAAEAB1B846A99A31AF6B372E08@emea.cisco.com>
Content-Transfer-Encoding: quoted-printable


Facing an issue, where item 'libpython2.7.so.1.0=B9 is provided by 2
different packages (libpython2.7-1.0-2.7.2-r5.19.lib32_x86, core.bb).
Core.bb is our own implementation that packages this file. While building
final image, do_rootfs() complains that there is a conflict and errors
out.=20

error: file /usr/lib/libpython2.7.so.1.0 conflicts between attempted
installs of core-1.0-r0.lib32_n9000 and
libpython2.7-1.0-2.7.2-r5.19.lib32_x86


Is it okay to add below variable to denote that I want to ignore content
of libpython2.7 and use the item provided by core? Or is below syntax
wrong? I keep getting above error, so looking for some help to resolve
this.=20

PREFERRED_PROVIDER_libpython2.7.so.1.0 ?=3D "core"



Vinodh



