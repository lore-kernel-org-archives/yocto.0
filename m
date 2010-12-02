Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19BCF4C80052
	for <yocto@yoctoproject.org>; Thu,  2 Dec 2010 04:16:42 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 02 Dec 2010 02:16:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,287,1288594800"; d="scan'208";a="579806365"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 02 Dec 2010 02:16:41 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 2 Dec 2010 18:16:39 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 2 Dec 2010 18:16:39 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 2 Dec 2010
	18:16:38 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 2 Dec 2010 18:16:37 +0800
Thread-Topic: why cp in do_install() change file permission mode?
Thread-Index: AcuSCgEqLCrx7zmuQC2aEx+1L8oOfg==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1B90B6C267@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: why cp in do_install() change file permission mode?
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
X-List-Received-Date: Thu, 02 Dec 2010 10:16:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi fellows,

Could anyone tell me why does the cp in do_install() change the file permis=
sion mode? Thanks!

do_install () {
	rm -rf ${D}${installed_dir}
	install -d ${D}${installed_dir}
	cp -rp ${S}/* ${D}${installed_dir}
}

After "bitbake xxx -c install", I found the file under ${D}${installed_dir}=
 had the permission mode of 0744 while the corresponding file under directo=
ry ${S} had the mode of 0644. Why did this happen? How to avoid this kind o=
f mode change? Thanks!

Best Regards
-Lianhao Lu

