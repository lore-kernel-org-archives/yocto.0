Return-Path: <meier.dennis@siemens.com>
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC63E00575
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 01:04:46 -0800 (PST)
Received: from mail2.sbs.de (localhost [127.0.0.1])
	by david.siemens.de (8.14.3/8.14.3) with ESMTP id s1K94dSQ008724
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 10:04:40 +0100
Received: from DEFTHW99ET5MSX.ww902.siemens.net
	(defthw99et5msx.ww902.siemens.net [157.163.148.55])
	by mail2.sbs.de (8.14.3/8.14.3) with ESMTP id s1K94dg3015197
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 20 Feb 2014 10:04:39 +0100
Received: from DENBGAT9ERCMSX.ww902.siemens.net (139.22.70.82) by
	DEFTHW99ET5MSX.ww902.siemens.net (157.163.148.55) with Microsoft SMTP
	Server (TLS) id 8.3.342.0; Thu, 20 Feb 2014 10:04:39 +0100
Received: from DEFTHW99EI0MSX.ww902.siemens.net ([169.254.5.204]) by
	DENBGAT9ERCMSX.ww902.siemens.net ([139.22.70.82]) with mapi id
	14.03.0174.001; Thu, 20 Feb 2014 10:04:38 +0100
From: "Meier, Dennis" <meier.dennis@siemens.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: @#NAME type fields
Thread-Index: Ac8uGsmHgPYOtdvMR8m9rzIE8dSGcw==
Date: Thu, 20 Feb 2014 09:04:38 +0000
Message-ID: <6F22A92316C68C42A591A48A6291DA9DD60628@DEFTHW99EI0MSX.ww902.siemens.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.23]
MIME-Version: 1.0
Subject: @#NAME type fields
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
X-List-Received-Date: Thu, 20 Feb 2014 09:04:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good day everyone,

what is the reason for the "#@TYPE", "#@NAME" and "#@DESCRIPTION" fields in=
 the machine-*.conf files? Are they getting parsed somewhere? Are they ther=
e for historical reasons? Could they be extended (i.e. more fields added) w=
ithout problem?

Regards,
Dennis


