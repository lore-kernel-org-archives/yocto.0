Return-Path: <b-sathishkumar@hcl.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F730E00781; Wed, 16 Jul 2014 22:54:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from GWS07.hcl.com (gws07.hcl.com [192.8.186.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35B3AE006B9
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 22:54:20 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,676,1400005800"; d="scan'208";a="23079904"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS07.hcl.com with ESMTP/TLS/AES128-SHA; 17 Jul 2014 11:23:46 +0530
Received: from CHN-HCLT-CSHT06.HCLT.CORP.HCL.IN (10.150.12.31) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 17 Jul 2014 11:24:15 +0530
Received: from CHN-HCLT-MBS08.HCLT.CORP.HCL.IN ([10.150.12.23]) by
	CHN-HCLT-CSHT06.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Thu, 17 Jul 2014 11:24:15 +0530
From: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>
To: jags gediya <jags.gediya@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Compiler on board
Thread-Index: AQHPoXmxoYEZH7X0j02NdvCfon2Zh5ujw4Ng
Date: Thu, 17 Jul 2014 05:54:14 +0000
Message-ID: <5D833673AB94D9489A7F7F73E9E611C814ADEC4D@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
References: <CAP3RZogMaiH3xBB3gto+xxR6X5ry=wHxq0t9XLFxLty82i1TgQ@mail.gmail.com>
In-Reply-To: <CAP3RZogMaiH3xBB3gto+xxR6X5ry=wHxq0t9XLFxLty82i1TgQ@mail.gmail.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
MIME-Version: 1.0
Subject: Re: Compiler on board
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
X-List-Received-Date: Thu, 17 Jul 2014 05:54:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Update the following in your build/conf/local.conf to add development tools=
 like gcc, make, etc to the root file system image

EXTRA_IMAGE_FEATURES =3D "tools-sdk debug-tweaks"


Regards,
B.Sathish Kumar

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of jags gediya
Sent: Thursday, July 17, 2014 10:13 AM
To: yocto@yoctoproject.org
Subject: [yocto] Compiler on board

Hi All,

Is it possible to have compiler in the yocto image?
I want to compile some code on board itself instead of cross compiling it o=
n host system?
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


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


