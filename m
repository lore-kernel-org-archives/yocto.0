Return-Path: <meenakumari.s@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B7B7E00B71; Thu, 22 May 2014 22:19:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from GWS06.hcl.com (unknown [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 593ECE00A2F
	for <yocto@yoctoproject.org>; Thu, 22 May 2014 22:19:23 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.98,891,1392143400"; d="scan'208";a="70600147"
Received: from unknown (HELO NDA-CORP-HT02.CORP.HCL.IN) ([10.248.64.34])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 23 May 2014 10:42:22 +0530
Received: from NDA-HCLT-CSHT01.HCLT.CORP.HCL.IN (10.98.132.26) by
	NDA-CORP-HT02.CORP.HCL.IN (10.248.64.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 23 May 2014 10:49:21 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT01.HCLT.CORP.HCL.IN ([10.98.132.26]) with mapi id
	14.03.0123.003; Fri, 23 May 2014 10:49:21 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "b.weissbach@gmail.com"
	<b.weissbach@gmail.com>
Thread-Topic: QT5 for gernericX86 
Thread-Index: AQHPdkaCl71JMFGoiE6a67VJR+e4LA==
Date: Fri, 23 May 2014 05:19:21 +0000
Message-ID: <E4938C0D959B3445943720B88F0721341563A24B@NDA-HCLT-MBS02.hclt.corp.hcl.in>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Subject: QT5 for gernericX86
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
X-List-Received-Date: Fri, 23 May 2014 05:19:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

xcb plugin will be available in your yocto build sysroot, create a softlink=
 to your rootfs. or manualy do copy.


Thnaks!
Meena  =



::DISCLAIMER::
---------------------------------------------------------------------------=
-------------------------------------------------------------------------

The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only.
E-mail transmission is not guaranteed to be secure or error-free as informa=
tion could be intercepted, corrupted,
lost, destroyed, arrive late or incomplete, or may contain viruses in trans=
mission. The e mail and its contents
(with or without referred errors) shall therefore not attach any liability =
on the originator or HCL or its affiliates.
Views or opinions, if any, presented in this email are solely those of the =
author and may not necessarily reflect the
views or opinions of HCL or its affiliates. Any form of reproduction, disse=
mination, copying, disclosure, modification,
distribution and / or publication of this message without the prior written=
 consent of authorized representative of
HCL is strictly prohibited. If you have received this email in error please=
 delete it and notify the sender immediately.
Before opening any email and/or attachments, please check them for viruses =
and other defects.

---------------------------------------------------------------------------=
-------------------------------------------------------------------------


