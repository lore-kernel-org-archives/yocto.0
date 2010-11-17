Return-Path: <lei.mei@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 212254C80A74
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 00:51:59 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Nov 2010 22:51:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,209,1288594800"; d="scan'208";a="349772272"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 16 Nov 2010 22:51:47 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 14:50:55 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 14:50:55 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 17 Nov 2010 14:50:03 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 17 Nov 2010 14:50:02 +0800
Thread-Topic: [PULL]distro_tracking_fields.inc: remove some invalid packages
	information from it
Thread-Index: AcuGI6jjD7OB+0Z9SUeglDxwIeFfBQ==
Message-ID: <749B9D3DBF0F054390025D9EAFF47F22301754AF@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PULL]distro_tracking_fields.inc: remove some invalid packages information from it
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
X-List-Received-Date: Wed, 17 Nov 2010 06:51:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Because of the limitation of the message length, and this patch looks strai=
ght forward and shouldn't to be split, so I send it out only with the pull =
URL, please check it.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/distrotracking
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dlmei3/dis=
trotracking
Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distro_tracking_fields.inc: remove some invalid packages information from=
 it

 .../conf/distro/include/distro_tracking_fields.inc |  553 +---------------=
----
 1 files changed, 1 insertions(+), 552 deletions(-)


Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=3Dlmei3/=
distrotracking&id=3D49a05acd5b9335e559d4170d0e9bc95a50c42e18


Thanks
Lei

---
Mei, Lei
Email: lei.mei@intel.com



