Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB11C433EF
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 16:53:48 +0000 (UTC)
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by mx.groups.io with SMTP id smtpd.web09.639.1635872027221892882
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 09:53:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=MoRuuRGG;
 spf=pass (domain: intel.com, ip: 192.55.52.136,
 mailfrom: anuj.mittal@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10156"; a="211374349"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800";
   d="scan'208";a="211374349"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 09:53:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800";
   d="scan'208";a="583673165"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by fmsmga002.fm.intel.com with ESMTP; 02 Nov 2021 09:53:45 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 2 Nov 2021 09:53:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 2 Nov 2021 09:53:45 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 2 Nov 2021 09:53:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=je0eBCzQdmcBCEaWzreE5M8Sj16+VhlDegOEv7xBM6T2K7wxSP//pWEBSFsHtOfqZADSmzBT+jMOjANZDENi2R0Kls9Fd0EvwTwBmY+ZtAm8awdrXN46aWKcUw77hQ/ZPFLbM3UXp54Vrozh951J+r9tfR7EAsaltj1oedr67QQtYF/Qha3INyBfM+q269t8xyzSvD8dxQPNcO+ogMcSzkv81SyyiqDvyqx7gv+HBwFZbnosno5XeSsFvxffG/Ep0JtEYXh6RYD65J8D9dUHWBcjyXQl59l5Macm/YSCnlLgtYPi3IWQF8fAb9qi9CxWKG9jrbeOe0eC5mt5IggLAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SOpV7NeNGy9do+XBL2uh4BTfUygq9A6IB5vFKeK30Cs=;
 b=jI/dC/uD6nCedgAvAEGC/fCIuSK7czwi2J2Ryd642yjRjPRYpGWlo0wi0jlDuI6V9DXVm20Ziz0bXdmof7zcLzCFzeuTBWVJdVmQLLfipBlXW1hVEerD8veFCNUrNhDZTNwNuNCIUm0dKPP6OzxQ2d+X3WhsU5nzpFaA5IOPrOmyv9pFwIUMDQH2iUnJFh/hVUS65iCosb+bXCBlqY1jF6DJ83p7CyZ2OnAkUA8y99PKb8mHiVIJtIitsPHfi9FMv74TNVSPocl0iPVdHV7dVmJzYbLX43wXtqK4j3wEeflOWkELT+PdFUohb3BA46patdvLbVOLryHhkrjj8eGQ0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SOpV7NeNGy9do+XBL2uh4BTfUygq9A6IB5vFKeK30Cs=;
 b=MoRuuRGGOBi7jK0GOvcoZB+3VZ4hRJz3CKfD61kGTWvvu+LanuLnPDMakGAmBqoGcmUTUtZRqSOf1Y10+t6MMp2vJhqs9oRdT3yXHYKmk0mU8PhcsBWZUbSG3VWERdUxd4UCRTAaqt9xjxeCqJJtEGerKjYzl3Y7gpit+xAaxq4=
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by BYAPR11MB3720.namprd11.prod.outlook.com (2603:10b6:a03:fc::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Tue, 2 Nov
 2021 16:53:43 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::2c3d:dccb:aa85:53c5]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::2c3d:dccb:aa85:53c5%2]) with mapi id 15.20.4649.019; Tue, 2 Nov 2021
 16:53:43 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "bruce.ashfield@gmail.com" <bruce.ashfield@gmail.com>,
	"leon@sidebranch.com" <leon@sidebranch.com>
CC: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] yocto preempt-rt
Thread-Topic: [yocto] yocto preempt-rt
Thread-Index: AdfQBVSS+xBN07W3QtaQoD00G0U6MAAAz71hAABnDgA=
Date: Tue, 2 Nov 2021 16:53:43 +0000
Message-ID: <a71f03df0d9ce82e0a8a8123d5bd12b7a14c6f7b.camel@intel.com>
References: <MADEUP.16B3C74F343D36F7.18236@lists.yoctoproject.org>
	 <CADkTA4MK42-jw8yWWaHM8uDM=ayhJRqcdjEHq6zZDya+JswkQw@mail.gmail.com>
	 <CAMjhiJiti9KNno2MMmA7H7dyR1xt+_icme=Yg5yZiwfHK+1J6g@mail.gmail.com>
In-Reply-To: 
 <CAMjhiJiti9KNno2MMmA7H7dyR1xt+_icme=Yg5yZiwfHK+1J6g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-2.fc34) 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9772123d-e574-48b1-bee6-08d99e215440
x-ms-traffictypediagnostic: BYAPR11MB3720:
x-microsoft-antispam-prvs: 
 <BYAPR11MB37204F3D92C04E85E560AB47F88B9@BYAPR11MB3720.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 l9FssO4jt6nOyHvYtTH1PSyUs5UcX6wRogifEOa4ELgv+sEH8iLvURSWL90arGITZ+x/auA6fdXiz3+wRD77/vCNTKd2UxclTTJis3rlGTGZSZlbIg7ws7XxIAqBozj+tlXg8thNN+epF5hL4m418hi6equnK9yplUHK0Bdaai6Wx1q/GYhhZo/o3jS7EYte8iktvExZOUxSV+3inpYGR4gKvu+QYScQA68toXr1MCN3Zxd0WevXnAxjvcWO7HEROpO0McvxXX7q6RKQMvs3lnLw+Cki+YnBQdhvbWyv4Nnw+yOVRxey2/IhALJi7o0POTeGY4y/eNyJAeMuQl3KlSmGYcwO+GUggQmrf/wtATYWrfePWJRtOF02rcgn4Sha+BwNh3fVNBiAJAbFYKlr8IP+kmMg4OS85CAXdl5o0seL0UjiAW/riZlAmOBqwEzMXVieqYZNojfkqwhHY+HJrYNzUgeHwmq9XKVnnQFLATVyidIqOajXPNfUDU1XsQMYLbhUyRU6FbPkdqoe8tCcERgJss5yzZDz6hSRHHq5C/vodX0GP534GAo7iKOnBN1ML4LSa4bW9ZZZfAxLmdcOTnBRIllKF3nxGbnnC7HM62ozO3XFoJt791IprVbj0OJsHpNFtXHmkEz6DAQ4V1KuvUHFsPgalyyr5VeT4sUYTh/1jKEFkvwP1yA9HxFex5lQR5NXF+tJzf6ezeYkedv5Uw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(4326008)(71200400001)(8676002)(86362001)(54906003)(2616005)(110136005)(316002)(4744005)(82960400001)(5660300002)(66476007)(64756008)(186003)(38100700002)(26005)(508600001)(6512007)(2906002)(122000001)(38070700005)(66446008)(6486002)(6506007)(53546011)(91956017)(8936002)(76116006)(66556008)(36756003)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Q0tnOHFWbWoxNTdEMlhSWWdyeTVOWmlCS09hdjNaNWtwMzc2cmNZaE1pekdX?=
 =?utf-8?B?QkRod0RkL1h3RTdaWnVXVGtQUERYcFZEQUhzNWs3ZWJoSDFoY3Qxb0hPWXZK?=
 =?utf-8?B?S012bkNLNzRYRDZwRDZwZGlhWUV4bWMzb0ZjeGJFMkJ2YmYrZzN5TFU2dHo0?=
 =?utf-8?B?MFJmWVhwL2NOWmY1bndxTUhtUVBHQjZFdlFWZGV5eTJiUVRwaWpMbEtYWVho?=
 =?utf-8?B?STcwZ05lRkZZQmp4RnJmclhIZHJ0NGFSa2dGTE9FL0F1L1Roc3RHNWpvNkM3?=
 =?utf-8?B?MEVWODJVWVlVQUl6MGh2QlhWSTh3VUtGYlhMMTd3Qk02R0ZhR1Y3WjBDcWNV?=
 =?utf-8?B?V1orME9EUkZFalQzR2ZtV3VzNVBGZGR4S0lTZWl2UjRsbWU2N0JpdXBIc0do?=
 =?utf-8?B?QjkyWHhsWWxmbkI0VTNsblAvK0RkeXk4aEpoZFc0dlM2WWZPb09DTm9UazhT?=
 =?utf-8?B?dytDNXhKOHVBbXBjdWdnZ3BBbkkzVWZ4MzRmaUZ3UElpaEFRUmJSWVJxVW5m?=
 =?utf-8?B?UEU0UFVtT0hVZm41d0J6THB5TmQ3cHBsUStEZmxCeFF6ZlVDL0pWLy8vWE9r?=
 =?utf-8?B?Vjl4OVFPWjVwUUFMNTBtWDZoaExZZ2VDZEpXRjk0M3lqRFJjQ3hZVmsraTNo?=
 =?utf-8?B?NTBOcGNPbTFKdjNBYzVDTU1oZmc5QnZSeHI4MEN0RTJkOG9UT3RUVWszYmgx?=
 =?utf-8?B?MjU2Si91bDIrR3gwSDZjRzVQSUhEaEprMWdrTUVucU5Qd2wwUFdWcktPaDhD?=
 =?utf-8?B?bGJJVEw3Q1pFK3MyVDZ2dDgra2RCUHdYTEF5QW1OaXRoRUx1N2lRUi84MXhG?=
 =?utf-8?B?K1VYeHpXVG9tZTBoMmRGMlF3TVI3RWMzT0NnMUNGTkkvMHB3c0E2dCtSejJD?=
 =?utf-8?B?MG9aUExjNjZhK1Q1WDg1ZEIrUG9BMTVwL2lTdUhUZ08yMitXdXJ2dmRQZjh0?=
 =?utf-8?B?SzM2TTY3d3cxOFZLc3JvUlA5TXVhTGo5dHd3TW5YRUV2M0ljaVdkNytpVC9K?=
 =?utf-8?B?NnRTSXZSMmYwZUhpcFJreE9pWkY0bXhLemxxNjI4T2pSbndmVysxaUlySnBL?=
 =?utf-8?B?ZzZCMU1MVXBuYXNZZ24zU25ONXUyR2hvT3dTQ2tLcHoxMFgzUmZUbEhLd0Q0?=
 =?utf-8?B?V2phOGwremcvQzg1MFM0ZmFBSmptM0IwbWF1enBzOERLRFF6blVvcVJkNlpY?=
 =?utf-8?B?UXFZalg1VWhhUXZxMWJSVEF4SjRYaFdBbStHVEl2RmlQUDFjbkhKT1NBWTh0?=
 =?utf-8?B?N0Q5YTBBT1lWN243VHcwaVBjeUhmTU9JZGhHRmhMcEdkTzNJRXpMajg4cG1L?=
 =?utf-8?B?SEcwUzhhR0Z0S1pSRE9ZWktQa2tLVTZRbFROZ2pxZHVRQU9GWHlOckZxQTVL?=
 =?utf-8?B?a0NEeU5Jc1RXeENxZllhSGJtMlFMVzRnZVgydTRKZ3JoOGppZHNJeW5mMHlm?=
 =?utf-8?B?VDhuMDRHeFZXdDREWnhQOFJvTTlsTU5hOGVCZmtzRER2OHhRRy9Kdy9jOHNl?=
 =?utf-8?B?SXk2UkUwb1FEZWg5d2pncTBXblM3R0UvMGJneU5xMmxPTlNMZjRUdUhUWkZM?=
 =?utf-8?B?UzlLaVp2QkhyWWhPRWw4eUM4QytGM2hJaUI2N0c4VFNtdWRMTFNrOTdOem90?=
 =?utf-8?B?U01Kd0Uwa0lCYXJrR2ZzeWg1MHlyd1RwRUp2R2VyanY2WEJtRzRtV2ZqcnZo?=
 =?utf-8?B?bTBMNllXYUlpa3pSTXJUdmFtZ0NCcTBtRFF2ZWVMaDl1bm9jYXVENEsvQURV?=
 =?utf-8?B?MnJzNDA3bHgrM0lkY3g2dVNTdVp2cU85UGdIdHhDWWsvTUdXUnl3SktOaVhB?=
 =?utf-8?B?MjdtajVUWDc0UXVrSHRxSFhqRmg4Vk5xTFp2NlM2VlhaNmFucDEwdTVjcDlK?=
 =?utf-8?B?VE5GeGhHelhKb1dPc0pYaytEa3Z1NVRxZFg0MHVzM1lYcGNFV2ZJNkJlS1FH?=
 =?utf-8?B?LzUvQTk3NE9haEwvWjNKamVsa0Y4enViSkZMNWZtN1BGYkxnZUpmTDFQaXA0?=
 =?utf-8?B?bUQrcFUwMVdyTDVTVkd5d204UGNnTE1yQ1Nrb056elIweUVoaHZCM1N1TmNC?=
 =?utf-8?B?ejBMcjk0eTlDc1ZoQjhnYkNGMDBSNVhldTNvU2lhK3VHWVdqUUpjS01iVXVH?=
 =?utf-8?B?TVVyTWVhdEUzcmg3Ylp5ZGVVZTJJUVV3d3k2SnR1NGtFSk1aQVFPa3JQRzNq?=
 =?utf-8?Q?ciywzJ0gCJsWYv+BumcJfKJCJtgCWlVOFVyvyPJRb58u?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B3C5FC4ED3C748438703CDF9C9B8F253@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9772123d-e574-48b1-bee6-08d99e215440
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2021 16:53:43.2671
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 1mhbJ7MKeUSriYL4keTP5bDBu2koAJj95yKdUyeM2rUWq/qPAWOH3gdDwN8CreROXr8ydPtz23PnkOAIlXQaNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3720
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 16:53:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55218

T24gVHVlLCAyMDIxLTExLTAyIGF0IDE3OjM0ICswMTAwLCBMZW9uIFdvZXN0ZW5iZXJnIHdyb3Rl
Og0KPiBPbiBUdWUsIE5vdiAyLCAyMDIxIGF0IDU6MjYgUE0gQnJ1Y2UgQXNoZmllbGQNCj4gPGJy
dWNlLmFzaGZpZWxkQGdtYWlsLmNvbT4gd3JvdGU6DQo+ID4gDQo+ID4gQ29ycmVjdC4NCj4gPiAN
Cj4gPiBUaGUgcnQgcGF0Y2hlcyBhcmUgYWxyZWFkeSBpbnRlZ3JhdGVkIG9uIHRoZSBicmFuY2hl
cyB0aGF0IHRoYXQNCj4gPiByZWNpcGUgd2lsbCBidWlsZCBvdXQgb2YgdGhlIGxpbnV4LXlvY3Rv
IHJlcG9zaXRvcnkuDQo+ID4gDQo+IEFuZCBhZGRpbmcgdG8gdGhhdCwgYmVzaWRlcyB0aGUgWW9j
dG8gbWFpbnRhaW5lZCBrZXJuZWwswqAgbWV0YS1pbnRlbA0KPiBoYXMgaXQncyBvd24ga2VybmVs
IEdJVCByZXBvL2JyYW5jaCBmb3IgdGhlIGtlcm5lbCBhbmQgLXJ0IGtlcm5lbA0KPiBtYWludGFp
bmVkIGJ5IEludGVsLg0KDQpSaWdodCwgeW91IGNhbiBlaXRoZXIgYnVpbGQgbGludXgteW9jdG8t
cnQgb3IgdGhlIEludGVsIHZlcnNpb24gd2l0aA0KbGludXgtaW50ZWwtcnQuIGxpbnV4LWludGVs
IHRyZWUgbWlnaHQgaGF2ZSBzb21lIHBsYXRmb3JtIHNwZWNpZmljDQpwYXRjaGVzIHRoYXQgaGF2
ZSBlaXRoZXIgYmVlbiBiYWNrcG9ydGVkIG9yIG5vdCB1cHN0cmVhbWVkIHlldC4NCg0KVGhlIGJy
YW5jaCAmIHZlcnNpb24gaW5mb3JtYXRpb24gaXMgYXZhaWxhYmxlIGluIHRoZSByZWNpcGUuDQoN
ClRoYW5rcywNCg0KQW51ag0K

