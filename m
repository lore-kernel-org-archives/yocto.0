Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3EA424C810B6
	for <yocto@yoctoproject.org>; Mon, 27 Dec 2010 20:23:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Dec 2010 18:23:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,237,1291622400"; d="scan'208";a="872320850"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 27 Dec 2010 18:23:02 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 28 Dec 2010 10:21:57 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 28 Dec 2010 10:21:56 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 28 Dec 2010 10:21:54 +0800
Thread-Topic: default dependencies not built in "bitbake -b"
Thread-Index: AcumNf6bWnqbp1cnTYKiqgzsRE9PsQ==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1DC19A9BCD@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: default dependencies not built in "bitbake -b"
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
X-List-Received-Date: Tue, 28 Dec 2010 02:23:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi fellows,

Does anyone know why "bitbake -b <.bbfile>" fails on a newly cloned poky tr=
ee, complaining about the cross-compiler can not be found in the PATH. Does=
  "bitbake -b" build the default dependencies?

Best Regards,
-Lianhao Lu

