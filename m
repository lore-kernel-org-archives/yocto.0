Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3C3C43334
	for <webhook@archiver.kernel.org>; Sat, 11 Jun 2022 06:05:09 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web12.3182.1654927499568970780
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Jun 2022 23:05:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=FnVVUTli;
 spf=pass (domain: intel.com, ip: 192.55.52.136,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1654927499; x=1686463499;
  h=from:to:subject:date:message-id:mime-version;
  bh=1ktvFVXwy7nWO4wZsNgzG9Gn0LWu4OOWjZoZrahTyd4=;
  b=FnVVUTlifBsTnWEyLqG1gLMxYSIWPpQVJFsVrJmFQ42b1SkeFdQ9I7gG
   3eXutNd9rarGiHQhmy1LP4QzbA6Q28nVmbqBf2bSwkM703l7pkyiaVzhp
   kGJXiqwGAeIrkMA1P1J4pTioyIAb43UUj08ZPBf4NQLN+amEzjo5e9mua
   Gud3gORXq8cVISMkFDjlsltXC+UgrEmlzSa+Cvn57fRxszilHAVTyZEOP
   /spFb9Yr5wYdT4H55rq2Z1ccXFsLfNOzrvOowxGV7ucDwEFJY3gxRVZ38
   V86VOxsFw8Wzk002YMzN7RC1B4UiECE01AC8pmsFLvo/jxDVrJORUgXzl
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="257668866"
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600";
   d="scan'208,217";a="257668866"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 23:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600";
   d="scan'208,217";a="567178789"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
  by orsmga002.jf.intel.com with ESMTP; 10 Jun 2022 23:04:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 23:04:58 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 10 Jun 2022 23:04:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 10 Jun 2022 23:04:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 10 Jun 2022 23:04:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YhyMvH6QUJ67iFMZIe7ZiQ8Mg1QTqlRz3epsoI0CBTOsFBxtfuf7JLA3FvFOEaITIRbe7s+Yvcvqgku2hrrZOdVS1BLlIgRFSzOrh4XiNIiKR+OCp2G7MrXlxW8G1AS6SW+cd118r1VrYn1j5bubgTBzN1xIYXslJr1+wfNipyvc+xu43rKkT2Vrw1C5FOZ5sGrTsYCySCd1Wv9ML52RX91hNc9dnQBgPZ6O6YRPtBucggyiy+acfeB0eFhj1YYiwN9X9G+1s13B68q9B9GI9JEiCzmr8Ya9EENy7ieoNvGlc76w/5egElbn5vDKJ0epURwF76tiVW/5VhkF0CkDXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1ktvFVXwy7nWO4wZsNgzG9Gn0LWu4OOWjZoZrahTyd4=;
 b=hIZ7Sjv31B0pZd3bnLNd78lXTnEUnXJEtYxmW2q1kBJx6B3QNITSUPz1izMjBjL8BdOc44TnxQpkNlNOEyYvaS75Jb1o5PlF3qrFDabGqz7ok80ZoyP8nviduBD/C9b4R8a2zQB6V0yC5bXTTN0XseC76fffO26U1ABec8Omk+Xgql24Go7q0tABROe6ShFE4rDgba+Zb6vN3R3PerznTN/8TW0urRHuR+JqAPB3udRElRt+kcjs5OX3JHNjSvfgzx9ST2YqW9V6mDWPxrFJgd0AaeXl+0ebhnVoa6ychxpD8Oc9T6C117VSchjGnxOVhhanYzjB4QU8e7/ACOAe8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by SN6PR11MB3055.namprd11.prod.outlook.com (2603:10b6:805:dc::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.18; Sat, 11 Jun
 2022 06:04:54 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::747e:4603:d43b:ab20]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::747e:4603:d43b:ab20%7]) with mapi id 15.20.5332.016; Sat, 11 Jun 2022
 06:04:53 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "yocto-announce@lists.yoctoproject.org"
	<yocto-announce@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: [ANNOUNCEMENT] Milestone 1 for Yocto Project 4.1 (yocto-4.1_M1)  Now
 Available
Thread-Topic: [ANNOUNCEMENT] Milestone 1 for Yocto Project 4.1 (yocto-4.1_M1)
  Now Available
Thread-Index: Adh9Vy6SLlVYj5ADQYi8w+D5O3gZ1g==
Date: Sat, 11 Jun 2022 06:04:53 +0000
Message-ID: 
 <DM5PR1101MB2361181B071B4959F24E2FD7B9A99@DM5PR1101MB2361.namprd11.prod.outlook.com>
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
x-ms-office365-filtering-correlation-id: 6f839e8c-2a8b-412d-f170-08da4b704dc0
x-ms-traffictypediagnostic: SN6PR11MB3055:EE_
x-microsoft-antispam-prvs: 
 <SN6PR11MB3055E71F1799D912F5E8E236B9A99@SN6PR11MB3055.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uDwNXNPvcz4V+PETtW9PK8gW4OHKMV9/gDzxPRujzXb+TD2gVCFoSuzN/wK5uMX6suMZRcrea/IFpHPMd82gESaDVjb4dWqxQzqLiTeUXQMwLrpIFLSy4VDtWu1w5YvxRDghtB9AreaYi5TOCg0M8+K/5/IoK+yUhA7pwJ5tmqqjB3ozl9nTxjWTUkSUY1fkIbIpo9K14rn1oY8lUhcFDNrl95ZvT542CLT6huEqj74lUU8rgiY6Apf4PUCLk/9fk4XqmMffq5QZ8/UQpvULuDRvnJpCqxlztxix3pmGm0br7TdW4oAKIbZh8UI2EvWZAgLdIRw5hXbEi74JZK1SluzxnX3earZqmkLB1hQwEUyv/Vr8md6nCBdtdJT/tWPgWFQMbNvToqVmnU5FBbubkq2jvwJJaE661NtimgL+K31x0t4ecCii0jEwDiuVK7uEO/UwT/WniG/oezNv3I3sidmcFzKocTyyNizNbf3Mq9A0a+QXJHJJ9KHkkEr/Y9EwFvXV1Fka6CjxxlUbCB80GXCSaQn2a1cr1Om77gawj7uPl7sy1ZV73eJUKdeGzp6/47ITPpOndqc5oz4N7ChtrtCL2eITfos2QqLOPRGbFt/xDJjEc74GZ+655hmy9Z4ttbeukRCcZSoa+Y1Jzt0BV4jR03lr7n0vlH1Ojjmc9bv9za8/B06nuQEcpHSHMSPpLgkDsvE/JRQami2RCUOMqQa8wlVB2EUxKZzQeqDNqbDNGSm9IZW0Z9fnzYA36gDzXVBoQpzyizZogUdxpwhqB60Dy1FYeq4HQJWJTH130D6P6KQIxTIuFhEYws5ZoK9XLbUq/Ez9ZB4DE07stB6ayw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(9686003)(38070700005)(55016003)(52536014)(122000001)(5660300002)(66556008)(82960400001)(26005)(64756008)(8676002)(76116006)(66946007)(66446008)(450100002)(166002)(316002)(110136005)(83380400001)(508600001)(38100700002)(2906002)(33656002)(66476007)(71200400001)(186003)(86362001)(966005)(6506007)(7696005)(9326002)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?YTQvVUtMTmdod3AwSU16N09EVVpjRUs0R3Z6blIwd1pMRi9pYjRCU1cwZTZO?=
 =?utf-8?B?Y3U2aUhaaU0xczhOSTh6LzlFWUpjYTRMZjlFd0hVeXZZaGNaUUplM3JSN1k5?=
 =?utf-8?B?U3ZMRllGNDJWU285ampxZU41RXQ0c2NGY3ZqSCtrUDE1NVJVSk15OG9CMkRh?=
 =?utf-8?B?VWZEWThxMUNQazVDbTRHQmRCenIyYXNVbFNudWZBUHA2QVJaTzNPT0xHSmJC?=
 =?utf-8?B?YUF1aFc4SndCdVo3VDJJU0FMQUYxMENUYTBSdDdoTzBRMDRPcHVzdDlaREJU?=
 =?utf-8?B?SjE2MkZ0VVBYVkY2Y252NDMwQSszTmcvMjBEUG1OWVFqYzgvNjZ4NVVSaGVC?=
 =?utf-8?B?ZjJJWkduNkNQK1czTXRpemQ5UGdlam9aRnhMcmFOWEs4b1NrVG5WTHEvN0lK?=
 =?utf-8?B?SHRZUHJMSmR6R1pXWnE3U2Y5RzVtYU1FOHRrakJkQ29ZS2pPd0l6OEJMUmkw?=
 =?utf-8?B?eVArQzhvYzRIZld1N2FxWmhvRzdSSEpaOEJLczQ0MUdjMVp4M1lWMDdWb0d3?=
 =?utf-8?B?VWpiR1pORWI5R1YyVEV6MjYrcDgydTRVenc4aWllUW11ME1BVXQ0T0M3TDZ4?=
 =?utf-8?B?OFBvRGljTmJTdm9hclJvUDVqSkUrcVNVcTdENlg5U3BGKzJJakxjR3MvOVVG?=
 =?utf-8?B?WFBkNWlSVkt5SWxJZzMzKzJIbnNweXZ4SVJ1RzM5c3VzWWZ1eWFNK3RML3Rp?=
 =?utf-8?B?NitMUUhiM0w0QzJSalVnTStlWmpRWDdoV1doTWJjTGM0T0FIdGdnb0RsQVFl?=
 =?utf-8?B?bjFLT05VL2RVS016eldGQlJRa095NGd0NjVqQmhWZ3UzVlgzSTZJQ2xsTSs2?=
 =?utf-8?B?SFEwblB1UlNvTml1VTRtOVE1RUxGMEtEVGxqbnkxRG1nRlNTR1VJaFhFNGNV?=
 =?utf-8?B?NXR2NFRwQ1VIUGxCMG1KN2J3ZUJSQUpUNWtnaTREWTdIRmdacXYxaklHTmF0?=
 =?utf-8?B?VUJWRFFmMTVjRXREb1hNYm9tZ2lHYmRPM3hLZGpNUGhKMEZSVk1qeXFQSlla?=
 =?utf-8?B?Tnc4aFRmVzR2RnF4MXlCVU9OWDM1ckhCcHJ0bkU2SEMxeVl5SDhuQlg0Nkpu?=
 =?utf-8?B?UUw1dzc1RCtHWkpQWTdZYkZoVzk5K2l5RkZ3WW1YUmtTV056TEhBRUo4VVlz?=
 =?utf-8?B?dmtBc0FFNVhmVkUrNkFNNTYzUlNmWXhzRWdRY25PU3c5djZPVG82M2xHQ1RW?=
 =?utf-8?B?Vi9BVzZNWm1SVGdIM1dQVnVneUVxQTFGZS9YQUdSTkFHbll3bDZkTHQ3QnMr?=
 =?utf-8?B?SXFYYlphR3BYb3RnQTZHdVVaVWVpL0FtK0I2azAyZTc1VmdIbm9wLzFsWHlH?=
 =?utf-8?B?aGcrYkhjT0xzZXo1cDFRMXc2eEVncTJySStZWGhEMHJMTjlONkgrYVh4aGRh?=
 =?utf-8?B?UkRha21aZ2E2Rlh5Vm1BKy9qR1hyZkl0ZitBQU5wVTNGcWVpS3R6TUV0bi9P?=
 =?utf-8?B?dllDWjNaN0c0TFE1dUU1UGlNc052c2cvUVo2aFlORHZKempCMTBXUW9aMUVP?=
 =?utf-8?B?WElsY0M4QWMxWnRnZ21BR3dQeVp5NzE4K0N3a1lGL1pUNjFjVDhXLy9OQzYy?=
 =?utf-8?B?UGllQk9MV1pUR3VGNkZQRnBKSFRKbUJ3bEZSSS90TXI4SUE4d2FhcUtwY2s2?=
 =?utf-8?B?N3ltRGx6UjB4YzdJYndWNjN4UEpySTV3am9EWGsxQ2xXVTBVN3graWhTVXl2?=
 =?utf-8?B?aXkwZVZONS9VcEhldkkrN3FEbFFmVkRJRGFuUGVqQkc1ZllTOHRNUUVTY0pG?=
 =?utf-8?B?em9uVUhGUXlRbytPcmc4ZUVEWnpSOXBGWmxvSE1nWXI5Q1dBQkt3eGZqaHZm?=
 =?utf-8?B?TzJJVk40YVljMzZ0dnlqUm9uV3kyaE1VaVV0MGV0a0ZmSTlIUDloT2NzdnNr?=
 =?utf-8?B?emN0TFJmS2RtVWVTeWdZVjRuQVlKMW1jOGU4bmdVUWd3U2xxSmpMaDUyaS9i?=
 =?utf-8?B?WXdmSjRnZjI2Ynd6VVNzNjJMUFgyYXg0WEhSNVR6YndvU2tjcmZaWHF1RGpW?=
 =?utf-8?B?ZTd4VGRrME03aU54aFRnYW1IdHZGbjVWdmhxRTZmQms2eGc5RlgxTjJTV0VZ?=
 =?utf-8?B?czZFZUVNVGd1cmdrdDJqVGlsN2RNM00wbDE5QWx0ZGMzMEc5ak52dENtRlVs?=
 =?utf-8?B?L0pNUlBFdHZwMG1UT1pDOFJHY2NKZnVjK3FXTnFhMXhPc1piOFVCQmxxYXU1?=
 =?utf-8?B?Ni9ZazJJaXhYTmRheUdqY3VhcGtsUFdmUUJFZmRKSmMzck1DZnZ2bmxTWWV3?=
 =?utf-8?B?MTJvazRObFpPanZ5MkRlbEJacWtQeW96MU4vbzc4UDZUK1U3aVdyMU96ZDdF?=
 =?utf-8?B?bUxHbHNnaGhEOGkrK2xHWGh5LzBteTBXSUdJSE1mRWpacFlnTEJZZz09?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR1101MB2361181B071B4959F24E2FD7B9A99DM5PR1101MB2361_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6f839e8c-2a8b-412d-f170-08da4b704dc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2022 06:04:53.8944
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 xa3MfLKYe1sIx4wuJ+EbKq+KfE0/i43d5rlOvId6LGxQpnZKNVsUn5nOkH2H1sS2JpSVbhlYRyLTUqz0LqqndQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3055
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Jun 2022 06:05:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57320

--_000_DM5PR1101MB2361181B071B4959F24E2FD7B9A99DM5PR1101MB2361_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCg0KV2UgYXJlIHBsZWFzZWQgdG8gYW5ub3VuY2UgdGhlIGZpcnN0IG1pbGVzdG9uZSByZWxl
YXNlIGZvciBZb2N0byBQcm9qZWN0IDQuMSAoeW9jdG8tNC4xX00xKSBpcyBub3cgYXZhaWxhYmxl
IGZvciBkb3dubG9hZC4NCg0KRG93bmxvYWQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9jdG9wcm9q
ZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuMV9NMQ0KDQpiaXRiYWtl
OiA2YTM0NmRmNTFiOTZhNmMwZTFlZTUxNmRmMzZlYjBiNmMyOTJiMDYzDQptZXRhLWFnbDogM2Ew
YjdhOTY1YmEzNzBjYTFmYmUyY2EwZTJhYzNiYWJhY2U1MjA0ZA0KbWV0YS1hcm06IDBjNGMzM2Rl
MDlhYTkyMWNhZmNlYTJhZDRiN2JjMGUxOWY4NDQyMTMNCm1ldGEtYXdzOiBiMmY1ZWY3ZTcyNGQz
YTIyNzFlZjk5ZDc0ODczNDU3OGNmOGZjYjFhDQptZXRhLWdwbHYyOiBkMmY4YjVjZGIyODViNzJh
NGVkOTM0NTBmNjcwM2NhMjdhYTQyZThhDQptZXRhLWludGVsOiBlYmI4YzFjMjZlNTdlNzg1NjM3
NjA0MzFhNTdiNmRhMzg4YjgyYmUyDQptZXRhLW1pbmd3OiBhOTA2MTRhNjQ5OGMzMzQ1NzA0ZTk2
MTFmMjg0MmViOTMzZGM1MWMxDQptZXRhLW9wZW5lbWJlZGRlZDogOTBmZjUzYjhkZjFlMzI1OWNi
YzIwMWM2NThhNGYzZjRkZGRmM2FhOA0KbWV0YS12aXJ0dWFsaXphdGlvbjogOGU4ZjU5ZDAwN2Nh
OGQ2MGVjNzc1NjU2NjNjZjYyODViOGFjYmJkNA0Kb2Vjb3JlOiAxOGEwYzMxYjMzODZhYTVhMDRl
YjhlZThlODA0YzI0MTVhNjFlYWFmDQpwb2t5OiA5NTA2NmRkZTY4NjFlZTA4ZmRiNTA1YWIzZTA0
MjIxNTZjYzI0ZmFlDQoNCkZ1bGwgVGVzdCBSZXBvcnQ6DQoNCmh0dHA6Ly9kb3dubG9hZHMueW9j
dG9wcm9qZWN0Lm9yZy9yZWxlYXNlcy95b2N0by9taWxlc3RvbmVzL3lvY3RvLTQuMV9NMS90ZXN0
cmVwb3J0LnR4dA0KDQoNCktub3duIElzc3VlOg0KDQpUaGVyZSB3YXMgYW4gaXNzdWUgaWRlbnRp
ZmllZCBpbiB0ZXN0aW5nIHdpdGggdGhlIDUuMTUga2VybmVsIHBvaW50IHJlbGVhc2UgaW5jbHVk
ZWQgaW4gTTEgd2l0aCBhbiBvb3BzIGZyb20gdGhlIGZyYW1lYnVmZmVyIGNvZGUuIFRoaXMgaXMg
Y29uZmlybWVkIHRvIGJlIGZpeGVkIGluIG5ld2VyIDUuMTUgcG9pbnQgcmVsZWFzZXMgYW5kIHRo
b3NlIGFyZSBpbmNsdWRlZCBvbiBtYXN0ZXIgYW5kIHdpbGwgYmUgaW4gTTIuDQoNCg0KVGhhbmsg
eW91Lg0KDQpDaGVlIFlhbmcNCmNoZWUueWFuZy5sZWVAaW50ZWwuY29tPG1haWx0bzpjaGVlLnlh
bmcubGVlQGludGVsLmNvbT4NCllvY3RvIFByb2plY3QgQnVpbGQgYW5kIFJlbGVhc2UNCg==

--_000_DM5PR1101MB2361181B071B4959F24E2FD7B9A99DM5PR1101MB2361_
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
cCBjbGFzcz0iTXNvTm9ybWFsIj5XZSBhcmUgcGxlYXNlZCB0byBhbm5vdW5jZSB0aGUgZmlyc3Qg
bWlsZXN0b25lIHJlbGVhc2UgZm9yIFlvY3RvIFByb2plY3QgNC4xICh5b2N0by00LjFfTTEpIGlz
IG5vdyBhdmFpbGFibGUgZm9yIGRvd25sb2FkLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Eb3du
bG9hZDo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fkcy55
b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4xX00xIj5o
dHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFzZXMveW9jdG8vbWlsZXN0b25l
cy95b2N0by00LjFfTTE8L2E+PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPmJpdGJha2U6IDZhMzQ2
ZGY1MWI5NmE2YzBlMWVlNTE2ZGYzNmViMGI2YzI5MmIwNjM8bzpwPjwvbzpwPjwvcD4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPm1ldGEtYWdsOiAzYTBiN2E5NjViYTM3MGNhMWZiZTJjYTBlMmFjM2Jh
YmFjZTUyMDRkPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLWFybTog
MGM0YzMzZGUwOWFhOTIxY2FmY2VhMmFkNGI3YmMwZTE5Zjg0NDIxMzxvOnA+PC9vOnA+PC9wPg0K
PHAgY2xhc3M9Ik1zb05vcm1hbCI+bWV0YS1hd3M6IGIyZjVlZjdlNzI0ZDNhMjI3MWVmOTlkNzQ4
NzM0NTc4Y2Y4ZmNiMWE8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEt
Z3BsdjI6IGQyZjhiNWNkYjI4NWI3MmE0ZWQ5MzQ1MGY2NzAzY2EyN2FhNDJlOGE8bzpwPjwvbzpw
PjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtaW50ZWw6IGViYjhjMWMyNmU1N2U3ODU2
Mzc2MDQzMWE1N2I2ZGEzODhiODJiZTI8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPm1ldGEtbWluZ3c6IGE5MDYxNGE2NDk4YzMzNDU3MDRlOTYxMWYyODQyZWI5MzNkYzUxYzE8
bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPm1ldGEtb3BlbmVtYmVkZGVkOiA5
MGZmNTNiOGRmMWUzMjU5Y2JjMjAxYzY1OGE0ZjNmNGRkZGYzYWE4PG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5tZXRhLXZpcnR1YWxpemF0aW9uOiA4ZThmNTlkMDA3Y2E4ZDYw
ZWM3NzU2NTY2M2NmNjI4NWI4YWNiYmQ0PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj5vZWNvcmU6IDE4YTBjMzFiMzM4NmFhNWEwNGViOGVlOGU4MDRjMjQxNWE2MWVhYWY8bzpw
PjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPnBva3k6IDk1MDY2ZGRlNjg2MWVlMDhm
ZGI1MDVhYjNlMDQyMjE1NmNjMjRmYWU8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RnVsbCBUZXN0
IFJlcG9ydDo8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGEgaHJlZj0iaHR0cDovL2Rvd25sb2Fk
cy55b2N0b3Byb2plY3Qub3JnL3JlbGVhc2VzL3lvY3RvL21pbGVzdG9uZXMveW9jdG8tNC4xX00x
L3Rlc3RyZXBvcnQudHh0Ij5odHRwOi8vZG93bmxvYWRzLnlvY3RvcHJvamVjdC5vcmcvcmVsZWFz
ZXMveW9jdG8vbWlsZXN0b25lcy95b2N0by00LjFfTTEvdGVzdHJlcG9ydC50eHQ8L2E+PG86cD48
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+S25vd24gSXNzdWU6PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48
bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRoZXJlIHdhcyBhbiBp
c3N1ZSBpZGVudGlmaWVkIGluIHRlc3Rpbmcgd2l0aCB0aGUgNS4xNSBrZXJuZWwgcG9pbnQgcmVs
ZWFzZSBpbmNsdWRlZCBpbiBNMSB3aXRoIGFuIG9vcHMgZnJvbSB0aGUgZnJhbWVidWZmZXIgY29k
ZS4gVGhpcyBpcyBjb25maXJtZWQgdG8gYmUgZml4ZWQgaW4gbmV3ZXIgNS4xNSBwb2ludCByZWxl
YXNlcyBhbmQgdGhvc2UgYXJlIGluY2x1ZGVkIG9uIG1hc3RlciBhbmQgd2lsbCBiZSBpbg0KIE0y
LjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPlRoYW5rIHlvdS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Q2hlZSBZYW5n
PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YSBocmVmPSJtYWlsdG86Y2hl
ZS55YW5nLmxlZUBpbnRlbC5jb20iPmNoZWUueWFuZy5sZWVAaW50ZWwuY29tPC9hPjxvOnA+PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+WW9jdG8gUHJvamVjdCBCdWlsZCBhbmQgUmVs
ZWFzZTxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_DM5PR1101MB2361181B071B4959F24E2FD7B9A99DM5PR1101MB2361_--

