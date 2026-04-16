Return-Path: <debal.ghosh@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D764F8A166
	for <webhook@archiver.kernel.org>; Thu, 16 Apr 2026 11:57:33 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12200.1776340651558397763
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Apr 2026 04:57:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=UJ6JmVZ1;
 spf=pass (domain: intel.com, ip: 192.198.163.15, mailfrom: debal.ghosh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1776340652; x=1807876652;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=hnyZd12+St623MJE2N9ZPBQLt6D57XZD4KjPcNwjqW4=;
  b=UJ6JmVZ1Kg5sw5SLKp5BGY9kREpQlVAR6QaCk9MvpK02Tzt8sHS0t+sx
   EG+MGOFeCWOM12DPZQlAfTiBsSYHXqAo7PmUjw4HV2Ucd0EJOILRpu64n
   ykBXnnPjky+SyHUN4/dMbuIHGSZNRT3ZDAf0JwMhur4CjbCfRbNiIGfSk
   ZVpRJAF7pGji5YoZMsRD5Ojsz/8L7OP1/TnuAwSujr8ZYD5PKoE43uxbq
   ztvDKu+QwkRa5Dc24sl6nqPh/rnkmUq2Rnp8w+5T5ZJSTNSNWeeA0pnC6
   xN/YYUV555edKw8vZkpber3NsUBz8RCLUcINDQLeyLQqDhoJ1mhcV+fLa
   Q==;
X-CSE-ConnectionGUID: 4bK0bVwWTS2IdE14CJE6tw==
X-CSE-MsgGUID: tvq+zNu/RSqEV5kdwX9hDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77451822"
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; 
   d="scan'208";a="77451822"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
  by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2026 04:57:31 -0700
X-CSE-ConnectionGUID: rR+5FZ42S8a278K9LeX61w==
X-CSE-MsgGUID: keh3/9umQ0aUoPzaSQEXEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,181,1770624000"; 
   d="scan'208";a="229692209"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2026 04:57:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 04:57:30 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 04:57:30 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.26) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 04:57:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=muB7FAWjOyX5wF+Lq9m+H2nLOW7YexDSlJ7AzPVm2x79eiheGry4g5WPQ9cf+gUhPOJPZeaNp3HOBE46D2iMTPdDi6kpLXzlYLRlqSKpQDRmkBhvbH/DxhfLaaX85S1MJZUJaSinc1kQxbnLM1BfQ9Ucfcd+A/QljgQTRL/y5itNpubDkGDh3nCvD0/A5q8rVHl023pkRlnYp+RNWCEQLmwOYiIoHgKlzbk7kubiawSlC47WjrUXnRljASJdsPidNrhYYrc36zNKvirqRMCPJPfu7UozR3KkjGTNWIthO8e3Ibd0BtxWuPTNTdoNX2VScFfoKDqRuOUwHJhnzYzMRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hnyZd12+St623MJE2N9ZPBQLt6D57XZD4KjPcNwjqW4=;
 b=J7n1mcsNAok2yPMNc3YZfpWOIcM84C7L9/3m0DGPH9Ca83oivwOFlYWsDTSrOA6R33uTi63savxTfXzlmZXb9AtEA+HbfvQJ9ZRECpfwJU/AFAJH7azHpL3fkNS7JG68OiKU/rRs9KL1C9x0B1gY3LACCrZorLMxBo1XjOjFoRwUzgxHeSfF2HnfR3V2KgEvYmy0SWqXROw7+ARsPYbO0JfBEN5CQ8EsV/drdmw0Oe73ZId4g1BrNOhfW9EbcgPGpxv6bdxGLlJ9Whbu9GlfDNzGcCiju28FyTGj5+jreKdVPGAMziP2w/Es6LhOSoL7G8EVhLwF/z0SKAkj5YatZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7018.namprd11.prod.outlook.com (2603:10b6:806:2ad::14)
 by IA0PR11MB8355.namprd11.prod.outlook.com (2603:10b6:208:480::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Thu, 16 Apr
 2026 11:57:26 +0000
Received: from SN7PR11MB7018.namprd11.prod.outlook.com
 ([fe80::bc48:bc16:39d:b43]) by SN7PR11MB7018.namprd11.prod.outlook.com
 ([fe80::bc48:bc16:39d:b43%6]) with mapi id 15.20.9769.046; Thu, 16 Apr 2026
 11:57:26 +0000
From: "Ghosh, Debal" <debal.ghosh@intel.com>
To: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"yoann.congal@smile.fr" <yoann.congal@smile.fr>
Subject: RE: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.0.35.rc1)
Thread-Topic: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.0.35.rc1)
Thread-Index: AQHcySEzZGmAuduPnUScpYccvbGhO7XYz08AgAQdwwCABLCrMA==
Date: Thu, 16 Apr 2026 11:57:26 +0000
Message-ID: <SN7PR11MB7018BA838A11665EFC6FA85EF4232@SN7PR11MB7018.namprd11.prod.outlook.com>
References: <0101019d78e44a99-02fb8520-6c59-48c1-9ac3-64e44075a988-000000@us-west-2.amazonses.com>
	 <DHPSKCPED9UI.2AFCAORVY8PDM@smile.fr>
 <aef6ae9103b5a4ee85381fbaba4fab7e129bb4c6.camel@pbarker.dev>
In-Reply-To: <aef6ae9103b5a4ee85381fbaba4fab7e129bb4c6.camel@pbarker.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7018:EE_|IA0PR11MB8355:EE_
x-ms-office365-filtering-correlation-id: 3460b1de-2d01-49dc-2f9c-08de9baf53e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|4022899009|376014|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 6HKWn96sUlXXqYvipTbj1mLCZ498g8vZEvLzptsrdTYWGVVS08UCWTKanUpoeynk314I7YqYtZBQN+V8oco5giiYq2a/o8BQLK5FWbKqWnuLoDBufEfkfLAatJ5gP8VR7rmeP4mFoLAuwdvXSwf9D1aiXZR8iTdSu/MA10D9NnlyewFBW1KcjsQq3lrS4R9/+Z/n9+pi4cnNtcjN5wlyQnsRmaMJqFqse04ijOpBEF4mjGFvDTDHF3BZanznSbhurrGdT6KcGpb1VBUfE6+Fvs6hLk3ZFlnC+v8JxGLUoGYJRFkgV6GnBl5yst8QCN5fQ2DTA/dCFU++t83BZomeB5BeKNNBrqzeLCrMBLa6d2mCqHk9pyZ4jTc4+MDVmILwUMqccCoY92Gi+ZQOHp8MCtADs380sAB4shW5hAWtvehee+f0H5TlFSBUUXgaghqazto5HOKTFTwq/zQr/Rgm32fE1M7gu4XXONVqYEFQsws0yqjEAdGmoArWFbqBbtZgjQD9olS3cnHydkzWPLh0LTK0U2sK7hCSiuVGXaaqyuaeBNtNTfhuHwkpilOmJlFOMiDCFiiSlSNaP7Psyn9m4aiwtQQm68A4oo02gyjRJrHyuUymVTLn3xVW8FsHRQahnl59Gra97mM/ji1qoVDmUpxmMalGJGD60mzy1rv/A7YGmu1w9XCxNzoWjq4FCkr6pUHD+7l3NUHymvnIl2moyXkPKpLEwvSsBYq5Kr/UIEU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN7PR11MB7018.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(4022899009)(376014)(56012099003)(18002099003)(22082099003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVFlM1ZQc3dwdmpBajg4WVF2b2RORStDWFBGdk9zSlZseXNkMkJUY0w1S0l3?=
 =?utf-8?B?OVlQUkQxZTVMZkRpcXpEWVZvenpEaHRXWGpYQThSSnpoSjNpczZGdnlZMUln?=
 =?utf-8?B?UVJ2Wjd2ZURnZ2QwYUQrNUpwbzM5QmFSWVUzWXRXSG95bmgyYjBITHY3ZmFz?=
 =?utf-8?B?UEpXV3hJNnBIV0h6OEJ4blhmKzd6dDl6UUxLZUlVRGcrcE9VeU1tTWJNT2pQ?=
 =?utf-8?B?Q3UzT0ZaekFRMFV0NDlFcW9nQ0JhOGJndzdlZENNZTI0dDRQSVUrUjA2U0tZ?=
 =?utf-8?B?K3VUbkxoc09DUFFkU2JlM0FKN3dZckMzbjc1Wm1DRjZvVlZyOUYxeWsrTVI3?=
 =?utf-8?B?N1VkLzJ5MW9jTi8rY29qOHlZVGd2a1hhem1pVEpMdGNsQmNZeCtoTzF1eFI1?=
 =?utf-8?B?Tk5qZzNMWVdubHNsTlA3aWd6N2Y4aTRySVF5cnBjc2NQUExmNWpzRlE0S29n?=
 =?utf-8?B?L2d6cHJQaloyWHBVTFZGMGFZQjdabGJ1K21rd2RVeHNtUjJqcjBwcHZZemxr?=
 =?utf-8?B?K1FHL0wxK0MvREEvMFJVTVpFL01SWEw2WkdZR3Zma3FSZzdEeTZjTEs3SEYw?=
 =?utf-8?B?SmRzNTdUdlJFVFNSZjF4MlljOGNRZW9UTVpFRmhjaklVUmdWRG8wZTNVLzFM?=
 =?utf-8?B?SzlHMjBoeFNCVjVNM241bGF3V2pyRHR5d1dNdTA3VVBmNUV4OEhXaytRdGxz?=
 =?utf-8?B?elpOYWFqbG1pc2dLRko3akt5Vkx2SkQvdHJob1RELytTVXFRTGZ4d1ZSa1Nu?=
 =?utf-8?B?Y0dBb1FwY3pBYjg0RXlycW1LU3pxUTRJcnNJWTc1YXd2bU96T3dYTmRkYUF3?=
 =?utf-8?B?WWtjOUxwandDSDRPSkJoTllYWlpRZ0thbEU1Mmo5bTJMYjJEWHVIdjVMV3ll?=
 =?utf-8?B?eGtja2VJK3NrQ21NM2R6dS9xdXdzUllUQkxMeFhOR1JobHZOVTZEVlZBWnhH?=
 =?utf-8?B?NzZ1emZydm8wKzluL3B0UnNUdm81QThnYTB5dmd0Qm5uMXpadWIxQzNhSDFN?=
 =?utf-8?B?ZHAwY2tEYUlSTzdWbno3Ni96azZ2a0h0ZEJaMGppV3N4b1UzNWhBbjdiUFBU?=
 =?utf-8?B?dW02eWJ6Y3hib2c2Y1lZY3N2U1E5cWRNeTlCR0RXZHR4MVlwb3NmMk4wRFNq?=
 =?utf-8?B?QTZLMHQwUitRdjVmL0NYKzNkN2svQ2lSVUdKbGpsRmpKRjhxdStlb1MrdVB4?=
 =?utf-8?B?RW5aaHNpOHViRmhPK3VXY2t1R2FjbDhYNW9HNmd1c1o0aGdYOEhnN1NyRDB6?=
 =?utf-8?B?Q2Z3cVhFUG5DTDh4bHo2ZVV3VnEvVmtaaWJNUW5TM0tydjUzeFU5STllTlB3?=
 =?utf-8?B?a2RkVG93Q1ZDaitCZ3BGWHdCbjdZaFp3OENEWHJQVktJOVhvNHV6RmRpUmFE?=
 =?utf-8?B?N25mc01JM2VEVTluQkRYUENzTUlTYUVXWDVsQXNhN3RqVGlZOXd3a0J6bXNC?=
 =?utf-8?B?SEtTWmlIRXdtemJVUjI0d3NXSnN4L1VITDBla2w3RkpVWmRNNjVCbGJGWTQx?=
 =?utf-8?B?TFpka055T0hVenUzaW9WUGp2QVZMdGxSS2NqY0dneHFRNDdGNjhlSTVVVS90?=
 =?utf-8?B?UzE0MmRmQW5MaFdoK2F0d0lzbW9GSnlPVTRmWCtkS1RaUjFHK1F2OGo1VVdI?=
 =?utf-8?B?VGtDd283WkFhblZRYmpEcFU4VURXdkRTaVV3UHZZdUl2U0NzcFc4OTB4L0hL?=
 =?utf-8?B?M1lzdUVCcndtVkhCQ2Y0UjV0VXNDNDh6ZDJEbzhqRE0wZ0djVm92VmQ2VWZz?=
 =?utf-8?B?bkt0SklxT3NEUGVMN3YwRjZhMFJuT0x1amtDWTBLUDdKTmY4NnFuYUVFby81?=
 =?utf-8?B?K2dDS2tXeEgwQnQycVN6SXlCZHIyR3dXUG01TVY1NUsza3Flck9uYnM2a3BF?=
 =?utf-8?B?ZjNPZlpKNG0rODRrVW1kSjh1K0NOSCs0ZGRlREZKM0dMVkozaUZ0bTY4TlBa?=
 =?utf-8?B?Y0VXdVhrbi9RaE8wM29IUVJIUTVESGxBYkV5MkRVcVVKc2JzVkNGLzh3V25V?=
 =?utf-8?B?MmxMTHVQOTdldFVPU1VMR29wQk0vN0QxdHRiVXl5RWxoVlE0MGlhRjNIVXls?=
 =?utf-8?B?Q09jeHNDZ2Q1STVHOG15UFBpUXZ6QXM4WW5ldHpGenlVOWFNaUFtMnNOY2Nn?=
 =?utf-8?B?MVdnTTFyQURUVDBjQVQxdHNHQWpGSUZOZWxUbzVTT0RJZFJGKzN1dE9kMGFp?=
 =?utf-8?B?N1M0a0NUTDIxYVlldG5iMmdRcGtZcCtOcmZYL0dvUDFaLzZtVnpKNkF1ZUpu?=
 =?utf-8?B?NC9qTE5KckkzdWt0ZlZCZUdnck1zT3pod0lMbmZJZGNxa0NkaFVuSkVPT1l4?=
 =?utf-8?B?amYwYXlnTjRjRUx4UlhLQUoxcGxtVnIxZklrWUdxYTBXVVRaRUhIQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Apl865rgxesiUk8uxPXjP6UkqqV8aAMb7vXQPHtbVlEmQ8yuFw6g/rZxisOf3rw21nWHBMo3SAMkGASdWgiTsynQtzlXY+E+phtCVgvfWu8cJ50/QccJugNFv9j+1zAlTq4u5nN7+1I2jwCQKx0F+fKkkCJllMJq2EWIl+1Zfch0zetQVFMuFX6VRlZTDFwfXuMPcFeM1g9F7mk07ABDHRrcpXl8V/kFf5WFkLOQdPC0yvHHXxJT8FB5iTs5Zmw6cwHARu8b4n+wxA5Ey2nbF/EqRp3NtSh55lyA49FrZhclo+2Devn4WDxKrWCIlg3ygoZq6CiIY1du8cAI7MOz6w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7018.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3460b1de-2d01-49dc-2f9c-08de9baf53e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Apr 2026 11:57:26.1987
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q22kO4KqVZKIjvF23Spvi/CpLx4HtT+etz0zar7I7Fur2MMq/VnWau9GGePMKZ5zkffneU7BdKE1P87BRmYbDg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8355
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Apr 2026 11:57:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66420

SGkgUGF1bCwgc3VyZSB0aGluZy4NCg0KUUEgY3ljbGUgZm9yIDYuMCBNMyBoYXMgYmVlbiBjb25j
bHVkZWQsIHdlJ3JlIGJlZ2lubmluZyB0aGUgUUEgY3ljbGUgZm9yIHlvY3RvLTQuMC4zNS5yYzEg
bm93Lg0KDQpSZWdhcmRzLA0KRGViYWwgR2hvc2gNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IHFhLWJ1aWxkLW5vdGlmaWNhdGlvbkBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxx
YS1idWlsZC1ub3RpZmljYXRpb25AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9m
IFBhdWwgQmFya2VyDQpTZW50OiAxMyBBcHJpbCAyMDI2IDE3OjQ5DQpUbzogR2hvc2gsIERlYmFs
IDxkZWJhbC5naG9zaEBpbnRlbC5jb20+OyBxYS1idWlsZC1ub3RpZmljYXRpb25AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZw0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IHlvYW5uLmNv
bmdhbEBzbWlsZS5mcg0KU3ViamVjdDogUmU6IFt5b2N0b10gW3FhLWJ1aWxkLW5vdGlmaWNhdGlv
bl0gUUEgbm90aWZpY2F0aW9uIGZvciBjb21wbGV0ZWQgYXV0b2J1aWxkZXIgYnVpbGQgKHlvY3Rv
LTQuMC4zNS5yYzEpDQoNCk9uIEZyaSwgMjAyNi0wNC0xMCBhdCAyMzoyNyArMDIwMCwgWW9hbm4g
Q29uZ2FsIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIHdyb3RlOg0KPiBPbiBGcmkgQXByIDEw
LCAyMDI2IGF0IDk6MzUgUE0gQ0VTVCwgUG9reWJ1aWxkIFVzZXIgdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgd3JvdGU6DQo+ID4gDQo+ID4gQSBidWlsZCBmbGFnZ2VkIGZvciBRQSAoeW9jdG8t
NC4wLjM1LnJjMSkgd2FzIGNvbXBsZXRlZCBvbiB0aGUgYXV0b2J1aWxkZXIgYW5kIGlzIGF2YWls
YWJsZSBhdDoNCj4gPiANCj4gPiANCj4gPiAgICAgaHR0cHM6Ly92YWxreXJpZS55b2N0by5pby9w
dWIvcmVsZWFzZXMveW9jdG8tNC4wLjM1LnJjMQ0KPiA+IA0KPiA+IA0KPiA+IEJ1aWxkIFVSTDog
DQo+ID4gaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0b3Byb2plY3Qub3JnL3ZhbGt5cmllLyMvYnVp
bGRlcnMvMjkvYnVpbGRzLzMNCj4gPiA2NDANCj4gPiANCj4gPiBCdWlsZCBoYXNoIGluZm9ybWF0
aW9uOiANCj4gPiANCj4gPiBiaXRiYWtlOiA3ZmQwMTk3ZmQ1ZmVkZDIzY2M4ODViNWU3ZTgxNmQ4
NmEzOTJmZGY5DQo+ID4gbWV0YS1hZ2w6IDQzOWNkOTJiZDQ1ODg5MTZhYTQ1ZGU3OGZlMjVhOGJm
ZGRjN2M4MmINCj4gPiBtZXRhLWFybTogYzNlOWZiMTJhYTMxZDI1ZTMzZDgzOTJjNGEyMzNlZDEy
NzVhMzI3OA0KPiA+IG1ldGEtYXdzOiBjYWQ3ZmRjZjA0NmE5MzVkMWViNjQxYjI1NGU0ZDA1ZDE2
ZDUxZjFlDQo+ID4gbWV0YS1jbGFuZzogZWFmZGFhM2NkYTkwMDBjNmQ5YmQxODE5ZmZlMTIxOWM3
YjY2ZTRiOA0KPiA+IG1ldGEtZ3BsdjI6IGQyZjhiNWNkYjI4NWI3MmE0ZWQ5MzQ1MGY2NzAzY2Ey
N2FhNDJlOGENCj4gPiBtZXRhLWludGVsOiA4MmViMjQwNmUwNGE4OWQ2ZWQwNjUwYTk5YmExMzIy
NGU0M2U0ZjBkDQo+ID4gbWV0YS1taW5ndzogODdjMjJhYmIxZjExYmU0MzBjYWY0MzcyZTZiODMz
ZGM3ZDc3NTY0ZQ0KPiA+IG1ldGEtb3BlbmVtYmVkZGVkOiA5ZDhlZjI2YTk2OTNlMmM3MGFlMzRh
YmUxYTc1Mzg3M2Q0MmVjNTg4DQo+ID4gbWV0YS1xY29tOiA4ZDI3MzgwODMzNGRhZWY1OTIyMDAw
YzhlMDU0OGI3ZmYyYjNkNzJjDQo+ID4gbWV0YS12aXJ0dWFsaXphdGlvbjogOTJiNmFiY2RmYjZm
MTJjNDkzMTI0N2YwZjI5YWFmNTMzMTk4NDUyNQ0KPiA+IG1ldGEteW9jdG86IDM0ZTNjOWExOWI4
Yjk1NTExNjEwOWEyZTk1Mjg5NjZkYjNmY2VkMzcNCj4gPiBvZWNvcmU6IDUxMjU5YzdlOTMzYTJh
YzhlYmMwMTYwNGQ2ZTY1NjA3Yjc2YjdiNTYNCj4gPiBwb2t5OiA5MzQzMTI0OWE2MjYwZGE3YmQy
OWVlM2NhMzIxNDVkODllNWI4MjU5DQo+ID4geW9jdG8tZG9jczogY2U2NzM0YzY4NjQ5NzM5YzYz
NTY3NWExMzNmYTc3ZWRiOTg2NTAyOA0KPiANCj4gVGhpcyB3YXMgYW4gImFsbCBncmVlbiIgYnVp
bGQsIHNvIE9LIHRvIHByb2NlZWQgd2l0aCBRQS4NCg0KSGkgRGViZWwsDQoNClFBIGZvciA2LjAg
TTMgaXMgdGhlIGN1cnJlbnQgcHJpb3JpdHksIHBsZWFzZSBxdWV1ZSB0aGlzIG9uZSBmb3IgUUEg
YWZ0ZXIgNi4wIE0zLg0KDQpUaGFua3MsDQoNCi0tDQpQYXVsIEJhcmtlcg0KDQoNCg0KLT0tPS09
LT0tPS09LT0tPS09LT0tPS0NCkxpbmtzOiBZb3UgcmVjZWl2ZSBhbGwgbWVzc2FnZXMgc2VudCB0
byB0aGlzIGdyb3VwLg0KVmlldy9SZXBseSBPbmxpbmUgKCM2OTApOiBodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvZy9xYS1idWlsZC1ub3RpZmljYXRpb24vbWVzc2FnZS82OTANCk11dGUg
VGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzExODgwMzM1Ny85
OTc2MTI3DQpHcm91cCBPd25lcjogcWEtYnVpbGQtbm90aWZpY2F0aW9uK293bmVyQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcNClVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvZy9xYS1idWlsZC1ub3RpZmljYXRpb24vbGVhdmUvMTQ0MjY5OTkvOTk3NjEyNy80NDAzMzQ1
NS94eXp6eSBbZGViYWwuZ2hvc2hAaW50ZWwuY29tXQ0KLT0tPS09LT0tPS09LT0tPS09LT0tPS0N
Cg0KDQo=

