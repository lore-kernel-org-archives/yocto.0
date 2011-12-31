Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83453E00307
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2011 18:57:03 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Dec 2011 18:57:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="91658626"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 30 Dec 2011 18:57:02 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 31 Dec 2011 10:56:46 +0800
Received: from shsmsx102.ccr.corp.intel.com (10.239.4.154) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 31 Dec 2011 10:56:46 +0800
Received: from shsmsx101.ccr.corp.intel.com ([169.254.1.38]) by
	SHSMSX102.ccr.corp.intel.com ([169.254.2.199]) with mapi id
	14.01.0355.002; Sat, 31 Dec 2011 10:56:45 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Kang Kai <Kai.Kang@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: Do we need run LTP/POSIX tests on qemu?
Thread-Index: AQHMx2OfhPCFir7EyEeCJLtUMzt535X1Prsw
Date: Sat, 31 Dec 2011 02:56:44 +0000
Message-ID: <90741FE9B50D654690EB940EDB456C8EF02E@SHSMSX101.ccr.corp.intel.com>
References: <4EFE72E3.2060509@windriver.com>
In-Reply-To: <4EFE72E3.2060509@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: Do we need run LTP/POSIX tests on qemu?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 31 Dec 2011 02:57:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I think we could skip these tests on QEMU. Some boards do not have enough m=
emory or power CPU for LTP/POSIX testing. That's why we tested QEMU at the =
beginning.
Yi could help to clarify.

> Hi All,
>=20
> I am fixing failed test cases of POSIX tests, and I meet some cases
> just fail on qemu platform just as qemuppc or qemumips. I don't know
> why we test LTP/POSIX on the qemu platforms at the beginning, and I am
> wondering does it worth for us to do that because few people will make
> qemu platforms to get the POSIX or LTP identified.
>=20
> Regards,
> Kai

Best Regards,
Jiajun


