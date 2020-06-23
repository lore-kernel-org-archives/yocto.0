Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.1829.1592953238104097801
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 16:00:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=yO2adww6;
 spf=pass (domain: intel.com, ip: 134.134.136.126, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: zDwCIfGy6y3frs0x2XE21jKpBzMvfBegOeLqUOlc/+KhQomVn5SnYg3e631Vy+rhTFmhbS9XPS
 8ZzwY3k3XJ4Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="131669011"
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; 
   d="scan'208";a="131669011"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jun 2020 16:00:37 -0700
IronPort-SDR: SYvEPtLGtSzbrztdAz7H3uUoasElSMt0mDnYw/TwI3BxJ4LBy7e4u7IGHbK5SZMinfg2tp2pAO
 zfxG4IyuWO6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,272,1589266800"; 
   d="scan'208";a="275510468"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
  by orsmga003.jf.intel.com with ESMTP; 23 Jun 2020 16:00:36 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 16:00:24 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 23 Jun 2020 16:00:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=egnPt87BOw5N+tjwuwo5kCztTRSPNSzJgob6uuPgYs6N9Mzh1N7j/kZ4v5Wicqm1F+lqlfZnYnugVnZjJjvKKX2Zlv6SAmtKG0zQ13tUqkT1pFkSDaSFFI7eWN/ZqFJjUwtjqVLfH1mwlgbh53345fOZz+uR5aNFtDR406TdC/+IbWFC3S9bDLAQIlmZPAb+YRlkWdQJEFV5S5oCln/Bua4Qm/IHA7rECUPMbdGIuOoLclw+LEIscSPbtwPFpim9gv7HlAK7CmBS8bxnW802+HzShuqsqQNiMqtTfTNjI/d+gWDiGnQByregA2FgXc5mc8oJu22YK/a+wtLcJJWlwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tCAQQ4vZ3SttKgzaYAAVfxZSfT3vFstZVXhfSQE7tPw=;
 b=QTuFnCKOLXHSZIofFBNGODGQgQuoj81VxaFAOeejqLgQYmLHTN2Zt5jeOU1t8bF1S3MTlg/EUTNdZs4Wno8/M3uSBiaCUOcOn8K0pxEKlIKobheuN72DzpxPNNMc/7/Z/ZLxTLGwarJiYwZd/6J1q+ZuKDy6NVz/oiVbF1oYdBszJbcGow9gnigvgX0I+6WArj2CJ6TI58wJHTiaRWel8+W7yGu6d/eHSZzoeK2cylN1VkUKEgZmExqgjld0pq+BPTw/KYHy11+ea7DuEBA2Yh56rtyw5Kv3rcrOU090mQuQoJWwdycCRlVCBngOc1an9LAI2vSbl48YXeDOyPTPgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tCAQQ4vZ3SttKgzaYAAVfxZSfT3vFstZVXhfSQE7tPw=;
 b=yO2adww6ddotnfvVosJZCzCwJlfPd3YETvm0ucT12niBQN9zTqg8H9VYtPtkP/G56IU4cWJaka/EJmFyWy4PY+0fXawX8bujcYH4JOtA62MmkbZ3VKdzo1w5EFjQfnye9H6DxiEvr5Mf2QKN+cmVnBME9t/KA58KtFj+gHoj+qQ=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BY5PR11MB4403.namprd11.prod.outlook.com (2603:10b6:a03:1ba::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3131.20; Tue, 23 Jun
 2020 23:00:21 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46%3]) with mapi id 15.20.3109.027; Tue, 23 Jun 2020
 23:00:21 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "'yocto-announce@lists.yoctoproject.org'"
	<yocto-announce@lists.yoctoproject.org>, "'yocto@lists.yoctoproject.org'"
	<yocto@lists.yoctoproject.org>, "'yocto-request@eclists.intel.com'"
	<yocto-request@eclists.intel.com>
Subject: [ANNOUNCEMENT]Milestone 1 for Yocto Project 3.2 (yocto-3.2_M1) now available
Thread-Topic: [ANNOUNCEMENT]Milestone 1 for Yocto Project 3.2 (yocto-3.2_M1)
 now available
Thread-Index: AdZJsJNfj9uzF80XSDiyb4tm2TJoSA==
Date: Tue, 23 Jun 2020 23:00:20 +0000
Message-ID: <BYAPR11MB2790CB9FB12D5DE4BA6A1EA888940@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [73.41.250.65]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd3aed9e-4eb7-48a8-8731-08d817c93496
x-ms-traffictypediagnostic: BY5PR11MB4403:
x-microsoft-antispam-prvs: <BY5PR11MB44034932680F899E6AA168D188940@BY5PR11MB4403.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 04433051BF
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HuRxiFN2Jvmh3vMhp1J8M50InxUkaLxhY52PPZRa4oXzQZB1Gco8kZHozkDvG56FsAWL6OAFCjyRNNtKhLZqg4yII06O+G/SQiRjagQjsf+rPoYax9OXPGliV7frZ/boPkkehC7wdGGcqJJR9djzleqMYkw5maia2eJWWDmrg9yIYSJ/SBTGE5zeI4fbLUA8S1m4mCtZ5mSE/c6MTf2DhLqyHSRN9pOlp1qs15igZJF81rHmQxvRZQ2tI8FthrLCRZs/r2l3jj6R2aSTqTW7JcT2OE23RAII2Insw82+e9iR5k3r8trSt4wGGO5gCl/nJOmDwpvh8hU1YTiIP2SVgiU9O8Se1n3LtxfY5shSJPrURjjggeM1yYIp+K7HwMTDRyyk/TU0jgzKYKWQrjqnOEdadPD8NQyccM3evwv3/VIpg5U4yLwS0nHR8w2FMqv3sV28ngv6I0EHKbGUhj6DSg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(396003)(136003)(376002)(366004)(39860400002)(346002)(52536014)(9686003)(8936002)(33656002)(186003)(71200400001)(2906002)(83380400001)(4744005)(26005)(66946007)(316002)(5660300002)(64756008)(66446008)(66476007)(6506007)(478600001)(86362001)(76116006)(66556008)(55016002)(110136005)(7696005)(8676002)(966005)(491001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: F2Pf2VZYwtfMt8eQ8Tswfead7JE5R4/GH/wRWadllv6fJWymztctNCrFlXv6XYkWR9l/LSyRz65fbwKbZU5XX2TLPMatHbHY4hRzdcNuHfh1kexQdPXqEXJBotwWU/ZuC6Hx0ZY9uL7oOvkk3ZNMrVpA/JzkKDy9AAbut6U1I2JrjRBITJ8a7tNs32SIPMMqxxq6ur85BPPQT+7DQQ1X4Vw3xpi+mce7MFNWufgPKKMF+r0LLNbb6AGEtKUEpFQFvqpDJKluLLnDoQiQSBHfnrWYjhPy6YW0jP2ZMNsXgvJCUDzk9mQStAtMKG/7meggvF3F6HlSlaILSd7AbIqvDDnQrYOXr3waVr+01inr0Tp7wGp4aQ/OqRSZ0y49SmtE86qZNIMUl4L7/pszTtbsOMLhlZ4xmZaZnKUAygwWqIepALrBJYu5S0jB0RhxmjoWFhRAgjwyMIh2uo0YYwYO9JMZmQMvHL56buZXLdWdUQc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd3aed9e-4eb7-48a8-8731-08d817c93496
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2020 23:00:20.9381
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fWhe8WWwcvOz0q+7br/yk2xgRY0XTThJC6D1k7sYTGsArHZI1c+h7ZDn7lrMwU0vrK9ok/G8yqysCK6I0+nTu4/Omxr4iAB3xYwNH9s0a0w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4403
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

We are pleased to announce the first milestone release for Yocto Project 3.=
2 (yocto-3.2_M1) is now available for download.

Download:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1

bitbake: 7689fa781646039524a655295a884e525ad8732c
meta-gplv2: a8da8eb127a56561bf633ab53bec57fb5dbba537
meta-intel: 635e8a6892163cc3334a9b947abaca70697d458f
meta-mingw: 88f9689f7dd0f634f1ac9a370bdf00585d884206
oecore: 878a8561e10017bb91ea42bbbe6d4acfc0985482
poky: 29bfa17d6cab31dbf8f1d12e473ef83dd9e92519

Full Test Report:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/te=
streport.txt

Thank you for everyone's contributions to this release.

Sincerely

Vineela Tummalapalli,
Yocto Project Build and Release
vineela.tummalapalli@intel.com
