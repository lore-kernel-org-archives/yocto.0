Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B3EC19F21
	for <webhook@archiver.kernel.org>; Wed, 27 Jul 2022 03:25:17 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web12.15632.1658892306787879088
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jul 2022 20:25:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=kfmfyD7s;
 spf=pass (domain: intel.com, ip: 192.55.52.88,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1658892306; x=1690428306;
  h=from:to:subject:date:message-id:mime-version;
  bh=v91w8Qk08LCI/1JFoVotLphN/gwYSGWdXgjWmkDyyX4=;
  b=kfmfyD7sPZglwFQjpJ4fIev7AqkCfVf+rY0L3XhvasSE4837RuFpH2Fx
   NKhKnvT2p8kjLOJhVq255RFttcCUvU/D0l5ReVapDvGPumKCQ0n+suZoj
   bEWwXSrV9b/rChJJUwzmm65buRgOT3WrPw24FozwERvWPaiemRE17g4Gy
   LEQX+9/KhzeEHnSLZ1IpXEpuuGiwFxJPQcbRAaALNcmdeY5DRmQV/OZMJ
   XB10DzJDKQqAahSEk4bLKLHW5bFnttOge7ny0WfNiYCtsnLVBlmMhBQm+
   QF12+KU+uUPTWlpeF6uIddEutjUjBCBNhflcZk8HopSk7H9L/46Hy3OVy
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="313908830"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200";
   d="scan'208,217";a="313908830"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 20:25:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200";
   d="scan'208,217";a="659000813"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by fmsmga008.fm.intel.com with ESMTP; 26 Jul 2022 20:25:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 26 Jul 2022 20:25:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 26 Jul 2022 20:25:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 26 Jul 2022 20:25:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fK0ELvORCbJd5o+TtZsKEnmzp1lm/Ez7Wqth01pnTX5f9xUMkaxCQP5VbHkBHBmyaGa/ivxbF8Xb+E2zq75ZmcRflB96q3lOW18fycvlIRs5yABUH0bJCgNZU5H0+/Tk8wa8ACh4QZ3MMbR1bO4CJ85iF9+JSN2mc5wK0Z/cmH8wv8bYqOmqluXncjE459vXjUF2KryBx/qaqH9UCY3TLDXmQBAjMPWXx/SIHaHDv45MB+shLsPOkoj7TC16fE+v1Yue93Im3jr7v7RrvzOWxjYoNGqnoEIEdXXQDYpjSQPwlmXf1X8Qcam4qcyhfyFplOM7r9p+n1soM2WY1vt5dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v91w8Qk08LCI/1JFoVotLphN/gwYSGWdXgjWmkDyyX4=;
 b=UKcrAObALL2T4cR9i0lz4wFSHXXHyklD1JkQs3zMgoiuqgqzwQUSLEE8FDZxY/lAo8bkDk/nx/RV9Ba9fBMKgJGzseZDhlNqX4gW7VMUVfGOYw96E4ycuLLYwwySY98+wMVBI0Vk49caYIBJ8169/5Ye2gbS0HmK062hJ+PHvpSpgeWpfbpjgKEZwAJbEHH3wR5MbjKLC4U5Xz9XA3LsSWoDx9NjYp5SgW9u5NJHzMJ4YPADFRkCJx3jodsKL2y6g65DG/BVubRtkYJJJECNHWK3wI+PjHVkTfSzwfRgp8q8R86UjwVuQuOElGotoZ/2Za+ZOTD2AFiA0f2aF8ZACg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by DM6PR11MB3084.namprd11.prod.outlook.com (2603:10b6:5:6c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Wed, 27 Jul
 2022 03:25:04 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::2cc8:b193:b787:2edb]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::2cc8:b193:b787:2edb%12]) with mapi id 15.20.5458.025; Wed, 27 Jul
 2022 03:25:03 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 4.1 (yocto-4.1_M2) Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 4.1 (yocto-4.1_M2)
 Now Available
Thread-Index: AdihZRFoXjbmz7e4TemQvZQeSTOiog==
Date: Wed, 27 Jul 2022 03:25:03 +0000
Message-ID: 
 <DM5PR1101MB2361D443612D94305BA20EF1B9979@DM5PR1101MB2361.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: c4be8f89-2c5a-422a-b9e9-08da6f7f9896
x-ms-traffictypediagnostic: DM6PR11MB3084:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 gHyW2Gqk2C2p8/0NtiTsL5irwCL8UPWyiQUfqUC/7s83nA3K5lPpu6F2SMugnJhONxb636orcBecpg3GAEmmZ9HjjaTuRPPxPlZYwzl6Dxj5UVqaO6yc0Zdtun0E7hxWsep8iShqJ7EFEMpCSOQCgVneEfq2P69aSIrSoqHYKcYi6qrsEl8Uy/7W8OnM3Lej/gFzJopnDkq4ZMQcboAA+kH07/W59HTrDYkP7JXBJsnR4G7hwyENwKxGqjBpH9w2ZuxxkM081mq/bb7+Hpq6miwIia6CRp1UpDY4hRN4R7LrJTPRZng/1/vGU8zavLqMwRPMYEK3MM3lbWpxl7EYFBh1UnXQ/IqhUgtBTkLl/LTCm5U1AUFUICDiaDX5GxvY/w4SXXq7JcZGGrDK9Ia+TXgSPDwPubXcztUmprGKxE+aNooxDmVOBmCFzW4Ig8qJyfzxvIy3uIDFEkyMAC8j5kXTAM3mfp9kTilJ4JeC2PYN6iP/rr4GBxhDZU6Jy8xRNncrdxy0hN6uK+CnhhGLD6d4SHDW/U9h8mYFRB3yAeTTl36LjyeQJ24/N7sPokyyd/TPOZL36tGvM9I6W6Rd7bL2n8ZerBPCX1v/muUscbqJQHb6bSsdvMk40m5T9IGRzz2F7Kb4j8Z6hX0+/PQ0bwcS7k3QjAW8cFadfTPH6vGGSHL8FmznrgA+3gsD47n6csb6Q5RB9ewY5o8BQlh8WnL6kOkzmOowgMPJKJ83XA3RpIuUM8g88X0x5ILX6+koEPWAQ/FJbqP0eicJ/9vN9+gJ/4LSNVCjTq2mLvpQU29t6Bb9kiUcMKa5Y5OJ0+XgZO69e9S3Z3xLc9Ax2H3izA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(346002)(136003)(376002)(39860400002)(396003)(366004)(122000001)(450100002)(55016003)(38100700002)(186003)(83380400001)(82960400001)(110136005)(38070700005)(316002)(86362001)(7696005)(966005)(52536014)(478600001)(8936002)(66446008)(33656002)(2906002)(9326002)(76116006)(64756008)(66556008)(66946007)(8676002)(66476007)(71200400001)(5660300002)(166002)(6506007)(9686003)(41300700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?NTk3NXZyYWhlYy9KcTMyWDJMcFVDZG02Ukl0ZU4rSyt3UG5YcHd5SWtSREVY?=
 =?utf-8?B?M0ZzcU85R0Z4czBRL01MZWJaNFdsa3Fjd295Mm1oTFp1SFd5eE0vRFQ2eEs5?=
 =?utf-8?B?ZjkwK3dQNStsSDUyUW9LTU8yZ2Y0c0FpZkpIY0hZaGJRVEVLakl0T1h6bGRM?=
 =?utf-8?B?azNWaEIyM1JZbXFlL1FEdEY0Vy9GMFV2NWtqMmk1bHM0Z3dGM3ltd2tyN2xv?=
 =?utf-8?B?bEtLZ1F2M0lYcHJucDBtYmRBaXRwaWpnSHpYQnlpLzFPc1FZT1N3QlpnbHVC?=
 =?utf-8?B?ekZOQW5uQ0orVTZ6VndpU0xIUjdqN1ZmODVLS25Ya0N2aTFhWk1MTlRJNFhw?=
 =?utf-8?B?dWhLSDY2NnBENmtEZ0NZNDEwM0VoaVhnUm82aXVNeXFYSC9XTGFvYjgrVDhw?=
 =?utf-8?B?bmJiSy9Sd3pzMld3c01sc3Nnc0JVMGM2OVc2dlBGWnNjcnZxUTFlUHl6Skw3?=
 =?utf-8?B?OWdXWlQzUTUzL1h3UnNBNGJhQTMrS3lyMExJZFZ3aGorTDVCRXE5dGd5TEZP?=
 =?utf-8?B?MXQxVHZBb1NKdGw5eGU3dzJUYUFReWVTWVFuUGVOUDBjNmlNdEpvdXpCcEZi?=
 =?utf-8?B?OGtiN2JWakdFRStzS0IzT1FrZ3VFSVVlVXliUFE2eGNLYXpnaHJ6SlRseWhs?=
 =?utf-8?B?K1pXaXp0YUpWSHBsR1lyanZvQ3ZzRVBHdmZSRlFSOHE4emhEbFloak1JSDVW?=
 =?utf-8?B?ZUZ2NmxzV1FHSkhxTGFkeHJWQStVTXdKMHB1ODJ1VDg4WHFWQ29YMHlPenFJ?=
 =?utf-8?B?aTh6dDcvdXoxM3VMaHo2c0RIRllOUG5xcUlMMk1aVG04N1ZncnRtTkxkbFRn?=
 =?utf-8?B?NWVuMzRUa3FtN3lMTnEzRXphQWxXT2xiRXozNEhKd1VPNDBXMEI2eUx1OWV1?=
 =?utf-8?B?WU5DTVVRMXhmcG0wbUZyYVVQYUFnSEhLY1NmNmdjeG40VG9CTUMrcWF2MUE0?=
 =?utf-8?B?ZjkwM2xqRklUTFFNQURaamUrYk5qbUZQM2FQZTdTNTdWTzlhVVVBWGQ5MVRm?=
 =?utf-8?B?cDN3U1YvWmpWQ1FlUnlJYVVldnlZVGhwYjhuY3AvWEFXbWpycWNPNXdvZDg3?=
 =?utf-8?B?dVlzdytaTDFwUG15TkRQRVdlNy9kMGhjSnZzaW5wU1JONkduWWJaYis0Zm9a?=
 =?utf-8?B?dWdpWjFLamZvTGFORzBFTXIyVEZ5NXhVREtiekpZQU1UZjhRRW1tUURMOVNl?=
 =?utf-8?B?VWd1UHFMcW0wM1ZTcEw3SHRvWTRtM1VGcVNGa2NveEVMTmVLVGJOeWNKZi81?=
 =?utf-8?B?Vm5SdXhteTUwbzRrQlhEQ0I0RmxSd1Z6T1JxNVBUODUwSkdQWkI2dW1lQjNZ?=
 =?utf-8?B?RmZFRG4xSWtCTExoUjBVVlJtRS9odTYvMWN4UWt0M2QvdGpJVmZMVFYvamdw?=
 =?utf-8?B?NW4ySmNPcWxXMHlSanNnWWxYRlArUFRybjhRR3JTRFkwR2thby8rRXl6WVFz?=
 =?utf-8?B?M0t5a2xGTlVIMHVrT3NpMllXUFBjdWJYQ1YrMkFYSUNaS0ZFRzY4R05LSW50?=
 =?utf-8?B?MnNFeThzdXVEQit5eXpqUDhZRTNlZkFZMFE3ZTMyZDYxSDE2eEVsbHBvalJn?=
 =?utf-8?B?ZTdNVW5oY2tTRnRPbUQ1TjA4dVNXM3Q4WFVZSVNtdzdJbk5YMFR0NUVJVU1x?=
 =?utf-8?B?OFIrSjZXZXJsWmRFNUJDbHFYUzBmUDhNL1hKS3JjUElrb1NVOGpIazZqSC9D?=
 =?utf-8?B?UHpHSVdXZ3labFZYYXVjRzZRL1ZYUjFCWkdrRUtzY3NHOVVlbVJBYWo1a0Vm?=
 =?utf-8?B?VEhCSHVFZFI3WUNya3JIOVpGVU41aG9YdExZYURQRjhvdndLTFBGclgyL1hW?=
 =?utf-8?B?UHVVZ2lIUVV2TS96WW9TdGxaZEtjMGFwM3hzek9iaTkxbW5BZGUraWdLMlEr?=
 =?utf-8?B?ZmZVTFdpWG01YlZ2Z2V5ZkJsRmtwVndqV3lJZjVlNDhkQk92c3NzWTgyakp0?=
 =?utf-8?B?VFJXNi8xYVlYSGwyRG1hbVR3U2xzZk5HckwvWEdEMlp0Z3NYa3NUYllpVXhL?=
 =?utf-8?B?UG1PRFoxMWYwSGJEMkJZRkVHU3I3TUVVS2NrZHV6M3hUY1l2aTN2NzFxWDlX?=
 =?utf-8?B?eFlWUUlsR2lQR3lVRW8yRDI4bXlYeXJDV1FrSzRWQ1M2VkRVYnZ2Z1pXeDcr?=
 =?utf-8?B?Qkg0L3g3Z3daNlpiTEpmRHJhdTFWRlMwVXY1TzlBNWwxdi8yUXJBQ1pqOEl2?=
 =?utf-8?Q?8pfClJr5OYq3wUAwO8WqzhE1c2RShHS/bIwVAfQlYhpo?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR1101MB2361D443612D94305BA20EF1B9979DM5PR1101MB2361_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c4be8f89-2c5a-422a-b9e9-08da6f7f9896
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 03:25:03.7578
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 LsYV+zxst5baiGjvB7Wj/gzJZneCXcadq0mnAtTKFB8b+/hKcOHKGPZYgX5WwpV6L80LKehbPn20a2Wu0L258g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3084
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Jul 2022 03:25:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57650

--_000_DM5PR1101MB2361D443612D94305BA20EF1B9979DM5PR1101MB2361_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHNlY29uZCBtaWxlc3RvbmUgcmVs
ZWFzZSBmb3IgWW9jdG8gUHJvamVjdCA0LjEgKHlvY3RvLTQuMV9NMikgaXMgbm93IGF2YWlsYWJs
ZSBmb3IgZG93bmxvYWQuDQoNCkRvd25sb2FkOg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJv
amVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjFfTTINCg0KYml0YmFr
ZTogYjE3MWFhNDVmYjg1MThkY2ZiYmEzMTViMzAzYTRmZTliZjIxODBjNg0KbWV0YS1hZ2w6IGI1
MDQ0MTU2ZmMzMThhNDg4MWU3NjY1MTM4NzE2MTFhNTYwMTcwYmUNCm1ldGEtYXJtOiA2NDgxYTQ3
M2Q4NGY4NDUzMGUwYzQ4ZDU2YWNkYzE4NTkxOTg2OWI2DQptZXRhLWF3czogMmY1MDc1NjczNDg5
ZWUyZDNmYzMxOGY2NjI2ZDQ1MTQ1ZjY1ZDVlYQ0KbWV0YS1ncGx2MjogZDJmOGI1Y2RiMjg1Yjcy
YTRlZDkzNDUwZjY3MDNjYTI3YWE0MmU4YQ0KbWV0YS1pbnRlbDogZGU1ODUxODkwZjlhMjY4NjIx
NTE1MTkzZDJhZDg0ZjgzNTlmYmUyNA0KbWV0YS1taW5ndzogMjA1ZTlkOTQyYmM4ZWExNjQzYThk
MjdiNzllNzczNjI1ZDE3M2MwMA0KbWV0YS1vcGVuZW1iZWRkZWQ6IDBjMmU0MTY1NjczNTFkNTVh
ZTQ1ZTY3NTEzYmU2ZjIwYWE3NTRkNGINCm1ldGEtdmlydHVhbGl6YXRpb246IDdlYzRiNDc0NmQ5
ZDc2MDYyYTg2OGVhNzc4MThhMTUwZGRkNTNjNTQNCm9lY29yZTogYjRmMWI3OGFlZjc3MTk4ZjI2
YThlZjllMTA1ZmE2OTBjYzEyZTgzNg0KcG9reTogODk5OTc5Njk2ZjY4ZmY0NDE0Y2ViZjc3ODJi
MzdkN2JhZTI3MTQ0Yg0KDQpGdWxsIFRlc3QgUmVwb3J0Og0KDQpodHRwOi8vZG93bmxvYWRzLnlv
Y3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjFfTTIvdGVz
dHJlcG9ydC50eHQNCg0KDQpLbm93IElzc3VlOg0KDQpXaWMg4oCcZGlyZWN04oCdIGltYWdlciBw
bHVnaW4gaXMgY2F1c2luZyBkdXBsaWNhdGVzL211bHRpcGxlIHJvb3QgZW50cmllcyBpbiBmc3Rh
Yi4gVGhpcyBpc3N1ZSBvbmx5IGhhcHBlbnMgb24gd2ljIGltYWdlLg0KDQoNClRoYW5rIHlvdS4N
Cg0KQ2hlZSBZYW5nDQpjaGVlLnlhbmcubGVlQGludGVsLmNvbTxtYWlsdG86Y2hlZS55YW5nLmxl
ZUBpbnRlbC5jb20+DQpZb2N0byBQcm9qZWN0IEJ1aWxkIGFuZCBSZWxlYXNlDQo=

--_000_DM5PR1101MB2361D443612D94305BA20EF1B9979DM5PR1101MB2361_
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
CjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IaTxicj4N
Cjxicj4NCjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+V2UgYXJlIHBsZWFz
ZWQgdG8gYW5ub3VuY2UgdGhlIHNlY29uZCBtaWxlc3RvbmUgcmVsZWFzZSBmb3IgWW9jdG8gUHJv
amVjdCA0LjEgKHlvY3RvLTQuMV9NMikgaXMgbm93IGF2YWlsYWJsZSBmb3IgZG93bmxvYWQuPG86
cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPkRvd25sb2FkOjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
YSBocmVmPSJodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8v
bWlsZXN0b25lcy95b2N0by00LjFfTTIiPmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9y
Zy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuMV9NMjwvYT48bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+Yml0YmFrZTogYjE3MWFhNDVmYjg1MThkY2ZiYmEzMTViMzAzYTRmZTliZjIx
ODBjNjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1hZ2w6IGI1MDQ0
MTU2ZmMzMThhNDg4MWU3NjY1MTM4NzE2MTFhNTYwMTcwYmU8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPm1ldGEtYXJtOiA2NDgxYTQ3M2Q4NGY4NDUzMGUwYzQ4ZDU2YWNkYzE4
NTkxOTg2OWI2PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWF3czog
MmY1MDc1NjczNDg5ZWUyZDNmYzMxOGY2NjI2ZDQ1MTQ1ZjY1ZDVlYTxvOnA+PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1ncGx2MjogZDJmOGI1Y2RiMjg1YjcyYTRlZDkzNDUw
ZjY3MDNjYTI3YWE0MmU4YTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0
YS1pbnRlbDogZGU1ODUxODkwZjlhMjY4NjIxNTE1MTkzZDJhZDg0ZjgzNTlmYmUyNDxvOnA+PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1taW5ndzogMjA1ZTlkOTQyYmM4ZWEx
NjQzYThkMjdiNzllNzczNjI1ZDE3M2MwMDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+bWV0YS1vcGVuZW1iZWRkZWQ6IDBjMmU0MTY1NjczNTFkNTVhZTQ1ZTY3NTEzYmU2ZjIw
YWE3NTRkNGI8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtdmlydHVh
bGl6YXRpb246IDdlYzRiNDc0NmQ5ZDc2MDYyYTg2OGVhNzc4MThhMTUwZGRkNTNjNTQ8bzpwPjwv
bzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm9lY29yZTogYjRmMWI3OGFlZjc3MTk4ZjI2
YThlZjllMTA1ZmE2OTBjYzEyZTgzNjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+cG9reTogODk5OTc5Njk2ZjY4ZmY0NDE0Y2ViZjc3ODJiMzdkN2JhZTI3MTQ0YjxvOnA+PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj5GdWxsIFRlc3QgUmVwb3J0OjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48YSBocmVmPSJodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9j
dG8vbWlsZXN0b25lcy95b2N0by00LjFfTTIvdGVzdHJlcG9ydC50eHQiPmh0dHA6Ly9kb3dubG9h
ZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuMV9N
Mi90ZXN0cmVwb3J0LnR4dDwvYT48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
Pjxicj4NCjxicj4NCktub3cgSXNzdWU6PGJyPg0KPGJyPg0KV2ljIOKAnGRpcmVjdOKAnSBpbWFn
ZXIgcGx1Z2luIGlzIGNhdXNpbmcgZHVwbGljYXRlcy9tdWx0aXBsZSByb290IGVudHJpZXMgaW4g
ZnN0YWIuIFRoaXMgaXNzdWUgb25seSBoYXBwZW5zIG9uIHdpYyBpbWFnZS48YnI+DQo8YnI+DQo8
YnI+DQo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRoYW5rIHlvdS48bzpw
PjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+Q2hlZSBZYW5nPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48YSBocmVmPSJtYWlsdG86Y2hlZS55YW5nLmxlZUBpbnRlbC5jb20iPmNoZWUu
eWFuZy5sZWVAaW50ZWwuY29tPC9hPjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+WW9jdG8gUHJvamVjdCBCdWlsZCBhbmQgUmVsZWFzZTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+
DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_DM5PR1101MB2361D443612D94305BA20EF1B9979DM5PR1101MB2361_--

