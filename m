Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 75EA94C80B71
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 20:33:06 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Nov 2010 18:33:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,214,1288594800"; d="scan'208";a="627890689"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 17 Nov 2010 18:33:05 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 18 Nov 2010 10:32:28 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 18 Nov 2010 10:32:28 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 18 Nov 2010 10:32:27 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 18 Nov 2010 10:32:23 +0800
Thread-Topic: BKM on add SRC_URI MD5 and SHA256 checksum
Thread-Index: AcuGyNTbZSmI5k3wRSKXcJKAT+AW6Q==
Message-ID: <33AB447FBD802F4E932063B962385B3530383DDA@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-puzzleid: {42C1C500-F3E8-4D80-9FD9-1111D8489673}
x-cr-hashedpuzzle: t2c= AOZw AOzC A94p Ba+t BjJn Bux4 CWUH CcGt CwRD EFoK
	EcWx FmwS GaLP HzlZ
	IKsw; 1; eQBvAGMAdABvAEAAeQBvAGMAdABvAHAAcgBvAGoAZQBjAHQALgBvAHIAZwA=;
	Sosha1_v1; 7; {42C1C500-F3E8-4D80-9FD9-1111D8489673};
	awBlAC4AeQB1AEAAaQBuAHQAZQBsAC4AYwBvAG0A; Thu,
	18 Nov 2010 02:32:23 GMT;
	QgBLAE0AIABvAG4AIABhAGQAZAAgAFMAUgBDAF8AVQBSAEkAIABNAEQANQAgAGEAbgBkACAAUwBIAEEAMgA1ADYAIABjAGgAZQBjAGsAcwB1AG0A
acceptlanguage: en-US
MIME-Version: 1.0
Subject: BKM on add SRC_URI MD5 and SHA256 checksum
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
X-List-Received-Date: Thu, 18 Nov 2010 02:33:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Distro folks:

As Saul suggest to add SRC_URI MD5 and SHA256 checksum when we upgrade the =
recipes, here is a simple how-to:

Two entry is needed for checksum, take meta/recipes-extended/tar/tar_1.23.b=
b as example:
SRC_URI[md5sum] =3D "41e2ca4b924ec7860e51b43ad06cdb7e"
SRC_URI[sha256sum] =3D "c9328372db62fbb1d94c9e4e3cefc961111af46de47085b6353=
59c00a0eebe36"

The md5sum and sha256sum value can be get by:

# md5sum /your_DL_DIR/ tar-1.23.tar.bz2
41e2ca4b924ec7860e51b43ad06cdb7e

# sha256sum /your_DL_DIR/ tar-1.23.tar.bz2
c9328372db62fbb1d94c9e4e3cefc961111af46de47085b635359c00a0eebe36

Regards
Ke

