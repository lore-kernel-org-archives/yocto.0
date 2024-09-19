Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D40CE8D61
	for <webhook@archiver.kernel.org>; Thu, 19 Sep 2024 09:02:01 +0000 (UTC)
Received: from esa8.fujitsucc.c3s2.iphmx.com (esa8.fujitsucc.c3s2.iphmx.com [68.232.159.88])
 by mx.groups.io with SMTP id smtpd.web11.15235.1726736511881430192
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Sep 2024 02:01:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=aqHcMlqA;
 spf=neutral (domain: fujitsu.com, ip: 68.232.159.88, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1726736512; x=1758272512;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=GzgeHe2Nagx1gh9Fw5sqLc4DDRZU+3slEBxcVBzJREo=;
  b=aqHcMlqAg5Hx96SCTk6ahzLXFsbzrdZGVKp2J1DT/XFPVCLkIxmbow9x
   R7qJJkK1OQ5fzYqIr1EV5f3SyCjPu8N4c9SVaHQxcHA6Topdz5TpSx+8G
   sgMGQI1ZgEFXvn3Ee0H8dlY3AU0w63oKxmvwJ+E8CI9jVRlBO8qLkaMx5
   Wkyvmv+WFV1Jr9ImtX6iJvodg1HiF6C8PJCnh79gNmFMXB7B686BSpPdK
   caaIJR9ls/MC61sSjtRXCHacqk37roEmE969TQmhBZMqGw3hRVYMYZTED
   iYs3ZfVTqgr9Pl03PgEwSAEzXBRPR92oFE1l+f2KL5sNSuAUoQk3e3c0H
   g==;
X-CSE-ConnectionGUID: m6NyjLfkTcKgQNBt77bgkw==
X-CSE-MsgGUID: Eo41bhe8T7ym5b0RHXcl6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="131269745"
X-IronPort-AV: E=Sophos;i="6.10,241,1719846000"; 
   d="scan'208";a="131269745"
Received: from mail-japaneastazlp17011028.outbound.protection.outlook.com (HELO TYVP286CU001.outbound.protection.outlook.com) ([40.93.73.28])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Sep 2024 18:01:49 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ii5DmKnvYXq2Bbh/3QhEJ+XwSPOV2Xx18ZbXmGY0s+wZocORh5z3D+YPVhq5DR9G5BmpkTTImR6luuEclKpjHym/GIwyTpT4YeFOMB7GlurUazri54vrew0CjSTj2TrfGfbX9S97VRV/V2s3bIxIlayj3jZqm1SpDlg/Cay/AS78JoP/NoNWemSk1muw/jvuJ2N7U/aTVzDKrz7QfTVcZ54Uiv64VMZRxu8Swxoixm00kRB9xUw7eV8IzcoOAdY5Z/Yp9Py3WeodjhEnVH26ItPR+l95I8FQIyui91ooZrMLS+WkA/ZkGfRYQDH0gvQ5PQ5F/Pj4El7PVkIIW0I/lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GzgeHe2Nagx1gh9Fw5sqLc4DDRZU+3slEBxcVBzJREo=;
 b=PZz4NKrvHiXb/BoqwPpupltyE9SixXCDOPV85uxlr7rM0MampM688F/nqhjahsm763LmYxEIL1AOTBRb9R9BMr0Yh5QtGlyP+qkeJMxIbwTR5CFr8CmhCqBjS0ujOpEXLjECt6NcqZF4VbN8RqengeH21ru1jDtWVQyB7DiVABOE88eteEsnftAqxw8crta4sgBa3hQq/k8vfkxtfo0S7guM+vZsBs27kwpMcpWjex0gyV37HfrSMf5Tyegbn1AfI4sN84KQgC2tpPKyO19650ATbYuLNnV9jfjQSwfOfFC5zC8Q3gGyjBb8aRaLEHrevf6hpb5c8COpCEHPfHhRhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from TY3PR01MB11056.jpnprd01.prod.outlook.com
 (2603:1096:400:3b4::12) by TYYPR01MB12353.jpnprd01.prod.outlook.com
 (2603:1096:405:f9::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Thu, 19 Sep
 2024 09:01:46 +0000
Received: from TY3PR01MB11056.jpnprd01.prod.outlook.com
 ([fe80::c451:240d:2c34:96bc]) by TY3PR01MB11056.jpnprd01.prod.outlook.com
 ([fe80::c451:240d:2c34:96bc%3]) with mapi id 15.20.7982.018; Thu, 19 Sep 2024
 09:01:46 +0000
From: "Maohui Lei (Fujitsu)" <leimaohui@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: It is failed to build v6.6/standard/nxp-sdk-6.6/nxp-soc 
Thread-Topic: It is failed to build v6.6/standard/nxp-sdk-6.6/nxp-soc 
Thread-Index: AdsKcmCH/68Zy9M+T+a8rEoqwNre1A==
Date: Thu, 19 Sep 2024 09:01:46 +0000
Message-ID: 
 <TY3PR01MB11056856D6A7B493195D65385A0632@TY3PR01MB11056.jpnprd01.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_ActionId=af75a619-a86c-4982-bd1c-f481715478d6;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_ContentBits=0;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Enabled=true;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Method=Standard;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_Name=FUJITSU-RESTRICTED?;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_SetDate=2024-09-19T08:37:09Z;MSIP_Label_a7295cc1-d279-42ac-ab4d-3b0f4fece050_SiteId=a19f121d-81e1-4858-a9d8-736e267fd4c7;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY3PR01MB11056:EE_|TYYPR01MB12353:EE_
x-ms-office365-filtering-correlation-id: b4d806d5-9b4b-4cdc-f124-08dcd889b0ab
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018|1580799027;
x-microsoft-antispam-message-info: 
 =?shift_jis?B?Q3RCdDlMblA4MU1WWE54cVpiN21lanF1OTdCSmdURE5pZ2JZbit2S25j?=
 =?shift_jis?B?MXJqaVpraGNTckpaQnNkczVXOUphUGNCYkJObWJwbW84eEtIYlRSMVVM?=
 =?shift_jis?B?K3M4ODZ3blhraDVtSjV1ZU41K1I5MDIzZ3lCcUtUbFIwdUpGTVZHSklk?=
 =?shift_jis?B?TnEwT3dqaFh5S3A1NWt6WXNCMkNSUkVBUCtwUTF1N0ZZcWpHYzVMOWQw?=
 =?shift_jis?B?d2F5djBqTjhkWnhFNWNyVUU2MmlLVXVjTXBjYkRLSjhBNGo5VU5DQ2Zs?=
 =?shift_jis?B?TnFocC9OeVA4bGFVaVJmV2pHWnY4ektMeWVla29KNk8zN243ZlZzdEFn?=
 =?shift_jis?B?MksrazVBMFFJZDM2RThjSjNIUHVLak85YVhBejBuOU0rejBHQTdkUGRT?=
 =?shift_jis?B?QmI0aThKTmNKK3dZQURWSE9BUmJTT2poYUxzNUZZODZxY0ZtQWZoVW01?=
 =?shift_jis?B?LzBjelpEY1hXQmpQMms2YlJLQWgwRGQwTlhoaEhZWVJQUEZnYnRRZmFx?=
 =?shift_jis?B?RWxSRGdtYUFST0tLWGpwZ0NDSERTcXlNTVBpQmFnaXREc1hwYXV3NmVO?=
 =?shift_jis?B?Wmt1S1plY1NvVWhWV1kwSFY2dU5aWUxZbHF5Y1VGWjhiVGdXc0w5bElv?=
 =?shift_jis?B?SlJaT0JkUGFZUkpkNE81L3RDaDNpZWJwZUF1MVoxQXNWYWJGY05lVVV4?=
 =?shift_jis?B?K1pWS0pON1NlWFhra0szcDdJN2RhYzdMNUVabjhJTnNxWklFbGsvMmRp?=
 =?shift_jis?B?RW9SM3gxQlFIYXZLMkhxbGZxU2NIU2twbnduMlo3Q3QwN2xFZGZrR0tC?=
 =?shift_jis?B?MG0xaElsQnpRbGxQL3UwMlM3TW4rSWVTbjgremdRREdVbERCbk9FdDVF?=
 =?shift_jis?B?aTd6clVSVnozdUdJb0k2OUZjRjE4OVM4OG9OWElFbkhTeXZjUHBLaTRM?=
 =?shift_jis?B?V1VBbTVMdEk1ZnV2cGJ1RnpZdzBRSklwS1NKWGQ2SEJ5OUFldWw5Ky9T?=
 =?shift_jis?B?NHZ4TlhBSEZpMFBwZC9qSk5mKzZiTTluWTdxR2RlenZEU1pjSFp5UWhE?=
 =?shift_jis?B?aTg0OHpraUxOMUNSbnE3ODhOb0htRlU5OEk4K2N4NUZJczhlTEhHdi9h?=
 =?shift_jis?B?QzVJWTdPNlhPc3FPdGZzUlZnNmduQ1QyYmlDK204OEg3MlhvTzAxOVZE?=
 =?shift_jis?B?SDB4S3hEdUdNU2did2x0OEVsWE9GOFozbTI3WDViTTFVY0plVzNQTEZu?=
 =?shift_jis?B?eUNFUjNPYlpidWI5a3cwcFZBM24vbGVQRlBNYzhVbTVDL0FNa1NrajlW?=
 =?shift_jis?B?ckt1RU9qaGwzVS8rZnhnWHVBTG0raU9NQ3dva1NoZmh5ZDdEbHIxRTZW?=
 =?shift_jis?B?eFI4aUx1VDlYam43Sm9KandnMUlPcHhoSXdsNEd6eVNrR04xMDZid1N3?=
 =?shift_jis?B?OFZwcG5yZWVJcy9NVFNTdmk0d1FtZVpJSldia3UwUVNuTDd3MnNNM2hG?=
 =?shift_jis?B?NCtNYW9sVzdZa1BYVmpvTUtGVXRISUpwRm9YTDFjY2h0Y3BteGNMRVBp?=
 =?shift_jis?B?TUc1KzI3ZlpEU3gzbkNmejhScGRUOElmUXhQUXNqZmZLNzZDdE42TkRu?=
 =?shift_jis?B?a0l6bGlWTmZxcWFlN1Y0WHhTdkxtSzFZUHhDRnFGOGVuM0E3UTVGZGY2?=
 =?shift_jis?B?MWh3TmlLbGM0NWpoRHJ4cE1ZQVBtTUp3Q0M3TmZPM2NkVGFHVWltK1Fq?=
 =?shift_jis?B?RGYyWXNQQ215RUNjSENrK0dKM1hqYStRUk9BaXpFQU4rNFBOK21TVlhk?=
 =?shift_jis?B?S1c1NFl3S2VFU0UwRnhjcTVORjllVzBSMkl0NHcybTBkc1ZNS0tuMXdX?=
 =?shift_jis?B?QUtwZXJrdHA5VS8rdWRaSzZqalhMNEo1Nk4wZ3RjeUlDalhPWHk1SkR0?=
 =?shift_jis?B?YXlqVm05RzdjNGhOSW1ZQ2JvUFFGVGt6azc2TVBUNDh0OEEyUjNmQWt2?=
 =?shift_jis?B?ZEQ5cE9oN01DNnpHNFRBSmd5M3hvQU1TcCtoY3lkdjVGaDE0UGtUcUhx?=
 =?shift_jis?Q?Yu35IcPnviJu3aaSA+kabCQ=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY3PR01MB11056.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(1580799027);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?ZEVUZ0xJVWFWQ3hlbDNORng1bzdxbTJ0azk5VGVrMjQ4a3Zmd1hjZGoy?=
 =?shift_jis?B?K2NKNUY2YkhmOXdsV0RlaDY1VmlmaVp6Szd4dCt0eHVCdHNiU25OVXBo?=
 =?shift_jis?B?T25ZeThUeXhlKzRyYnlVYWkxSWxaREJYRXE0VzYrSHIrU0JrajFhWStL?=
 =?shift_jis?B?R0duL2RET3pNZDJjYnEzbDAxVkhXYWVOVkt1aU5oTmpTOGJNUloxZTdC?=
 =?shift_jis?B?RjM5V0Z6OXpYelA0ZURXOFZieFNYZ3RFU0tZRkxJVVY2cnNlSU0zUGlC?=
 =?shift_jis?B?cTlqM1ZBVWQ3Z3Btd3ZVTGk2d0xyVXFhcHpmTnp4allsWHRaOWZ1M0VR?=
 =?shift_jis?B?VWl4b2Vla2xOZ3FxQnhTZlZRWm5tQWFyREhnNUJRMmVON1NkOTI1cEZY?=
 =?shift_jis?B?cGkyY29kTFVhTldCRm1ZMVkwZjNLeHBLMzg2VGxmZENnbzZTbmpiMko5?=
 =?shift_jis?B?bzBaUnVjUUgzc016b0NRYVA3Z0tKb040WFk1WVVTcVNhenBvOVZtNGR1?=
 =?shift_jis?B?ZWQxclo3S0w2V1FleVFQRk9CT09QMERKU29jZTluWS9nU2ZlODR2Q05B?=
 =?shift_jis?B?bnM3cE5FZ2RNdnN5VDRGR1JTZjlydkFzL0lQb05QNDh4ekRWMXlLY1hL?=
 =?shift_jis?B?Q1BZUU5GK2R2Sy9jM0ZBY1FpemJ5WmVtQU5RNEQ5Uk1KenNzWUQ4c3Fj?=
 =?shift_jis?B?NXcyeGJQQjdaQ0pudzZhT3dZMVA0U2M3UGhCSXJ6Tm42ZXVabE1uV2Vk?=
 =?shift_jis?B?ZDlpSjJBVGRVUFhwc1Z0QjVoY3diZU1sRlNEL2drQ0ZRN2dQbHJkTTZT?=
 =?shift_jis?B?RjFwUXRUWlNER0Fwc0M3bmlzbU5KRFpiM2laYnpGSG5YaUlhcmhXampy?=
 =?shift_jis?B?aytEc3NJeGt2Uk5OUE5jTUhSWlZTUCs5clZHR2hlYndnbEw0S2d4OUNK?=
 =?shift_jis?B?TnlGem9weEx5RXpFNnFhWFVGeC96NkhPSWkxN3NvQmdRcmZ6ZGQyV3RZ?=
 =?shift_jis?B?Z3NlVTBMN0drUk80ampMSUJORk9tUGVGMTlySEM2cWplZkNBK1BHMFVE?=
 =?shift_jis?B?cDF3eFU2MTY0OHhrV1I5M1dnN0xyUi9UNHUrRS9UTklLRkd0SmxDdngy?=
 =?shift_jis?B?TWQrZGltNDdQdG4yRkNScTRoTnFJZGFPQTJwbTRlUElTM2hGNjl2SUJQ?=
 =?shift_jis?B?UGFtVG0rcVgxdmMrdzFKL0xQZlV3SFp6dWpTVXo1dk53MGJDOVhFMUdm?=
 =?shift_jis?B?UjBERVliaWpmY0tvWXZFSDUwTGZUb2l5b0RJUTlUTGNuemViN28wN1ps?=
 =?shift_jis?B?V1N0aGhkL2Q4cllXZnl1Tm9TNDNoVWh4bVdwdkh6bGZoUjh0VkdMaXBR?=
 =?shift_jis?B?bUVPTFByb1BGS0pyRnBQSzhZK2ZVemw5QjVVUi9VdkZsQzIybmw3ZWJZ?=
 =?shift_jis?B?aExHZnpQOXNqbU9MTUFHT0NBaEFNaEh5S0Q2ZkErSTY4MHJuMnNZOFdS?=
 =?shift_jis?B?ZlduT2dUek1qR2s0T05USkQvaG9BWE1HV1hEOUFPMm5uY1FFbkwxT0FN?=
 =?shift_jis?B?aU02OHVKcG4wdWg0Y081bEV1ckFRTlY1NzY4Wk9kaGxSSkUzQmtoYzhq?=
 =?shift_jis?B?WmlFTnFaZngxaDYrR0pBZW1rR0RsOGs0eU9mNFdvREU5QUlRM25idSs5?=
 =?shift_jis?B?RnpWQm4wV1gwdkJuUHlQQW03ZGJGUzlVdkcyb0dXb0kydTJ1eHVCeCt1?=
 =?shift_jis?B?N0xacVdNaGVISGM2MmhLVXpwbkNncmZ6T3hxMEYvbkZRd2NScjgvaXpk?=
 =?shift_jis?B?RTJpMjk0Q2xRa09CclFvWGoyZ2JZdEl4M3I0U3dOTTJuSFNnTTRaMFd3?=
 =?shift_jis?B?T3lwRzBEMWcrbGJmQWtiZEQxMXR5QjFtUFBVU2IyWm1qWG9GeVh0S0Yw?=
 =?shift_jis?B?c1JsOGlGM2t1VlN6d01lS1NCSXJXdGNNbFJLdnhFS0ViWVVTcjJQWTBn?=
 =?shift_jis?B?cVZoc3laZEdEK1pFOTVpTmNqS0lNZWNVdWtHOUIwcXZFaE1Fb0hvV3VF?=
 =?shift_jis?B?RFk0SnBLaWZ4b3ZyenJYTGpCdzJQOUh5amdNY2s2NFQ4UXVhZ3kzOWZk?=
 =?shift_jis?B?SWQxYjhDWWpISkdUOU5lNzAzQXpPQWJ3VnlPTXNFSThhSGFMcXpRT2Q3?=
 =?shift_jis?B?a09XOGJXbTdYdTNQd3BvZ0d1dzRVcnhFTEZSbDdpWVdXNmxFK3ZiblIr?=
 =?shift_jis?B?VXRnQXhMVGZ6elRhQXhta0NhTnZvNXVhM1Y3VEFxUWtzajYrZkk4MFdU?=
 =?shift_jis?Q?7YuW?=
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	4WepSIylWr8BHek3kkG1HB45HybgDvvczAZpGp16nIqq+UCOzVq0/M5EUsWFsl+wXra6w+dq06o7YMVSvTBaQDNX7jt1KrOqfmLUYugklsKIO4Sh6pVAqNbQqL8dIBecWl1v89L7HXGjmZRsElnRNgDiPkshiXns6meyY0zj1I4gCq4Sle4sdtmvNWC98uj0koDeaJJ9J9T2XqjqL9ObUt4w1bVelaVCbrb0CTpdH3Cp7mfe2iDDCEO+oKIAXF1Y94DxIuMSGbdROUTj2DsEq9lyJUXwDCjBPlRkuZzA3dhpANetOyYC2vP8vfbSqRRE5VJOq18hVu23dY3E/RJ8oSAQRH6A3bjp0ZTGyUrAE/isk/H+exJkfUug+ATAQUXS8+ZtH2owfUslpCNizkVA5djGIZv8rb0zBoHG2qs6JBGUr+1lY9MK+UYFx3AARtJ0UUWhPHFLACALUBoPMGPoLIFvMvXy/bdvpBklsgRnB483e2+rXuD4PCIB85ItCG4/1ENUSjrJwwprr+4k0fvho23jpFd8T1voAQw53IuhxfSGXbkFY9is73nAdMJ5+o2B/cRTgQkVwgH7z2fYQy1/Plk3ybgD8X/WT/TAL/zLFFRosDrbJ6Fv8YKI7UqTOf2Y
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY3PR01MB11056.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4d806d5-9b4b-4cdc-f124-08dcd889b0ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2024 09:01:46.5388
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XQ0YDaYnJdyHcQwZD3gIp1VbZMvbxpGGyuzPOcITgIWPhjW6WosVw6bJtTk8n3tPUc8mqwamrTnJ4aJZBCXpFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYYPR01MB12353
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Sep 2024 09:02:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63865

SGksDQoNCkkgdHJpZWQgdG8gYnVpbGQgdGhlIGxhc3QgdjYuNi9zdGFuZGFyZC9ueHAtc2RrLTYu
Ni9ueHAtc29jICg5ZTIwYTI0ZmZlOWJlNTI4YzFiOTUyOTc2M2VmMDUzMjM5ZWNhMzRmKSwgYnV0
IG1ldCBlcnJvciBhcyB0aGUgZm9sbG93aW5nLiBTaG91bGQgSSBzdWJtaXQgdGhpcyBpc3N1ZSBo
ZXJlPw0KLS0tLS0tLS0tLS0tLS0tLS0NCkVycm9yOiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVz
Y2FsZS9pbXg4bXAtZXZrLmR0czoxMi4xLTIgc3ludGF4IGVycm9yDQpGQVRBTCBFUlJPUjogVW5h
YmxlIHRvIHBhcnNlIGlucHV0IHRyZWUNCm1ha2VbM106ICoqKiBbc2NyaXB0cy9NYWtlZmlsZS5s
aWI6NDIzOiBhcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2FsZS9pbXg4bXAtZXZrLmR0Yl0gRXJy
b3IgMQ0KbWFrZVsyXTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ4MDogYXJjaC9hcm02
NC9ib290L2R0cy9mcmVlc2NhbGVdIEVycm9yIDINCm1ha2VbMl06ICoqKiBXYWl0aW5nIGZvciB1
bmZpbmlzaGVkIGpvYnMuLi4uDQotLS0tLS0tLS0tLS0tLS0tLQ0KDQoNCkJlc3QgcmVnYXJkcw0K
TGVpDQo=

