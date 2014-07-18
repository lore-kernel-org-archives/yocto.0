Return-Path: <meenakumari.s@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9071DE0056A; Thu, 17 Jul 2014 22:56:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Jul 2014 22:56:33 PDT
Received: from GWS06.hcl.com (gws06.hcl.com [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25F9DE00559
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 22:56:32 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,682,1400005800"; d="scan'208";a="77979696"
Received: from unknown (HELO NDA-CORP-HT03.CORP.HCL.IN) ([10.248.64.35])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 18 Jul 2014 11:24:01 +0530
Received: from NDA-HCLT-CSHT01.HCLT.CORP.HCL.IN (10.98.132.26) by
	NDA-CORP-HT03.CORP.HCL.IN (10.248.64.35) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 18 Jul 2014 11:25:23 +0530
Received: from NDA-HCLT-MBS05.HCLT.CORP.HCL.IN ([10.98.132.20]) by
	NDA-HCLT-CSHT01.HCLT.CORP.HCL.IN ([10.98.132.26]) with mapi id
	14.03.0123.003; Fri, 18 Jul 2014 11:25:22 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "ross.burton@intel.com"
	<ross.burton@intel.com>
Thread-Topic: [yocto] Adding prebuilt binaries/libraries to /usr/bin
	or/usr/lib on rootfs
Thread-Index: AQHPokzXHSoSV0WYtkK3tAjwRqM2vg==
Date: Fri, 18 Jul 2014 05:55:22 +0000
Message-ID: <E4938C0D959B3445943720B88F0721341564DE52@NDA-HCLT-MBS05.hclt.corp.hcl.in>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Subject: Adding prebuilt binaries/libraries to /usr/bin or/usr/lib on rootfs
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
X-List-Received-Date: Fri, 18 Jul 2014 05:56:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all.

I have few prebuilt binaries and libraries, and I want to add them to the y=
octo build rootfs at the
build itself. =

So Can any one please tell me the steps to add recipes or suggest me any ot=
her method for this.

Thnaks in Advance.

Regards
Meena


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


