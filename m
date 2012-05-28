Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7061E01425
	for <yocto@yoctoproject.org>; Sun, 27 May 2012 22:59:17 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 May 2012 22:59:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="104933686"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 27 May 2012 22:59:16 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sun, 27 May 2012 22:59:14 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.133]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.94]) with mapi id
	14.01.0355.002; Mon, 28 May 2012 13:59:12 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Broken SDK
Thread-Index: AQHNPJOfd91Qw09DEUyod8uKtPkDm5bes19Q
Date: Mon, 28 May 2012 05:59:11 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FDCB920@SHSMSX102.ccr.corp.intel.com>
References: <CA+Z6RkU-GBXYHygXhY8UQkxe-5vQSvj-4xqSHuueN=VnN126qA@mail.gmail.com>
In-Reply-To: <CA+Z6RkU-GBXYHygXhY8UQkxe-5vQSvj-4xqSHuueN=VnN126qA@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Broken SDK
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
X-List-Received-Date: Mon, 28 May 2012 05:59:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Navani Srivastava wrote on 2012-05-28:
> Hi,
>=20
>=20
>=20
> I am working with poky-bernerd-5.0. I have built cross-toolchain for qt w=
ith "bitbake -v meta-toolchain-qte" for arm1136 architecture.
>=20
> I got the tool chain "poky-eglibc-i686-arm-toolchain-1.0.tar.bz2" under b=
uild/tmp/deploy/sdk/ directory. On untaring this Toolchain I found
> that cross gcc wasn't included in the SDK. Can anyone please help me in r=
ecognizing the problem?
>=20

I think the meta-toolchain-qte was not workable in benard. You might need t=
o cherry-pick other patches for the recipe meta-toolchian-qte.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/meta/recipes-qt/meta/met=
a-toolchain-qte.bb=20

Best Regards,
Lianhao


