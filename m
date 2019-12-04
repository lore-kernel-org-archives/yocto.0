Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.627.1575418482262644104
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 16:14:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=tfsbcgZT;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: vineela.tummalapalli@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Dec 2019 16:14:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,275,1571727600"; 
   d="scan'208";a="385530012"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
  by orsmga005.jf.intel.com with ESMTP; 03 Dec 2019 16:14:41 -0800
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Dec 2019 16:14:40 -0800
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 3 Dec 2019 16:14:40 -0800
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.59) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 3 Dec 2019 16:14:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5Blf+1k+XUpaEsKFw/4bK5OKnOR5Lg729vqQGUoD7FG7RO6Cwbdj06ikD8iAco7n9Z0IB/zoOpF8q87mN28uevLkYQa5DWGHd2K78Wu4fXhdx8bMY+/NHq9ZoPMlD0YF20C5VUof+RwrdX2G5C4f3yVc783U/Ms5Sw6ZyuRlqPijWO4BF5/YFzQeOAWWuOYw75dp35+QkdSQ6iZZZ8tZlphT9oVNLr0mAotR++y91brW74Jl1ODUI0fuzTBOp4xJzGR9xVkX3/dwaBJy2vbV0aJ5NMF/CgC6C7YRlPEnZcUF+Pflt+LCaPpbT2uqADLrIEkODDAKVptQyzCoQOOgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g4OyNUo89YcDigp9CBfHGOXaUOQ1EUgv74qW1/f9nVE=;
 b=gIDIZ3kUsDIWoGddbIQYJeK8qCYmxZaavR7EH6bsR/peEdVvziY3sFw+nEbiRxPqPgLuEHgNRHDI2mbKjk9kfHzZTL+CEJ/pLHRTOtixv/scXpyCl/1VJLPnWBIOyhfPaZCVl4E6i8DbORIYrTsD9P8kJ89IarJcC89kICPKz4h8TqMmaDzr/BLMva1AGdXA7Fk1dOu2qHvXK9axsSBhcQOsa1jZ0AzKoEs6j8vNQaCaf6+hilibnxjOw+3Y7ecNg2FTHOlPnqbs0FDQRhO47ZEhVxDBDDDVFlr0SeasgYqttcTbW/n+HGDtmVFFQUKKWH5EGr6PiFEYXhU4YjJ20Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g4OyNUo89YcDigp9CBfHGOXaUOQ1EUgv74qW1/f9nVE=;
 b=tfsbcgZTuKeL6RShaKNb9Ox/alOMU3r6MvY0XAR/OmrIYNXtk+7p9jbsNJrD2yOtoAkaPqF6myMUkH0281HPViuhAP/CXImce5LdDzzI1h3YPBTfm9vRf0NY+c7GOXftq8xW+TUb2vRsEHlPYTcuTJ+7GEI1Cdx3iCKenGe7cn0=
Received: from BN8PR11MB3809.namprd11.prod.outlook.com (20.178.221.91) by
 BN8PR11MB3537.namprd11.prod.outlook.com (20.178.219.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.22; Wed, 4 Dec 2019 00:14:38 +0000
Received: from BN8PR11MB3809.namprd11.prod.outlook.com
 ([fe80::f01a:8c50:2f6f:e49d]) by BN8PR11MB3809.namprd11.prod.outlook.com
 ([fe80::f01a:8c50:2f6f:e49d%6]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 00:14:38 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>, "yocto-request@eclists.intel.com"
	<yocto-request@eclists.intel.com>
Subject: [yocto-announce] [ANNOUNCEMENT] Yocto Project 3.0.1 (zeus 22.0.1) Released
Thread-Topic: [yocto-announce] [ANNOUNCEMENT] Yocto Project 3.0.1 (zeus
 22.0.1) Released
Thread-Index: AdWqN9AAluctPR2TRqaRXzBxB/jVZQ==
Date: Wed, 4 Dec 2019 00:14:38 +0000
Message-ID: <BN8PR11MB38095012022D8F39111CEDBE885D0@BN8PR11MB3809.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTMwOTFhZGItYmFmYS00OGFiLWI5ODItZTAwMDU4ZjU4YWQxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiMUhJczZrVnBJaExabm5nVUF0K21HVEtSWnp5XC9jWGNZTWVGT0Z1SkxEM3UxXC9HYjdUS2F2bGxpdUlabW11RmtxIn0=
x-ctpclassification: CTP_NT
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vineela.tummalapalli@intel.com; 
x-originating-ip: [192.55.52.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dcfb2fcf-7471-4ba4-e66f-08d7784ef3c9
x-ms-traffictypediagnostic: BN8PR11MB3537:
x-microsoft-antispam-prvs: <BN8PR11MB35372A293F5CB6872BCB40FF885D0@BN8PR11MB3537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(39860400002)(136003)(366004)(346002)(376002)(189003)(199004)(33656002)(966005)(5660300002)(14454004)(52536014)(478600001)(6506007)(256004)(71190400001)(71200400001)(102836004)(7696005)(86362001)(2201001)(76116006)(25786009)(66946007)(26005)(66476007)(66556008)(64756008)(66446008)(2906002)(186003)(81166006)(81156014)(4744005)(8676002)(8936002)(6436002)(99286004)(110136005)(6306002)(55016002)(3846002)(2501003)(74316002)(316002)(6116002)(7736002)(305945005)(9686003);DIR:OUT;SFP:1102;SCL:1;SRVR:BN8PR11MB3537;H:BN8PR11MB3809.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rWMnRYkAShaAnBWUyV1ORb2brh520ZSRcTvR/6MIH8MllHhrIcnK5IMmBY4j5UHMivZpKP4Sa3hMpz7JYjQM3N91RoVRvAAn9k6n2P2DX9emVKF8Ml2OwAtyZ0a9r0+J42ySgdEY+Svo38DuQ6/zd6/wdhb7ie5QkkV1cj1DKovN5QKLSDNJHrfw087aTXaSE4F9FaEZ69HqzHSptcqJZvYhy1PcaAPtsxoEwTYNZMnlFLMOo+U9m0v5r281XBOlDzW3HRvdAolJwuGvKRTtDAsQSbTD6P4S0rn9Q6z0SWXRHFTTmYszOEtyZKMY1/B4MRE1G8BJN0MMrAcC3LV9WJ8bE+sS8loyI9cdu/yv0QuYikPJ5eBZ3qa5fVhAN6Qh0+nfC47gLZrf4MjMasEqIMD1FC3GtySKFlUjwHcFLpP2a6TI8JBaEOA0meP4Pr3Scv8hxYJ3vOZQi7RrIOyJ8m2Bd5at8aVQ7n/cljEwtTg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dcfb2fcf-7471-4ba4-e66f-08d7784ef3c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 00:14:38.6953
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3mOM6ZWNdZc9BDBUY/W4oJ9mEHygkynbx8t3HY2OclBEZlRDFjrQMO3ZPe/rdSmzi0yRVxG6lnG21MbTpTD9hIoq4633FVUecTJcOSprEjk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3537
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.0.1 (zeus-22.0.1) Release is=
 now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.1/poky-zeus-22.0=
.1.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.1/poky-zeus-22.0.1.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.1/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.1/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely,
Vineela Tummalapalli=20
Yocto Project Build and Release
<vineela.tummalapalli@intel.com>
