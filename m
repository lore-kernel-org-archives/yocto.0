Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C74F5E00D2E; Wed, 16 Aug 2017 07:45:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6858E00C1A
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 07:45:48 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2FpAgD3WZRZ/wUHmMZdGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgxFJggCeHpoZHIUrAoRDQhUBAgEBAQEBAQEDaB0LhTEoUQEVFRRCJgE?=
	=?us-ascii?q?EGxqKDgGgQ40OIgKLSiaDKIICgUyJf4NBgjEFoEUCljgBiWaGfZYbNSOBCncVh?=
	=?us-ascii?q?2OJSQGBDgEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2FpAgD3WZRZ/wUHmMZdGgEBAQECAQEBAQgBAQEBgxFJggC?=
	=?us-ascii?q?eHpoZHIUrAoRDQhUBAgEBAQEBAQEDaB0LhTEoUQEVFRRCJgEEGxqKDgGgQ40OI?=
	=?us-ascii?q?gKLSiaDKIICgUyJf4NBgjEFoEUCljgBiWaGfZYbNSOBCncVh2OJSQGBDgEBAQ?=
X-IronPort-AV: E=Sophos;i="5.41,383,1498536000"; d="scan'208";a="210004655"
Received: from unknown (HELO co300216-co-erhwest.avaya.com) ([198.152.7.5])
	by de307622-de-outbound.net.avaya.com with ESMTP;
	16 Aug 2017 10:45:46 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	16 Aug 2017 10:45:46 -0400
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0352.000;
	Wed, 16 Aug 2017 10:45:45 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: pkgname QA warnings not displayed
Thread-Index: AdMWngwlqoyo3F5DQp2MuQ/loPmy3w==
Date: Wed, 16 Aug 2017 14:45:44 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798922773F2@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 10.0.250.9
dlp-reaction: no-action
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: pkgname QA warnings not displayed
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
X-List-Received-Date: Wed, 16 Aug 2017 14:45:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Transitioning from Fido to Morty

Noticed that there now QA warnings for packages with incorrect names.

But it seems these warnings only show up in tmp/qa.txt, they are not displa=
yed
in the build output.

Is that a bug or intentional? Is there a way to make them appear in the
build output?

MV

