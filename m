Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 138244C80052
	for <yocto@yoctoproject.org>; Mon, 22 Nov 2010 07:55:18 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 05:55:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,236,1288594800"; d="scan'208";a="629127279"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 05:55:17 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 22 Nov 2010 21:55:13 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 22 Nov 2010 21:55:13 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 22 Nov 2010 21:55:11 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 22 Nov 2010 21:55:09 +0800
Thread-Topic: [yocto] Eclipse plugin
Thread-Index: AcuKS5JFBBueaTj+QGuoOCzzfsgDIgAASTbg
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1ACE892EE5@shsmsx502.ccr.corp.intel.com>
References: <4CEA3442.6080909@mlbassoc.com> <4CEA53B8.9060804@mlbassoc.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F1ACE892ED1@shsmsx502.ccr.corp.intel.com>
	<4CEA7405.8070700@mlbassoc.com>
In-Reply-To: <4CEA7405.8070700@mlbassoc.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse plugin
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
X-List-Received-Date: Mon, 22 Nov 2010 13:55:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Gary Thomas wrote on 2010-11-22:
> Thanks, I installed Helios directly from the Eclipse site and that's
> working better now.  I also installed the components you mention above.
>=20
> When I try to configure Yocto, I'm trying to use the Poky tree method
> but it doesn't like my tree :-(  I pointed it to my build directory
> (the one which contains tmp/, sstate-cache/ and conf/)
>=20
> What else am I missing?
>=20

You need to "bitbake meta-ide-support" before you can use the poky tree mod=
e.

Best Regards,
Lianhao



