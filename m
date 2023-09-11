Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2CDEC71153
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 00:18:14 +0000 (UTC)
Received: from esa8.fujitsucc.c3s2.iphmx.com (esa8.fujitsucc.c3s2.iphmx.com [68.232.159.88])
 by mx.groups.io with SMTP id smtpd.web11.48238.1694391485000673941
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 17:18:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=hjZlH5hs;
 spf=pass (domain: fujitsu.com, ip: 68.232.159.88, mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1694391484; x=1725927484;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=rvBdVUBp50H8TVzG5YdlL6MQH4WtXzzerxcprzosync=;
  b=hjZlH5hs0RSeF+GkhgX2Cae1X4Yi8RNgps6zjQkmkpWkxEkoRa0B/pcE
   YMLkCGwdJKyDYRUe9umn2fPZXimptRk3Gkf4aXGJ0p6rIZyYm9yVHyEYR
   5wsGrgMIh8jPjDBQOGdHPEwlWvOfwEt8wdGtuhnBB8LcAtVCR7lPWuGlu
   H2Eq7hCspMj62MY3lJHfHfhbVpQOfFovAx6w2G6FNPvNolI5RT0+/5IH2
   ECxNkEGMedyXLlWIrZ73oWcl4w+unceWMIinr7gQSVmeII8Lzz8ex3qgw
   YBA2hhc70MYRR/+mtk78utBpYs0NIRwNiqAcDQ9LTHJveIHkrBHIRlRNP
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="94788786"
X-IronPort-AV: E=Sophos;i="6.02,243,1688396400"; 
   d="scan'208";a="94788786"
Received: from mail-tycjpn01lp2176.outbound.protection.outlook.com (HELO JPN01-TYC-obe.outbound.protection.outlook.com) ([104.47.23.176])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Sep 2023 09:18:01 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hpQJJfdclaydotujZvXciwm4wkf4VaFzjkiZbGsiS0C+IxmNyaWuhWWy0oALrWEVGvEdckp6lbIwQ7TI7ZY55fHq2lkFy0Q14U/ytiavlMdYM7bfFsGQfVnBz3XQab4BBvAVN4L4uY6wq6nSPouINL5K65b7xrCbDPeF89sLYTsAROE7QHcFH8zxms1TbIc3qRgD9gpLyckBw409nBzQqWqQFXN/7lwHQytBm1/fb0Y5uC73p0MFsZBgmPaYkXWmUB7AxFHrNWVCuhCFX37Kbb3ltRTRB3RV56mf1jxRBcU5l5zbxQO8XvH6YS7+NshcFikcHykvDLORHRxuwQtvjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rvBdVUBp50H8TVzG5YdlL6MQH4WtXzzerxcprzosync=;
 b=fICc7a1FY0zM+gORuJJTKXBDLgDw/Vt5KXs3hSwe3m6tvocQAA9BzGP7qiksxok7VrL73KwdspjGbLya4fMzb9xgHrRNg6ZwD5HNkfdZ4Ad8BHiRl+egqqI4AdD5WY/maDwk2nH8tXXV0uMaarhXTL5rkmSjykrZ1TPK2lBo98wJD6zKynr4Tr0G0jwjsoGKmE4sKOmEcWXmK6n0wm72hg0agDmZB8Qy9Rlx7Yyb7tdh8UZgzZJTJW6WI6Ulm5praUK1XS/ZXuI+EzcXWv6Ra5m6KZxFn3V00h1bJ87C1s1BR8UxkYIcoEVChicZgSOjzZmRfROxaSp5dSfYOjfnLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by TY3PR01MB11305.jpnprd01.prod.outlook.com (2603:1096:400:3d0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35; Mon, 11 Sep
 2023 00:17:57 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::200b:f52:be15:5e50]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::200b:f52:be15:5e50%5]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 00:17:57 +0000
From: "Maohui Lei (Fujitsu)" <leimaohui@fujitsu.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"Jjpuhlman@mvista.com" <Jjpuhlman@mvista.com>
Subject: RE: [yocto] [meta-cgl][PATCH] resource-agents: Fix build error with
 autoconf-2.73.
Thread-Topic: [yocto] [meta-cgl][PATCH] resource-agents: Fix build error with
 autoconf-2.73.
Thread-Index: AQHZ2isPEZlJrgeNbkGcy1Zj/6vizLAU1lNg
Date: Mon, 11 Sep 2023 00:17:57 +0000
Message-ID: 
 <OS0PR01MB6178AACF3574118C490FAA9AA0F2A@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: <177FBDC5214452E2.29216@lists.yoctoproject.org>
In-Reply-To: <177FBDC5214452E2.29216@lists.yoctoproject.org>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?shift_jis?B?TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZl?=
 =?shift_jis?B?Y2UwNTBfQWN0aW9uSWQ9Zjk3NzU0OWItYTA3Yi00M2NkLTg1OWMtM2I3?=
 =?shift_jis?B?OTJmNDkwYjNhO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFi?=
 =?shift_jis?B?NGQtM2IwZjRmZWNlMDUwX0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF9h?=
 =?shift_jis?B?NzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfRW5hYmxl?=
 =?shift_jis?B?ZD10cnVlO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQt?=
 =?shift_jis?B?M2IwZjRmZWNlMDUwX01ldGhvZD1TdGFuZGFyZDtNU0lQX0xhYmVsX2E3?=
 =?shift_jis?B?Mjk1Y2MxLWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9OYW1lPUZV?=
 =?shift_jis?B?SklUU1UtUkVTVFJJQ1RFRIHKwMs7TVNJUF9MYWJlbF9hNzI5NWNjMQ==?=
 =?shift_jis?B?LWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9TZXREYXRlPTIwMjMt?=
 =?shift_jis?B?MDktMTFUMDA6MTc6MjBaO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00?=
 =?shift_jis?B?MmFjLWFiNGQtM2IwZjRmZWNlMDUwX1NpdGVJZD1hMTlmMTIxZC04MWUx?=
 =?shift_jis?Q?-4858-a9d8-736e267fd4c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS0PR01MB6178:EE_|TY3PR01MB11305:EE_
x-ms-office365-filtering-correlation-id: 24fd00fa-2d77-422c-624e-08dbb25c8d0d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UbdZcllGxEHVkqpUOzppC0ObmV7rSAJrgBrooBPUPTrV9TUCioyEER97iJSpCNFEPA3DzaxoEeR7HbdExb+puEHxSTSP4fo5mblBw2GX2iqKpflqaSlu4f81aANd0L4iS4xQ3NwZpNoQ07LKntkK2jYlqIsoWEqsKVR1ewQ9aZ0Int0U3uUh4KGlMl2ntyTSLWzJ0qzoOEoJ5ITr1gZZFed2nOK65Jp/gpDFexyfKAuGUCJaepoI7YLCBOOINqPgROojdnJJfTI25RHSipQxSZ9Iis4V/wxpws6MKLQeYoUEzLAiPDsJbbbZ0+YhF7I8zAfZXZmoaesi8XIROR62ky1kV+kAI7N+AE2Yes+mPh9LDEAOML2TpgqCa+glKtKs/7jMEy63wROqnR+OTi22y5mdfDh0sXkIKHUMzPoIJ/AUE15GOm/EU1p1el8EfMGg5qlk22CmJbpe31OUBWssLwxZwnwGqu2OAcO452jF+W65dn53FkIImA099vx0tufKwJeD+mBFu8Lzmxl3Tc9+1vfTrxX3opS3f9tZyn66wda0fx6LqrkcwEhHW27JAWd8xC+zNgoPcHfWf/eEj4Oq40Yn8hFot0zhZ1h8DvYeKkmqsbNSgcNFRQCjCPyrVA4Hg8xUfOS2LotufjHCOzA1FA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(366004)(136003)(39860400002)(346002)(376002)(1800799009)(186009)(451199024)(1590799021)(1580799018)(6506007)(7696005)(53546011)(71200400001)(9686003)(478600001)(83380400001)(26005)(2906002)(64756008)(66446008)(66476007)(66556008)(66946007)(316002)(76116006)(110136005)(41300700001)(52536014)(5660300002)(8676002)(8936002)(86362001)(82960400001)(85182001)(33656002)(55016003)(38070700005)(38100700002)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?UVVZWTlHcXpOdEp4REx6SU5GK0hqNVVnbFdyZ3hTRG5HMDhRRkluMGY2?=
 =?shift_jis?B?RGlFSGYyaHdES1NOOHE4bzRtNU5NSEMybjBMUU44aXV4bnVlanFpWnJI?=
 =?shift_jis?B?TWNuZklQcmQyWFAreFlHZWRmbFhRVjI4MnRGRWo0RUpjTjBUZ1lPMWVm?=
 =?shift_jis?B?c3dMOXVSajlNK2VIUDZBRmM3ZFZ4TXJML2dwRDNZaGh3QWwybWhaM1Ez?=
 =?shift_jis?B?OVlUN0hpVnBHeUJ6cWxkc3FESjU4bXgxZkg5STRUd3gvemJiQk03RmF0?=
 =?shift_jis?B?RFZ6a284eG9PZjM4eVFiQm0xV1JCaGx5SGd3cGFSajhNcVIrNm5rODUx?=
 =?shift_jis?B?cFN3c0xxS3RaVmlCcDZPbzRSSEMzZ1M2ekQvWHJ1VUZJYnBnK05sK09a?=
 =?shift_jis?B?clNZekx6Z0hNNWxsTUZBclp5VEVmR2FaS3V5anFDSjkwc2VrbHZoZkZh?=
 =?shift_jis?B?b25lYWN3SDQrZVRTSUNOdFVqRkpXbk9vcVJEb1FXcyt1aE84MURLTG9U?=
 =?shift_jis?B?djBrRDdCYkVnTXVQcnZMSi9MZzFsREd4b21MN3NqUDNzNG11aTJ2dDFx?=
 =?shift_jis?B?MlBORDUvd3c2QTVmS1VLbzJ3aG83TWhCM1UrU005Rlg3UnA1WjEwY2xk?=
 =?shift_jis?B?T1NHRCtFbXpMZmg3UndVem4ydTZZZWtFMUt1OURLcCsxUWhsVkY0ZEZo?=
 =?shift_jis?B?Umt6cDhZNG1SaUF4UFhRdzF1cjFHZ3BmTm1PK2NtQnZybWJUVzV5dGIy?=
 =?shift_jis?B?dU9PTXAxR3RTK0p6K251WjRqSmR0MWZpeC9DNTF2SnA5YitrNHJ6czl0?=
 =?shift_jis?B?NUpNeGxTMStLYzA1dzBLamgyR250SDRORENuL0R4K1VueHBPYUwwT0x5?=
 =?shift_jis?B?ZGZienQ4Mm85bTBnamozUmpEakZuREZIVFIwdXp2blFBYkhvZDR1ZVBX?=
 =?shift_jis?B?VXJSRmtheGhVclhmT2YyR09Cd2lmbnNYcDg5ZmVCTzlJR1VYc0Nxc1Fq?=
 =?shift_jis?B?NE1RbGxsNWFjV2s4K0pjWVA0dlZicVlGajRLZEptSVUydEMrQnlhSDM5?=
 =?shift_jis?B?bmRvejVUdDlOS2NjYUdObElsN3oraUpnNHYxRkczZDRNaGE5ZTdzSVVi?=
 =?shift_jis?B?dGJHL1lsV0cxOG96RmNNMElab2V6VVA4aFVNK21BL0lFQy83eVh6Ykli?=
 =?shift_jis?B?c3hoSm9makVpMlVVcUo1MkdaNjl5V0JkVjFielUxa0d2UXZTamtzQ2Zq?=
 =?shift_jis?B?VmhNRFJCdzlRc0dvUzRMc094Um1LbkFOTkg5Q0xZMFdJOUhwTXFXdW9h?=
 =?shift_jis?B?U0ZZN0dOZExvaFpsQXcvMUpwQzZoNG9xSDVTV0Zhd2wrZ3JYNTF5T1Vl?=
 =?shift_jis?B?ejlZdUhWMzd0SVY4aDQrOGNpVHdmVzhwUUNFc290djJxVExFdFR6RUNH?=
 =?shift_jis?B?UjVQUHp0aWV2dUdwUlFoWGVGK1krYkkyZFhJV3ZOL3JwMThVU2hDNHo2?=
 =?shift_jis?B?UUphd0I4UGxCdWxmL3pVVTFMSGRYMEpSekZPNzRiN0cyblorTWZ0Vndv?=
 =?shift_jis?B?TG9VWGRhQTJvMVd1SmhxMjdqOU1iMXdQTkRzNFpURERMS1ZOWHBIUE9W?=
 =?shift_jis?B?QU1GN0pwQXJxYmdYZzcrZ3lWT1dTUjZQSjF1KythOGExenVTOGdtTFFy?=
 =?shift_jis?B?SkNqbng2ak11blJSMGVPQnZRWHl4aEYxS08xcjAxWmppbG0zRzYvb1JP?=
 =?shift_jis?B?TmIzRnJZajdHUmkwdlE3MEIraW45YXQyOTEwaXUrT293WXJ2d3lvZzBp?=
 =?shift_jis?B?eWw3NXJGVkF5WWtsYmh5elNRSVVWK3VlOURSc2NoL1BNKzhma0tXakp3?=
 =?shift_jis?B?ekkzODR1QkNvMFBudFN6UVhBMk02T2lkZ1RVa3pSQWI5MUFHbzFpdFcr?=
 =?shift_jis?B?QzJOemNvdDF6VGlDYXpjNGQza2FFZGxWRjhYR0hPcTdiWWEvQVpHVHRp?=
 =?shift_jis?B?VXdZRmhNU1h3R1pDdmFpUzYwKzdEdmJZSS9KdU5NRnJPRWVXcHJpU0ZE?=
 =?shift_jis?B?V1c2QzlwL1d4U2t5NGZ1Z2VqMW14UStZU1ZlU0w1UVVwSDc2N3RLME9C?=
 =?shift_jis?B?cUxHbHhyQUtSRCtpcDVVL2E4eUl3ckZrSmtWa1VoenJTNlkyc1JCb3Vs?=
 =?shift_jis?B?WlRBcTBKRVVtY0pSWUcrVUFvaU5MbkhpNVpDa245cTJIQTRBOXFneWE3?=
 =?shift_jis?B?b3Nsam85TEl1S3Fpc1oxT3RxVmR5VjM5VUlqSEIrU1NkUWJTU0JBOVM0?=
 =?shift_jis?Q?6JtO?=
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	Soyx9V6ACsPWdoYBMjnwxPeihTJfS+3/RcdZwYyoqMegpaPHqFNQQsuHMDktXCmWOKoujDJOvA4QnV1DsUk4EkQHhB0MHEjcpUhU/LKjRFk480lSKhBVDo6TXkvpRqhGoRY3CXWIWhQ9oTF3xquYgxIYw3xmRXekAfQ2XaMTxYypU1kArr7c/eEj7nXv/I5QhrnulC9zLmFhnM/hrzdmWG9K8RMWIccdC3FPRZvO5wopR+dSEKID0Izp1EtPZjtSt0Ph3Oz0pNZJcvCG29bkgkAMQIzv0ar3DeVbDwjh8Tt5GJRUfTp2AmH8d4dW/IsAr1yrdAsvWafziuneAL5zZkFZADwfQ4EuySvW3o0eW9+pxqPuTv1pLmUaXPvU/8OBph+BoYdc75JvIHz1AhvGbTFxOZZunvSgNvthqN0LduNehQB2aqWqj65CkftRhnkpTgHS6lJU04DEKBxYul5+HvzoUMa3HnCKPKGOwna0i8uQRze02TwhYz9eA+mmjVfrjzpaFlwLDxvdIlEtwbRGoJTB/lID2t9JjU3mKQGJqdAoFJW9eoU/3VVCc9ABJ2vrWtnb9cP1bXAqd9oWCA3o93qpYorFArIEHg5BbjFFbBcsHNv+Z3Hz6k+qEYDZtWT4n0s3EW+T+h8PLljNMbq+Mtts0OxMMiR8HTbh6tJLWkzUVtnK+oUcxJBx/NEE786pYrvpe/38CgO5fl9NKUDOqLzgwafHRspT7MUWAxDuPAZvXyqyMxzIhBiq88RLg96fkyUGbeg9YGzzsEUDu0oerJ3u/AzDtIspXki5uOjpzyBrxZqLlxVLH5JA7o60zkdY
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24fd00fa-2d77-422c-624e-08dbb25c8d0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 00:17:57.5949
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eWtvkml2a+aXSIHWnqPYFOnXXyEziMi29kD2SSBvXXrgehvbqBdahVE5HWLXaEGTSVG4ZbNvUTFsVb78skaMuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY3PR01MB11305
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 00:18:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60961

cGluZw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlvY3RvQGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFs
ZiBPZg0KPiBsZWltYW9odWkNCj4gU2VudDogVHVlc2RheSwgQXVndXN0IDI5LCAyMDIzIDExOjQ0
IEFNDQo+IFRvOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IENjOiBMZWksIE1hb2h1
aSA8bGVpbWFvaHVpQGZ1aml0c3UuY29tPg0KPiBTdWJqZWN0OiBbeW9jdG9dIFttZXRhLWNnbF1b
UEFUQ0hdIHJlc291cmNlLWFnZW50czogRml4IGJ1aWxkIGVycm9yIHdpdGgNCj4gYXV0b2NvbmYt
Mi43My4NCj4gDQo+IEZyb206IExlaSBNYW9odWkgPGxlaW1hb2h1aUBmdWppdHN1LmNvbT4NCj4g
DQo+IHJlc291cmNlLWFnZW50cyBpcyBidWlsdCBmYWlsZWQgYWZ0ZXIgcG9reSB1cGdyYWRlZCBh
dXRvY29uZiB0byAyLjczLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTGVpIE1hb2h1aSA8bGVpbWFv
aHVpQGZ1aml0c3UuY29tPg0KPiAtLS0NCj4gIC4uLi9yZXNvdXJjZS1hZ2VudHMvYXV0b2NvbmYt
Mi43My5wYXRjaCAgICAgICB8IDMwICsrKysrKysrKysrKysrKysrKysNCj4gIC4uLi9yZXNvdXJj
ZS1hZ2VudHNfNC41LjAuYmIgICAgICAgICAgICAgICAgICB8ICAxICsNCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMzEgaW5zZXJ0aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+IG1ldGEtY2ds
LWNvbW1vbi9yZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291cmNlLWFnZW50cy9yZXNvdXJjZS1hZ2Vu
dHMvYXV0b2NvDQo+IG5mLTIuNzMucGF0Y2gNCj4gDQo+IGRpZmYgLS1naXQNCj4gYS9tZXRhLWNn
bC1jb21tb24vcmVjaXBlcy1jZ2wvY2x1c3Rlci1yZXNvdXJjZS1hZ2VudHMvcmVzb3VyY2UtYWdl
bnRzL2F1dG9jDQo+IG9uZi0yLjczLnBhdGNoDQo+IGIvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMt
Y2dsL2NsdXN0ZXItcmVzb3VyY2UtYWdlbnRzL3Jlc291cmNlLWFnZW50cy9hdXRvYw0KPiBvbmYt
Mi43My5wYXRjaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwLi5hZjE4
OGQyDQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvbWV0YS1jZ2wtY29tbW9uL3JlY2lwZXMtY2ds
L2NsdXN0ZXItcmVzb3VyY2UtYWdlbnRzL3Jlc291cmNlLWFnZW50DQo+ICsrKyBzL2F1dG9jb25m
LTIuNzMucGF0Y2gNCj4gQEAgLTAsMCArMSwzMCBAQA0KPiArRnJvbSA3NDlkMTBkNGM2MWE4NGQ4
YmE1MDZmMTc4ZGFlZGVkYWM4MDYyYzNmIE1vbiBTZXAgMTcgMDA6MDA6MDANCj4gMjAwMQ0KPiAr
RnJvbTogTGVpIE1hb2h1aSA8bGVpbWFvaHVpQGZ1aml0c3UuY29tPg0KPiArRGF0ZTogV2VkLCAx
NiBBdWcgMjAyMyAwMjo0MzowOCArMDAwMA0KPiArU3ViamVjdDogW1BBVENIXSBhdXRvY29uZi0y
Ljc6DQo+ICsNCj4gK1RvIGZpeCBidWlsZCBlcnJvciB3aXRoIGF1dG9jb25mLTIuNzoNCj4gKw0K
PiArfCBjb25maWd1cmU6IGVycm9yOiBpbg0KPiAnL2hvbWUvYWFyY2g2NC10ZXN0L3RtcC93b3Jr
L2FhcmNoNjQtdWJpbnV4LWxpbnV4L3Jlc291cmNlLWFnZW50cy80LjUuMC1yMA0KPiAvYnVpbGQn
Og0KPiArfCBjb25maWd1cmU6IGVycm9yOiBDIHByZXByb2Nlc3NvciAiYWFyY2g2NC11YmludXgt
bGludXgtZ2NjIC1FDQo+IC0tc3lzcm9vdD0vaG9tZS9hYXJjaDY0LXRlc3QvdG1wL3dvcmsvYWFy
Y2g2NC11YmludXgtbGludXgvcmVzb3VyY2UtYWdlbnRzDQo+IC80LjUuMC1yMC9yZWNpcGUtc3lz
cm9vdCAgIC1mc3RhY2stcHJvdGVjdG9yLXN0cm9uZyAgLU8yDQo+IC1EX0ZPUlRJRllfU09VUkNF
PTIgLVdmb3JtYXQgLVdmb3JtYXQtc2VjdXJpdHkgLVdlcnJvcj1mb3JtYXQtc2VjdXJpdHkiDQo+
IGZhaWxzIHNhbml0eSBjaGVjaw0KPiArDQo+ICtVcHN0cmVhbS1TdGF0dXM6IEluYXBwcm9wcmlh
dGUNCj4gK1NpZ25lZC1vZmYtYnk6IExlaSBNYW9odWkgPGxlaW1hb2h1aUBmdWppdHN1LmNvbT4N
Cj4gKy0tLQ0KPiArIGNvbmZpZ3VyZS5hYyB8IDEgLQ0KPiArIDEgZmlsZSBjaGFuZ2VkLCAxIGRl
bGV0aW9uKC0pDQo+ICsNCj4gK2RpZmYgLS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1cmUu
YWMgaW5kZXggZDY4MmFkNzgwLi44NDQ0NGE1MjUNCj4gKzEwMDY0NA0KPiArLS0tIGEvY29uZmln
dXJlLmFjDQo+ICsrKysgYi9jb25maWd1cmUuYWMNCj4gK0BAIC04ODMsNyArODgzLDYgQEAgZWxz
ZQ0KPiArCQktV25vLXN0cmljdC1hbGlhc2luZw0KPiArCQktV3BvaW50ZXItYXJpdGgNCj4gKwkJ
LVdzdHJpY3QtcHJvdG90eXBlcw0KPiArLQkJLVd1bnNpZ25lZC1jaGFyDQo+ICsJCS1Xd3JpdGUt
c3RyaW5ncyINCj4gKw0KPiArICMgQWRkaXRpb25hbCB3YXJuaW5ncyBpdCBtaWdodCBiZSBuaWNl
IHRvIGVuYWJsZSBvbmUgZGF5DQo+ICstLQ0KPiArMi4zNC4xDQo+IGRpZmYgLS1naXQNCj4gYS9t
ZXRhLWNnbC1jb21tb24vcmVjaXBlcy1jZ2wvY2x1c3Rlci1yZXNvdXJjZS1hZ2VudHMvcmVzb3Vy
Y2UtYWdlbnRzXzQuNS4wDQo+IC5iYg0KPiBiL21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9j
bHVzdGVyLXJlc291cmNlLWFnZW50cy9yZXNvdXJjZS1hZ2VudHNfNC41LjANCj4gLmJiDQo+IGlu
ZGV4IDc2NGExZDIuLjM1NzY2OWEgMTAwNjQ0DQo+IC0tLQ0KPiBhL21ldGEtY2dsLWNvbW1vbi9y
ZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291cmNlLWFnZW50cy9yZXNvdXJjZS1hZ2VudHNfNC41LjAN
Cj4gLmJiDQo+ICsrKyBiL21ldGEtY2dsLWNvbW1vbi9yZWNpcGVzLWNnbC9jbHVzdGVyLXJlc291
cmNlLWFnZW50cy9yZXNvdXJjZS1hZ2VudA0KPiArKysgc180LjUuMC5iYg0KPiBAQCAtMjEsNiAr
MjEsNyBAQCBTUkNfVVJJID0NCj4gImdpdDovL2dpdGh1Yi5jb20vQ2x1c3RlckxhYnMvcmVzb3Vy
Y2UtYWdlbnRzO2JyYW5jaD1tYWluO3Byb3RvY29sPWh0dA0KPiAgICAgICAgICAgICBmaWxlOi8v
Zml4LWluc3RhbGwtc2gtbm90LWZvdW5kLnBhdGNoIFwNCj4gICAgICAgICAgICAgZmlsZTovLzAw
MDEtbGRpcmVjdG9yZC5zZXJ2aWNlLmluLXVzZS1ydW4taW5zdGVhZC1vZi12YXItcnVuLnBhdGNo
DQo+IFwNCj4gDQo+IGZpbGU6Ly8wMDAxLWxkaXJlY3RvcmQuc2VydmljZS5pbi1zZXQtY29ycmVj
dC1wYXRoLW9mLXJtLWNvbW1hbmQucGF0Y2ggXA0KPiArICAgICAgICAgICBmaWxlOi8vYXV0b2Nv
bmYtMi43My5wYXRjaCBcDQo+ICAgICAgICAgICAgIg0KPiANCj4gIFNSQ1JFViA9ICJmZWUxODEz
MjA1NDczNjVkN2Y4Yzg4Y2NhMmIzMjgwMTQxMmI5MzNkIg0KPiAtLQ0KPiAyLjI1LjENCg0K

