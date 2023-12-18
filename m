Return-Path: <jing.hui.tham@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CD6EC35274
	for <webhook@archiver.kernel.org>; Mon, 18 Dec 2023 09:16:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by mx.groups.io with SMTP id smtpd.web10.40200.1702891013462925353
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 01:16:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.com header.s=Intel header.b=WSTnnoAY;
 spf=pass (domain: intel.com, ip: 134.134.136.31, mailfrom: jing.hui.tham@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1702891013; x=1734427013;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=Z1NR5htCytBnyPXsrpZkhE4vYbCLNDfMAn3K81pE9lI=;
  b=WSTnnoAY3JLhlyhb8kFe2vwq8CDW+bZ4VegDwsgX7hCBlQNYXEAJiV8p
   RQTzdjSZuPOY0tA12dUSy0dUFOX2v+yaXU6yZV/4Z1T+ig6qxIUIPKTry
   Tz616ReB4bpIAFwdZp6c2b++VQpeE3685t2enExWCV3afzsEgzt4Ousg8
   +5shICMmcCkekaeblh8GDKTSMJaiEIzgV1ycP6f8OwauRbiCr5xoCGOA3
   L1rh86U3H0ja7X5wl+5EMrTSqQ6OMmqFj9uBQK3RCVa7ZL4IZ3ihPP4Q/
   3X8nJ5Hn7O99qU+kut9eAPzoO51LS1M3btx7+zY33Kx82eiDwREmOK7e4
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="459804091"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; 
   d="scan'208";a="459804091"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2023 01:16:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="845884649"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; 
   d="scan'208";a="845884649"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 18 Dec 2023 01:16:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 01:16:52 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 18 Dec 2023 01:16:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 18 Dec 2023 01:16:51 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 18 Dec 2023 01:16:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EnvwSnpPgfYQqIToo+V4naBw2NXG+xG9ntzXGmZPUxVaeW67okD4aznAPRehrrikzSx0ErhHhr2+1r9ccu5f0I52PlkRaY5QKbgKjhnvrXwO30J+V1pYVpnv0q2BdSv/5/FoCQLnOzF8XKmy/1vgPwqw0GMlGf1l2OR/UiPYGFEm4LqJx0k6mCettfM0MFq1HUDIg5PNeh+Ad/fMkMi8bARhkLZyoTatqGuv/smyvys8fA5MmawUXuyYIHSspXb5sCkX9ousoMQGCoUoJbQoFYhFL06o9C7EMsu3keLweYPUewTia+4MSVlCNcKiUgMfh4UJNbHtqm9RptJ0IpgLsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z1NR5htCytBnyPXsrpZkhE4vYbCLNDfMAn3K81pE9lI=;
 b=hjmtPqZuUdjIk0vC+re+wDAYe9Ga90E1lxpRt54X+ZwneT/w8HVnilDFHutlz/7ZDHLQHyaqqqZb8zNZoZDyevApRB8kWdyv6GcGFjFc1tm7OIejpN0Vg3JeEG2iHor8cSxV9/NGUDiw7k4sBl41OVslmQYiWoL0ohNIZY5q4AUuL6vflakYx5SjaSYHZxa1o2FpdUlviefbIWSD+IoKCGqrwejCDlAYybfkO5OBMmY4IBv85U+6foMrRqVPKxfClyXgxckqoq+CR3RwhRigbY1KpZ1JMfUjnGq+sVLySvXvJp+c4OEoQ+gQzW3BBGdJzd3NFJe1j8IiWVIrEmXS8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4152.namprd11.prod.outlook.com (2603:10b6:a03:191::11)
 by IA1PR11MB6146.namprd11.prod.outlook.com (2603:10b6:208:3ee::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.37; Mon, 18 Dec
 2023 09:16:49 +0000
Received: from BY5PR11MB4152.namprd11.prod.outlook.com
 ([fe80::3230:6041:e9a3:cdac]) by BY5PR11MB4152.namprd11.prod.outlook.com
 ([fe80::3230:6041:e9a3:cdac%3]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 09:16:49 +0000
From: "Tham, Jing Hui" <jing.hui.tham@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>
Subject: RE: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0_M2.rc2)
Thread-Topic: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0_M2.rc2)
Thread-Index: AQHaMZA9Jh36msDNVkGgVUpx7k+vObCuwcjQ
Date: Mon, 18 Dec 2023 09:16:48 +0000
Message-ID: <BY5PR11MB4152E3EC395A8D57A36FFCB5A190A@BY5PR11MB4152.namprd11.prod.outlook.com>
References: <0101018c7aa9bfff-3d213d04-de48-4e71-84f8-3af5a9d3712b-000000@us-west-2.amazonses.com>
 <8b84b418dfc21a3a89e46439d64629e9476b4181.camel@linuxfoundation.org>
In-Reply-To: <8b84b418dfc21a3a89e46439d64629e9476b4181.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR11MB4152:EE_|IA1PR11MB6146:EE_
x-ms-office365-filtering-correlation-id: d025c2e0-c7ff-4f0d-6460-08dbffaa1039
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fPhPwxOc/p7iJb+WUowZAZlhMPMLWsNxJt7M2GIfEcX2Gf7p1/PZ12h7KnfqXjTEklt6ajF96Ke8bKNk9sEixSNM911uh8W8HUXocWGkSxxK8eISch/rqPdoIZjOrgs/kXE113PGKWgb3t5KwE+dzG3yWA53eM53SO6lFFA3L2H9JDTlDsUIO8fO9EvUQFGFSi9bQjzAeL1F3/Z/lEfKV59F7KDI3rVdihnEZdBh/9tasayfyWji8zh1gF05j3MNQERpxu2YTX114IoQDsGbmeTb3WV0F9b/U+PY8WhhN3FA0GNChmDkSt8YGs12go4E0bSF77kJduxacb4snPfzTcFGDVaJlZEIIT1aFJC2n7JCIGRzmp45v/gdLU2d9+23CFeSIVvvMZGHgHCd4lPHGeQJaE7q3shlttnhGwITBX23Fex3ohLBbCp5GqYarHe23c9sfQuwNfb4fK7UHuhuibGN6oO5FXE81r/OxvvD9DN//q7XYWFPQpFqFqYlxQ+VgS8XLJSODBsylhIPjJHXVKUwUTcXW92QO4jojQYTDME1g3j22IIbW9UAtf8xczX6CZlkhYq5JBCimybnxQfcoUIxFF1CdJNPhMAo2eitl4zBbbcCWOoX/c8bpAlRgoc00e3MkwRsKEYqW01QnJpDMJpFvNzTLSHdf9bRpszwXgyu7mmmVUtwgWa5c4UTjGav
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB4152.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(346002)(376002)(39860400002)(366004)(230922051799003)(230173577357003)(230273577357003)(186009)(1800799012)(64100799003)(451199024)(52536014)(8936002)(8676002)(15650500001)(82960400001)(4001150100001)(38100700002)(122000001)(86362001)(41300700001)(33656002)(2906002)(38070700009)(5660300002)(478600001)(966005)(7696005)(6506007)(55016003)(26005)(53546011)(66446008)(66556008)(64756008)(66946007)(66476007)(76116006)(316002)(110136005)(83380400001)(9686003)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WTUwN3JYRk84WEljdjZyWmRDREFWS0FrTUk3K2lhbkNhUVRpZ3JnQXZaQ1gy?=
 =?utf-8?B?RjRKcURCRUk1akdyKzdpRDMwUkcveEZzeDhzS2ZNSTIwVVdOV2xOb1RTalBq?=
 =?utf-8?B?cktRbkRSM1daYytyQ25rV29ZMGlLQkhuOVZ0emZ4WTEwS0ZkdStSR0ErSkYr?=
 =?utf-8?B?TUJtYjRSMzZkMWdMRnp2VGcxUGZJQ201VE1sL0o3Y2ZaTkIzYys1YkRNdGlE?=
 =?utf-8?B?Z2lRZnFrYWtrSXh2NFdqaGNjVzcvdXN4dzlOVGF4TCtBSzJxLytNQldWeDZ3?=
 =?utf-8?B?ZjkrMjIyVUNnTGlXUU9oeUlhSE9DQ0xFcWVBeUZKUFN0L1FWRXZ0emZ1NDZK?=
 =?utf-8?B?c05kN2tRVG9rd0Z4azZ5UVAzbmtZWnFwRklMaitVQit1eFNFMHcyZ1dKUjdO?=
 =?utf-8?B?TllYbzhWVXF0em0rUVZtUUZPQjNma3EvckdRQ3MyZWpUNktlZG5VS1JWeUNH?=
 =?utf-8?B?N1dIQnFQQVJqQ21QeTBpNUlYRXZuUUlKeFljVmptcmU2ZFlRbm5tSjZsazdj?=
 =?utf-8?B?c0VaWGcwUVpPakd3a0xpZ3NxQWQveS9MQ21Md3NJY0RaYVFWcGhuU1dqMElX?=
 =?utf-8?B?MzA5RDYxNS9lQzhtUGp1eGduZXg4QWRTU25YVHRRc3RYSkRFRm5rVXBqc0dB?=
 =?utf-8?B?VFQ1VzRzbVBOdWFmcGllSUUrR284ajlhK2x4WDZvYVM1bWtlMFJ3RmpvSFY2?=
 =?utf-8?B?WVNXS3BZY2ZEc3V2RTlLS0Q3YVl1aGlodmp6TlRuV21EczVTNitHKzBJSHIx?=
 =?utf-8?B?T1hMSSt2emZKRllzclFLZnNXYzlDbnBSaVRyQkZvT24ybTloem45RmRud2Ni?=
 =?utf-8?B?cE4zS0VHdzVZRi81VWlzL1BFcnFBOUU3cXQzVTRXS1NTU0xRTVhab3NHVHFx?=
 =?utf-8?B?R3p4MFpwcnBMY2VUazFxRm14bHRvZHNQQnNHN3hIUlgwd0U1SDYrSEpsbVE3?=
 =?utf-8?B?cU9YenlNVUZONlFFb2JNYmVqOS9JNzJMKzJkNlBaOVNHNUVhWHRmOXBwOVFW?=
 =?utf-8?B?UTc2RWp3VzB2RWFTaDhLcHVGSzBhVzlkKy9uNkZoU2hNWHo5NTZpMTdsR2hY?=
 =?utf-8?B?TU0zWFFGQnpIYUJlWmpxRlV4WEYremJuQTdsOU82ZjNnMEMyWHJmcTAyN0pR?=
 =?utf-8?B?Qkd1Z0Vzb2ZmSjJTb1lLU0p5Yk1xVEJJek16UmJlRnBXQWlRL1Z4cmVERlFs?=
 =?utf-8?B?VlB4RFZQQUVHME1nTEU4SGJIckNzd3E1YU16WG13dmV3bjhSakN5b2ZpN3dT?=
 =?utf-8?B?dnpvVEUwaHExeTBQWVRhY21pc3hhNW1zdE5YbUEwNXhCbi8yS3QvaDk3a2hr?=
 =?utf-8?B?cHJJbXdiOUJRMnh5bVRsSGRaeEd2ZGhlU0ptMHI4Z0VZK1p1Y0w2aXZ6WExh?=
 =?utf-8?B?RW1GU3Z3TFBRbnJTeGM4TUp5T3h2QldVN0xmaVdMY1FodGpoY3VIN0c0TE03?=
 =?utf-8?B?bzc1Tzk0bHh4dFl1Nm9IMUlKbnloMzY2bllzZTZPQWt2OFRaME5uSHZBekV3?=
 =?utf-8?B?bjZvRXUxWHlnblNkYlJaNFZ1QUVWM3k2clNJNjVwRjlxUXhNcHE1dXlhcGs2?=
 =?utf-8?B?RjRrWmhHK096MlBwaDliUjlqeWhJenhDQ2loakJBMFVZMlVITnpndGppZjho?=
 =?utf-8?B?NFh3bG03empCY1NscEVaK2lERmFRSzNBeWs4cXM3RjJBZzBXeTRYdUxSc1JW?=
 =?utf-8?B?V2w2RE9PdDM0VkJuYmJmdm1CREJ6ZzZJTXpOSUVCcTM2MUE0cnJjRXB3TlM5?=
 =?utf-8?B?YjQ1bzZiaVc3SkZWZWpkY3QzM2xMaE85RW9GelJCbzFKRE55RU0vdmgwL0pm?=
 =?utf-8?B?S0dwTTBuKzFWZzFXeDN3d1dDOHlxVjZKSVZDQnNNV0JKUEkwRUltZXRjODUv?=
 =?utf-8?B?VDF0RWFQRk9BT3h5QjB4SEFucVdrYWZZL1A2WjgzR3krNllOdUFvb2pYVFFT?=
 =?utf-8?B?Y0lCeUtsbm1UZ2c1NlBjYXduVzBqUUlIM0FYSkZHcCs4L1lYTmpHY3BSTWRp?=
 =?utf-8?B?SVcya1RpR2FLbFhzLzQwdEdNOWRMOU1adnBPdnFOUkpzU25FL0hGYkh6TzRw?=
 =?utf-8?B?QS9taGhtaTVEYWp4OTBhbG5HMkdZblFJVEhtL0lpN1RQSHp5dGR3YitNQmFD?=
 =?utf-8?Q?B6FSeEFmrQXis5LSET5SrmoOi?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4152.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d025c2e0-c7ff-4f0d-6460-08dbffaa1039
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 09:16:48.4304
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i5TEoprZcqyy+Vxwa8wGtEi3o3C+MC+tC/vAkUmCoUAWyR1gHRg2ml1ZGaGnuNBCSzGv7MTukwYk1j7JxqmUAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6146
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 09:16:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61956

SGkgUmljaGFyZCwgDQoNCkdpdmVuIG91ciBjdXJyZW50IHByb2dyZXNzIHdpdGggdGhlIDQuMC4x
NS5yYzEgcmVsZWFzZSwgd2UgYXJlIGNvbWZvcnRhYmxlIHdhaXRpbmcgZm9yIHJjMyBidWlsZC4N
Cg0KDQpCZXN0IHJlZ2FyZHMsDQpKaW5nIEh1aQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+IEZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZg0KPiBPZiBSaWNoYXJkIFB1cmRpZQ0KPiBTZW50OiBN
b25kYXksIERlY2VtYmVyIDE4LCAyMDIzIDQ6NTcgUE0NCj4gVG86IHFhLWJ1aWxkLW5vdGlmaWNh
dGlvbkBsaXN0cy55b2N0b3Byb2plY3Qub3JnOyB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3Jn
DQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIFtxYS1idWlsZC1ub3RpZmljYXRpb25dIFFBIG5vdGlm
aWNhdGlvbiBmb3IgY29tcGxldGVkDQo+IGF1dG9idWlsZGVyIGJ1aWxkICh5b2N0by01LjBfTTIu
cmMyKQ0KPiANCj4gT24gTW9uLCAyMDIzLTEyLTE4IGF0IDAyOjAzICswMDAwLCBQb2t5YnVpbGQg
VXNlciB3cm90ZToNCj4gPiAgICAgQSBidWlsZCBmbGFnZ2VkIGZvciBRQSAoeW9jdG8tNS4wX00y
LnJjMikgd2FzIGNvbXBsZXRlZCBvbiB0aGUNCj4gYXV0b2J1aWxkZXIgYW5kIGlzIGF2YWlsYWJs
ZSBhdDoNCj4gPg0KPiA+DQo+ID4gICAgICAgICBodHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlv
L3B1Yi9yZWxlYXNlcy95b2N0by01LjBfTTIucmMyDQo+ID4NCj4gPg0KPiA+ICAgICBCdWlsZCBV
Ukw6DQo+ID4gaHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0b3Byb2plY3Qub3JnL3R5cGhvb24vIy9i
dWlsZGVycy84My9idWlsZHMvNjM0NA0KPiA+DQo+ID4gICAgIEJ1aWxkIGhhc2ggaW5mb3JtYXRp
b246DQo+ID4NCj4gPiAgICAgYml0YmFrZTogODM0ZTQ1MjI0M2ZmMmVlYTZlOGUyZTdmNDkzNWI1
MjMzZmZiNGIwMA0KPiA+IG1ldGEtYWdsOiAyNjZhYzUzNzNiNDQ1OGQ3ZmNiNzhiMWU4OTQ4ZWIy
YjMzZjE4YjVkDQo+ID4gbWV0YS1hcm06IGU2ZTdhYzRkOTlmMTAzZDI2YTBmZmVmZDZkMGE1ZDJk
ZWVmNWIxN2MNCj4gPiBtZXRhLWF3czogNzkxNWU2YmFmZDg3NmFiM2Q2NTRhMjY2MjlkYmY1MDE0
NzljYWFlMA0KPiA+IG1ldGEtaW50ZWw6IDVjZmVmZDlhOGZmMWY1YTM1MzRjMWJhOWQ3ZDdmNjk3
MWVkNWQ1NmYNCj4gPiBtZXRhLW1pbmd3OiBlMDFkNDdkMTgzOTQ1Y2FlYWYzYzVjMDg2NTM5YWYw
YTkyNWRkYzMyDQo+ID4gbWV0YS1vcGVuZW1iZWRkZWQ6IDBhMGVhODdiOGRkYTAxYTI4ODdhNTI1
Y2VmNzhlYjZjM2Y0YzJjMzINCj4gPiBtZXRhLXZpcnR1YWxpemF0aW9uOiBjYWExNGM2M2YxNThm
ZGQxMzM4MmNjZjFmZjRlMjBhOGJhNmFkNjY3DQo+ID4gb2Vjb3JlOiBiYjlmMmE5YzBmZjVkY2Rl
YWYxYTBiZWI2YTYxNGQwZDAyMmEyNDgxDQo+ID4gcG9reTogYTQ5ZGUzY2NjMTFmYWVkZjVhOTg5
NjNjMzlkNjdmOGRkNWJkZjZlMQ0KPiA+DQo+ID4NCj4gPg0KPiA+IFRoaXMgaXMgYW4gYXV0b21h
dGVkIG1lc3NhZ2UgZnJvbSB0aGUgWW9jdG8gUHJvamVjdCBBdXRvYnVpbGRlcg0KPiA+IEdpdDog
Z2l0Oi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcveW9jdG8tYXV0b2J1aWxkZXIyDQo+ID4gRW1haWw6
IHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmcNCj4gDQo+IEkgc29tZWhvdyBtYW5h
Z2VkIHRvIHNlbGVjdCBNMiBpbnN0ZWFkIG9mIE0xIGZvciByYzIgc28gdGhpcyBvbmUgc2hvdWxk
IGJlDQo+IGlnbm9yZWQuDQo+IA0KPiBUaGUgYnVpbGQgaGFzIHN1Y2Nlc3NmdWwgQ0ROIHRlc3Rp
bmcgYnV0IGhhZCB0d28gMiBvdXRyaWdodCBxZW11YXJtNjQgcHRlc3QNCj4gZmFpbHVyZSBpc3N1
ZXMgYW5kIDEgZmFpbGVkIHRlc3Qgd2FybmluZy4NCj4gDQo+IFdlIGNvdWxkIHVzZSByYzEgb3Ig
dHJ5IGFuIHJjMywgSSdtIG9wZW4gdG8gaW5wdXQgZnJvbSBRQSBvbiB0aGUgdGltaW5ncyBhdA0K
PiB0aGlzIHBvaW50Lg0KPiANCj4gQ2hlZXJzLA0KPiANCj4gUmljaGFyZA0K

