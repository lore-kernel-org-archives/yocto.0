Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530F7C001DF
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 13:54:50 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web11.61898.1691502885917896169
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 06:54:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=I+EZzNdJ;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1691502885; x=1723038885;
  h=from:to:subject:date:message-id:mime-version;
  bh=kbDixyTo+++FyWigs77Slx6N5aReakl1qPlhTYb9taE=;
  b=I+EZzNdJ5oPR+6Ldp8pamOLkU4YOQmb1carZW7GQTOfkO2mggEjOdtd5
   dttiexhD9NM0kFEHefrf4iwc4eDu6DO4Z5FeiKrpecIzF+YtU5Wqonana
   a/nlQk02bNBCFXHMhnDYGtgFUDzZVnWyrzzmfPww/wUIKfFI24Ke4yXtm
   T40k2dXx0zDJ0pcG25gy6TAIJLCtmZcXlLiVRykwKwH8Q+o35eamWHLZL
   68jYOW9hjlRUyJYuIy2g3aNPTeS9yEAEJ30J73IKq7SprEJrCZ3BhhByG
   7V4L39WE8JgXCVrNU6NOP9gmdlEWFihfOlbFKWtn7JLP75uvctUnqLX3f
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="434678842"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; 
   d="scan'208,217";a="434678842"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Aug 2023 06:54:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="977870953"
X-IronPort-AV: E=Sophos;i="6.01,156,1684825200"; 
   d="scan'208,217";a="977870953"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga006.fm.intel.com with ESMTP; 08 Aug 2023 06:54:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 06:54:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 06:54:44 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 06:54:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PcwAn+dwO+ZbuYFF+pZ2rztBnOUfbrcyFyv9pSy5U8P/EdcSJpt3g+/MT4a/V9moC0NPM+gFRTeND/P7whLkv50Ceu8gI20OzEpvI33KcThBil37rRIdaB5+JJrk3WLAx2UVDhFCp419KRDmWUS/aklMESDiyH7+IiD5MoVEnF3lq5fzrdDhXRWlixoxLEMEn5xWXbUid/JPnxS+CxdszBWuISyO9t1syr2frCF45mmsSZtwWt/E4tkx7SZ8Ms91fNLOwhzg6NJ8UhKpt82YyI3EVjgn/vle1CVC3l5PySqzktGscUQQ8YOHVPrRlyr+Ezhc+x2U5T77bOo35OggXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kbDixyTo+++FyWigs77Slx6N5aReakl1qPlhTYb9taE=;
 b=PYKxJDp6Z9Nrx4+TqsRn42+90x71x0xQGKBZNjr48LcNzLVQjvc+oaKux2wluwUVed8cm8M5lyNpthe0FLWNOCzVMuq9HSeyiVzAhrZ1WAe+lG+dOiK02P8GLzvEX3c8CSzotJKER9t2UlB+ljJfev88+t0PRTrqpuv/wHZm61iUKW48/Mae+4F4ICfo8sOITAAReM66jhvZE45ps7tbOpBtsem1q5bJmDp6UfpPDG//6+IboynKs+EO77dfAZdmlp02XglIOJiC6piIXMUBpPPKSobDAxGLO+hWaBbEAGRltghn1EVxroBp0WDS7heY0LtjQ92PNqYPZagjJcniXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8093.namprd11.prod.outlook.com (2603:10b6:610:139::10)
 by DS7PR11MB6246.namprd11.prod.outlook.com (2603:10b6:8:99::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Tue, 8 Aug
 2023 13:54:43 +0000
Received: from CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::2245:151d:2cf4:c5f9]) by CH3PR11MB8093.namprd11.prod.outlook.com
 ([fe80::2245:151d:2cf4:c5f9%4]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 13:54:42 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 2 for Yocto Project 4.3 (yocto-4.3_M2)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 2 for Yocto Project 4.3 (yocto-4.3_M2)
  Now Available
Thread-Index: AdnJ/z2GTm6gnfcvTweE93lexX4GwQ==
Date: Tue, 8 Aug 2023 13:54:42 +0000
Message-ID: <CH3PR11MB809333E88509E4DA15FA5930B90DA@CH3PR11MB8093.namprd11.prod.outlook.com>
Accept-Language: en-SG, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8093:EE_|DS7PR11MB6246:EE_
x-ms-office365-filtering-correlation-id: cd8cc3d0-da34-4add-19c0-08db98170400
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +9MK58mn+7GJVN4pKHuIa/jnZ+qn7X6dFEQMEe+skA7yEjBnxWYD1w01md4bVQ3jIvU31A/+c+399lq8Oic5tlRC25d5da9es5f/dN9E4tLMPiTz7+rDmu2r6cDD2iEHTcwgRRJ9EjMevRwsEE7cPrEPmDkFCYDryy6Y6ANlwk+Bio/iJECQHrrLowqLR4lKmkfPw3jinf05YZSDpfKK2jeV95r6UnqVNpDO04Ao1iO/jMe65OT3rsTTBqxnK1IZBryZqIKUi7khbrNpZBajIBmO1x106gntmFeaNMwFBrQQxcVjEuq78apFLv7mXOY0gigS/JvHJzUTMMnFkyuqaDUvZMkI0ZYPhHzcLxb3txwuQJWK+9IKhu+1oRTiiKLCekOl+SrWMPJA7LmzVJm0FojcZreb8fZ2HYflzbvpr4wvL4cCQbmkSywk+doBW/KbicsjWd+HIGm3Iaw5tmvZYJSmIXo/whQojLW/ZI6wSl0Azp2e85q4ehPN5NhuY91QmvzfaXV1BvZpgMRc+xGwriCv25pslO7R9+lujI/rIiR0ghPyXC0f5T9irKe8dNag5ocXjvFI+Rhuc197+YFLHr7a7kECiUawq46kcgX1HaI=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH3PR11MB8093.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(136003)(366004)(346002)(39860400002)(376002)(451199021)(186006)(1800799003)(83380400001)(316002)(55016003)(66446008)(66946007)(41300700001)(76116006)(8936002)(66556008)(64756008)(6506007)(38100700002)(33656002)(9326002)(66476007)(52536014)(7696005)(5660300002)(71200400001)(38070700005)(8676002)(9686003)(966005)(450100002)(110136005)(478600001)(86362001)(166002)(122000001)(82960400001)(4744005)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q1VIYk0yTGM4NVBzdHhBMitqaHF4S0ovOGRZTS8rTEV5TElweUp2amEwVGJF?=
 =?utf-8?B?NkRiZ1o0SVR3SXJ0YWJFZExvWmRuek55VzcrVTMwbGxIOGthSWZ0SUxzZFVl?=
 =?utf-8?B?Lzc4TlJwbkFVeitRbWNQbVA4QXNOUmIxdDlVOTRqRWQ0N290UjB4Nyt3TWl5?=
 =?utf-8?B?aHVlQjNsKzBXMmpISVhnV0p1emhSakZ0eW9qWEpDTGhXRENid1JvYkxCemJW?=
 =?utf-8?B?UnM3djZWalpTVjNtMWQzd3kwTVU5UEd4VHJmeEgvRkZwd1NDS1FheEZWTmRD?=
 =?utf-8?B?eWdVRGtWckhsL0FTajNxbVpCK0dBOERvOGdiK3hxQUZ6RXh5ZGlwNStLMjlI?=
 =?utf-8?B?RmpKdHdnMUhpZllMdEFaTm1OK2VXQmhCcGZIZGZXMHpWeU9GZVdncTQwMW9x?=
 =?utf-8?B?eG1pRjZWSHB3aU5panhsVWNOcDFpdGk5NXBuSzhBenpDYWNNUUVVTW5mSnBh?=
 =?utf-8?B?eHhkT05nNnhZTDdCMHpkcjIwNXlXVHBuUkVCTElDN2F1b05iZVR6S2l2WTFk?=
 =?utf-8?B?aFJDbGJ4aDlBeU1IN1ArbjZFTC9YR3M1S1kwWUZoaWF4MU4zTFBZMlJ6czZo?=
 =?utf-8?B?YlNxSUgxWHc2S0tDSmRSN2drV09ER0plcm5WZzRBRkovbjE5WmJneS9OWmhX?=
 =?utf-8?B?SVorNXI2VDA5VmNYdkNrNzBXMUpzNFh3YjdnR0tXZUN4SGdYajlqR3ZGd09t?=
 =?utf-8?B?OTZndUlpTHRDZDY2TXpJSUFIRERZa3BZZ2tna1JiMmExVG9YUWc1T2hVOGU5?=
 =?utf-8?B?ZExWTXRmbVl3ZWc5RFYxdkRyeVdvY0JoK3RTbWxZdlhwMWdjTjhtOWhEYS9J?=
 =?utf-8?B?SzRTdEZpMW0rbjlmZ3p5ZDJxVURKMVNLa2k5dDZUaExGcUt5QzNWZ0FBZXBj?=
 =?utf-8?B?d00wQnJ5ZUd4OSs3eE0wVGVtL28yTklvZW9MWUhWM0VuZWp0cnU2anAyVW1Y?=
 =?utf-8?B?T3dzazIvN1U2M3R4dDh1aUpaNFRZS3NjNEMvUGZwZlBieUp4bHJUVWdtTXB5?=
 =?utf-8?B?NzZnbUloQWs2MkVCNkVWY05rdndmb0ZIamtpRlR1N0c3bnNGeGNPSmI4RVJE?=
 =?utf-8?B?blZTWk1PV2UraEVPYk9qU09iK0xGQjU2VWpCSm9yTTNiYlBwSHQ1S1JDY1Q5?=
 =?utf-8?B?amp0QTlqemcyUVl5YW55RWtQa1JYWnBJUGoxcTcvQnV4SDJNNHdPczVrQjZC?=
 =?utf-8?B?bVgvbmFLbC9TbkpHNm1NWnJxcEpZRCtoNjI2Qkh4amc3d0VHa25wWjBQNmFo?=
 =?utf-8?B?aVRRTnNvZS93MnhsZEorM2syQ001SzQwYTZKSEI0SEl6eFc5L1djSEJ4dlhY?=
 =?utf-8?B?SVJDVWE1R1k1dEt0Q2t3MG5Mc1VhRzBtNmIvemhvNllDQnZ1NThhVE9VZFpr?=
 =?utf-8?B?N1J1Ymp5K0RVVjA1eFZTQ1g3NG1xRk5NYVdaY1pVaDhMK29LRmNQUTBIZGI5?=
 =?utf-8?B?ZjhJT0srcHRZLzhHcmZPbXVrT0swNlFzcmpzV3dKTmFlTXp1cW1KSkhDdDk1?=
 =?utf-8?B?ZXFUOFpzdm1TaDZxT2JXSkpGRE5xMHI5dWJvdENhaG9vZDFnMFA5MVZvNmpx?=
 =?utf-8?B?WXE4aURYSEowYmxtSEJ4aU45YmFIREdwTjZ4elBTVHJJWmRXZDIzcFo5VVZh?=
 =?utf-8?B?WXNsOXFvNmZoYzBGLzRDSDZXZS9oNUVMcW9ud0h0VjJhM2J1bml0b1MyQmR1?=
 =?utf-8?B?TWFNTFFEd2tkVzNmWjQ0cU16UTZzMnE5TnNLcWxFMFh3UFk2WThXRzduQkQ0?=
 =?utf-8?B?RCt2dlQzQzd0TXhrNDZPdE41T3hNVzd2ZFhXektGVG9VQ0h5TnBVMkV0dEwy?=
 =?utf-8?B?U2J5QTg0NVlMempma3VCenRpbjF2WW5PbEZMVGI2SlZVZEFBRk1DdUtqeFFY?=
 =?utf-8?B?SCtOemxpRkRNWXhpYjVpN3ByQ2tjcm1pODR3Q2dtT3NJVE8zZUxpZEJNS2tN?=
 =?utf-8?B?NjJvZWNJUkNuUGszNzF1VlJSb0o0NW9hTnFuMDdndzA1anNuMlRLV2o3aGFL?=
 =?utf-8?B?NjBRMzRHN2JGWCtZdFo4SGNGeE82aUkwSE56Wmk2ZzlGRVZuTUEvMDFmWXhh?=
 =?utf-8?B?WDVkUnBaNmJuOUFvMmk1NVY1WVhhaTJ3YXhjYy9CRGtMTzZrNjQ2QXY2bTA0?=
 =?utf-8?B?QVNteVZ2dW5mWjQ2bW9YUmh0VVQ4REF5WUJpcE9WaVMzVE1CdjdycXR6ZER2?=
 =?utf-8?Q?vNNttVGSEWzKPEcprkOpkGmFZOSqgIv5DEYx3xph8GwC?=
Content-Type: multipart/alternative;
	boundary="_000_CH3PR11MB809333E88509E4DA15FA5930B90DACH3PR11MB8093namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8093.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd8cc3d0-da34-4add-19c0-08db98170400
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2023 13:54:42.1694
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gA2J2vcgu0jvloS4OV4Frib6WCCMIP2udstCa5/jhred9yq+c63PqtNpSshhiNj1gIakHafHTLOT40FJUU9QFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6246
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 13:54:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60736

--_000_CH3PR11MB809333E88509E4DA15FA5930B90DACH3PR11MB8093namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8NCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHNlY29uZCBtaWxlc3RvbmUg
cmVsZWFzZSBmb3IgWW9jdG8gUHJvamVjdCA0LjMgKHlvY3RvLTQuM19NMikgaXMgbm93IGF2YWls
YWJsZSBmb3IgZG93bmxvYWQuDQoNCkRvd25sb2FkOg0KDQpodHRwOi8vZG93bmxvYWRzLnlvY3Rv
cHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjNfTTINCg0KYml0
YmFrZTogNjRiYzAwYTQ2ZDFhYWNjMjNmZTdlOGQ5YTQ2YTEyNmYzYTRiYzMxOA0KbWV0YS1hZ2w6
IDI1NDEwYTY0MGI4Nzk0MDVkNGY5MzU4NWYzZDc0YzMyOGY0ODdjYWQNCm1ldGEtYXJtOiBjZmNj
OGE0ZDEzYzI2NzkzZWNhYjJkOGRhOTI3NGViOThiOGNiNGNlDQptZXRhLWF3czogODY5NjYwODZi
MmRmYWJkNzExMzI1M2JjNTY0N2Y4N2ZkNmQ0MjQyMw0KbWV0YS1pbnRlbDogZjJiY2FkMjk0M2Ix
MWI4YzlkOWVjZGQyNTU1MWE4NDFiYTk4ZWRhMA0KbWV0YS1taW5ndzogOTIyNTgwMjhlMWI1NjY0
YTlmODMyNTQxZDVjNGY2ZGUwYmQwNWUwNw0KbWV0YS1vcGVuZW1iZWRkZWQ6IDc0ZTcwMjg0YWNi
MmViMmYyYTQ3YTFhYjFhYTVlZTA5MjhkNDYzNDQNCm1ldGEtdmlydHVhbGl6YXRpb246IGM1MDc5
NTU3MDkxYjIxNTY2MzQ1ODgwN2E4ZjYxNzc1MjYxNGE2YmQNCm9lY29yZTogNmFjMTEwYzg5NTRl
NWZkYjcxZDU0OTVlM2VlYmMxY2EzOTU4ZGMxOQ0KcG9reTogM2VmZjBlYjVlYTc3ZGUyMGQ4NWEy
ZmZjNjQ2NTI1NzljYmQ3NzU1Yw0KDQpGdWxsIFRlc3QgUmVwb3J0Og0KDQpodHRwOi8vZG93bmxv
YWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjNf
TTIvdGVzdHJlcG9ydC50eHQNCg0KVGhhbmsgeW91Lg0KDQpDaGVlIFlhbmcNCmNoZWUueWFuZy5s
ZWVAaW50ZWwuY29tPG1haWx0bzpjaGVlLnlhbmcubGVlQGludGVsLmNvbT4NCllvY3RvIFByb2pl
Y3QgQnVpbGQgYW5kIFJlbGVhc2UNCg0K

--_000_CH3PR11MB809333E88509E4DA15FA5930B90DACH3PR11MB8093namp_
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
CjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IZWxsbzxi
cj4NCjxicj4NCjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+V2UgYXJlIHBs
ZWFzZWQgdG8gYW5ub3VuY2UgdGhlIHNlY29uZCBtaWxlc3RvbmUgcmVsZWFzZSBmb3IgWW9jdG8g
UHJvamVjdCA0LjMgKHlvY3RvLTQuM19NMikgaXMgbm93IGF2YWlsYWJsZSBmb3IgZG93bmxvYWQu
PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkRvd25sb2FkOjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48YSBocmVmPSJodHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9j
dG8vbWlsZXN0b25lcy95b2N0by00LjNfTTIiPmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0
Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuM19NMjwvYT48bzpwPjwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+Yml0YmFrZTogNjRiYzAwYTQ2ZDFhYWNjMjNmZTdlOGQ5YTQ2YTEyNmYz
YTRiYzMxODxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1hZ2w6IDI1
NDEwYTY0MGI4Nzk0MDVkNGY5MzU4NWYzZDc0YzMyOGY0ODdjYWQ8bzpwPjwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtYXJtOiBjZmNjOGE0ZDEzYzI2NzkzZWNhYjJkOGRhOTI3
NGViOThiOGNiNGNlPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWF3
czogODY5NjYwODZiMmRmYWJkNzExMzI1M2JjNTY0N2Y4N2ZkNmQ0MjQyMzxvOnA+PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1pbnRlbDogZjJiY2FkMjk0M2IxMWI4YzlkOWVj
ZGQyNTU1MWE4NDFiYTk4ZWRhMDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
bWV0YS1taW5ndzogOTIyNTgwMjhlMWI1NjY0YTlmODMyNTQxZDVjNGY2ZGUwYmQwNWUwNzxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1vcGVuZW1iZWRkZWQ6IDc0ZTcw
Mjg0YWNiMmViMmYyYTQ3YTFhYjFhYTVlZTA5MjhkNDYzNDQ8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPm1ldGEtdmlydHVhbGl6YXRpb246IGM1MDc5NTU3MDkxYjIxNTY2MzQ1
ODgwN2E4ZjYxNzc1MjYxNGE2YmQ8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
Pm9lY29yZTogNmFjMTEwYzg5NTRlNWZkYjcxZDU0OTVlM2VlYmMxY2EzOTU4ZGMxOTxvOnA+PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+cG9reTogM2VmZjBlYjVlYTc3ZGUyMGQ4NWEy
ZmZjNjQ2NTI1NzljYmQ3NzU1YzxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5GdWxsIFRlc3QgUmVw
b3J0OjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286
cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBocmVmPSJodHRwOi8vZG93bmxvYWRzLnlv
Y3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjNfTTIvdGVz
dHJlcG9ydC50eHQiPmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95
b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuM19NMi90ZXN0cmVwb3J0LnR4dDwvYT48bzpwPjwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+VGhhbmsgeW91LjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5DaGVlIFlh
bmc8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxhIGhyZWY9Im1haWx0bzpj
aGVlLnlhbmcubGVlQGludGVsLmNvbSI+Y2hlZS55YW5nLmxlZUBpbnRlbC5jb208L2E+PG86cD48
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Zb2N0byBQcm9qZWN0IEJ1aWxkIGFuZCBS
ZWxlYXNlPGJyPg0KPGJyPg0KPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRt
bD4NCg==

--_000_CH3PR11MB809333E88509E4DA15FA5930B90DACH3PR11MB8093namp_--

