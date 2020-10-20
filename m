Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.10608.1603159575059443966
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 19:06:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: AyDozXaECaVE+mM0AuzZFsXFktjqbr0PJO0E4f+oD0WQq3dbDmQBuQSGzV51eNpViKdqMA2hPC
 W53VxKKWpTUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="184759259"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; 
   d="scan'208";a="184759259"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Oct 2020 19:06:14 -0700
IronPort-SDR: N1yS5kQw+UPTnthAbvVRGezE4Oo2k9/plWfn2S3Tu6mUyDRLGEYFn2Q0qTvdipLKGoM1di1Q4D
 SXWTTnMAQ0gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; 
   d="scan'208";a="422369968"
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136])
  by fmsmga001.fm.intel.com with ESMTP; 19 Oct 2020 19:06:13 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 pgsmsx601.gar.corp.intel.com (10.108.199.136) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 20 Oct 2020 10:06:12 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.1713.004;
 Tue, 20 Oct 2020 10:06:12 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Ross Burton <ross.burton@arm.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [PATCH][meta-zephyr] layer.conf: add compatibility with Gatesgarth
Thread-Topic: [PATCH][meta-zephyr] layer.conf: add compatibility with
 Gatesgarth
Thread-Index: AQHWpjxsfBiT156jZUqFC2KDxNVzDKmfvqcg
Date: Tue, 20 Oct 2020 02:06:12 +0000
Message-ID: <31d491ddc56048829976817adc5b5ed2@intel.com>
References: <20201019172216.3655779-1-ross.burton@arm.com>
In-Reply-To: <20201019172216.3655779-1-ross.burton@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged.

-----Original Message-----
From: Ross Burton <ross.burton@arm.com>=20
Sent: Tuesday, October 20, 2020 1:22 AM
To: yocto@lists.yoctoproject.org
Cc: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
Subject: [PATCH][meta-zephyr] layer.conf: add compatibility with Gatesgarth

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf index 1d41b3f..4ecd6a2 10064=
4
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -15,4 +15,4 @@ LAYERVERSION_zephyr =3D "1"
=20
 LAYERDEPENDS_zephyr =3D "core"
=20
-LAYERSERIES_COMPAT_zephyr =3D "dunfell"
+LAYERSERIES_COMPAT_zephyr =3D "dunfell gatesgarth"
--
2.25.1

