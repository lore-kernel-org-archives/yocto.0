Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D126C46CD2
	for <webhook@archiver.kernel.org>; Wed, 27 Dec 2023 08:49:00 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by mx.groups.io with SMTP id smtpd.web10.98358.1703666935011574034
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Dec 2023 00:48:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=XNqmdWxy;
 spf=pass (domain: intel.com, ip: 192.198.163.8, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1703666935; x=1735202935;
  h=from:to:subject:date:message-id:mime-version;
  bh=rPQmqp7/8HZQ9TuGc8imiRisMOiQWV6WLYgyLBB9FxE=;
  b=XNqmdWxytTJ5BfobGPp7VUabL7pIPz0DZV0IQ9WvUHkMyL0eBoqJi1bB
   5ir1CwwECNSBjEeN2wfEIkH/poaYTsu+gXLMEJgc4WZbVDG9X/XXNvX8h
   w60oD4l1WJrrM4iiIdnM+35SP0A/FNfoAjkJS3i4wcDM+E9zkrtkD83vY
   DZDcLRsy1muNy+hTIo1zSNUctTEaWwMSGVLkYCLoNUB29pTwpn/ep5THR
   WIqkXTFwZxXw4RF8hl44hd+eMIUvqn5nJPWxNRR+O9RKyWkZ1ePmRT5qm
   V9Szg/6s7MxOBCF2bE1cUGYC+51hi8kBBzO6KlcAMo1xjwY3AAvwrnDzb
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="9976613"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; 
   d="scan'208,217";a="9976613"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Dec 2023 00:48:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10935"; a="868816740"
X-IronPort-AV: E=Sophos;i="6.04,308,1695711600"; 
   d="scan'208,217";a="868816740"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 27 Dec 2023 00:48:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Dec 2023 00:48:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 27 Dec 2023 00:48:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 27 Dec 2023 00:48:53 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 27 Dec 2023 00:48:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ql6mD1UJFpYFTn4207V/sUJy4x8ks84TsJE73mYXLQ1/MzhL2aBpWgj63to+TqFPTafGQRvhZlRvLRL2lrYtbvpWYHS8/5tYsYJGMHt95dhhMoQmNnLbnI473qyJuf4mnhw56R5O64CEANle//NwHwxVT+aqrMhqBZfpWhozr0w3Jg2UH6n+GzsKfFKl5NlP9RnyecRk8mDxGCdu84JrxMeSfACms7kKz+jeKakzNN+bLTrylbLJDDsYvxD6mY78R8bznxKe9orQlBftqsI8qy3nHGflIXuVGWysEU8WI6vEVPg1UoOEXdEKc2DEtnKkX2/9gIHc4uylujxlvNjSOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rPQmqp7/8HZQ9TuGc8imiRisMOiQWV6WLYgyLBB9FxE=;
 b=Ko8hPwAxLo63bdAcxq4bGMUfH9HpQP8zyhFlNqTf441jUkbS0CovNkfBEIHWTCE2VJJSYOnScw16ap3/SC2nuqZVk0pud60jw+5kSgfTM9Zcm+vGmPuzGVNN6zW+QjpGWa3zpp4qq16unHaMVksvvyYKqGEp02XcYxa+X6rsPRXxXnst9kECwoLFViAOqvQ2PW4gQnPNzuOoMns4r3Yd3tJB2xtnsNeTyaLMsgCJN+dzbQGROWC1rvoo1zmLPxCIhkSM4OLrIVAL70jzSnWQxHd/djYIUYFSCaprp5zszZYyJonCQX5iOpJGoK429ZechJ5Nm1PCLT2wnGuD4exdsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by CH3PR11MB8701.namprd11.prod.outlook.com (2603:10b6:610:1c8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.27; Wed, 27 Dec
 2023 08:48:51 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::1fb7:4c3f:3dd2:a698]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::1fb7:4c3f:3dd2:a698%7]) with mapi id 15.20.7113.027; Wed, 27 Dec 2023
 08:48:51 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 5.0 (yocto-5.0_M1)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 5.0 (yocto-5.0_M1)
  Now Available
Thread-Index: Ado4n1Ch5oD14LY0Tw2o+9NU94VsaQ==
Date: Wed, 27 Dec 2023 08:48:50 +0000
Message-ID: <CH3PR11MB80937274009D4F91230655CCB99FA@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|CH3PR11MB8701:EE_
x-ms-office365-filtering-correlation-id: 7a67ce5e-c552-40e0-d981-08dc06b8a60f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2GSYTkY+apq83D4NCwZUCgG4y/3RJJkp64SXOgDWgCoHCsZZz6hBuO90E31fJSTSdAXw2IMrBFfifGVnbcNRxj/BKD7WNSJefeemzMGStcRgUB4L7kx7bScW+xFbHfBiuY12nwGN4tpG6cLmF4UGc9NLY1gdD9BErT9St1HC79OiTBkdxMkap+Y0VgcTcDBJNOUftFZQKkXB0I3YhihllnFHf3URQXclxF23J9B7QuNIqlJMIRLT7FxQYxAD4n7tMswJqKtKvCuELtmMKyiHw9DekDDAy0QLNz9hGJ+2D2ghxJAVxQMemUSyIvRYTieJDCcybBPlXWC5ufs9ucJIh/c+zfCVwG7cU3xh+0zovaWCCz44wHsw+6+v2EFjcVBMMmQt1uqmWzOm0nEar0I3AODTHHo+nVgO9m83eSLvDRj0X5W0CM0sVpNT51ZBmcHrnJcErGKss95gZyDtxV0JeF/g2fMF9ULAo3XaqFNyxYs8b7OzPhvFyn2+g+Hpihlqswu7AAOLqGJYr4Bikr8JV5XXKNTjMo5k8KPOKnVslXrZ4YPLzIvVqlMJBk9HGe0SM0Fo7vwwFP209v/qyaKx6bjVq9Cp0ws6xY+aCZldApU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(396003)(39860400002)(346002)(376002)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(71200400001)(26005)(9686003)(166002)(8676002)(110136005)(82960400001)(66556008)(66446008)(66476007)(316002)(64756008)(76116006)(66946007)(83380400001)(55016003)(7696005)(6506007)(38100700002)(86362001)(8936002)(52536014)(122000001)(478600001)(966005)(450100002)(9326002)(5660300002)(2906002)(33656002)(41300700001)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0pLQU54RnZZekFsMTl2WU8zSHRjMjVzaXdrSmEvT0xydlI5OVJGbzYxcVox?=
 =?utf-8?B?SjBrZjJ3eTBUSlFwVG5TdjlxQ2R6V1hFb29VTHJONFhJKzd5d2JKOG4rMXBH?=
 =?utf-8?B?bytyR1dveUl5R1UvR3BXSk9jMGtGc2lXSDUzNHJPMWVBVWZaSnduZjkrbGtJ?=
 =?utf-8?B?TFN0Nmp5eFlhQkFKazRnR09tdkhZN2ZZeS8vMTBzTHBiRStLckVHejAyYVQ4?=
 =?utf-8?B?OUhLQjFRckRzSDQ3azIwVW9rWHZ2UUpHSTJSSG1mbjNhMnArYy8yN0JoeVJv?=
 =?utf-8?B?VVlhTy9NRHFRbjd0UnhrZXp1NDA1Y1phbk1xY0R3TGw4MzgrdE5xRU45Q1FL?=
 =?utf-8?B?UHI2cWZ3bTN6K2hkMFNqT3RtVS9nSER0eXlqUjYyRGMrcjl4S093OGJSeEpQ?=
 =?utf-8?B?Z2F4dXB5V1ppUWpIRkZiY0o4d0pBbmVYNTVwdUhXYUZNQnlmZ2JKVnhsTzlD?=
 =?utf-8?B?cjY1b1R2VVVuUVpXYVUwZnQxSHFtb2xKMnpJZ08raHA1clJWVk8raEVGTkVC?=
 =?utf-8?B?bFMraTVUVmdpOElkVTNUb3lLWnRrNnFwRk1yb0RJMEhZM3lOc3FrTEEySVps?=
 =?utf-8?B?aDZyK1lUVEQvdnduYzhxLytFVzVSdVI5NVVETmxkZGhPSWlBcjliNkpvZE1U?=
 =?utf-8?B?ZE54bXY1MUxvOG5peFQxdjhneHVtY3FkNC9FblNybzFlaU02Qi9EbVJ5R1BL?=
 =?utf-8?B?MWFYdFo4K0F3bmh5Zy9jVFJTZUIxM0FVNm9LVktKZUhHdlU2cWVyZmlqdTlQ?=
 =?utf-8?B?dkgxbjhIWmpmY01IaDZWU0NOQTU3eTNGOEY0K2lrNlFOZlBydUt3MFhNM1pX?=
 =?utf-8?B?bW5UMEdacVdFd1BpeExQL0NHSFFINUtwK3RuOVdIYmV2c1BBRjdqZmlzYXFp?=
 =?utf-8?B?S1czZVVPK3lEazdSZ1FjcEc5MVFtQjNUbWtVMGxNcWxTSnNxRzQzVVNmK0NI?=
 =?utf-8?B?OTNwS3IyV1haMmxwUUJqZEo3c0V0R1RyTmc2ZkJ0eDRON3d2YVh2OWtCYkVR?=
 =?utf-8?B?eTYreTNTTlJCb1F1MXJmZTVzdjJ6OGhLUjVYUnUzNWpESUh5cnRhQndpYUZh?=
 =?utf-8?B?TTNlRUlHU3RJN2krWFdsbDVoWlU5Qks1T0ZlQVEvZTNQVUdVRHNndzVwR2h6?=
 =?utf-8?B?TXJKbmNTWDFWZkRVRmZhdTNxV1BoQ0E1NVo4NkVyWmF2eUFidU9uYkltTmtN?=
 =?utf-8?B?QjNaWDlmY2JlMmFnVXNZWkEyb3RRblFmUXZjYzhUZFpmdmVuVkU4MDd2dTJQ?=
 =?utf-8?B?RSt6VmFaQ3J4aFBoZkhvNUU2TEJRS0xoa3lXczU1MDhOYlo0eTdsQTVhc3Nh?=
 =?utf-8?B?Yjh6Q0JmeE9kamxJN1Y2bnJFTHQzRjhEUk5RSldrTHVvd3VNSjU0a1N4Nllq?=
 =?utf-8?B?UXNEb3VVSW11STY3TDZDSmZ1c3ZnWmFFRERLSWQvdTEwQVNRWXg0c3UrTDdG?=
 =?utf-8?B?WnRJRVRscFhNblp5Vk9aOUtxL1g5TU5vcUFqY0tlYlI2Q2NhUndra1Q0ODU3?=
 =?utf-8?B?YWJpeGJOcFZKOGQzRUdPN2xyYUNYalJTajU2ZGZVb1E3OXdUL2g5MlRuTHFO?=
 =?utf-8?B?Ty9IRVpsWUJIbHF2OEsxS3JGUm9MUm1xeUlzdnE1K3laNys0ZjhsaklaMHpw?=
 =?utf-8?B?NDlTK0c3RkJWQlFxRFFMNlBMUGRXb0M1SFBIQThLMG5VblR1QUQwaUl1eXM1?=
 =?utf-8?B?TEF0YW0rODNvT0swL1ZaUUtuVkhIZXBMa1JENmtXRDV2UGh2Z1NWM3FHSHEx?=
 =?utf-8?B?K1g5TlJqaUZwRTRicERFeExCN0Joa1QrU3d0WGgvd0NoUEhwUndwYWJFSzZl?=
 =?utf-8?B?YVlrSlVIbU12Um0rQzMrS2RFMmNGTDBPNUtnZVhkYkZLWk40NzVXZ20ySVd2?=
 =?utf-8?B?RGtEWnd3RVl2SUhRWVIrZFYwalpoYi9mMHp6TGV3TmFWNmdVUW85VGlueHRn?=
 =?utf-8?B?eGRXSUpyWWUwLzgwUEx6Vkt5NzBRc1pCdUhic0NiYTNIRWpxN2JiMHYwL1k4?=
 =?utf-8?B?TnRLMnFJUkwvSjRra3AwSHlYb2JSWUJRYlE0eW9GUHRybnlaWFJDVlA5TkN2?=
 =?utf-8?B?amE5cklSWFg3MjRxWFlGZUlTbjh1MG94RG9Cbml1UGNWeHpMdEhOWE1EMDFS?=
 =?utf-8?Q?ZUBJgN2cfGe6j0Qmoy+WAs/Uw?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB80937274009D4F91230655CCB99FACH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a67ce5e-c552-40e0-d981-08dc06b8a60f
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Dec 2023 08:48:50.9083
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rLzgD9QQigvh1stE3FBb/aJgrhUJ347HLbK2dzL773ANe7U6qVdjxDeTS91LYK+pGS1juHtqUWoRinaFzp1efQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8701
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Dec 2023 08:49:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62044

--_000_CH3PR11MB80937274009D4F91230655CCB99FACH3PR11MB8093namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCldlIGFyZSBwbGVhc2VkIHRvIGFubm91bmNlIHRoZSBmaXJzdCBtaWxlc3RvbmUgcmVs
ZWFzZSBmb3IgWW9jdG8gUHJvamVjdCA1LjAgKHlvY3RvLTUuMF9NMSkgaXMgbm93IGF2YWlsYWJs
ZSBmb3IgZG93bmxvYWQuDQoNCkRvd25sb2FkOg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJv
amVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjBfTTENCg0KYml0YmFr
ZTogODI5NWFjMWI2NjcyYzI1YmVlNTk1Y2ZmNmUwMDBiMmFmODE3ZjkwNA0KbWV0YS1hZ2w6IDI2
NmFjNTM3M2I0NDU4ZDdmY2I3OGIxZTg5NDhlYjJiMzNmMThiNWQNCm1ldGEtYXJtOiBlNmU3YWM0
ZDk5ZjEwM2QyNmEwZmZlZmQ2ZDBhNWQyZGVlZjViMTdjDQptZXRhLWF3czogNzkxNWU2YmFmZDg3
NmFiM2Q2NTRhMjY2MjlkYmY1MDE0NzljYWFlMA0KbWV0YS1pbnRlbDogNWNmZWZkOWE4ZmYxZjVh
MzUzNGMxYmE5ZDdkN2Y2OTcxZWQ1ZDU2Zg0KbWV0YS1taW5ndzogZTAxZDQ3ZDE4Mzk0NWNhZWFm
M2M1YzA4NjUzOWFmMGE5MjVkZGMzMg0KbWV0YS1vcGVuZW1iZWRkZWQ6IDBhMGVhODdiOGRkYTAx
YTI4ODdhNTI1Y2VmNzhlYjZjM2Y0YzJjMzINCm1ldGEtdmlydHVhbGl6YXRpb246IGNhYTE0YzYz
ZjE1OGZkZDEzMzgyY2NmMWZmNGUyMGE4YmE2YWQ2NjcNCm9lY29yZTogNmI3MjkwODhkY2UzMDJl
YjNhOTY3Y2I2ODM5ZjAwNDg4MDI1YmUwZQ0KcG9reTogMzMxMTIxNzhkMTY0ZGRkOWVmMGIxMTE1
YzI1NGFkNDM0MWVjM2FkMQ0KDQpGdWxsIFRlc3QgUmVwb3J0Og0KDQpodHRwOi8vZG93bmxvYWRz
LnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjBfTTEv
dGVzdHJlcG9ydC50eHQNCg0KS25vd24gSXNzdWU6DQoNClRoZXJlIHdlcmUgYSBudW1iZXIgb2Yg
aW50ZXJtaXR0ZW50IGZhaWx1cmVzIGVuY291bnRlcmVkIGR1cmluZyB0aGUgcmVsZWFzZSBidWls
ZHMgZm9yIHRoaXMgbWlsZXN0b25lLCBpbmNsdWRpbmcgb25lIGlzc3VlIGluIHRoZSByZXBvcnRz
IHJlbGF0ZWQgdG8gYSBrZXJuZWwgYWx0ZXJuYXRpdmVzIHJhY2UgaXNzdWUuIEEgZml4IGZvciB0
aGF0IGlzc3VlIGhhcyBiZWVuIG1lcmdlZCBidXQgdGhlIGNhdXNlcyBvZiBzb21lIG9mIHRoZSBv
dGhlciBpc3N1ZXMgcmVtYWluIGVsdXNpdmUuDQoNCg0KVGhhbmsgeW91Lg0KDQpDaGVlIFlhbmcN
CmNoZWUueWFuZy5sZWVAaW50ZWwuY29tPG1haWx0bzpjaGVlLnlhbmcubGVlQGludGVsLmNvbT4N
CllvY3RvIFByb2plY3QgQnVpbGQgYW5kIFJlbGVhc2UNCg==

--_000_CH3PR11MB80937274009D4F91230655CCB99FACH3PR11MB8093namp_
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
CWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJ
bXNvLWxpZ2F0dXJlczpzdGFuZGFyZGNvbnRleHR1YWw7fQ0KYTpsaW5rLCBzcGFuLk1zb0h5cGVy
bGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6IzA1NjNDMTsNCgl0ZXh0LWRl
Y29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4uRW1haWxTdHlsZTE3DQoJe21zby1zdHlsZS10eXBl
OnBlcnNvbmFsLWNvbXBvc2U7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJ
Y29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBv
cnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFnZSBXb3Jk
U2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJbWFyZ2luOjcyLjBwdCA5MC4wcHQg
NzIuMHB0IDkwLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30N
Ci0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6
ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBn
dGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2
OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0t
LT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLU1ZIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1
NEY3MiIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0
aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IaSw8YnI+DQo8YnI+DQo8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPldlIGFyZSBwbGVhc2VkIHRvIGFubm91bmNlIHRoZSBm
aXJzdCBtaWxlc3RvbmUgcmVsZWFzZSBmb3IgWW9jdG8gUHJvamVjdCA1LjAgKHlvY3RvLTUuMF9N
MSkgaXMgbm93IGF2YWlsYWJsZSBmb3IgZG93bmxvYWQuPG86cD48L286cD48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PkRvd25sb2FkOjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJz
cDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBocmVmPSJodHRwOi8vZG93bmxv
YWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by01LjBf
TTEiPmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxl
c3RvbmVzL3lvY3RvLTUuMF9NMTwvYT48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Yml0YmFrZTog
ODI5NWFjMWI2NjcyYzI1YmVlNTk1Y2ZmNmUwMDBiMmFmODE3ZjkwNDxvOnA+PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1hZ2w6IDI2NmFjNTM3M2I0NDU4ZDdmY2I3OGIxZTg5
NDhlYjJiMzNmMThiNWQ8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEt
YXJtOiBlNmU3YWM0ZDk5ZjEwM2QyNmEwZmZlZmQ2ZDBhNWQyZGVlZjViMTdjPG86cD48L286cD48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWF3czogNzkxNWU2YmFmZDg3NmFiM2Q2NTRh
MjY2MjlkYmY1MDE0NzljYWFlMDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
bWV0YS1pbnRlbDogNWNmZWZkOWE4ZmYxZjVhMzUzNGMxYmE5ZDdkN2Y2OTcxZWQ1ZDU2ZjxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1taW5ndzogZTAxZDQ3ZDE4Mzk0
NWNhZWFmM2M1YzA4NjUzOWFmMGE5MjVkZGMzMjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+bWV0YS1vcGVuZW1iZWRkZWQ6IDBhMGVhODdiOGRkYTAxYTI4ODdhNTI1Y2VmNzhl
YjZjM2Y0YzJjMzI8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtdmly
dHVhbGl6YXRpb246IGNhYTE0YzYzZjE1OGZkZDEzMzgyY2NmMWZmNGUyMGE4YmE2YWQ2Njc8bzpw
PjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm9lY29yZTogNmI3MjkwODhkY2UzMDJl
YjNhOTY3Y2I2ODM5ZjAwNDg4MDI1YmUwZTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+cG9reTogMzMxMTIxNzhkMTY0ZGRkOWVmMGIxMTE1YzI1NGFkNDM0MWVjM2FkMTxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5GdWxsIFRlc3QgUmVwb3J0OjxvOnA+PC9vOnA+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48YSBocmVmPSJodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMv
eW9jdG8vbWlsZXN0b25lcy95b2N0by01LjBfTTEvdGVzdHJlcG9ydC50eHQiPmh0dHA6Ly9kb3du
bG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTUu
MF9NMS90ZXN0cmVwb3J0LnR4dDwvYT48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxicj4NCktub3duIElzc3VlOjxicj4NCjxicj4NClRoZXJlIHdlcmUgYSBudW1iZXIgb2Yg
aW50ZXJtaXR0ZW50IGZhaWx1cmVzIGVuY291bnRlcmVkIGR1cmluZyB0aGUgcmVsZWFzZSBidWls
ZHMgZm9yIHRoaXMgbWlsZXN0b25lLCBpbmNsdWRpbmcgb25lIGlzc3VlIGluIHRoZSByZXBvcnRz
IHJlbGF0ZWQgdG8gYSBrZXJuZWwgYWx0ZXJuYXRpdmVzIHJhY2UgaXNzdWUuIEEgZml4IGZvciB0
aGF0IGlzc3VlIGhhcyBiZWVuIG1lcmdlZCBidXQgdGhlIGNhdXNlcyBvZiBzb21lIG9mIHRoZSBv
dGhlciBpc3N1ZXMNCiByZW1haW4gZWx1c2l2ZS48YnI+DQo8YnI+DQo8YnI+DQo8bzpwPjwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRoYW5rIHlvdS48bzpwPjwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+Q2hlZSBZYW5nPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBo
cmVmPSJtYWlsdG86Y2hlZS55YW5nLmxlZUBpbnRlbC5jb20iPmNoZWUueWFuZy5sZWVAaW50ZWwu
Y29tPC9hPjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+WW9jdG8gUHJvamVj
dCBCdWlsZCBhbmQgUmVsZWFzZTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0
bWw+DQo=

--_000_CH3PR11MB80937274009D4F91230655CCB99FACH3PR11MB8093namp_--

