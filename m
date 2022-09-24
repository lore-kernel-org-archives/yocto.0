Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E9A7C07E9D
	for <webhook@archiver.kernel.org>; Sat, 24 Sep 2022 02:02:50 +0000 (UTC)
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by mx.groups.io with SMTP id smtpd.web10.2914.1663984961041502843
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 19:02:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=e4KP8s9x;
 spf=pass (domain: intel.com, ip: 134.134.136.126,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1663984961; x=1695520961;
  h=from:to:subject:date:message-id:mime-version;
  bh=1edy/GtT2ORtGZG9iTZgjQA/RP6jiS6w1gSIzCNOXSc=;
  b=e4KP8s9xpCoOTiyGVxk4fwPr6JSXJ78ORwnJYWegLk8iqphx8YgkJYXQ
   A2gZA43zTD5nxsw73xugBUUnEiHXEEg5p9KPGGSrg2+LTZcy6joSExAbc
   4u2i4XKlc2pdbtwKsp2Q0vEKD5PwjIdgts5Uea44drSDSA/j+I316PypS
   PnETfAyaW6ouGBr5nCDMg2kjf9BqWdkm7N/CXzen3ARZxj0A1K3TUKYIT
   dNsYRoqto/D499/7DVaaRIuystBZQ8I9J1az1d35npSBo39UhIrj9/V+8
   C4XU+68j0tkRq0x3z78EDbHt0tKDeChtrGPAu50oiaJSUdpMHXQKEVDNi
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10479"; a="283844816"
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200";
   d="scan'208,217";a="283844816"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 19:02:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,340,1654585200";
   d="scan'208,217";a="651170296"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by orsmga008.jf.intel.com with ESMTP; 23 Sep 2022 19:02:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 19:02:32 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 23 Sep 2022 19:02:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 23 Sep 2022 19:02:32 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 23 Sep 2022 19:02:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QPYB567k/f93Drxgrb4aUi9CN3KHAVrYRmkEbLCukNad/6K0qnQ6QKDJpsvHOMr0QaTSz/kWuY2VI7f11QszD3Gwa6IP8U048G3S0V8i2qBDtWWLoivNgx7DoDE1fHEabC5ZGbugylEaxn73eNskSTO7dL6NRfUPRqwqmDPkmkGIGY09btSH28sbl68bHRezhGyR/QFaE8DGkSOvdF/OySSnC6oefjfGhi5szFj9oPNRWRLtv+UkEydZEqyYKL9RrtJEwdhFOB0GjNepAJuOG4fHLEGTNcqgWaMCVqmkinshX+2wfxwiiRUxY52mnkPnjQQNWsur3u6/pYNQdq3rpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1edy/GtT2ORtGZG9iTZgjQA/RP6jiS6w1gSIzCNOXSc=;
 b=IrT2dMg9wHO7uAFIoomeGJOAjP4qBm6t/sPNUZ9bw8tXR5xyrjRpAu2YUzypsf4ZGjyg5e2LryRqmd8D6+DwcO7iBW1oNn729PwTWbMHfX3S/5q+8dV7+oUd33QZyjOdUb9vaHtfTTsBHKINvu/Na4L3qx5ZJ7nvVYxjpIXVLPoXbW8faq4mERBivrlJrqnnPCOcYVnpuRjaEpGrfIyenY1aK+/VhibOX+CgSZNRHvUwittiLfOg/RKn9rKQ3q2OTtA4n9gGdUI2XrkBsQB0euZ5e5avJToRUbVNGFa/CzB+JW1zCAVG5z6Ke/CxJALDThW98nVG6QGpfQjGrqYGFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by DM4PR11MB7255.namprd11.prod.outlook.com (2603:10b6:8:10d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.20; Sat, 24 Sep
 2022 02:02:30 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::dd51:606b:37cc:17a8]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::dd51:606b:37cc:17a8%10]) with mapi id 15.20.5654.020; Sat, 24 Sep
 2022 02:02:29 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 3 for Yocto Project 4.1 (yocto-4.1_M3)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 3 for Yocto Project 4.1 (yocto-4.1_M3)
  Now Available
Thread-Index: AdjPuZ4j3pFIBz/0RhS4zC4fKeTvxg==
Date: Sat, 24 Sep 2022 02:02:29 +0000
Message-ID: 
 <DM5PR1101MB2361A81943CD4DB797AF61F8B9509@DM5PR1101MB2361.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1101MB2361:EE_|DM4PR11MB7255:EE_
x-ms-office365-filtering-correlation-id: de69d341-008e-4ba9-251d-08da9dd0d63c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jSUcz1p2iJsmDXPMSZS1VSv1/lKgI+T+GNyzNpUd32Cd0DkItFo9jwGnAE/sj4RjyKNzl5ng4rQ0eK93GWYOFuFvMavPqRqFc80s0Qy7tDwI8lMmf3pKW7yzVlsYchvJYw1vdf5FB0/hqReUuFrYXtrcupOUXSif8c/bt0dCeL1MvNDsThQlOAxsIFHbc+uJHx+nsfOCKMYAeDOaMghDFoyQuGG8WL7C6i/BHeVXXv3kdSYuxxRmWv2Uoy3/BTIu2UK0G6FG0mbY/lFhTloQ/6GlMXHRVf6mQYCuIiA/2VDOGE4nWyUJpIHcWRPjbnINOpaT11Z1y6LDJh/aX0GZeO8ja9TLBGNJC+HvmTvDpizHrIJenlX+xmaWa6ZsYGhgUK64zrgeVIzqFsGyNVGuPcnZTsxmdKMjrF36YGboWp7jKM5cTakHbtfjM5qyab9549nccpBFpNg0PO6xxtoRCrWUb30UpglJ8X9z6gs5m1cUIdFSWmntD2LipkiGf2xb6XpzR7rTaA5gOI9lva1phASTQJR4dl4qFBtusBE/R1Nr8V5juLTdmnGWfrRt4MiRL/uW9CNChP0Qq3R1CLv0frekf+7Aj5HossmEkwJ9UU4BSsVfh+pgi0Oir4p+UTW0S4faaPVEAF/DjGlH5irWh8b2I32a390uFFlwDLGi/1BPen9yC7X0gPPi+g9XUOmvZ4RU9ocd+wz690bNSzKVi2w81V7LlCGIT31U2cRdG9FK/IfOZDak2uCCtO6tMMo/BUMC931QCUNtxkQx19TmsVRY3XPdpIFjU5Nn2dsD9y4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(346002)(376002)(136003)(366004)(396003)(39860400002)(451199015)(71200400001)(38100700002)(122000001)(478600001)(41300700001)(38070700005)(966005)(166002)(55016003)(7696005)(110136005)(66556008)(66446008)(66476007)(2906002)(82960400001)(8676002)(316002)(450100002)(66946007)(26005)(76116006)(9686003)(33656002)(64756008)(8936002)(9326002)(5660300002)(52536014)(83380400001)(6506007)(186003)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?eFRWRkxrS3NITk9PT253eWRFTk1MelBOcldMWTlhcUhxYTE5cHZjL25ydVNy?=
 =?utf-8?B?TDR5bDYveEpsT291UUFEdG5tRW5FUXJTK3l3elRKSzB3VVNTVFFxcEVtOENK?=
 =?utf-8?B?Q1Z5dXZZZkJqM1dIY3RVS1h5YndlaUdqZEUwYmwzZFd2ek8xS1VUNE1SSy9F?=
 =?utf-8?B?M1lYMEdzdkw3eDJHVzBLUVR4YnFLcDY2bHM1WmxGdDUwWTRSRThXQUFSVXkz?=
 =?utf-8?B?N3pZWVAxZ2xCZndVb1ZkSk9VamJ4dlpFUWZFNFpBbzFpVFV5NmJsYTBpV2Rl?=
 =?utf-8?B?SkRjQzNEWTFWU3ZmWFNwRHk4eUdsenlaMU4xT2RVaUZGU3p1YVFhVGhMWE5C?=
 =?utf-8?B?NFE3Vm4rR2NtbHZiVmx4emY0UVFzMlpJV0FRcGF6Mk5nWjN3T1FKQkN5ZDQz?=
 =?utf-8?B?TVZocWhISHAzV08rZ2RBU3h4LzJ3MURvT2t5VEpRUzNMWVF4NDJCckYwSHNn?=
 =?utf-8?B?UDJKNXhGcWJYWlY4RWdoZk14ckxBTENzL3JVUG5mYk1RTkp0aU5ycFlQQnY4?=
 =?utf-8?B?KzR1enRsTncrZkgvWms1dzF1Zk9XRnpzbUJlaVZIcms4Q3dMejFycEhWdzVC?=
 =?utf-8?B?MEdwQmN0c3NGQ2MrZVU2clZsd1V2dk1YejkybDBScjh4RkQ4bUs2SE0vblZH?=
 =?utf-8?B?dEc4OEpKUHgweExOSVdUdExjYUhBTUxsVmpmbjhtOVBEQkk2UlJySEhBakY3?=
 =?utf-8?B?TjQ1U1ZXVjNWdFNuc2xhcGhVR1N5alh6ak96V1paMGl4eUwrS2NkVTBIcjd5?=
 =?utf-8?B?RHZEN3NKaWNqREhQYy8zeFo4L0FXRnpTOWc3cGpZZC8vVWYwdGVmNDQzdmlI?=
 =?utf-8?B?QUtHSWdhRWhHalRBVHkxWU56ZUxEak1OU3F1UFZlUC92L0VMSDdTVnp3UWg3?=
 =?utf-8?B?S3FveCsvZU4wbzZWZ3B6eWpPMURzampreFRvZjhYLzA4VU9Ub3FVYkk4WWM5?=
 =?utf-8?B?Q1lZQlc4SWRWai96dUFaaU05cE1tMExWbkpLTWZYUlhNMXdvc1hFRnJpZ1h2?=
 =?utf-8?B?czBpaVhmdmY5cUFDOVpiVnhSMk5wV2ZvMVF3U3VOdDdaMzVKYmFsaEt0TW55?=
 =?utf-8?B?NnRDZXRxVWhuUU1GYURvWWVFcFN2UVhRK1VHdkk4eDQyTE9UVWtCWlkxYnYz?=
 =?utf-8?B?TXFQeGtLeXg2K3hQNmFsQkI2UFBBYWYvS0xpN0RvdUpIOTJBWnhxMnI1UjZa?=
 =?utf-8?B?YlQ1YVQ0YXN2N1djWDhZNmNybmVUNHpscnNHUUkrUGpwdDhDQ0tEdUptTVB3?=
 =?utf-8?B?SnV5TitXRWhrY2VJWFYxMXpLUGZwRExyc0dBc005YmtSc3NxZDJtckxUYzBF?=
 =?utf-8?B?MFo5ajZob3l0d0JZOGwrNFVsbmhadEdZUzBWbFFhZVpRUHdCM1pBaStkdTlR?=
 =?utf-8?B?Q1ZGQ2RzL0tIV1hOYXFjakVudWNmWG5mS3FQQTV4dExsNC9pWDh1bnFPTjcz?=
 =?utf-8?B?RkxUUEhtaC8zb2xYNERsQ1NIMC9yc1ZmZ1h3aURYK1FSSkFteG43SDJPWTE1?=
 =?utf-8?B?Y2tETG55R1hoRG5FN0xWb0czVTdSZmRNQWlkZVJUMkEzK3F1V1ZqbDJkYTBh?=
 =?utf-8?B?TTA5TklFMUtRbHE2ODA4NDBJeWt4bkNyVElqeHh3aEo2V2ZveUE3Q3k4T1JD?=
 =?utf-8?B?eFU0bDZqeWhvSWlCaFd1SXNDQm45YXJSelI5Ti9KMWUrbmM4U0l2a0ZXa09h?=
 =?utf-8?B?K1ZJaml1VnZOakZXWWRWMlZFb0c5ZlZlOE91dGRkTGYvR28zcVR2MVNyanlZ?=
 =?utf-8?B?M2lnUGpmUk9pUkNHbGNYcktZOHVYMjExYW1zMDFFRDc1Q2ZITENxZUsvRURO?=
 =?utf-8?B?M1ZCQXBXb0dDQ1l3cHNqSmVickV1K0JRdE5oTS84bmY0MWVqQ1lCVjZpc1RE?=
 =?utf-8?B?UExzSk5WYVcyUWF2bmxFSzZBTk1RcHp5MEY5cXkzdVIzWklIcmFOT1ZZL25C?=
 =?utf-8?B?NUgrZWgvWlZ2QmxoeWNXekFteCtITWxmcUFuNHcveThSbXgzazN0VXpFdlNJ?=
 =?utf-8?B?NksvR0Y5c00rR3o3eWp3a3V0N2tITVhCQzBVUHVOZ1NLV3ZKYjE0aE5raWZK?=
 =?utf-8?B?VXI1V3ZDVmlmZVQvcUxhdnRtb3J0UUFVS0t3ZXdQZDhueUlGQVNiOHR1YlA3?=
 =?utf-8?Q?/sK4LVyvfK8WKWyo3CIDkqlJk?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR1101MB2361A81943CD4DB797AF61F8B9509DM5PR1101MB2361_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 de69d341-008e-4ba9-251d-08da9dd0d63c
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2022 02:02:29.9214
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 ygRTzVwUcoYXv+QEy+pKriRy08j4aB+F1Qypc5SiSTi2uNLyZCcVD0LKShmV9ip+37tbj5cLPe9sS9Ylpmb0Hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7255
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Sep 2022 02:02:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58149

--_000_DM5PR1101MB2361A81943CD4DB797AF61F8B9509DM5PR1101MB2361_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHRoaXJkIG1pbGVzdG9uZSByZWxl
YXNlIGZvciBZb2N0byBQcm9qZWN0IDQuMSAoeW9jdG8tNC4xX00zKSBpcyBub3cgYXZhaWxhYmxl
IGZvciBkb3dubG9hZC4NCg0KRG93bmxvYWQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9q
ZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuMV9NMw0KDQpiaXRiYWtl
OiA2NDI0ZjRiN2U5YzFiYThkYjgxMzQ2ZThiM2E4MDZkZDAzNWQ0NTUxDQptZXRhLWFnbDogZTRl
YTgzOWRiOWMyNmU3ODE3NWQ2MTM4OGM1NDA4YTc5ZjY5MjdkYw0KbWV0YS1hcm06IDI2MTI2M2E2
NzAxYWIzNTMwZmY5OTc2NDNkMDhkYTUwMjIyMmFjMjANCm1ldGEtYXdzOiBhMTZmMzVhNzNiZmYy
NmQ5NTA2ZjUxOTQ1MWRjNzUwMzQyMTFkNjFiDQptZXRhLWdwbHYyOiA0M2JmMGU4ZDU5ODU5NDVk
MTlkMDFmOTRiZmJiZGE0MjBjNDQzNWYzDQptZXRhLWludGVsOiA5ZDI4MjBkNGJmNDM2OTI0ZGI4
NDVkZTI4ODUwYTgwN2Y5ZmRlZjg3DQptZXRhLW1pbmd3OiA4MzI3ZWZiNjMzNGI5MTg3ZmJhZjdj
ODcxZGU0NDQ2YzY4NjNiM2M1DQptZXRhLW9wZW5lbWJlZGRlZDogMDllMDg2ODEyYWFiN2NhNmVl
NDgwZmI2MjU5NjZlMjMxODE3NDM0NQ0KbWV0YS12aXJ0dWFsaXphdGlvbjogNTM4ZTk0ZTY3NGRj
MWJlMGIwZmVlNWRhNTQwODNjYTA0MGIyZjdiOQ0Kb2Vjb3JlOiBiZjU5NjhiY2U1OWQ1ZTVjNzc3
NDA3ZGJhNDMxYmUzYWVjMDEyNDA0DQpwb2t5OiA5ODdlMTUwM2Y3MzMwNjhkNzc0Y2NmNDQwYjZm
NGUyM2U4MzM1NzFlDQoNCkZ1bGwgVGVzdCBSZXBvcnQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9j
dG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuMV9NMy90ZXN0
cmVwb3J0LnR4dA0KDQpLbm93biBJc3N1ZToNCg0KV2ljIOKAnGRpcmVjdOKAnSBpbWFnZXIgcGx1
Z2luIGlzIGNhdXNpbmcgZHVwbGljYXRlcy9tdWx0aXBsZSByb290IGVudHJpZXMgaW4gZnN0YWIu
IFRoaXMgaXNzdWUgb25seSBoYXBwZW5zIG9uIHdpYyBpbWFnZS4gU2VlIGJ1ZyAxNDg2NSBmb3Ig
bW9yZSBpbmZvcm1hdGlvbi4NCg0KVGhhbmsgeW91Lg0KDQpDaGVlIFlhbmcNCmNoZWUueWFuZy5s
ZWVAaW50ZWwuY29tPG1haWx0bzpjaGVlLnlhbmcubGVlQGludGVsLmNvbT4NCllvY3RvIFByb2pl
Y3QgQnVpbGQgYW5kIFJlbGVhc2UNCg==

--_000_DM5PR1101MB2361A81943CD4DB797AF61F8B9509DM5PR1101MB2361_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5Ouetiee6vzsNCglwYW5vc2UtMToyIDEgNiAwIDMgMSAxIDEgMSAx
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUg
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJcQOetiee6vyI7DQoJ
cGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0K
cC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0K
CWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0K
YTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29s
b3I6IzA1NjNDMTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4uRW1haWxTdHls
ZTE3DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLWNvbXBvc2U7DQoJZm9udC1mYW1pbHk6IkNh
bGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0K
CXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fu
cy1zZXJpZjt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJ
bWFyZ2luOjcyLjBwdCA5MC4wcHQgNzIuMHB0IDkwLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJ
e3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+
DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+
PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4
dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxh
eW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLU1ZIiBsaW5r
PSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4N
CjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IaTxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5XZSBhcmUgcGxlYXNlZCB0byBhbm5vdW5jZSB0aGUgdGhpcmQg
bWlsZXN0b25lIHJlbGVhc2UgZm9yIFlvY3RvIFByb2plY3QgNC4xICh5b2N0by00LjFfTTMpIGlz
IG5vdyBhdmFpbGFibGUgZm9yIGRvd25sb2FkLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Eb3du
bG9hZDo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fkcy55
b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4xX00zIj5o
dHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25l
cy95b2N0by00LjFfTTM8L2E+PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPmJpdGJha2U6IDY0MjRm
NGI3ZTljMWJhOGRiODEzNDZlOGIzYTgwNmRkMDM1ZDQ1NTE8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPm1ldGEtYWdsOiBlNGVhODM5ZGI5YzI2ZTc4MTc1ZDYxMzg4YzU0MDhh
NzlmNjkyN2RjPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWFybTog
MjYxMjYzYTY3MDFhYjM1MzBmZjk5NzY0M2QwOGRhNTAyMjIyYWMyMDxvOnA+PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1hd3M6IGExNmYzNWE3M2JmZjI2ZDk1MDZmNTE5NDUx
ZGM3NTAzNDIxMWQ2MWI8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEt
Z3BsdjI6IDQzYmYwZThkNTk4NTk0NWQxOWQwMWY5NGJmYmJkYTQyMGM0NDM1ZjM8bzpwPjwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtaW50ZWw6IDlkMjgyMGQ0YmY0MzY5MjRk
Yjg0NWRlMjg4NTBhODA3ZjlmZGVmODc8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPm1ldGEtbWluZ3c6IDgzMjdlZmI2MzM0YjkxODdmYmFmN2M4NzFkZTQ0NDZjNjg2M2IzYzU8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtb3BlbmVtYmVkZGVkOiAw
OWUwODY4MTJhYWI3Y2E2ZWU0ODBmYjYyNTk2NmUyMzE4MTc0MzQ1PG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLXZpcnR1YWxpemF0aW9uOiA1MzhlOTRlNjc0ZGMxYmUw
YjBmZWU1ZGE1NDA4M2NhMDQwYjJmN2I5PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj5vZWNvcmU6IGJmNTk2OGJjZTU5ZDVlNWM3Nzc0MDdkYmE0MzFiZTNhZWMwMTI0MDQ8bzpw
PjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPnBva3k6IDk4N2UxNTAzZjczMzA2OGQ3
NzRjY2Y0NDBiNmY0ZTIzZTgzMzU3MWU8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RnVsbCBUZXN0
IFJlcG9ydDo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fk
cy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4xX00z
L3Rlc3RyZXBvcnQudHh0Ij5odHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFz
ZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjFfTTMvdGVzdHJlcG9ydC50eHQ8L2E+PG86cD48
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPktub3duIElzc3VlOjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PGJyPg0KV2ljIOKAnGRpcmVjdOKAnSBpbWFnZXIgcGx1Z2luIGlzIGNhdXNp
bmcgZHVwbGljYXRlcy9tdWx0aXBsZSByb290IGVudHJpZXMgaW4gZnN0YWIuIFRoaXMgaXNzdWUg
b25seSBoYXBwZW5zIG9uIHdpYyBpbWFnZS4gU2VlIGJ1ZyAxNDg2NSBmb3IgbW9yZSBpbmZvcm1h
dGlvbi48YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRo
YW5rIHlvdS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Q2hlZSBZYW5nPG86cD48L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBocmVmPSJtYWlsdG86Y2hlZS55YW5nLmxlZUBpbnRl
bC5jb20iPmNoZWUueWFuZy5sZWVAaW50ZWwuY29tPC9hPjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+WW9jdG8gUHJvamVjdCBCdWlsZCBhbmQgUmVsZWFzZTxvOnA+PC9vOnA+
PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_DM5PR1101MB2361A81943CD4DB797AF61F8B9509DM5PR1101MB2361_--

