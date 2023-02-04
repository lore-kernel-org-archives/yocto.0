Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23484C636CD
	for <webhook@archiver.kernel.org>; Sat,  4 Feb 2023 06:02:09 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web11.1386.1675490525262406072
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Feb 2023 22:02:05 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel header.b=NQ0KwMdT;
 spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1675490525; x=1707026525;
  h=from:to:subject:date:message-id:mime-version;
  bh=SRU+AoLOk768sh9DFNH56XDQfmBIq2zF/oJBjUWJhYk=;
  b=NQ0KwMdTHcq1AMm+SWjGnuvIAeKm10XHW/wdsZTzMK7K7j4Ow/L4zi1w
   J4ExPVUmjGXPsFi+GbF0QssJ5rEfCGp/OTMrwQGa1m9HKsjMMuvkPKhrG
   0KJa6BVlGsRBLEw46ibs5s9b5CMPg/99JaAHszr2LCLXnxhNu80zBoDwD
   7YRUykAK8DDMEGLiLudBWLF3zLjW1bLiwLgpq3i7Pz4U5JBCISzFSkzSK
   sT2/ZdN61qdlPPse9Pflot0+8o6kfIoKavZ4N3jZXTphLSe0gkkljYEUO
   LYN18nAV/I6reiHLUoDJJEwyrVWROGHCB18OhUTecBW0LCAe1GfSwhsme
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="356266888"
X-IronPort-AV: E=Sophos;i="5.97,272,1669104000"; 
   d="scan'208,217";a="356266888"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2023 22:02:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="734590392"
X-IronPort-AV: E=Sophos;i="5.97,272,1669104000"; 
   d="scan'208,217";a="734590392"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga004.fm.intel.com with ESMTP; 03 Feb 2023 22:02:04 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 22:02:04 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 22:02:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 3 Feb 2023 22:02:03 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 3 Feb 2023 22:02:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L6DMWqscYdO8zhC5DktAMYzcMdKTeK1UN9gexS2XDloA4e9EbWErjtoiDl+peWlw2/nDg5aOGGXERLcJ9owQLvHIEvbxkyxKGaVOuhgHw6AJB0v5ioQP2T3WW7hcI2BchFS8nRvU/mrRGQ8gi9TknVShJD/S5kX1j0pEa9eoKloZmK7Cg+swKg156LHGf6Upef3mtjd2p7iptRGFVr1LSddNkTdLcLDBy9vY/W7qLLcEf50yN68srHvONXvAbDz04sKqM7JY6P9UogFsOwtdSWJNiaDVtZ2jDnYDP3rnrs2JQwFXtjytkGIxKs6NoH4YcvzMtqHXia68qey2tL9N7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SRU+AoLOk768sh9DFNH56XDQfmBIq2zF/oJBjUWJhYk=;
 b=dcvTHFoUkTtZgoF9a89HcpgwKq9qk45LE7LpQS0eXcox1f6w9+BegC8uMMCKb+RyhyuopPjm9d77XRd/Pt5psHaLNwY8znecL8dxfu8i85K5SYo5WNRBaxIRrYaAe28cj5HjPyGD0ubdtDc2/A9qG2jm2o/22qMkhJRJRINE7S/+e9I00G1Pk+kD4FKX5M0bwwZRNxEltxbAci0yKy4+8TkN7Jizl8M05K3p3cwUUSGZLEAO1vyFi41Se7nGjqPWuI80YQy9HcgaliXW6/lE7U7daLVQ9hglDkfIDmneP+ccBIcp5xHYdwWIvr4FLb4qiXq94P3f3p0g/9aCrpV+JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.24; Sat, 4 Feb
 2023 06:01:55 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::4b28:81c2:96f8:acc9]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::4b28:81c2:96f8:acc9%5]) with mapi id 15.20.6064.032; Sat, 4 Feb 2023
 06:01:55 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT]  Milestone 2 for Yocto Project 4.2 (yocto-4.2_M2)  Now
 Available
Thread-Topic: [ANNOUNCEMENT]  Milestone 2 for Yocto Project 4.2 (yocto-4.2_M2)
  Now Available
Thread-Index: Adk4WdNql13DUwbORkatbykfLdNWqQ==
Date: Sat, 4 Feb 2023 06:01:55 +0000
Message-ID: <DM5PR1101MB2361275554E65B61AE0DBAD0B9D49@DM5PR1101MB2361.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR1101MB2361:EE_|SN7PR11MB6947:EE_
x-ms-office365-filtering-correlation-id: 8f5a0ba9-1f54-499e-86c9-08db0675519f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wIVInB1m0vKrfnzLA3Kou2tz16qDvVDmw1nLRk96M1r9cvLTJV2MOf8kpGGSQNpIvJF3DCg33e8rbgpobKCWXV8QuD9QRxE620ZXmoOraKl+Z3i02gPXkownQWam0QvWyKX+runS+vrcS4dqG1paZyq1gqxUkxMFr7qhmHI8tD3fuXMHa/etx+V3gpwN2wPEhnVucpoFT7jOY9IbkQkUlw533UoU9TmsR6j/ZVaV+qjBXzKs3zQH97xb4izBSZUOBCp5Yq84AdoamLUoo3dQ89uFLfArSORtf6+Xf4Oo2tNnEUZPxmrMoQ4LA4SidAHmGoEeFY+iJJw3WG4WhYSo83HY3BKk0S4rW3HoitstXJMqPZpaBefCFUN+d7dLRXJHkLNwF3NabKpdE3TL9FHj3PDSe7dNGUNGkMEbSN0qSaABu9gwh+PDW76RgrEAEbtNBhHQ92tuP6KfMCnl5yGpEvHDRWmWmTJ5d7WWJ1VdIl7Ilqm8c2npNFpDFNtxV8NhPzweDwb3IGvml37MBCCpcn7ZLHjT+PZBwVxFKKOgccC2xsRQxs30fatSoTUoAnMNDJ7DCtbpp0ZNTByBGgw33wqPCEt8iCeIpnQP7lZF4FWaEHYus1xvf+PsLpjET+/Ehk6eLZO3tbK6122kxGWbt3hxGSyQ3L53dPNxjYGrq0DWbV+vAa0CDUze1tBlKxrq4JGFlYTqNbHx2h4Xu2kycN1kkxAC2uBOdKMu2JBJpXvPu8QEdQ/c8/WrzMbjH5keoZXLdaU0zZFN57pRA32vug==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(376002)(346002)(136003)(396003)(366004)(39860400002)(451199018)(71200400001)(66556008)(66476007)(66446008)(478600001)(64756008)(7696005)(55016003)(86362001)(450100002)(76116006)(66946007)(8936002)(9326002)(41300700001)(8676002)(83380400001)(2906002)(6506007)(186003)(9686003)(38070700005)(38100700002)(166002)(5660300002)(122000001)(82960400001)(33656002)(966005)(52536014)(110136005)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bXlBRVp4aUlWcXNJeWFFclBlWFZ1NkpidnpHTFZVYmF3THVxeEhFWld5M1Zl?=
 =?utf-8?B?aDhoRmoxVVlnUnNXdllpT290aEdFdlhGVk82aXNXR3R2T3FYWHdMcVpzWUYz?=
 =?utf-8?B?MXhHcGMvM2FaTU1EU2txUkhNNTN4TjhNeTVDTUxid0Q2emZWRUMxQ2ZBZVVt?=
 =?utf-8?B?NDFWcTNsTDJxRlZVa21DZ21LSmFidnBTMTl6b2ZFbHNFZkpyN1RSZTlRdlZC?=
 =?utf-8?B?WThMSzJiaUtRVDRmTmlhcFcxemNzWlV0Z3VRSXNmN1RkbmxKZXk3ZHpsVDlG?=
 =?utf-8?B?NVJ3NkwvWi83cEVjb1g1eVNybTFvRHRrRFlubm5lcXZwZU1LT1VmMWRVTlZS?=
 =?utf-8?B?b0xKdlUxODBlY3YyOTJGazRVNXMyYTNkRXZYZURxdEdja3JGM2dTVU9Rb0ZN?=
 =?utf-8?B?alpUOWNuQ1BDQmhMOHEvUU1McVhMRCtXbUNBaFR6RzBrd280enZ2MWQ3d3B3?=
 =?utf-8?B?NmliMVhzUFQ3RkJ0ZGVCSDEwaVBLY3BSZUFBZTNWR2pxQlZRZEJjQTUwSVht?=
 =?utf-8?B?OFJ6bDh5eGgwdEM3V2hEa1hLaWs4THhPRm9CMXltc0lEdXlFVFB5RWdCOGFU?=
 =?utf-8?B?QVBQOGMzYlloMUFsQ0tEMGJMMGtWMzBYL25haXJhc0dNdlErY1JDaGdkZ3dq?=
 =?utf-8?B?dDJWRHYzdlhZWWg2TmZoamtLMWpTdHZTZzFHdXoraWtuWTk5V3NzUXRWeHFw?=
 =?utf-8?B?K0hIelF4YlJvU0dNWEdRR1ZXMTVVL0NUSDByWHFkSWhXUFVRZ1F1dXhoR2lC?=
 =?utf-8?B?TnRONzBkL1dFZWtjb1dQSTN1bG05ZXVPSUpkQzRVaitnNTdXWjFBcjI4UXZE?=
 =?utf-8?B?ekRrSHIyU0JaalBZNUVZVjdqTXBNVkZpMjFKaUJlVEJKaUl5YW42QjVjRTlx?=
 =?utf-8?B?Z1BLeTh3MWZGaGxGNzRBbEJXUW5kLzMyRVlQc3djYUI4Mm42TmpvOUkyNlpS?=
 =?utf-8?B?VWlKeFU5NmU5L2s0TEdtMTVNUnV6Q00wd0tGSUtLQjRTTklvV3h1UFhuMjly?=
 =?utf-8?B?eEp2elRNU2VVRGdqUk9idzhadHZJeVdqYkZOcGxpbmxuckgzN2RNMGdNclVi?=
 =?utf-8?B?RlYyUUxBZ05WTnNoTHc2QnVnaU1lbHR0MkRWZERMdmlZNWcrc3BUUE9SY014?=
 =?utf-8?B?Ri9qVUhEZlRQU2pvRitYRnJESVc5MU1sS3pWWlJIZ1REN3FxaG5seGp5WnVF?=
 =?utf-8?B?MU1aUkVLR2JxaWcyc2xmMkhtVGZ3TlNLTldiRHg4UTFXb1lFblJKTWM0SG1I?=
 =?utf-8?B?dVozU0U3T2JtcFBXLzlKUVVHdm5FMkJMQzFnb0oxeHd3S1pXeFpqUDdFUisx?=
 =?utf-8?B?dmYxNnNrQXVZLzRZeS80cDJXd2JnbC9iSFRxdlM4NWUrNmFUcUxoU3ZIZ09u?=
 =?utf-8?B?ZkwyL1ZpSjNkSS9GcDNOMzBTTnZPVmdPNFNuOGxVQS82R3MxYkZpOExleFNX?=
 =?utf-8?B?YmtlM01MU3ZGSE02OE9uclNvalZwT1NKckVVZytJMGlDL3ZHS2FzT1hmUFJJ?=
 =?utf-8?B?bDRxRGkyMGFOODBJT081TjJxbU40NDRJYkUvOEhtT0NjTHZEOHg5YTY3RkRC?=
 =?utf-8?B?Sko3OFR6MEJZZ0VxbnQyMXZlbURUdHlGNHhjTUl3OTFjMUdEaUQ3MHp0VVlI?=
 =?utf-8?B?eS9jQzBhYUt5VnhSQXA5TnRNRkVNcmUxZlNSemxOaDlHY0FreCtTMGJsSllv?=
 =?utf-8?B?OGtEVlZQc2RLcUd6ZnM4OWovTG1QY3U0NmlJYUVMNklBaW5MTDFVL1FXT3h0?=
 =?utf-8?B?eWpKK1hCeGdRTWg2TDF0Y3g4SFNBeXhoMnA2a3RHbmpZOENpL2NPVG9ZRXcv?=
 =?utf-8?B?NG1hbnBtclFkTFpOYnJzZEdTVE8vWUIrbDdIVkdVNTNwZUxCR0V4aUFqZGdt?=
 =?utf-8?B?Q3JlR3J4SlZiYWNFREw2eGVGc1MyWkd0ZmJJYjFJd2kvTlVncmRNZnhTL0lu?=
 =?utf-8?B?Z29QS2E4QzJrU01WUW9WSlgvK0hMeWNvM01BOENuNElqVmF1Y1lNY0c1WFVo?=
 =?utf-8?B?WDJEOEE2RjV5bndiRG1wcytVOTZhZFY2djFyaTZuS0lKdUQ3OUY3RkQzUCt6?=
 =?utf-8?B?c01iRjJmZ0dlenAxdVZBQ3NaRHgwRDJaa0k2Z0lUdExVM0RtajhadzYrWk9k?=
 =?utf-8?B?OVBpNTJ2L2xxYmZJT1V1YzFab20rVGJ2NDdYc3ZtMjFJSGNJM09Cb0xpVGsr?=
 =?utf-8?Q?0ChJFuCmvWSfpjzeOM0s6xhioQQ9h1zZ9+EmxfJQybbM?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR1101MB2361275554E65B61AE0DBAD0B9D49DM5PR1101MB2361_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8f5a0ba9-1f54-499e-86c9-08db0675519f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2023 06:01:55.3250
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oV7hBhci/0u1Gq2+X0H/jj6Blcn4uffx997Knu0HXPSRQEsI7lzGjYaFkH/nEfXYwKu9S36Cr6ZJ/dnlp2EfWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Feb 2023 06:02:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59162

--_000_DM5PR1101MB2361275554E65B61AE0DBAD0B9D49DM5PR1101MB2361_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8NCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHNlY29uZCBtaWxlc3RvbmUg
cmVsZWFzZSBmb3IgWW9jdG8gUHJvamVjdCA0LjIgKHlvY3RvLTQuMl9NMikgaXMgbm93IGF2YWls
YWJsZSBmb3IgZG93bmxvYWQuDQoNCkRvd25sb2FkOg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3Rv
cHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjJfTTINCg0KYml0
YmFrZTogYzE5MDM1ZThlNzFjNDE5YzU2ODhhODZiZmM5Yzk0NmM5NmY2MzhlOA0KbWV0YS1hZ2w6
IDA5MTM1MTY0YTIxYTIxNmM2ZTNlNzVkN2RlY2NlODk2YjkyOTYyZjANCm1ldGEtYXJtOiBkODM4
M2MxMWYzZjgyMjBkMmI5ODllYzczNjA0ZTVmYWZmOTg4Mjk5DQptZXRhLWF3czogN2I0ZjU0YjNl
MWY2NzVlMjAzM2Y2YTU4OWFjNTE5ZTQ0ZTYyYjU4Yg0KbWV0YS1pbnRlbDogYjNjN2QzZWU0NGU0
YWI3MWRmNDRiNWJlM2M0OGQyZjQ3ZDg5ZDhhMA0KbWV0YS1taW5ndzogMjUwNjE3ZmZhNTI0YzA4
MmI4NDg0ODczNTliOWQwNDU3MDNkNTljMg0KbWV0YS1vcGVuZW1iZWRkZWQ6IGNlY2VmZmNiMWUz
ZWY0ZjliYTc3MDhmNzdjMjdlMzBhN2FlYTYxZTUNCm1ldGEtdmlydHVhbGl6YXRpb246IDMxOTU0
NDcxNjA1YWUzYjQxNjI3YTBhYjdiMGRjZmU4YzU4NTFiZDcNCm9lY29yZTogNDkzZjJkMTYzNzE4
ZDc4NTYwYTJiM2FkNWQzYzBmYjM0Y2FhZThjMA0KcG9reTogNWUyNDllYzg1NTUxNzc2NWY0Yjk5
ZTgwMzljYjg4OGZmYTA5YzIxMQ0KDQpGdWxsIFRlc3QgUmVwb3J0Og0KDQpodHRwOi8vZG93bmxv
YWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjJf
TTIvdGVzdHJlcG9ydC50eHQNCg0KS25vd24gSXNzdWU6DQoNClRoZXJlIGlzIHJlcHJvZHVjaWJp
bGl0eSBpc3N1ZSBpbiB0aGlzIG1pbGVzdG9uZSByZWxlYXNlIGJ1aWxkIHdoZXJlIGtlcm5lbC1k
ZXZzcmMgYW5kIHBlcmYgb25seSByZXByb2R1Y2UgY29ycmVjdGx5IG9uIHRoZSBzYW1lIGhvc3Qu
IFRoaXMgd2FzIGludHJvZHVjZWQgd2l0aCB0aGUgNi4xIGtlcm5lbCBhbmQgdGhlcmUgYXJlIGZp
eGVzIGluIG1hc3RlciBmb3IgdGhlIGtlcm5lbC1kZXZzcmMgaG9zdG5hbWUgaXNzdWUuIFRoZSBw
ZXJmIGlzc3VlIGlzIHN0aWxsIGJlaW5nIHJlc29sdmVkIGJ1dCB3aWxsIGJlIGZpeGVkIGJlZm9y
ZSBmaW5hbCByZWxlYXNlIG9mIDQuMi4NCg0KDQpUaGFuayB5b3UuDQoNCkNoZWUgWWFuZw0KY2hl
ZS55YW5nLmxlZUBpbnRlbC5jb208bWFpbHRvOmNoZWUueWFuZy5sZWVAaW50ZWwuY29tPg0KWW9j
dG8gUHJvamVjdCBCdWlsZCBhbmQgUmVsZWFzZQ0K

--_000_DM5PR1101MB2361275554E65B61AE0DBAD0B9D49DM5PR1101MB2361_
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
b3I6IzA1NjNDMTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnAuTXNvUGxhaW5UZXh0
LCBsaS5Nc29QbGFpblRleHQsIGRpdi5Nc29QbGFpblRleHQNCgl7bXNvLXN0eWxlLXByaW9yaXR5
Ojk5Ow0KCW1zby1zdHlsZS1saW5rOiJQbGFpbiBUZXh0IENoYXIiOw0KCW1hcmdpbjowY207DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpz
cGFuLkVtYWlsU3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZv
bnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0Kc3Bh
bi5QbGFpblRleHRDaGFyDQoJe21zby1zdHlsZS1uYW1lOiJQbGFpbiBUZXh0IENoYXIiOw0KCW1z
by1zdHlsZS1wcmlvcml0eTo5OTsNCgltc28tc3R5bGUtbGluazoiUGxhaW4gVGV4dCI7DQoJZm9u
dC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0
eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7
fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0KCW1hcmdpbjo3
Mi4wcHQgOTAuMHB0IDcyLjBwdCA5MC4wcHQ7fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldv
cmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hh
cGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlm
XS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQi
Pg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94
bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1NWSIgbGluaz0iIzA1NjND
MSIgdmxpbms9IiM5NTRGNzIiIHN0eWxlPSJ3b3JkLXdyYXA6YnJlYWstd29yZCI+DQo8ZGl2IGNs
YXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGVsbG88YnI+DQo8YnI+
DQo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPldlIGFyZSBwbGVhc2VkIHRv
IGFubm91bmNlIHRoZSBzZWNvbmQgbWlsZXN0b25lIHJlbGVhc2UgZm9yIFlvY3RvIFByb2plY3Qg
NC4yICh5b2N0by00LjJfTTIpIGlzIG5vdyBhdmFpbGFibGUgZm9yIGRvd25sb2FkLjxvOnA+PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj5Eb3dubG9hZDo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJl
Zj0iaHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVz
dG9uZXMveW9jdG8tNC4yX00yIj5odHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVs
ZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjJfTTI8L2E+PG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPmJpdGJha2U6IGMxOTAzNWU4ZTcxYzQxOWM1Njg4YTg2YmZjOWM5NDZjOTZmNjM4ZTg8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtYWdsOiAwOTEzNTE2NGEy
MWEyMTZjNmUzZTc1ZDdkZWNjZTg5NmI5Mjk2MmYwPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj5tZXRhLWFybTogZDgzODNjMTFmM2Y4MjIwZDJiOTg5ZWM3MzYwNGU1ZmFmZjk4
ODI5OTxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1hd3M6IDdiNGY1
NGIzZTFmNjc1ZTIwMzNmNmE1ODlhYzUxOWU0NGU2MmI1OGI8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPm1ldGEtaW50ZWw6IGIzYzdkM2VlNDRlNGFiNzFkZjQ0YjViZTNjNDhk
MmY0N2Q4OWQ4YTA8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtbWlu
Z3c6IDI1MDYxN2ZmYTUyNGMwODJiODQ4NDg3MzU5YjlkMDQ1NzAzZDU5YzI8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtb3BlbmVtYmVkZGVkOiBjZWNlZmZjYjFlM2Vm
NGY5YmE3NzA4Zjc3YzI3ZTMwYTdhZWE2MWU1PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5tZXRhLXZpcnR1YWxpemF0aW9uOiAzMTk1NDQ3MTYwNWFlM2I0MTYyN2EwYWI3YjBk
Y2ZlOGM1ODUxYmQ3PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5vZWNvcmU6
IDQ5M2YyZDE2MzcxOGQ3ODU2MGEyYjNhZDVkM2MwZmIzNGNhYWU4YzA8bzpwPjwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPnBva3k6IDVlMjQ5ZWM4NTU1MTc3NjVmNGI5OWU4MDM5Y2I4
ODhmZmEwOWMyMTE8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RnVsbCBUZXN0IFJlcG9ydDo8bzpw
PjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fkcy55b2N0b3Byb2pl
Y3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4yX00yL3Rlc3RyZXBvcnQu
dHh0Ij5odHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWls
ZXN0b25lcy95b2N0by00LjJfTTIvdGVzdHJlcG9ydC50eHQ8L2E+PG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvUGxhaW5UZXh0Ij48YnI+DQpLbm93biBJc3N1ZTo8bzpwPjwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29QbGFpblRleHQiPjxicj4NClRoZXJlIGlzIHJlcHJvZHVjaWJpbGl0eSBp
c3N1ZSBpbiB0aGlzIG1pbGVzdG9uZSByZWxlYXNlIGJ1aWxkIHdoZXJlIGtlcm5lbC1kZXZzcmMg
YW5kIHBlcmYgb25seSByZXByb2R1Y2UgY29ycmVjdGx5IG9uIHRoZSBzYW1lIGhvc3QuIFRoaXMg
d2FzIGludHJvZHVjZWQgd2l0aCB0aGUgNi4xIGtlcm5lbCBhbmQgdGhlcmUgYXJlIGZpeGVzIGlu
IG1hc3RlciBmb3IgdGhlIGtlcm5lbC1kZXZzcmMgaG9zdG5hbWUgaXNzdWUuIFRoZSBwZXJmIGlz
c3VlDQogaXMgc3RpbGwgYmVpbmcgcmVzb2x2ZWQgYnV0IHdpbGwgYmUgZml4ZWQgYmVmb3JlIGZp
bmFsIHJlbGVhc2Ugb2YgNC4yLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PGJyPg0KPGJyPg0KPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGFuayB5
b3UuPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkNoZWUgWWFuZzxvOnA+PC9vOnA+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0ibWFpbHRvOmNoZWUueWFuZy5sZWVAaW50ZWwuY29t
Ij5jaGVlLnlhbmcubGVlQGludGVsLmNvbTwvYT48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPllvY3RvIFByb2plY3QgQnVpbGQgYW5kIFJlbGVhc2U8bzpwPjwvbzpwPjwvcD4N
CjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_DM5PR1101MB2361275554E65B61AE0DBAD0B9D49DM5PR1101MB2361_--

