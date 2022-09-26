Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1401EC6FA82
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 08:46:16 +0000 (UTC)
Received: from esa18.fujitsucc.c3s2.iphmx.com (esa18.fujitsucc.c3s2.iphmx.com
 [216.71.158.38])
 by mx.groups.io with SMTP id smtpd.web08.26055.1664181965775607232
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 01:46:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj1 header.b=L67gzzcR;
 spf=neutral (domain: fujitsu.com, ip: 216.71.158.38,
 mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj1;
  t=1664181966; x=1695717966;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=Q9MCeUOxvLyJAn6rhgbx6Cr+/SuyRzN3f9gQIfRwQtE=;
  b=L67gzzcRriC6c3A/gqdL/rLx1xks7blgVQzY10Hbu37fWl4UVPE7taHG
   AtP2z91AWcJd5q3RNJv0x4ERmYNbJGJVQeOADKlC091Kz/IQ66dg45C5q
   +o8Z/CNxsl6jI2lgOJE8DLtv8WxEzMiOpR9k+I1UXJJ1ws9ui9U1iyt0V
   ByQpUe8/o4ivgEbp0dNKj/8lu6xND4g1ZrCdFr6lXKY450PHHDWuIW8q0
   giDCzoUN39lM3nkF/KI53fGGmmkLov2BOFBt1PzzWtmrK2phh4v9blLcV
   vC1CzleHkqPwmCUkznJVvVEAZL7nfWdRQ3mPdUTSiCKdWcBi1sylUTaqJ
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10481"; a="67704540"
X-IronPort-AV: E=Sophos;i="5.93,345,1654527600";
   d="scan'208,217";a="67704540"
Received: from mail-os0jpn01lp2110.outbound.protection.outlook.com (HELO
 JPN01-OS0-obe.outbound.protection.outlook.com) ([104.47.23.110])
  by ob1.fujitsucc.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 17:45:04 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WcJMU8zERZAJOyNNJjt/tXvLpDBV4jq6Nx1lxG4nWjPpF+gz357q8HJHiVtzXloed6DbVzt/maZ39dL7IH17Jql6P9sjcxv0OddLpxqmXynjwrBsTAonngmMyuGKsgxKsibmxw4zNVgVJGcnf9Uc+skuWlCTJJnXoExQf0CF+JsSx++o24HfmFtiFRfApbFoqdhNOHAwaenuPxXBoK7KqEc2ajRYUrvFJOD9y+OY6jTkHrWrcLX4WvtZRRSsXckS4A9gQRNtK276oS5cxeak69FPTWRKR+JCXrIY5nCPW+0AO5/0hCy7hjjmP80iHt+T30Im6z/qEuYbfprtRR50dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Jkb3WyNQnBAiah3Mo3JrWhDrBZ+HJjlrptGt1A5Gbk=;
 b=C186Cm3WSO348a65aUSEac0L1IOCb/t5wv3lVx3JNyy5/6sfYNcYAEJZTnm3r5CQyuC0+6r7Y44Puikhu1Ik9FPMQfoK9BFHnLw5C/RBekj1RSlBIdW6bnGdC2WT8GgsU+eXjHPmQ0aKxdTTlLgmSRFfIMEl2uoQIViPjd9Kz1xqFL/tXOB3XcU72w8f0S6y8cdP0SVIXVtVDPZR/1Qp85Yn/iV8ap/YzrWMUBE5TbdH6HOT7vH5pkovSRmCkgAXQxRQJls8m8JYP5t0mHDnYoVtsuBROOVMvATxqMcxLFyzG+BSmhjv/c6q4RQ7SUJjV144X5w7amBM0O5JcqXCfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fujitsu.com; dmarc=pass action=none header.from=fujitsu.com;
 dkim=pass header.d=fujitsu.com; arc=none
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com (2603:1096:604:cd::13)
 by TYWPR01MB10644.jpnprd01.prod.outlook.com (2603:1096:400:2a1::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Mon, 26 Sep
 2022 08:45:00 +0000
Received: from OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::e1e5:53e7:911:1668]) by OS0PR01MB6178.jpnprd01.prod.outlook.com
 ([fe80::e1e5:53e7:911:1668%5]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 08:45:00 +0000
From: "leimaohui@fujitsu.com" <leimaohui@fujitsu.com>
To: "martin.leduc@luminator.com" <martin.leduc@luminator.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] meta-spdxscanner
Thread-Topic: [yocto] meta-spdxscanner
Thread-Index: AdjDkApYzxHc3YO9SVOzQkaNTkr0QwN83yiQ
Date: Mon, 26 Sep 2022 08:45:00 +0000
Message-ID: 
 <OS0PR01MB6178419EDFEA4DD466F767AEA0529@OS0PR01MB6178.jpnprd01.prod.outlook.com>
References: 
 <PA4P189MB1183671D8AA8D2859685348C96409@PA4P189MB1183.EURP189.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PA4P189MB1183671D8AA8D2859685348C96409@PA4P189MB1183.EURP189.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 =?shift_jis?B?TVNJUF9MYWJlbF9hNzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZl?=
 =?shift_jis?B?Y2UwNTBfQWN0aW9uSWQ9MjE1NjJhZjUtODIzOC00NWIzLWE0ZTItMGNh?=
 =?shift_jis?B?NmRlNGYxYjkzO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFi?=
 =?shift_jis?B?NGQtM2IwZjRmZWNlMDUwX0NvbnRlbnRCaXRzPTA7TVNJUF9MYWJlbF9h?=
 =?shift_jis?B?NzI5NWNjMS1kMjc5LTQyYWMtYWI0ZC0zYjBmNGZlY2UwNTBfRW5hYmxl?=
 =?shift_jis?B?ZD10cnVlO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00MmFjLWFiNGQt?=
 =?shift_jis?B?M2IwZjRmZWNlMDUwX01ldGhvZD1TdGFuZGFyZDtNU0lQX0xhYmVsX2E3?=
 =?shift_jis?B?Mjk1Y2MxLWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9OYW1lPUZV?=
 =?shift_jis?B?SklUU1UtUkVTVFJJQ1RFRIHKwMs7TVNJUF9MYWJlbF9hNzI5NWNjMQ==?=
 =?shift_jis?B?LWQyNzktNDJhYy1hYjRkLTNiMGY0ZmVjZTA1MF9TZXREYXRlPTIwMjIt?=
 =?shift_jis?B?MDktMjZUMDg6Mzk6NDRaO01TSVBfTGFiZWxfYTcyOTVjYzEtZDI3OS00?=
 =?shift_jis?B?MmFjLWFiNGQtM2IwZjRmZWNlMDUwX1NpdGVJZD1hMTlmMTIxZC04MWUx?=
 =?shift_jis?Q?-4858-a9d8-736e267fd4c7;?=
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=fujitsu.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OS0PR01MB6178:EE_|TYWPR01MB10644:EE_
x-ms-office365-filtering-correlation-id: 27f92bfb-63dc-4bc2-2875-08da9f9b6619
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 P+FCaHo5ZPgFcZ6HVmBicKgBW2exXvbeBjEMHcfgOGEXLLfL6CBtJVFALGAkqWv11fKkACDkRmXc0Vx8L6MPINCOZ4QIrUKQcfMNplF9FSytbTjeIEV5QYagB7n5RINZjwRmKLcch+JoGNgkE29sGG4nNSKxagz3+4sSmAS6qS6U5RcrSOteS3zgMzOXTUC8aevErW3+qZPHJ676e2eDAlqZCIXt7W6Fba0RkbjFUkJ8OMSZagotvyW9ubNzDGydjJNF7JsUVUerDJoN5gbA5ReVl8fEOb0K7jv9h8ULjIk3wJFUidseBi7Gj6DU0cLz4St1uNdM1E1xpIwyY77IuN8z0nc3UlO3QhfG2Aht2wggWY/PUPf4BywdACHZa9Uq2B9lPKyTEd8T0pXPRF7jjDZfzHM77rhEyctDfxAt/3PeFjiKLqUoGCflwRm2Y4o+Hn7j8ooE1HSJkCpDkcIr/ceYvfFkxjygZ5Dd2rsyaF+XbTwEuCFZe+cwm/9HE5L2R8pTuBmot4DuzdXxakcr9oyr6ix+SHo8opfvBKLWsBZIE3R++BKAOSaIkFckC22u6JlA3TSOFDq6L900w72/uvCXwIoV/gvVqGihddDGkOYPZeQ4XcpDPDfC73JDpg3ue9ALm1ZuckQoj6DkAhecCr8JwnOszizUgUGhWRFg3JzPKewpzueoMF98vT7n4DFlwqCF4SVULEgbNM1e95VjOdJSPZ8Q+m9Qc4cavbzE0ugy6SI0IEBIi8GGfm3HKPItK+xaGa9eznUufYimGVAoAPu5zvD3kZZgJ3JMVwziXn9TbIC0AKHgV8c4UU53I1ro
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS0PR01MB6178.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(346002)(396003)(366004)(136003)(376002)(451199015)(1590799012)(9686003)(26005)(85182001)(53546011)(5660300002)(8936002)(40140700001)(33656002)(2906002)(38070700005)(66476007)(66556008)(66946007)(76116006)(64756008)(66446008)(8676002)(52536014)(7696005)(6506007)(41300700001)(122000001)(38100700002)(86362001)(55016003)(186003)(82960400001)(166002)(1580799009)(316002)(110136005)(71200400001)(83380400001)(478600001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?shift_jis?B?dkRFZmZCSmZpOHlXR3VRU3IyYzhKcEVTZ05SZ2wyMXYyT2dkR1RnVzNr?=
 =?shift_jis?B?aWFhOFhwRHhQMmtZSzFsbjBxWEd1ZTNGdGhMTVFnVHd2aDU3N1MyUkdy?=
 =?shift_jis?B?ekVlS3UyQ1U1bW1DRWUxNHpYbjd3b0pJNzFQdGpWT2pEMWkxNFRiV1lW?=
 =?shift_jis?B?VE1rN3Q1WlFxTmV0Ky9ENzYxeUJObUNqN1RPTkhRMm1uQWFjYTV3czNu?=
 =?shift_jis?B?WU1LKzNuK0NKeUtNVDBVWGpYb1NBWTZ2Z1lGbEhPQ1MweCsyWjhKU3Np?=
 =?shift_jis?B?dE14SGt1RlJnRnoxTUtqcm8zSE83b0gzWFhoWnBXcmFtemRyajYxVGJy?=
 =?shift_jis?B?eTYwYnE3S1RMK2lSd05kTHlFemVYRVh6ZVYrWG5sKzV4WUlIaDNKa0p1?=
 =?shift_jis?B?V25Ia0VnMS8xVkVsM3N4WjJHQlhMMDJDdmhjcXdZalpqQ1ZMZDkva0Rs?=
 =?shift_jis?B?dWxWd1g3M0JzV3Z1MkhIWm9nbWpNNmxUZFB4cllSNU12MGVjbkMrL0tF?=
 =?shift_jis?B?ek8yckN3RTkyS3MvTE5McTUrWDBMeno2VTI2QitsRDlmeXEzYkxoNnQx?=
 =?shift_jis?B?VGxkQS9uSWpsMVNvdTF5S0pON1IzV3p1Q0ZCSnFYSjRvbEFZenNhbWV2?=
 =?shift_jis?B?TDhzRUxpeFpjc2M3c1h1T3JMZkdxWFFBOWdCYUxPdWE1aVhyZk0xajRR?=
 =?shift_jis?B?R1F3ODh0NEVsTW9CemdVellPUTJaWXNrRThGMzNGSzBRc3dtelJVanpO?=
 =?shift_jis?B?ZHlxMmRWYzdWUmErNElNR3QxeFBpM0pZVkZyTnRsaEtzajdVZUpkRXo5?=
 =?shift_jis?B?emFqR3ZWVW1vbUF2QzBRVStqdTdRZzNjTTdoL1JCWkRETmhkYkY5YW1v?=
 =?shift_jis?B?d2UxM25sRXkvMHhuR3NLK2I1eGVwZlF5c2hOZFVXd1R0anZJb2RLbHMz?=
 =?shift_jis?B?TXplVnFnZFBwYmtmV3l5S0MyWDZCaVRIK1h3Qms2SlJZYjFWbHJRTGl2?=
 =?shift_jis?B?MGpyL3ZhOTZiR3ZtV01jMmg2ZUxZbW9WWCtNc2g3SlFTWjFERmpITmd3?=
 =?shift_jis?B?Y09IcVAvUHJ2bmNxNnZmUHZlTlBZNEFwWGd0VHUrbFppNyt4R2huV3dX?=
 =?shift_jis?B?aTFpMGoxSzUrZVZyNHhHQWRzT1ZkbkJvQ01pbFdKbkJVS2pveG1DYStZ?=
 =?shift_jis?B?cG04MVVGS3F4ZTYyMGVKd0dhVXl1N3NqSjFIZzNQd2YzQ2NTeWd4dkFz?=
 =?shift_jis?B?TUMwdTRFQy8yYXhRendJdExGQk54MDFSYnA2dVJSVUJKNWN4b2I4QWo3?=
 =?shift_jis?B?c1J4MkZpbmFTUDJJbFpETXROSnR1bS9QcEpqVDRlSGxSYmxxb1lBMFNE?=
 =?shift_jis?B?QVhEd0wzcTRRZVA2MGxXcmloUVlqQ212Q1AxVDNuaUc3a25OdkZJVzBu?=
 =?shift_jis?B?ZUJYelpqV0x4eDc1ZFdmSk5tZlFISjBVNmJBN09kY08zZFdDY2p6ZDlj?=
 =?shift_jis?B?aTZlbHpXbUlyZnFndXF1YmllVFd3SFlYQW9PWFJRTmhzb3FIci82NXoy?=
 =?shift_jis?B?b3NQdWQzOFhucnhQaGgyTDNkazdlM0N6cG9NVzRJVU4zWGx1TzlER2p3?=
 =?shift_jis?B?VTRONmY2TXk5VHlDMWozRS9kMVdoY2pDcEpBV3lRdXFOOUsxQWVXZGNC?=
 =?shift_jis?B?WDRuQUI4U0haeGlZM1VxQndPd1M1TStOYUNlZDlxdzdHKy95UXZDdDdE?=
 =?shift_jis?B?NFB3QVl0Sk5BclVEMG80b0ZGMksvVTI2elFZVWhKK2FwQ1FBcjN2akJr?=
 =?shift_jis?B?R0U5RjIwVFZNcjhzaDh1ZFFwSENrcGlZRzlWTzF1bkdESjNObGxoUW1Y?=
 =?shift_jis?B?Y3VNRjRZaWdXVmw0bTJrKzhpaEJsM1pTbDhzNWMyd0UzY3VZT0F5QUxI?=
 =?shift_jis?B?WU1JbThLaTZNTFlEMmtqZVIvTVVzSzJVYkM0R2VxbFRRbXh3cUwvaFR0?=
 =?shift_jis?B?VFpkSW9lSTlObm40UU9nc1NtZHZQL2tYcVRsUmFhc2p4eWZUczlOcXpK?=
 =?shift_jis?B?K1VwanZuNjJzR0FlUzUwSS9DQWRNR1Y5a3oxeWNzcitoVjhtV3dGTXR6?=
 =?shift_jis?B?QUtseGd6R0dRNUVpakdjWHVQYUJqaFBHWDljZkxKaklTODAyNWtFL0Yr?=
 =?shift_jis?B?QjgzMXBldE94QkpGYUZWNjNzb2daWEh4NzlrOXJqUXp4dXRtVWZId2E1?=
 =?shift_jis?B?VXJlUDdVMFl6UXJCL2hoTU11cnpnSUpkbXpicm9HVzRlRHA2dnJodlpq?=
 =?shift_jis?Q?opQo?=
Content-Type: multipart/alternative;
	boundary="_000_OS0PR01MB6178419EDFEA4DD466F767AEA0529OS0PR01MB6178jpnp_"
MIME-Version: 1.0
X-OriginatorOrg: fujitsu.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OS0PR01MB6178.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 27f92bfb-63dc-4bc2-2875-08da9f9b6619
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2022 08:45:00.7393
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a19f121d-81e1-4858-a9d8-736e267fd4c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 JswidU44iaA+EiCHTwqlClyK7WpFUBgDb0EU3TT3y08lx3swEgP1Nnr6M0NKpU+8+k8q6I3RKuW0CLC6oH0I8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYWPR01MB10644
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 08:46:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58159

--_000_OS0PR01MB6178419EDFEA4DD466F767AEA0529OS0PR01MB6178jpnp_
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGksDQoNCkmBZm0gc29ycnkgZm9yIGxhdGUgcmVwbHkuDQoNCklzIHRoaXMgaXNzdWUgcmVzb2x2
ZWQ/IElmIG5vdCwgY2FuIHlvdSB0ZWxsIG1lIHdoaWNoIGNsYXNzIHlvdSBhcmUgdXNpbmc/IEkg
Y2FugWZ0IGdldCBlbm91Z2ggaW5mb3JtYXRpb24gZnJvbSB5b3VyIGxvZy4NCkl0IHdpbGwgYmUg
YmV0dGVyIGlmIHlvdSBzdXBwbHkgdGhlIHNldHRpbmcgYWJvdXQgZW5hYmxlIG1ldGEtc3BkeHNj
YW5uZXIgaW4gbG9jYWwuY29uZi4NCg0KQmVzdCByZWdhcmRzDQpMZWkNCg0KDQpGcm9tOiB5b2N0
b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBP
biBCZWhhbGYgT2YgTWFydGluIExlZHVjIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTZW50
OiBUaHVyc2RheSwgU2VwdGVtYmVyIDgsIDIwMjIgMTA6NDAgUE0NClRvOiB5b2N0b0BsaXN0cy55
b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBbeW9jdG9dIG1ldGEtc3BkeHNjYW5uZXINCg0KSGkg
Q29tbXVuaXR5LA0KDQpJgWZtIGZhY2luZyB0byBhbiBpc3N1ZSB3aXRoIG1ldGEtc3BkeHNjYW5u
ZXIuYmJjbGFzcy4gIEEgUHl0aG9uIFdhcm5pbmcgZmFpbCB0aGUgYnVpbGQuICBUaGlzIGlzIHRo
ZSBlcnJvcjoNCg0KRVJST1I6IHB5dGhvbjMtcGF0Y2gtbmF0aXZlLTEuMTYtcjAgZG9fY29tcGls
ZTogJ3B5dGhvbjMgc2V0dXAucHkgYmRpc3Rfd2hlZWwgJyBleGVjdXRpb24gZmFpbGVkLg0KRVJS
T1I6IHB5dGhvbjMtcGF0Y2gtbmF0aXZlLTEuMTYtcjAgZG9fY29tcGlsZTogRXhlY3V0aW9uRXJy
b3IoJy9ob21lL21sZWR1Yy8xMDg3LzEwODctTklNL2J1aWxkLXNkay90bXAvd29yay94ODZfNjQt
bGludXgvcHl0aG9uMy1wYXRjaC1uYXRpdmUvMS4xNi1yMC90ZW1wL3J1bi5kb19jb21waWxlLjMw
NTg5ODUnLCAxLCBOb25lLCBOb25lKQ0KRVJST1I6IExvZ2ZpbGUgb2YgZmFpbHVyZSBzdG9yZWQg
aW46IC9ob21lL21sZWR1Yy8xMDg3LzEwODctTklNL2J1aWxkLXNkay90bXAvd29yay94ODZfNjQt
bGludXgvcHl0aG9uMy1wYXRjaC1uYXRpdmUvMS4xNi1yMC90ZW1wL2xvZy5kb19jb21waWxlLjMw
NTg5ODUNCkxvZyBkYXRhIGZvbGxvd3M6DQp8IERFQlVHOiBFeGVjdXRpbmcgc2hlbGwgZnVuY3Rp
b24gZG9fY29tcGlsZQ0KfCAvaG9tZS9tbGVkdWMvMTA4Ny8xMDg3LU5JTS9idWlsZC1zZGsvdG1w
L3dvcmsveDg2XzY0LWxpbnV4L3B5dGhvbjMtcGF0Y2gtbmF0aXZlLzEuMTYtcjAvcGF0Y2gtMS4x
Ni9zZXR1cC5weToxOiBEZXByZWNhdGlvbldhcm5pbmc6IFRoZSBkaXN0dXRpbHMgcGFja2FnZSBp
cyBkZXByZWNhdGVkIGFuZCBzbGF0ZWQgZm9yIHJlbW92YWwgaW4gUHl0aG9uIDMuMTIuIFVzZSBz
ZXR1cHRvb2xzIG9yIGNoZWNrIFBFUCA2MzIgZm9yIHBvdGVudGlhbCBhbHRlcm5hdGl2ZXMNCnwg
ICBmcm9tIGRpc3R1dGlscy5jb3JlIGltcG9ydCBzZXR1cA0KfCB1c2FnZTogc2V0dXAucHkgW2ds
b2JhbF9vcHRzXSBjbWQxIFtjbWQxX29wdHNdIFtjbWQyIFtjbWQyX29wdHNdIC4uLl0NCnwgICAg
b3I6IHNldHVwLnB5IC0taGVscCBbY21kMSBjbWQyIC4uLl0NCnwgICAgb3I6IHNldHVwLnB5IC0t
aGVscC1jb21tYW5kcw0KfCAgICBvcjogc2V0dXAucHkgY21kIC0taGVscA0KfA0KfCBlcnJvcjog
aW52YWxpZCBjb21tYW5kICdiZGlzdF93aGVlbCcNCnwgRVJST1I6ICdweXRob24zIHNldHVwLnB5
IGJkaXN0X3doZWVsICcgZXhlY3V0aW9uIGZhaWxlZC4NCnwgV0FSTklORzogL2hvbWUvbWxlZHVj
LzEwODcvMTA4Ny1OSU0vYnVpbGQtc2RrL3RtcC93b3JrL3g4Nl82NC1saW51eC9weXRob24zLXBh
dGNoLW5hdGl2ZS8xLjE2LXIwL3RlbXAvcnVuLmRvX2NvbXBpbGUuMzA1ODk4NToxNzcgZXhpdCAx
IGZyb20gJ2V4aXQgMScNCnwgV0FSTklORzogQmFja3RyYWNlIChCQiBnZW5lcmF0ZWQgc2NyaXB0
KToNCnwgICAgICAgICAgICAgIzE6IGJiZmF0YWxfbG9nLCAvaG9tZS9tbGVkdWMvMTA4Ny8xMDg3
LU5JTS9idWlsZC1zZGsvdG1wL3dvcmsveDg2XzY0LWxpbnV4L3B5dGhvbjMtcGF0Y2gtbmF0aXZl
LzEuMTYtcjAvdGVtcC9ydW4uZG9fY29tcGlsZS4zMDU4OTg1LCBsaW5lIDE3Nw0KfCAgICAgICAg
ICAgICAjMjogc2V0dXB0b29sczNfZG9fY29tcGlsZSwgL2hvbWUvbWxlZHVjLzEwODcvMTA4Ny1O
SU0vYnVpbGQtc2RrL3RtcC93b3JrL3g4Nl82NC1saW51eC9weXRob24zLXBhdGNoLW5hdGl2ZS8x
LjE2LXIwL3RlbXAvcnVuLmRvX2NvbXBpbGUuMzA1ODk4NSwgbGluZSAxNjcNCnwgICAgICAgICAg
ICAgIzM6IGRvX2NvbXBpbGUsIC9ob21lL21sZWR1Yy8xMDg3LzEwODctTklNL2J1aWxkLXNkay90
bXAvd29yay94ODZfNjQtbGludXgvcHl0aG9uMy1wYXRjaC1uYXRpdmUvMS4xNi1yMC90ZW1wL3J1
bi5kb19jb21waWxlLjMwNTg5ODUsIGxpbmUgMTU2DQp8ICAgICAgICAgICAgICM0OiBtYWluLCAv
aG9tZS9tbGVkdWMvMTA4Ny8xMDg3LU5JTS9idWlsZC1zZGsvdG1wL3dvcmsveDg2XzY0LWxpbnV4
L3B5dGhvbjMtcGF0Y2gtbmF0aXZlLzEuMTYtcjAvdGVtcC9ydW4uZG9fY29tcGlsZS4zMDU4OTg1
LCBsaW5lIDE4MQ0KRVJST1I6IFRhc2sgKHZpcnR1YWw6bmF0aXZlOi9ob21lL21sZWR1Yy8xMDg3
LzEwODctTklNL3NvdXJjZXMvbWV0YS1zcGR4c2Nhbm5lci9yZWNpcGVzLWRldnRvb2xzL3B5dGhv
bi9weXRob24zLXBhdGNoXzEuMTYuYmI6ZG9fY29tcGlsZSkgZmFpbGVkIHdpdGggZXhpdCBjb2Rl
ICcxJw0KDQpBbnkgcGF0Y2ggb3IgYXBwcm9hY2ggdG8gZml4IHRoaXM/DQoNCkmBZm0gdXNpbmcg
WW9jdG8gS2lya3N0b25lDQoNCkFueSBoZWxwIHdpbGwgYmUgYXBwcmVjaWF0ZWQNCg0KTWFydGlu
IExlZHVjDQpTdXBlcnZpc2V1ciBsb2dpY2llbCBwbGF0Zm9ybWUsIFJhaWwNCkx1bWluYXRvciBU
ZWNobm9sb2d5IEdyb3VwDQpUIDogMSA0MTggODU2LTY4OTYNCm1hcnRpbi5sZWR1Y0BsdW1pbmF0
b3IuY29tPG1haWx0bzptYXJ0aW4ubGVkdWNAYXhpb250ZWNoLmNhPg0Kd3d3Lmx1bWluYXRvci5j
b208aHR0cDovL3d3dy5sdW1pbmF0b3IuY29tLz4NCg0K

--_000_OS0PR01MB6178419EDFEA4DD466F767AEA0529OS0PR01MB6178jpnp_
Content-Type: text/html; charset="shift_jis"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dshift_jis=
">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"\@MS Mincho";
	panose-1:2 2 6 9 4 2 5 8 3 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:DengXian;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA">I=81fm sorry for late reply.<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA">Is this issue resolved? If not, ca=
n you tell me which class you are using? I can=81ft get enough information =
from your log.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA">It will be better if you supply th=
e setting about enable meta-spdxscanner in local.conf</span><span lang=3D"E=
N-US" style=3D"font-size:10.5pt;font-family:DengXian;mso-fareast-language:Z=
H-CN">.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:ZH-CN"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:ZH-CN">Best regards<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:ZH-CN">Lei</span><span lang=3D"EN-US" =
style=3D"font-size:10.5pt;font-family:DengXian;mso-fareast-language:ZH-CN">=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.5pt;font-=
family:DengXian;mso-fareast-language:JA"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0cm 0cm 0cm =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"mso-fareast-languag=
e:ZH-CN">From:</span></b><span lang=3D"EN-US" style=3D"mso-fareast-language=
:ZH-CN"> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Martin Leduc via lists.yoctoproject.org<br>
<b>Sent:</b> Thursday, September 8, 2022 10:40 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> [yocto] meta-spdxscanner<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA">Hi Community,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">I=81fm facing to an issue with =
meta-spdxscanner.bbclass.&nbsp; A Python Warning fail the build.&nbsp; This=
 is the error:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">ERROR: python3-patch-native-1.1=
6-r0 do_compile: 'python3 setup.py bdist_wheel ' execution failed.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">ERROR: python3-patch-native-1.1=
6-r0 do_compile: ExecutionError('/home/mleduc/1087/1087-NIM/build-sdk/tmp/w=
ork/x86_64-linux/python3-patch-native/1.16-r0/temp/run.do_compile.3058985',=
 1, None, None)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">ERROR: Logfile of failure store=
d in: /home/mleduc/1087/1087-NIM/build-sdk/tmp/work/x86_64-linux/python3-pa=
tch-native/1.16-r0/temp/log.do_compile.3058985<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">Log data follows:<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| DEBUG: Executing shell functi=
on do_compile<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| /<span style=3D"background:ye=
llow;mso-highlight:yellow">home/mleduc/1087/1087-NIM/build-sdk/tmp/work/x86=
_64-linux/python3-patch-native/1.16-r0/patch-1.16/setup.py:1: DeprecationWa=
rning: The distutils package is deprecated
 and slated for removal in Python 3.12. Use setuptools or check PEP 632 for=
 potential alternatives<o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|&nbsp;&nbsp; from distutils.core import setup<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">| usage: setup.py [global_opts] cmd1 [cmd1_opts] [cmd2 [c=
md2_opts] ...]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|&nbsp;&nbsp;&nbsp; or: setup.py --help [cmd1 cmd2 ...]<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|&nbsp;&nbsp;&nbsp; or: setup.py --help-commands<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|&nbsp;&nbsp;&nbsp; or: setup.py cmd --help<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">|
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">| error: invalid command 'bdist_wheel'<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"background:yellow;mso-=
highlight:yellow">| ERROR: 'python3 setup.py bdist_wheel ' execution failed=
.</span><span lang=3D"EN-CA"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| WARNING: /home/mleduc/1087/10=
87-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/ru=
n.do_compile.3058985:177 exit 1 from 'exit 1'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| WARNING: Backtrace (BB genera=
ted script):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #1: bbfatal_log, /home/mleduc/1087/10=
87-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/ru=
n.do_compile.3058985, line 177<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #2: setuptools3_do_compile, /home/mle=
duc/1087/1087-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16=
-r0/temp/run.do_compile.3058985, line 167<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #3: do_compile, /home/mleduc/1087/108=
7-NIM/build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/run=
.do_compile.3058985, line 156<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #4: main, /home/mleduc/1087/1087-NIM/=
build-sdk/tmp/work/x86_64-linux/python3-patch-native/1.16-r0/temp/run.do_co=
mpile.3058985, line 181<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA">ERROR: Task (virtual:native:/ho=
me/mleduc/1087/1087-NIM/sources/meta-spdxscanner/recipes-devtools/python/py=
thon3-patch_1.16.bb:do_compile) failed with exit code '1'<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA">Any patch or approach to fix this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA">I=81fm using Yocto Kirkstone<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA">Any help will be appreciated<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-CA" style=3D"mso-fareast-language:F=
R-CA"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"FR-CA" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:F=
R-CA">Martin Leduc<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-C=
A">Superviseur logiciel platforme, Rail<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"FR-CA" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:F=
R-CA">Luminator Technology Group<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-C=
A">T&nbsp;: 1&nbsp;418 856-6896<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-C=
A"><a href=3D"mailto:martin.leduc@axiontech.ca">martin.leduc@luminator.com<=
/a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,sans-serif;color:#636466;mso-fareast-language:FR-C=
A"><a href=3D"http://www.luminator.com/">www.luminator.com</a><b><o:p></o:p=
></b></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR-CA"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
</body>
</html>

--_000_OS0PR01MB6178419EDFEA4DD466F767AEA0529OS0PR01MB6178jpnp_--

