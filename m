Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web12.137.1582676099730475465
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 16:15:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=OvzuJ95g;
 spf=pass (domain: intel.com, ip: 192.55.52.115, mailfrom: vineela.tummalapalli@intel.com)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2020 16:14:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,486,1574150400"; 
   d="scan'208";a="436441247"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
  by fmsmga005.fm.intel.com with ESMTP; 25 Feb 2020 16:14:58 -0800
Received: from orsmsx155.amr.corp.intel.com (10.22.240.21) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 25 Feb 2020 16:14:58 -0800
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX155.amr.corp.intel.com (10.22.240.21) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 25 Feb 2020 16:14:57 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 25 Feb 2020 16:11:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iw4kZ3+ESFOYItEhynK6yaFhauHGyoHFrWM3usTM7lJDX+jMe3jWgAUpPEQ6WUocJj+UkJiRLemLnrKYAtdtyJEMOc3V0uzamOWMi1y1cIumZDlPM76kuG6GDkkS7AwHGSsQUMIjWZC1X3QPvmKmo69EWeEeT8Qm4HsX3DjLtzd/bG0+WlfE2mSGDppMcEIuJoH2iesOUJ72VyToWlaH6B30OnU6ls58jw0niVpeqmKk4jGrMGb0KkcltwZ4lXcYhX4Ztgi7+BZjPLQAPRIDdme6Dghyo2zPp1nZi3UJytSdlIuFH5+3G/D0fFQpE0+kViLRpvkVD2/UnEobacTlvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dyCR68+nvVFi4ttFm3ErGxoOrDShn1jma5XpCmAUWyU=;
 b=WDpJ7/hs/DPGg/CoXW3OHddFd35KFa7zf9l+/UrHf48R0p4p4AbpVY8tNi2aKfxh5KCHB7Mu8NlyQdbd86buSsiejNnLZwij+lFiEyT5L5wzoeFW3WWqNs3SBFsiFKewXZP62Qy3mzw0JMbJ31DPhoSQ2OQBUX6HXyM9SqOr7nhhWfOhwEvjixO9+W4TnF/EYihnSQyWpHjqvmHo9qdVdX4ZKOwYKGDc9SodUG7CUg+mohZhANNfFPnr9cigGBHY/Gv+QfN/h5vaNaIBzwA41vxebV9MvGk2hK2czm4U6dEsmQJQo0gO9mG5Nq0McgasXC9/q3lrCEwHn7yShFz/lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dyCR68+nvVFi4ttFm3ErGxoOrDShn1jma5XpCmAUWyU=;
 b=OvzuJ95gO00FKImc1IHOaqh9ApVOQybm+4pjNZwjRFfvS+320P7u+6i6nEPG7vXpMjhhsFl3jbppruxUNBVpAvkAnZqYe1kNtr+wOKtYlt3C+97UvIdTJW3KJ99hbINi3p3Cz5gtIz5no5j06lMbvelYlF1mmYzKSakgOGn7prI=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB3781.namprd11.prod.outlook.com (2603:10b6:a03:b1::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.21; Wed, 26 Feb
 2020 00:11:47 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::8d22:742:fe90:7da0]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::8d22:742:fe90:7da0%5]) with mapi id 15.20.2750.021; Wed, 26 Feb 2020
 00:11:47 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT] Yocto Project 3.0.2 (zeus 22.0.2) Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.0.2 (zeus 22.0.2) Released
Thread-Index: AdXsOO0RkRCNY8kaTE+/7OPsN6xXUQ==
Date: Wed, 26 Feb 2020 00:11:46 +0000
Message-ID: <BYAPR11MB279083C2CF16130FB8B83A5188EA0@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjk0N2M1MWYtNTYwZi00NWZiLWExZTctNmY4ZTE4NTlhNzliIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiU0liZzFRVzNRY0szTGd0S08rQWgxNzljWjc5YU1IbU1zRlpqdHB1M1NIWlNybGo1elZidHQ2M0Y2N0hIR3J4RSJ9
x-ctpclassification: CTP_NT
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=vineela.tummalapalli@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 439ead9d-056e-40c2-79cd-08d7ba507812
x-ms-traffictypediagnostic: BYAPR11MB3781:
x-microsoft-antispam-prvs: <BYAPR11MB3781E1BA1B23D4153A7EC43688EA0@BYAPR11MB3781.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0325F6C77B
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(396003)(366004)(136003)(346002)(376002)(39860400002)(189003)(199004)(52536014)(7696005)(86362001)(8676002)(81156014)(33656002)(81166006)(6506007)(186003)(26005)(8936002)(66446008)(66556008)(478600001)(4744005)(5660300002)(55016002)(2906002)(9686003)(71200400001)(110136005)(66476007)(64756008)(966005)(66946007)(76116006)(316002)(491001);DIR:OUT;SFP:1102;SCL:1;SRVR:BYAPR11MB3781;H:BYAPR11MB2790.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xSufbI2ZpiNnOvTcYxudFbu661cxQ3fCKykWLQGbHCtpD3fjh1lRjyD/PKUyz9xtyoKhVsY0DugH6vPUXX0o+2GKjuYmDtraVDl9Xx1644a/el6spXL/mc7tnwn4wsvEOasCIN97rqChjq9bOYeAGQpGIEkSo+KNAqAkh/I4u8Tok5B/44eTRY6+YpUdx32/l64vlNqW1a8QybyXwG5nk1CJgre+JXGXPGTrpT31g8XIZdMiJVdu0D4U9tgIysbxnhDXXX0DjB9J7VxF5AM+h0aa0TirL68BYV/RdZ6GODLashDklJg5iAfSLZitSVsiB45q5VgcAY1BG8sxYZVAr5T+m+lic0YAux7DXQHy1ZM+OnAZRbuEGbKblKXfs0hH42a/YebF7FlRf4h8wZuekrUTYyDNu1jammQ6hzcFhgCGjz+12xjOQjwc7z70SrfpZMqPRYQx17BoCZFqCtLJe7dMVX9S+uYRiKBEP/6FPJioF672juYYkvyiF1YI2GUZEOV6dTKO0d7WlWJED+wRWDeImNtYuAaN6UH3Re1FWpyqHM6Y3NJSQpebxk8wnz6s
x-ms-exchange-antispam-messagedata: pNlhVcyocM63Ad8lR7zK7QDzyOHydc86qUqORIae8KFR/3Z35601r+jvjy/lOXuJzFNNS7d1zc6Ne0ybs6L4ZqmCpAOuu/DFp2oD1B4Sa+WVuprHMIN6XrYg7mKIGo8y8pFTUxZu8iBq8jqIQttAHg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 439ead9d-056e-40c2-79cd-08d7ba507812
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2020 00:11:46.9482
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TSJv1gTh9aAtxQoCny/omhcpqw9rFBpNhUD1Br7Y2OcEvBm+I36F5EjCg3P5gx+QFLpiQ/VqM5LKxlc4jriXM02CTc9X5GeQQrr37wOv6Xc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3781
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the Yocto Project 3.0.2 (zeus-22.0.2) Release is=
 now available for download.

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.2/poky-zeus-22.0=
.2.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-3.0.2/poky-zeus-22.0.2.tar.bz2

A gpg signed version of these release notes is available at:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.2/RELEASENOTES

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/yocto-3.0.2/testreport.txt

Thank you for everyone's contributions to this release.

Sincerely,
Vineela Tummalapalli=20
Yocto Project Build and Release
<vineela.tummalapalli@intel.com>
