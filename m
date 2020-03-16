Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web12.65834.1584359111672628546
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2020 04:45:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=loHJEqA9;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: sangeeta.jain@intel.com)
IronPort-SDR: ziGslN1q06QrccLE6LgDe3bS43UaMqvkPObt10tThaS7lpmx1v0qj2UP/nD2U7flM3tyD72HkV
 c05m8Wc9Yqvw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 04:45:11 -0700
IronPort-SDR: uiGA0Tg/0BgxAoAIoNx87vanyW4Rf/wxItPZ1K4zLsJv13MaBbohqtiBrYFIjJuZ8KrySQcVjD
 gDbAmnlEGGDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,560,1574150400"; 
   d="scan'208";a="445096446"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
  by fmsmga006.fm.intel.com with ESMTP; 16 Mar 2020 04:45:11 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 04:45:11 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX115.amr.corp.intel.com (10.22.240.11) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 04:45:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Mar 2020 04:45:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FHTqM9wxeh2YVx3PUlWX5W4VU0cpOQR8yb1wKGaUzhA2E0cDeIym9rLbGt88AcJWw+IkIKroV32a0fH6toakl/eyJz+oNoqXpBZekUfG+vqh6Jdq3Npw++df/Bfuvg4dNdXMk4bL2hgSJ1oL4b6H1Mvug3MAEzHgGBaC3Vmd4cWAZ9ucUkO6a9Ui4FwD5p0PKGDpzTvlhR4czVEGFZIRQWiQFo2feEoXGxhgGGGFSwoKVL4Ov48WGF0i//HT8NcLtw4J7Hjf2uFHkfDODXRStiyZHUGKXMU5SICavoVya6E+XKUQPr1E2zZrg3Dej/LowMmabpwePyVx4fAVE88ltA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QgYSGC3pc3EsUJjc2PbjTEE+8wNLXcpndeirNqKeUwQ=;
 b=YgT/LVZCLsExk1oUwQ0Nf4PyewvvL3s03YCem/TJN7lE8nswcGICyowzKvjyB+qWbOAKhV9mr+iLS2C5Ve/7gusdK1YOma1TWzu6++vZWGVwMAeAJ6OlUYgIUFu702LWYwdbb6oRIl2Cm57k7DVY15kQVRGxOkWRlZiK5XeP34utFU1TOBie//q3UMXg5bfqhxVk4H2B+Df9xdqKOBo3hb4mdfNIHKREsreAf8/aEADqM5+5DEvNIpsqM2wIcURDgHDEXS+4bUUSAaZUnP3BwD+zDcp658tC6AwDtb2NOW/30MWKN6DIginUij2j1leWi+Ik0uuXcPVdOo1NexFS3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QgYSGC3pc3EsUJjc2PbjTEE+8wNLXcpndeirNqKeUwQ=;
 b=loHJEqA9wt4sxoUWyBMErVs4mosgB/8L63NQVrq/zQeRz0ePOCLfmPOw80faB/QppWM4/bWHBTfjWMTxm0Z2BDlJv3DXN96u18hPVsdDcauqK1vzB8NfaofhvrowRM3XeP0qoT0VHCD74vfG+vBK+xMjuF1NXLe4TdTDg/DmahU=
Received: from MWHPR11MB1885.namprd11.prod.outlook.com (2603:10b6:300:111::8)
 by MWHPR11MB1422.namprd11.prod.outlook.com (2603:10b6:300:25::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.21; Mon, 16 Mar
 2020 11:45:09 +0000
Received: from MWHPR11MB1885.namprd11.prod.outlook.com
 ([fe80::a841:1e1c:9ad5:f095]) by MWHPR11MB1885.namprd11.prod.outlook.com
 ([fe80::a841:1e1c:9ad5:f095%5]) with mapi id 15.20.2814.021; Mon, 16 Mar 2020
 11:45:09 +0000
From: "Sangeeta Jain" <sangeeta.jain@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto] QA notification for completed autobuilder build (yocto-3.1_M3.rc1)
Thread-Topic: [yocto] QA notification for completed autobuilder build
 (yocto-3.1_M3.rc1)
Thread-Index: AQHV+3btrZncKwmncECtaZHainEurahLGFdAgAABSMA=
Date: Mon, 16 Mar 2020 11:45:09 +0000
Message-ID: <MWHPR11MB1885FAEF405DE4413032F91EE3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
References: <20200316093949.2D615E01861@yocto-www.yoctoproject.org>
 <MWHPR11MB1885A54E561C1063624148A1E3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB1885A54E561C1063624148A1E3F90@MWHPR11MB1885.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=sangeeta.jain@intel.com; 
x-originating-ip: [42.189.136.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2521bc33-0c52-448f-7ed3-08d7c99f7ae4
x-ms-traffictypediagnostic: MWHPR11MB1422:
x-microsoft-antispam-prvs: <MWHPR11MB1422E4451B0E83CBBB73D8A8E3F90@MWHPR11MB1422.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03449D5DD1
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(39860400002)(346002)(396003)(366004)(136003)(376002)(199004)(76116006)(81156014)(81166006)(15650500001)(8936002)(8676002)(71200400001)(5660300002)(33656002)(86362001)(7696005)(6916009)(316002)(2906002)(186003)(26005)(2940100002)(66476007)(55016002)(64756008)(66446008)(53546011)(66556008)(6506007)(66946007)(9686003)(966005)(478600001)(52536014);DIR:OUT;SFP:1102;SCL:1;SRVR:MWHPR11MB1422;H:MWHPR11MB1885.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hpinGN4RO5pKmwUV71fldS7WjTaw/n3V/LGCK1izv/8ZY5KZVhALd8QwEo8RecRqRr31NLUdMFdwfAKWkVOkisVyOv9f0qauqbB4c1gQhqBdrqrlRJKA1UoQtE/5d6PoP3kmEIW3pBHK6DKbGUfmbfxrT8NBIYHYu3MNhKxgV0+FeRRlVc9zKwGUxZGBCjjIPqO9PLQZgy2FhOPNoL/0LLR2iKiX/JiGfJBv/mdwBxEnp7oVlJ6Hh2vpWS86+qcRw2YDb41ZWZNDF2BB6n7b8ng3qKheS2H5xPZxKEY233qj3i9oSzoKPU36jTSc/Cj61QMg/PrO6if/MzGyxIbi44dmsQ+cXebVH8qvIn+tUT9sLL7BjAdqXH7OALrqLQRNutPneF0Mi18ENRHONgFoUaYNhfn94gELtTAWRDBp/T3TU0yNYw2Mq+Kpu4gzyR1DXrvL8S3xpPWeTr1y3A7l8WOHDs4/BY0YZodzmNLYNF+SO/f5DIgz4JJ2w8Uqhe0F9KXqqGcl7dCph6OFxLI9Lw==
x-ms-exchange-antispam-messagedata: vdVjV9GKfJ6SjuRVpbx5W9EJRSpr9nlgkJjjXlezZmiqnfWkkBu7XBzpahZR/Ku1a8/4YhkNek95zvU/jVCZqfnqSvUSgisEIij7RXDqNq1GiUmXHDDHN+SDgqbCiC8YcawptRrTdwc+gpotJ00Z9g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2521bc33-0c52-448f-7ed3-08d7c99f7ae4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2020 11:45:09.4003
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AeZwtq9sX6e5NzxDxsu1+LRjD/3HiqrOmEWzjNxPN3suh17oHTYJUTV/qOOX6xJyRTkI86amXQFsCMlRgpCADA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1422
Return-Path: sangeeta.jain@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Intel and WR YP QA is planning for QA execution for YP build yocto-3.1_M3.r=
c1.
We are planning to execute following tests for this cycle:

OEQA-manual tests for following module:
1. OE-Core
2. BSP-hw

Runtime auto test for following platforms:
1. MinnowTurbot 32-bit
2. Coffee Lake
3. NUC 7
4. NUC 6
5. Edgerouter
6. MPC8315e-rdb
7. Beaglebone

ETA for completion is next Thursday, March 19.

Thanks,
Sangeeta

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On=20
> Behalf Of pokybuild@ubuntu1804-ty-2.yocto.io
> Sent: Monday, 16 March, 2020 5:40 PM
> To: yocto@lists.yoctoproject.org
> Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv=20
> <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>;=20
> Chan, Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;=20
> richard.purdie@linuxfoundation.org; akuster808@gmail.com;=20
> sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> Subject: [yocto] QA notification for completed autobuilder build=20
> (yocto-
> 3.1_M3.rc1)
>=20
>=20
> A build flagged for QA (yocto-3.1_M3.rc1) was completed on the=20
> autobuilder and is available at:
>=20
>=20
>     https://autobuilder.yocto.io/pub/releases/yocto-3.1_M3.rc1
>=20
>=20
> Build hash information:
>=20
> bitbake: e67dfa4a4d0d63e4752655f25367582e5a95f1da
> meta-gplv2: 60b251c25ba87e946a0ca4cdc8d17b1cb09292ac
> meta-intel: 60773e8496370d821309e00f2c312128a130c22b
> meta-mingw: 524de686205b5d6736661d4532f5f98fee8589b7
> oecore: 61d80b07bcfa4adf5f1feb2904fec0a8d09c89f6
> poky: 6f02caa39985fb89d9ad49e1f788a9a8dd6e12d7
>=20
>=20
>=20
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>=20
>=20
>=20
