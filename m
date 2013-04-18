Return-Path: <Michael.Fainstein@ecitele.com>
Received: from mail1.bemta5.messagelabs.com (mail1.bemta5.messagelabs.com
	[195.245.231.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88B18E0148C
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 22:30:35 -0700 (PDT)
Received: from [85.158.139.211:48950] by server-15.bemta-5.messagelabs.com id
	85/E0-22815-AF48F615; Thu, 18 Apr 2013 05:30:34 +0000
X-Env-Sender: Michael.Fainstein@ecitele.com
X-Msg-Ref: server-15.tower-206.messagelabs.com!1366263032!19454917!2
X-Originating-IP: [147.234.242.234]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 14368 invoked from network); 18 Apr 2013 05:30:33 -0000
Received: from ilptbmg01-out.ecitele.com (HELO ilptbmg01-out.ecitele.com)
	(147.234.242.234)
	by server-15.tower-206.messagelabs.com with DHE-RSA-AES256-SHA
	encrypted SMTP; 18 Apr 2013 05:30:33 -0000
X-AuditID: 93eaf2e7-b7fd66d0000027cf-2a-516f84f77cf7
Received: from ILPTEXCH02.ecitele.com ( [147.234.245.181])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	08.64.10191.7F48F615; Thu, 18 Apr 2013 08:30:31 +0300 (IDT)
Received: from ILPTWPVEXCA01.ecitele.com (172.31.244.224) by
	ILPTEXCH02.ecitele.com (147.234.245.181) with Microsoft SMTP Server
	(TLS) id 8.3.264.0; Thu, 18 Apr 2013 08:30:30 +0300
Received: from ILPTWPVEXMB02.ecitele.com ([fe80::5979:ca8d:419f:56df]) by
	ILPTWPVEXCA01.ecitele.com ([fe80::ac15:43ab:d541:dfa7%12]) with mapi id
	14.02.0328.009; Thu, 18 Apr 2013 08:30:29 +0300
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: strip path in meta/site/common-linux
Thread-Index: Ac479dYPqd8ad52cQb+i6p8w125oZQ==
Date: Thu, 18 Apr 2013 05:30:29 +0000
Message-ID: <62673661A504604B856269DAADA8BC281DE3C18C@ILPTWPVEXMB02.ecitele.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.4.58.22]
content-transfer-encoding: quoted-printable
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrNJsWRmVeSWpSXmKPExsUy+dWnL7rfW/IDDS61GllMermGzYHRo/1E
	H1sAY1QDo01iXl5+SWJJqkJKanGyrVJAUWZZYnKlkkJmiq2SoZJCQU5icmpual6JrVJiQUFq
	XoqSHZcCBrABKsvMU0jNS85PycxLt1XyDPbXtbAwtdQ1VLJTUzY0tuYKycgsVkjVzU3MzFHI
	TS0uTkxPVQCKJGxhzmh98p+1YCZbxd6u6SwNjPNYuxg5OSQETCR2vNkCZYtJXLi3ng3EFhLY
	zygx+44ihL2DUeLCA6A4F5B9lFHi+MUJLCAJNgFzifML37OD2CICphIvjn0BaxYW0JX4fmYv
	I0TcSKLt2nMmCFtPYs2EjcwgNouAqsTaac1gcV6BAInjZxvB4oxAR3w/tQYsziwgLnHryXwm
	iOMEJJbsOc8MYYtKvHz8D+poOYn+M52MEPU6Egt2f2KDsLUlli18zQwxX1Di5MwnLBDPaEm8
	+7IMqldS4uCKGywTGMVmIVk3C8moWUhGzUIyagEjyypG0cycgpKk3HQDQ73U5MyS1JxUveT8
	3E2MkNTwfAfjr/kqhxgFOBiVeHgfrMoLFGJNLCuuzD3EKMnBpCTK+7k5P1CILyk/pTIjsTgj
	vqg0J7X4EKMEB7OSCO8jWaAcb0piZVVqUT5MyhUYahOZpbiT84HpLq8k3tjAADdHSZx3eUO4
	v5BAOjDVZaemFqQWwcyR4eBQkuA1A6ZVIcGi1PTUirTMnBKENBMHJ8gZPEBnBIDU8BYXJOYW
	Z6ZD5E8x6nKs2PzyNaMQS15+XqqUOK88SJEASFFGaR7cHFieeMUoDgwAYYgqHmCOgZv0CmgJ
	E9CSA6uyQZYAcwdcSqqBsW7bP4moL+df682V13P6IH2X6byqe2nKD9nlPRmcac62vT77j1qx
	Szf0CSyraKjf6LE7wmC3X1vH0vv9J6dvP5Kq6CVrphprpvO6Y0HFkrxYNaMuk0uNjbfFyjwi
	bqQsyPnP2W2s/fTYtNoNOTLd/6Z0vfMs5HMO09/aZ5z76XLCfaYPhWpKLMUZiYZazEXFiQDE
	lnUQ7gMAAA==
Subject: strip path in meta/site/common-linux
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
X-List-Received-Date: Thu, 18 Apr 2013 05:30:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"

IMHO program strip should be removed from meta/site/common-linux.

I had a problem in my recipe: 'make install' was failing due to /usr/bin/str=
ip failure to recognize file format (I am building for powerpc on x86_64 PC)=
. I traced this error back to ./configure that was selecting /usr/bin/strip=
 instead of powerpc-fsl-linux-gnuspe-strip. After some more digging I found=
 that configure selects strip due to line db_cv_path_strip=3D${db_cv_path_st=
rip=3D/usr/bin/strip}
in meta/site/common-linux.
I solved it by setting CONFIG_SITE=3D"" in my recipe.
IMHO common-linux should contain only architecture-independent definitions.=
 strip is architecture-dependent (e.g. x86 strip can't handle powerpc files)=
, so it shouldn't be defined in meta/site/common-linux.

Michael


This e-mail message is intended for the recipient only and contains informat=
ion which is CONFIDENTIAL and which may be proprietary to ECI Telecom. If yo=
u have received this transmission in error, please inform us by e-mail, phon=
e or fax, and then delete the original and all copies thereof.


