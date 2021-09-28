Return-Path: <naveen.kumar.saini@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3449FC433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Sep 2021 04:03:56 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web12.9528.1632801834262636072
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 21:03:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com
 header.s=selector2-intel-onmicrosoft-com header.b=q8EVCRHj;
 spf=pass (domain: intel.com, ip: 192.55.52.88,
 mailfrom: naveen.kumar.saini@intel.com)
X-IronPort-AV: E=McAfee;i="6200,9189,10120"; a="247117668"
X-IronPort-AV: E=Sophos;i="5.85,328,1624345200";
   d="scan'208";a="247117668"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 21:03:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,328,1624345200";
   d="scan'208";a="706506767"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga006.fm.intel.com with ESMTP; 27 Sep 2021 21:03:52 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 21:03:51 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 27 Sep 2021 21:03:51 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 27 Sep 2021 21:03:51 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 27 Sep 2021 21:03:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NGi3NivVDATZ21oPKoP1iM135y59wNbV9obGIq8gFArBuL9Lly8R+ylhkiArimO/YZoz3oojltktjYyR1d8OvUJ6JvZ8Jz86E7wWgTPsQo6EFnaxw/Fa2d8GqKR2gHyVYIH/tItmDuSy3rIiq8vmYeohuKaQn3ElSHrwiQNK1Us192bd5S/gMPBKq2oL4qkoDIOPANqNrS4ZEQDDmlx2B1Fc5Oty0LNlp532ZmZkdo3FV0rnGz8cnykOoTYWdFLVaaklPdBasWQhySijvbIbyX6uHIG1Tcbo8CgUe2D+q2pNGQpd5CFzfqXDgLj3jRIQr5ZqkC16bGXefEOtBDqqCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=m8R+uOCcu0WimtYmmMJADpnUkwiNBOX1/seATOVfNpU=;
 b=KbtGIR5AIvq5sY8gdmw1BVSbRQHbEGO3V/jJRBCL6y7e7nwGJ7iZKbKL9uEsJgi4A9amvuxBeMp1vA9lJE1fS60dnNGTUXl29mk6QztL7tRM56gP+B80srvFJV/jIdN7Pe6BcNDnKq1zf5kZovm4HVHub0HVj+Hc7xLNMB1rMSn5dlcbZUll/PIlCpi3i9cR3j0SX41xKkBhHyT7tHFDsLZMcQSfnU14YutsPtXOy29HCbuVTkfzMWP5f1uj59pL087Kk2KtdEUboDRSA3cNasObVT7b5SzjEmAQ+q/kBJhLpCt9kVBJq8rlkUtC87chho+Ak3i/tGPoIe+ZdenMpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m8R+uOCcu0WimtYmmMJADpnUkwiNBOX1/seATOVfNpU=;
 b=q8EVCRHjwR22vEdFgm2ze+pabmYP5yQlvBmzQz+5+nzJJG6S+vS5zZlCN1aqHzgWISFv+yyCEOrsfVu0qxj/oDr7Q7ZDrtUipTnwshC9i9E/FQW3RYCfk5EV2mdP6o0iGjNFfz7cnxL51Gd2Orf8TIEhacPUcjGENgjkyGmuPTc=
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by MWHPR11MB2013.namprd11.prod.outlook.com (2603:10b6:300:24::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.18; Tue, 28 Sep
 2021 04:03:50 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::c9e1:5831:ae58:def]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::c9e1:5831:ae58:def%9]) with mapi id 15.20.4544.022; Tue, 28 Sep 2021
 04:03:50 +0000
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: Jon Mason <jdmason@kudzu.us>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [meta-zephyr][hardknott] backport tmpfsdir from master
Thread-Topic: [yocto] [meta-zephyr][hardknott] backport tmpfsdir from master
Thread-Index: AQHXs6MkmnKbOgHv70m8FslHHOnIB6u41Eow
Date: Tue, 28 Sep 2021 04:03:49 +0000
Message-ID: 
 <CO1PR11MB5026265558B7347345EC977BC4A89@CO1PR11MB5026.namprd11.prod.outlook.com>
References: 
 <CAPoiz9zKb5L9k1wsHQjr7AfUCSFC_2=SkCr-dZ=iH71R0VgVBg@mail.gmail.com>
In-Reply-To: 
 <CAPoiz9zKb5L9k1wsHQjr7AfUCSFC_2=SkCr-dZ=iH71R0VgVBg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
authentication-results: kudzu.us; dkim=none (message not signed)
 header.d=none;kudzu.us; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42724238-000d-4073-eaee-08d98234fa68
x-ms-traffictypediagnostic: MWHPR11MB2013:
x-microsoft-antispam-prvs: 
 <MWHPR11MB20138B06AEFB6293FC72CF0DC4A89@MWHPR11MB2013.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jjvUc3LO6dlqaXoBzb1RnPMJa+HUsjt1qS7DBONxuAck68lpm0BlgXgJAIus3aflh8+D3xvbiUh6pYHp9PXTqeTTrWZ1h/qnYSGrfrZRv8OgQWVPWubxJXLqAu+RwTlaCizLTc+ujUIqEU+YDzvtUCobHTRSYixZHPh5TIyygfr0j39whrz7R8eKlGVdQ5y4+9WQeGH6e0OXGmsAJm1jvFpSKtOtviX0Tdx817Kk9wPifWXIbEIDjGhS2DD9wB395DxAgn10oMYzOxwx3dacH2b2e0M7F8lxm/soGRR2BC2+KGAOh/PkfQ22VUIvFgfOv2JuXRF/iwpBHktGWLmMDenHWgiUQlEMZZ/f+MXckmDilwnVewdOSVSgwK3kS+TBNq+znHPMVU1GW7Lalb3YxQUtDqAXzQCgvJxBCA8O/qLkuGBkHCjZjEAJ9w4cnqn1zh6I8bEaJTUojUtoSWeOWa4CekSr4ktmvJY6gZUmhpqKwq2VGacCKgWRaIz7Y7RWsAEvwrhLe5uIokwUXSU1cpuWOD0t0Jah+roYMoXd68WvNIoIozFD+AxnDxnWPa+TPWNenSjA2KAC043kZ0AFa7um3Rd4laLbPPEy3O7nFKrLxZzBwto8oX1aigUe2b6DS5Hi16eMiMrDrBTeQe7LEb8X+F886oQkCZ21UNX5s+CZ6pvtT83BiLaV5J1zsViYhqBO6EsYXmpnN8yLZlBHLg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5026.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(316002)(55016002)(38070700005)(86362001)(26005)(52536014)(5660300002)(8676002)(4744005)(9686003)(122000001)(33656002)(38100700002)(6916009)(4326008)(7696005)(508600001)(76116006)(2906002)(64756008)(66476007)(66446008)(66556008)(66946007)(71200400001)(53546011)(6506007)(83380400001)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?TDhYd1BMQTI5NkZGTU92UG5acy9vQVBKL2NUdkk2QURNb3ZWMlVGbll2RDVj?=
 =?utf-8?B?ejFkcW9NcSs5c3ZXcjFJT0dZZzhrT2c4Y05BeWlLZFZDL2dNcjNQS1RHaUJC?=
 =?utf-8?B?OXNmQ2R3eWRlRFRicS9jUFh2OHpJbElVazZ2eEU4Ykc3YkZpNlR0R1c5cGll?=
 =?utf-8?B?QjJ4ejNZeGpsb1hxVjh2b1EyMXVtYUM2dEg5Z2xTQmhDRUFrWG5rTFNEQ1l2?=
 =?utf-8?B?Nm5taXpUTkJMQW1wbGJCQ0dUSFUyUndhOFFhMEJubnNlcER3akdpMmJiWTFS?=
 =?utf-8?B?LzN3TTZXa0VNcTRZd2tQdFkxNVFodUk5Qk9uT0trTXNYTGptK0tJVy9VVi9K?=
 =?utf-8?B?UEdvd3NtZk1adHIxd2d1aS9rdXhnaXlpbnd4UmU2ajdPMFpDRjhGdTlqNWFk?=
 =?utf-8?B?c29TT28zK291Z2VRWW5OSktZdlpIY2d1NytBZ25aSytEMFNxYWpNeEMvNjNX?=
 =?utf-8?B?NDRLZTI1cHZ2SWw1c20wd2Z5OUZtS2FZNElXbGkxSFBOS3B6bWhpVXhRNHNH?=
 =?utf-8?B?b3NndENSWmVnekt6NXpoYTdEK0tKQWZ4R2RGUk5HSDREUFlFdUk1OUpML1JY?=
 =?utf-8?B?aDQwc2J0Ky9XNVozN0t1b056VU5aaS94SmpuTHo4bVpoTSsxTjlpb1ZTNDR4?=
 =?utf-8?B?MGU0ZnB3a2FUS243dyswYmIrdVVQenJFcUdRNE43REIweEd1TnBYem1sVTNl?=
 =?utf-8?B?TjBuWElJd3ljdWhLVEs0V2JERG9qRkhYYmZJSTcwdzAvTDFndVplbDJHWVJw?=
 =?utf-8?B?WUhvMU1WQUN4aHA0MEo3SUhENHVWcDdjajZHMjl6cWpSZEpOajFkNVlDL1N3?=
 =?utf-8?B?YUJDVFc0UllPWDBmNjUzUWxrZUhZUFR6b2JkODNHQ2I1TGoycUR1S01wZmhM?=
 =?utf-8?B?Vk5zQ1gxbitnSFdmc2pMUUJEUDZQRk5zVU9neDBVNWlhQWN2d1c0emtnQk91?=
 =?utf-8?B?WUVEK2pMbEVXOUtrQXpuYVo4Q3BpRGdmaHBZdUp3cGxXUkNzRFQ5NndWYkI1?=
 =?utf-8?B?cnZqUngvNjllTUxpWUk4YUVKY2t1QWVxWVhrc0ViUjI1U2pUN2pyOWxMK0sr?=
 =?utf-8?B?V0RyT1B1ckF5MW5qYldicG15VW4rZWRrVEtTelVYeVh1QVNKVktWam5iT3p5?=
 =?utf-8?B?VVNpOXByS0U2RFFDbUpXaWYrTi9pV0htdi9VVUdOYTVKN3BkQzcxNGY2cmJC?=
 =?utf-8?B?Q0RsZ0YxRWJPNW9WWFhNZjZ4eE95allVRGFNcVdmbVFMcWRTSUgyUWdUMW94?=
 =?utf-8?B?S0xQSU40WkRVYnN5YkFqcG5SeDVaTXBYN1A1MkZDN2d6eU1iMm41RFJmdVZN?=
 =?utf-8?B?eVo4cmFRTVlxN0R5Ti9aSzdtbVp2WkVUQVdhSnRpMHJiV2FLbVAyMDJFUW13?=
 =?utf-8?B?T3dRdXZ1all4K0kwUzhjMjJtaEVYcWhaMWhabjVDSC9BczZvQ2ZxY0loeVZu?=
 =?utf-8?B?MG04NE4vcnpzSkhNOUswWHliS1cwZE92OHUzVnBjTlMvaVBWZHpRVVRYY3Ir?=
 =?utf-8?B?VTF3b1pWaENLQUZVK1hHeXVUSkZnVVZCZlVvQ215czJCaXJ3T2JjWm9FbzZu?=
 =?utf-8?B?RkxJL0tHYmlWVEZRTTdRTExuODgwbDhMbzhTM3pLL1NaQ2VKazBqeTdzbXN5?=
 =?utf-8?B?VndrbGZNcWhod0p5M1hvcG4yb1RVdmlObFVqOWZad3JCdCtEMFZ1ZU1wRFdF?=
 =?utf-8?B?SnRoOHJ1OXdPd3BXSGVZZG5OTEJwOHRERVhpK1V1ek1qMHFhdmcwSXo0NTIy?=
 =?utf-8?Q?SfVzVjD9IdHD2UUdKmpTUEpnOCx5ryqE2Fj3bAk?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 42724238-000d-4073-eaee-08d98234fa68
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2021 04:03:49.9740
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 Yrh/ATcam8CiaMqnQ56TiybGdkL8SRK0S+7qWeVYom7KjLTWRWtzcdqr2AlwK0p00g2V4L6g4DJKwlZQiDo7qUcj7H86gZtA/1xcY9KpnKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2013
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Sep 2021 04:03:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54889

RG9uZS4gDQoNClJlZ2FyZHMsDQpOYXZlZW4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0
b3Byb2plY3Qub3JnPiBPbg0KPiBCZWhhbGYgT2YgSm9uIE1hc29uDQo+IFNlbnQ6IE1vbmRheSwg
U2VwdGVtYmVyIDI3LCAyMDIxIDk6MjQgUE0NCj4gVG86IFNhaW5pLCBOYXZlZW4gS3VtYXIgPG5h
dmVlbi5rdW1hci5zYWluaUBpbnRlbC5jb20+DQo+IENjOiB5b2N0b0BsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnDQo+IFN1YmplY3Q6IFt5b2N0b10gW21ldGEtemVwaHlyXVtoYXJka25vdHRdIGJhY2tw
b3J0IHRtcGZzZGlyIGZyb20gbWFzdGVyDQo+IA0KPiBIZXkgTmF2ZWVuLA0KPiBUaGUgaGFyZGtu
b3R0IGJyYW5jaCBpbiBtZXRhLXplcGh5ciBuZWVkcyB0aGUgdG1wZnNkaXIgcGF0Y2gNCj4gKDY3
ODYwMGJlZTYwOTJlNTgxMTBhODI2YTljYmVmYzJmNWM1MjkxNmMpIGZyb20gdGhlIG1hc3RlciBi
cmFuY2gNCj4gY2hlcnJ5LXBpY2tlZCBiYWNrIHRvIGhhcmRrbm90dC4gIEl0IGhhcyB0aGUgc2Ft
ZSBpc3N1ZSBtYXN0ZXIgaGFkIHdpdGgNCj4gYnJlYWtpbmcgd2hlbiB0cnlpbmcgdG8gcnVuIHFl
bXUuICBDYW4geW91IHBsZWFzZSBwdWxsIGl0IGluPw0KPiANCj4gVGhhbmtzLA0KPiBKb24NCg==

