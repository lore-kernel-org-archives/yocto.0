Return-Path: <jay.shen.teoh@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DBE4C433F5
	for <webhook@archiver.kernel.org>; Fri, 25 Mar 2022 00:54:28 +0000 (UTC)
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by mx.groups.io with SMTP id smtpd.web11.496.1648169666869757225
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 17:54:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=CI4MbdWX;
 spf=pass (domain: intel.com, ip: 192.55.52.43,
 mailfrom: jay.shen.teoh@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1648169666; x=1679705666;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=0HNEltuSfr2bzGnUM2wdSQbNvZW+12kasnvVYlKNQOg=;
  b=CI4MbdWXkrdNpP+LmBaU1wpXqrzXhyhFYzKDWCvKgRUlG0I108mjiEg4
   hvcmzPAipgOdEJYb78lZUlld3PQl2kc9uyuqrLAwOU2zcqvvkamF/MFIG
   d61xZkIKFt3u5a8SAS/dXBChcLX4DxvIKly/f3hJ0b75/Eex7mVzgun4e
   5u/2VU4j8EmTiGgjazn/UyTztlEP/zb/7ZV6O3JrZH3ATEwTiP5DW2eWg
   6bvofUXxtnBG9MBNC/GzuvOhzwS3J6sCdDEjEix7fw1/CJ+a4YPF4iFYh
   0sholR/AMtNdpbi4+m/zDqajZ81/zH7IX3KqSu23AflHhILE/sthBL2T3
   Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="344962343"
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400";
   d="scan'208";a="344962343"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2022 17:54:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,208,1643702400";
   d="scan'208";a="561619483"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orsmga008.jf.intel.com with ESMTP; 24 Mar 2022 17:54:25 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 17:54:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 24 Mar 2022 17:54:24 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 24 Mar 2022 17:54:24 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Thu, 24 Mar 2022 17:54:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UJ8ILVPheqKMwWZC7bT85pLAPwG59lutIhG696S4VqWhd/W0MZZGDeSFYKmVWdht2IuYViLjnz6k78OenEQ4G+Uhi7z4A9+e/wCze2Flrv+/278821Lp6ZUsFSYgKHe+vSWwl3SlLVXuCuWN8RfSrMzyWG5hKhBtp8IEJ+b+XycaVb76RnocxwmzKvBiqQ+zez8GI0/Arh+LNcLNszbo6lgLN9jErXDehobtTNhOITTBjluZWA9JIBwV0e5sNg9hrdG72o8Gyy5sIcHh/0DE0M1ZdlI4OfRiPeicP9F6wh0nQUI/DeCVigL3LZD3Z09taw34WKY/hb5x+nHcrxB12g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0HNEltuSfr2bzGnUM2wdSQbNvZW+12kasnvVYlKNQOg=;
 b=eijYGgm+Agr5osvDLprJZAVbq0LjtSna13tTpndfSw41KeXOJDRB+7hxEnDTAzqp959NSm62kOrPJEoJrhDE5JGdQlHpbCe1HSIeUGl8uNu8DN/jMMgEYrjtTst5yhKSGNqF4c8hk+1tYyLWmD5LnK523GbYh4N1jlrM7aJX+jf2iA4vXH8tU2W9g/fIFBYHqa4UmZM/cUmmew0KUfIGXR/MeeM2koMLS7tJcc+OJhY4RZRvB5dDil/JZZQMbd7kCQoVYkX44AimqRVYCOIx3JD8QlHjAKO7QKUjS1LgHcu4TFKBKjKyEWLm6wRJiCZkpwtJ7Va1MlJIlkWNjRKhUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2348.namprd11.prod.outlook.com (2603:10b6:3:a8::16)
 by SA0PR11MB4671.namprd11.prod.outlook.com (2603:10b6:806:9f::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Fri, 25 Mar
 2022 00:54:19 +0000
Received: from DM5PR1101MB2348.namprd11.prod.outlook.com
 ([fe80::5de2:7c09:3341:9a45]) by DM5PR1101MB2348.namprd11.prod.outlook.com
 ([fe80::5de2:7c09:3341:9a45%9]) with mapi id 15.20.5081.022; Fri, 25 Mar 2022
 00:54:19 +0000
From: "Teoh, Jay Shen" <jay.shen.teoh@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.4.3.rc2)
Thread-Topic: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.4.3.rc2)
Thread-Index: AQHYP24HRJNj/fUE5UKN/vVsytj3OazPRcMA
Date: Fri, 25 Mar 2022 00:54:19 +0000
Message-ID: 
 <DM5PR1101MB23489E9669FFAF02D3068111BB1A9@DM5PR1101MB2348.namprd11.prod.outlook.com>
References: 
 <0101017fb9c7ced5-43a54b46-8bc7-4123-b8f7-0b366a9ff1fd-000000@us-west-2.amazonses.com>
 <fc96c0b80078bcafc0a2191e57308ede28991227.camel@linuxfoundation.org>
In-Reply-To: 
 <fc96c0b80078bcafc0a2191e57308ede28991227.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7294baee-353e-4d78-52b9-08da0df9fe53
x-ms-traffictypediagnostic: SA0PR11MB4671:EE_
x-microsoft-antispam-prvs: 
 <SA0PR11MB4671B3E091E021797068702ABB1A9@SA0PR11MB4671.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 DGPy5UQnMzqfh/47nytjHAffuZJXp27yDJNhiWJx3v2wJp7zrtjJCrC94qBXiNHqcqhv0gRqEUHu9jO4DTb8qFEVefY7cisUDOmSbjbcpbfgQgMDXPLW2No33S6hLcac4chFQ31yLgSSOAuhjdacpmM79/cLvwmHTj/iQAuUmOfFHaOiW8myErV3SvsxTDm8IjKr9x1wCATnLOpnB2BDhoHDULOPYa+4VqAovy2FZywX75LnmWnwHZMSExHpgg/fqN2V6Vriln18Y6DJP66CBk+ARS2soASwBEbAPXyfTLl7vzVtpwAkYKa+TnlM6pUseqzg2YDe1DmqAB19ub1bKExq2Ag1P8o+d3Pv+wMczGjaWoN2uKujkXmQIjPpMjA/W/NsNyuhN+tzb62vSY+BZlt8R0T6Ye6VQI/M4sggGfjzC12UHroFMpNeHtAWg/Zrw+9I16mZCYB5Ac0si0nnn2jQYyuCOtVz8aoHtZ7uCcuUApT8vfOLz7OPhhJKOS6J4F5KnOLvQJ1mE9oUxYwsbM76nI3BogvfksznbES4nm0FM1LuDrpysbs/zS2w45qj2BdhvR2aMeyIzXCGlUhi9Qj4h0yrgua+BTTS0dzk5iYxIotrHsMHUe4vOutzMg3XkyC/eawHO2q2imMyQ2JyD6x0/NawnzxmLta8xO4wgcUd6beYdAcziuFJ1FwC02VvTCxLHAA/iDvoyr3LgKKcFgyuQrY0jo47veUBtIbhLvSElu2jD78gqionPHzm5PTbcOAAxQ0YdrDNI3Otr/TGT248HBDf+IJ5x5H2eZZbpmg=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2348.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(9686003)(6506007)(122000001)(53546011)(7696005)(55016003)(8936002)(2906002)(5660300002)(186003)(33656002)(52536014)(26005)(15650500001)(66446008)(8676002)(83380400001)(38070700005)(966005)(64756008)(86362001)(508600001)(82960400001)(38100700002)(71200400001)(66476007)(66556008)(316002)(76116006)(110136005)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?aVpUdW1TemUwQkR5czM4TVpzRyt5SjNhK0xlSmdneTF1dDk0ZCsrYjNpaFNr?=
 =?utf-8?B?MWVCaUtJR0NCS01YaW5qcG11RzNXQTFmbTdaNTJ4czdzUDhGRDJyMjhzQjla?=
 =?utf-8?B?aGl3WnN4NDM0dlc0Zkhtc3RET1MrSUpUSXFzTUFWOXZxUjEvWkNYUDk3QjhI?=
 =?utf-8?B?S2dFRmR3OExvUTd1Unk4eHBsenB1SDhiN01Wbk5BYmYxcDVEaGhORHozbW5C?=
 =?utf-8?B?dkJTK1hpbE5mUkpRdEc1cjRoOFViN2VjWWdlZGxQRjFoSmYzelcwajRQRmt2?=
 =?utf-8?B?cXFGSHZERnN6am50NkZMMXJXaklwTGdxTVM3VmdlZHZ5QW5BMkE2b29DMUs2?=
 =?utf-8?B?Y0ExZmZXUmg0b1pSUzNLSk5qNElmOWxLRlp2NSsvNVllVWhXNTZMcWpuZzYv?=
 =?utf-8?B?bC8rcTJsQWxIajJVQ3UxN1FESE9EN21scjVkZUx3SUxiMjJtKzV5OFptQXpU?=
 =?utf-8?B?SXFldDNERHl4TkNxQU9velhJOGhJU0VZWDE2K0xOb1BZOW9Gd285S252OHhH?=
 =?utf-8?B?UUxweGpOUURiSXpwb3h0OXJ5QU1nRTdJbGVaRUZRdGN6OXBHd1ExenBBSllr?=
 =?utf-8?B?aGJGZHhta013NGtOa0pmWlN6RnNyOGswMnRmMTF5aTd6clBjblpMSEJVaHVt?=
 =?utf-8?B?ci92aVNCcERsd2tLWnZUV3dtbXd1RG44WDhuUkZheVN5K295Q3lTcXhTSGlM?=
 =?utf-8?B?cUpEWSs3dStxOENNNHlLbi9oSlJBNmhTYk1nSHlLc25Fc01QNTl0WjlKQ2RO?=
 =?utf-8?B?bmJzQWVXeDdxNGg5bjU2MnVuaXhyYk4zVHdwTHRibVp6aWVOejg3V2NuY1BO?=
 =?utf-8?B?blFUWXhSbVJ0V0RLdldsNm5Cb1VHek1xd2MwZzhOMVNKM2UwcFdwdEl4K1Fz?=
 =?utf-8?B?N0ZyeGgrZmtRRlNJb0hqQnBYSzBzQ3BOMFFtWEhGVytEZUpxdGgvaTF5dFh5?=
 =?utf-8?B?ZlhoWWp3THFqR29nbVVtUkhoQWNSRDNzcXNGNytnODZnTFNvN05DbUQ3NDM0?=
 =?utf-8?B?S29HcE5aaWR1UlRhS2FMV01iN3hVNGNrS2syZ2svUTNURGZxMFBua1pZbHpX?=
 =?utf-8?B?WEZXVnhqVUVQM0ZlRHA1cVV5MDlsUWtxSFk2MnJYOWJKRmk1RzJGTTdJVDEv?=
 =?utf-8?B?ZFhGUXdxbXpEWW82VzBDZHhHaFNGK1dsMS9SbEpLU0l1Yk1MbnpydGowZWFG?=
 =?utf-8?B?WmhIdEpOTnNrR0ZGSHp4SFVKZVc1aTN3dHBkNG9FRTFYS1Y4dDJ1TVFCZndO?=
 =?utf-8?B?eG9vbC9aTWxMaEljN3FySWJKZENmSlRaQmt4RUdOcGNmOUIzbXpJZU43a2NG?=
 =?utf-8?B?MDY3OGdQTWFQYWVIWlU3QTNzU2tFSUNoZS9IcEI0bFVyR0djVFF0dC9NcW9w?=
 =?utf-8?B?bVVRR1AyZWdFcW92bk1uaFlzRm52aTJ1NGN0QWZzUlBrT2Vpbkd6SnNKRzBX?=
 =?utf-8?B?ZlA2OWhwUHJiNXRsQXZham5mci9HZzZ6QzZ5S0V6MEc3RkdWU0FuQndWT3l1?=
 =?utf-8?B?bGhRQWljMU5JalRJTWhvZHZ3OWNsUEhUR2hVY2JXUW1sZHpCd0hTcm8wenhK?=
 =?utf-8?B?Ni9iR1g3dkJ1bVdxL2x0K0k5MGcvaFFOVGNtL3BxNUNKSmRTWG51Qy81aDhF?=
 =?utf-8?B?SkNjSVQwWTV4UnNsRy95OUF1MEp0b0VTZzZIVmdkMDRWZXNMby96Y1M0eEdD?=
 =?utf-8?B?R1ZOaXRUSzNTby9La21uOGdLN1R5aWVjbzdCVjd1ZENwRUpKRWRRL0NSYmU2?=
 =?utf-8?B?VEtlbTNOMEZQNUdWK0RsT084SzZ2ZlF3Q1FIcmY0TnZINFRZZmt4R1EyTHhI?=
 =?utf-8?B?NHBSb2VPcncrbkE5SXA5REdsdFpXejBxWlpjaGRlSU02SDZpRmtIQ21VZ1I5?=
 =?utf-8?B?TTc0SDRSR1E2WnhKclNxekdGRHd5cUFFUmZ0dldxQVZvbkQ1S20va2dGc254?=
 =?utf-8?B?Nm43VDJwUWNvRE9HcU1USERuMkVFQjlxMUMvaCsrdXZSVUFkZ3NCWDMweTYx?=
 =?utf-8?B?ZUVaSUdzRjh1b3FZMFNlRTNIQ1pvalVacFhLTmxLQkhBK3MwaERoV0RqTC9M?=
 =?utf-8?B?TWhmUGlhTjVlTXJqN0RkY3ZCVWt3K0lBVzF6VzRVYkJZQ2ZBdUdYbXdCVjFJ?=
 =?utf-8?B?TTl5UXllT1UxUUNobTA2dWNjcXdMMXQydGdNTnFOYWRZWmdibDBkMFo1MXFk?=
 =?utf-8?B?bzBXcVhRZHp0QlZleTFWM293cnQ1MTR2SDBNRXJvMlhwZHJwdG42NGVML08v?=
 =?utf-8?B?N1NyOWw0T3JrTGg4R1crSzd4bUlzSktYV2NUT1R0cmNJYXBmY0RIZDI5cGkv?=
 =?utf-8?B?K3R2L0RWUUt0WVNtbExsZUFVMG9DSXpBc1ZBRUQrWEU0WGhaU1ZjZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7294baee-353e-4d78-52b9-08da0df9fe53
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2022 00:54:19.0769
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 lni9fYqwzFXbGx8dSwpu9ZOkzU6IOKGjANQLkwFA6mudnHOO/Fi4tKPK4KymTSVEHINyuoSZ2Rq2b7kysy/Ltw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4671
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Mar 2022 00:54:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56557

Tm90ZWQuIFdlIHdpbGwgc3RvcCB0aGUgUUEgZm9yIHJjMi4gDQoNClRoYW5rcywNCkpheSANCg0K
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYNCj4gT2Yg
UmljaGFyZCBQdXJkaWUNCj4gU2VudDogVGh1cnNkYXksIDI0IE1hcmNoLCAyMDIyIDY6NTggUE0N
Cj4gVG86IHFhLWJ1aWxkLW5vdGlmaWNhdGlvbkBsaXN0cy55b2N0b3Byb2plY3Qub3JnOyB5b2N0
b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFtxYS1idWls
ZC1ub3RpZmljYXRpb25dIFFBIG5vdGlmaWNhdGlvbiBmb3IgY29tcGxldGVkDQo+IGF1dG9idWls
ZGVyIGJ1aWxkICh5b2N0by0zLjQuMy5yYzIpDQo+IA0KPiBPbiBUaHUsIDIwMjItMDMtMjQgYXQg
MDI6MzUgKzAwMDAsIFBva3lidWlsZCBVc2VyIHdyb3RlOg0KPiA+IEEgYnVpbGQgZmxhZ2dlZCBm
b3IgUUEgKHlvY3RvLTMuNC4zLnJjMikgd2FzIGNvbXBsZXRlZCBvbiB0aGUgYXV0b2J1aWxkZXIN
Cj4gYW5kIGlzIGF2YWlsYWJsZSBhdDoNCj4gPg0KPiA+DQo+ID4gICAgIGh0dHBzOi8vYXV0b2J1
aWxkZXIueW9jdG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLTMuNC4zLnJjMg0KPiA+DQo+ID4NCj4g
PiBCdWlsZCBoYXNoIGluZm9ybWF0aW9uOg0KPiA+DQo+ID4gYml0YmFrZTogMWJjOWY4MDBmZmM5
Yjc0MGNjMWRlMDEzMmVkMDRmMDdlYWRiMzQ3OQ0KPiA+IG1ldGEtYWdsOiBkZDhlMzRlZjUzODNk
OTVkOTQxYTNhZmM5YTAzZDNmY2JiYTY5OWRkDQo+ID4gbWV0YS1hcm06IDMzYmJkYzY3ZjJlZDcx
ODkzOTgyOTJmZjU4YTdmZWU0MmE4NWExNjYNCj4gPiBtZXRhLWF3czogYzkyMzQ0OTM4YWI0ZDM3
ZGU4YmQ4Yjc5OTE4NmRiYmUzMDE5YTA2OQ0KPiA+IG1ldGEtZ3BsdjI6IGYwNGU0MzY5YmY5ZGQz
Mzg1MTY1MjgxYjlmYTJlZDEwNDNiMGU0MDANCj4gPiBtZXRhLWludGVsOiBmYjllMDYzMzYxNGRi
Zjk1NmRhMTg1ZDI5MTMzM2JjYzFiMTM3ZTVhDQo+ID4gbWV0YS1taW5ndzogZjVkNzYxY2JkNWM5
NTdlNDQwNWM1ZDQwYjBjMjM2ZDI2M2M5MTZhOA0KPiA+IG1ldGEtb3BlbmVtYmVkZGVkOiAwNjFi
N2ZjNzRmODg3NDU0MjUxMzA3ZWYxMTliODA4YTkwNjU0ZDNmDQo+ID4gb2Vjb3JlOiBhOTJhMTBk
MWFjNWQwNTA2MTljZDZmNzFkYTVlNmZhODZiYjlhYjEzDQo+ID4gcG9reTogY2ExNjJiNTA2M2Fj
ODc3ZWFjNDk4N2MxYjUzMTIxMDliNTE1N2EyYQ0KPiA+DQo+ID4NCj4gPg0KPiA+IFRoaXMgaXMg
YW4gYXV0b21hdGVkIG1lc3NhZ2UgZnJvbSB0aGUgWW9jdG8gUHJvamVjdCBBdXRvYnVpbGRlcg0K
PiA+IEdpdDogZ2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcveW9jdG8tYXV0b2J1aWxkZXIyDQo+
ID4gRW1haWw6IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmcNCj4gDQo+IENvdWxk
IFFBIHBsZWFzZSBob2xkIG9mZiB0aGlzIGFzIEkgdGhpbmsgd2UncmUgZ29pbmcgdG8gZml4IGFu
IGlzc3VlIHNlZW4gaW4gcmMxDQo+IGFuZCBidWlsZCBhbiByYzMuIFRoYW5rcyENCj4gDQo+IChh
bmQgd2Ugbm93IGhhdmUgd29ya2luZyBhdXRvbWF0ZWQgbGlzdCBub3RpZmljYXRpb25zIGFnYWlu
IHdoaWNoIGlzIGdyZWF0ISkNCj4gDQo+IENoZWVycywNCj4gDQo+IFJpY2hhcmQNCg0K

