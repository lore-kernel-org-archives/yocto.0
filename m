Return-Path: <chee.yang.lee@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C2AC433F5
	for <webhook@archiver.kernel.org>; Tue, 24 May 2022 15:08:17 +0000 (UTC)
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by mx.groups.io with SMTP id smtpd.web08.10627.1653404895239326037
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 May 2022 08:08:15 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=azZUkiX9;
 spf=pass (domain: intel.com, ip: 192.55.52.115,
 mailfrom: chee.yang.lee@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1653404895; x=1684940895;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=LOSrZs84EjBfO/l/uI1NP5vXfIaXjohLPh3R0BN7YT4=;
  b=azZUkiX9PAO6+McwPOTau/Jw2zoQqo6loWZSuZTSUuMKJJmWdy9fcTnl
   g8DRGZzHF9vzp1H6TOoo2Txqa1XyuyySrznu9TwXbMe2uu2U3VZq1ijTH
   TDz3Np3GkPmkYvnfKStftm4jSsdLVDvqIz/XkdSY08itxntSB6NxrDFE/
   3fT/ImYuUCIbUgq1mEoICTErfdiUEMXltiGhHhBn1k/shCmKe/Zbm7A+Q
   cG+rFy7DcfW7tKy5z2xAyvTAXQkQfitaJMpljCNN0llTiIb1KsXkeHOZq
   37/CnTks5elIj0tAmgG3dV5nYu6Gojb+ILk6XqB6mUeV4vAngKIhqtxR0
   A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="273669771"
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600";
   d="scan'208";a="273669771"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2022 08:08:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,248,1647327600";
   d="scan'208";a="901076543"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
  by fmsmga005.fm.intel.com with ESMTP; 24 May 2022 08:08:14 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 24 May 2022 08:08:14 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 24 May 2022 08:08:14 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 24 May 2022 08:08:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=af35PzSiYgVts5HV93KyxVkie1ut4SHexEMq60ZHguW2bLAyelbFz7jnNca7kdFwliZXJFie7QOitNBPTh66P8P5kI6sG3N6orNGwSXIKOORWDZLBowP0ky5yy/A1nikUXLhM2PftWTMvQTV+H7jhF2X25YyIMX1Dd6m3oxKu/vHmSEjA+tKe9SfsqG/HItw4TqJU9fFlrsx9omNgqtDG61OBCoZcaxLYlC33+vmVIh0PzgVbWTorx1YphKNbY26dy3TNQikVATnly1X7nTmPTMArdsWDXC/tD7+353wSp3HS3KI7lH09BuAlut7OKRgwX5kOpW0y3m4qJH3VpwgXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LOSrZs84EjBfO/l/uI1NP5vXfIaXjohLPh3R0BN7YT4=;
 b=l+XP39+6iY5cSgwWtNQ9cRFZI8lfuMJhpwio8H2YrtJ8dAY4gvp6aN6/VGwiepyYacioSbGSeY90YOnjbIyZTaLzLjjUtGT3GDOSQW8Jy37Kuro/VghhALbzFtOqCRtQxidj5CzkNC2OZ2hLTo7VZOldpkf74I0XN5R+eo19GFGzfmC7CVVtW/N0F5QVF7BdxeaX2KvC3UuEO/5piyxX534F43Tl25v9MneDXIIZnlNXkat+SBVUHczf8HFj7RGze19TSD5JIe2Zy8j2zsMfzNExHoWxVQvO7uKwH4iyudeF06xDkghxtrRy+aPfrNbttmaxVO3u0Gv2j8j0HzKo1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com (2603:10b6:3:a6::21)
 by BN6PR11MB1442.namprd11.prod.outlook.com (2603:10b6:405:9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Tue, 24 May
 2022 15:08:12 +0000
Received: from DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::747e:4603:d43b:ab20]) by DM5PR1101MB2361.namprd11.prod.outlook.com
 ([fe80::747e:4603:d43b:ab20%7]) with mapi id 15.20.5273.021; Tue, 24 May 2022
 15:08:12 +0000
From: "Lee, Chee Yang" <chee.yang.lee@intel.com>
To: "michael.opdenacker@bootlin.com" <michael.opdenacker@bootlin.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [ANNOUNCEMENT] Yocto Project 4.0.1 is Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 4.0.1 is Released
Thread-Index: AdhvFm5PKBkzT4NTRO+mfeQ8P5Xz2QATuGSAAAQDTAA=
Date: Tue, 24 May 2022 15:08:12 +0000
Message-ID: 
 <DM5PR1101MB2361303DE1CD0A72067814F6B9D79@DM5PR1101MB2361.namprd11.prod.outlook.com>
References: 
 <DM5PR1101MB23618956A9330B4B3DF1771AB9D79@DM5PR1101MB2361.namprd11.prod.outlook.com>
 <8c062e04-a9ed-e8a8-fbbf-aee22f29d3c6@bootlin.com>
In-Reply-To: <8c062e04-a9ed-e8a8-fbbf-aee22f29d3c6@bootlin.com>
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
x-ms-office365-filtering-correlation-id: 61722152-bce1-48d0-69ee-08da3d97388e
x-ms-traffictypediagnostic: BN6PR11MB1442:EE_
x-microsoft-antispam-prvs: 
 <BN6PR11MB1442302C71B326C496E62DFCB9D79@BN6PR11MB1442.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0VPxVm7bPhTyErqYEWWEmfQ9Y4goP9x6CP0bRDHJJdHWy1vr8mNFK+5wPbmgBLyGpK16JftdJCG5Hmdo/Ldh47GAiKX3iZIqebm3dinpWDeZkhrXAapj/qw0Cbj4CX6l+mOjQryz8B+6Gp1R4o8jzCl1T472ydvlDsXzEdmJ+fkoiomD+v7oaN8GkT6X0DZwP2JoMjCDrWGLo8f2pkq9Fv3XJiObZHB/5zKVtF2VodtFSoJmf/LbNJIIWpL+YRAnyTwB0bDAeKNtGZbLBnltSlk94xesAYLL9lcdXEWONlScfhQG74ZeZJHgg8wZpwCR6lslxqh2mzP+knYIS5XlmxaxNMWC5bpG9zi5IiBe8diN1q+As3ad/7VszunyLP/DI5Y/fkvfb07iZkFsQPtD6sPgUU6XsEsBNyVi8GqZA6bxvAAPMKfimQlC2HcmJdaHgxTVxQgd8J11AdGIR/dxI3HSV39RK+9URmSkoL51Aamiut83hPd4CI8SUy8cBb3LbWJcEF9PgT2QObEIPLF295T/NlkeL7dEXrx1Yq9kG06XGIdLEhRlWh3p5iuRsqf2xrAW/VQHLSbLiQq3HlFd4/NCU+XSgNk+v6OB80C+F/+PVvWeFTRbMGpC49UyVUDNpyj5yv3OANUiRKqtQ8kvDPfaybQxUFdNVN5ovTWhmDdHgjU2++I28/qqtuxMNyOp5hT1WBP6oeD1oMChQGAHoI1nG3CyzGgC+e1P44em2Yyhm5oeSq2n0WgcaPjE3AjMTP+KGA5E6nHnR8TTnCshfg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM5PR1101MB2361.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(76116006)(8676002)(52536014)(71200400001)(66556008)(66476007)(64756008)(66946007)(66446008)(316002)(86362001)(38070700005)(110136005)(82960400001)(2906002)(122000001)(38100700002)(55016003)(5660300002)(7696005)(6506007)(4744005)(186003)(9686003)(966005)(8936002)(508600001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Z28vdlJPc1Z1aUVPZ0hqUnJPbFZGNnZJMWt2ZFB0d2dVWmFINlFpNXloUGF6?=
 =?utf-8?B?QTh2eWNPVTJESW1tb3ZPR0JIWWtkSm1jekpRR3ByWUhxV0FkQXFUM1h0RTVD?=
 =?utf-8?B?VW14NVBIL25jMzFRd3hOc0FxVWxyeFUremREUEFYcm5mcFNMdnRBQVJ0Q1ZC?=
 =?utf-8?B?Z2cyRWE4d2NQc3l4OVdhd0RhZVdDUjRnWC9LZjVLcEozK3Y1NDJ3KzJsTjN5?=
 =?utf-8?B?Y2lZSGl5cm11NmUyRXF2UE5RYnp0ZlArZzFYYlFtT3Jrc0p2YmxTWEp4TkNw?=
 =?utf-8?B?VndmMXcwVXN6aGtVeWRXQnlqN3h5WndsR20zbVYvNkNzQngrSkxKemlVaERE?=
 =?utf-8?B?bXYxVTlFd1kyYnpUTHEzOTJGWUpGZVA0NUYvelVGbzB4T0hNR284UUt6Y2Vu?=
 =?utf-8?B?QSswVVp0NFRsZm1pdzBYRjBQS2x3MzE4bFU2SzNzbHdXMVBRdzhNZnVHNGxZ?=
 =?utf-8?B?OTkzbGgvWm8welo5bUpyd1paQ1ZZUllNY2lueDh2Q0VlMC9WNTByb3dkNGF3?=
 =?utf-8?B?enh0N3dPWStUVXZXMEJJN2p2NmJtaWtaRmRNWXJteU9ia0VGSHFWelJMdGNk?=
 =?utf-8?B?NnlTWGR5MEJCRjVPSTJVRlNLZFRsdkVPUDVod0RQYU1oRU1hdUtOZlpyY1A5?=
 =?utf-8?B?TkJsK3AxVUdpTmFhREx1UXY4OCt0eFZ1OEE1bVNBb3VNWGl5QjVCWXZsVk5r?=
 =?utf-8?B?N2hZV1Jscy9QUGwvelFodk1FTU5vY1pIMWZmRml6ZTZMRDc3WExjUy9Nd1h5?=
 =?utf-8?B?MnNlNzBCMFlnRjZYR0ZiTURxYk5OL1VaK0VXdjdiWG5xazhyNXV5eXF0aVRF?=
 =?utf-8?B?SEN5TU5SRkpGTkptdFhJQ0RpdG40d3dsUXBZOXI0emdsMk9PUXBKVmswTzdm?=
 =?utf-8?B?ZlZud2VmQ3d6a2NyZUhVb2M1dUp2bk5LcWYyT2JjakdJV09qc3VIKzM2ZnB3?=
 =?utf-8?B?Z3RabE5QRGdpNEdwa2gxS3NVenk4S2x6dlQ3ZGRZaEhDVVRnRTNNT1kzNlYw?=
 =?utf-8?B?dHhBSTgzTitMYzhTai90bnRsWGJYM0JXTU5KaWc2ZitHWWxXRUFGNHZyUjRv?=
 =?utf-8?B?RndsSFZydVA1RU04b2lTS0J2b3Y1ZlQzRkYwZm9LWkx6aU1DK0F3YVNKL3Jr?=
 =?utf-8?B?NVo3Nkg3RHp2L2hQdGVXdlpZeUttc25vcktYQjk1QWR1R1RGQVNXV0M2OGRt?=
 =?utf-8?B?d3RWbG1yUVZNV2ZZekZ0RWVsams4eXhrNkhFeVBOdXhzb1dodjJnMGttUXZO?=
 =?utf-8?B?VTdXdE4xSU1NSEQxbXNIWlhpc3VKQXNUellpR2VOMkpRREdkZEwzcXRSOUpJ?=
 =?utf-8?B?M0c4cnJsNVZyWktHbUljcjBvM3p5M2dUSUUyNzg1TnNkdThHNHBGTER1aGNo?=
 =?utf-8?B?eGc4UzYxbGFIaXVFVmYwOE5UbHBib29iVW1nNUdBY2pmKzlJam82bEkxeHZN?=
 =?utf-8?B?dy9vazBZQU5sZkFxb1V1Tkhwak5pKzEwS1JsZEVjK2RhdFBoYjBhQW5XNGxZ?=
 =?utf-8?B?ZlIwL0x5UjRDV0dMNk5lZmhyM2FUY3NrUjlJQTNzS2JEVVI0WCtFS3lQaDJL?=
 =?utf-8?B?N2hISjRVNFBsMS9QZEErZ2FZSVJncmQxRE1ncUZhNUhVZ3hNVWZBbDdvL2hN?=
 =?utf-8?B?V2E4c3BZak1jVHBKdEhrR2RwUG9USWNJbTc2cWkvWW4vVXI1TmVPZXMwaGpX?=
 =?utf-8?B?QUkxSUY1V2x5b2kyVkVENldSekRIM09LL2I1QjNWYm5sdEYvNkt0VUc4Nmp2?=
 =?utf-8?B?S1JyK3MyUVQ2OE9RZU9pUmkwcWtrRWtKVjkzUWpidXZyK1JBbWxkNUsyaHdC?=
 =?utf-8?B?aGZuK0tCcHQwUzhsekMyVzJhdm9JcGlKemVTWjNSVy9KZURDdG56MzdBeGlB?=
 =?utf-8?B?MTFRWmNIN0JXeTZadUFtSWw3czcwWDJTN0EvWHZnY3BVQ0dXbU5LaTVnblVU?=
 =?utf-8?B?aEtRb3lmV1F0YWk0Y0VKM0JuWDBvaE5uMkNQSTRPR3A0cStYZCtTNUpVUlZT?=
 =?utf-8?B?Nk0vMkxiM2t3ZUhSUUVXV28vTXNBRHBidllDRUFlcXFkWGluTjFyY0NsRmlN?=
 =?utf-8?B?eWFMb0Y4V1BrQ3NacFdhVVpraUNRQy9JbmNEaFY3RjJOVS8vczBqeTBKbFhk?=
 =?utf-8?B?KzRUU0pjY1JlS0Fuc2ZUN1BDV0MxdTZ5QVUrSko4eTlvVXdOVnNpbjBSVUd2?=
 =?utf-8?B?RzFtaTVmSlRmb2ZhamRVemh0Y3c5NTRkYUdxby9xQWI1ZkRJQysvWXZwTmJI?=
 =?utf-8?B?eUV1S1cwNzBPTkJ2Mm51UXNoaU54VlMxeFZJWE85amMzTWpmdUhKQ3BMSFJs?=
 =?utf-8?B?Nm9KdlFtYjBCUVRDb0F5UDdrTzFMcEcvTzBhZGNqNklTQjNkTWtuVFpoaUM0?=
 =?utf-8?Q?8VUUJm/fY0FLPkdKhZX/5ehGbe+JIFoCtXYXb8xfAGHSf?=
x-ms-exchange-antispam-messagedata-1: Wgzo/Hri2zQFgw==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 DM5PR1101MB2361.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 61722152-bce1-48d0-69ee-08da3d97388e
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2022 15:08:12.4403
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 DAbL3UpxpRrtmGgMyCKaFjtbmXeKKPHnjk+2a4/Wy9bvveBN4C4wBVifRWwrbA01xALNI9KlCiI3sKPKyvw1xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1442
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 May 2022 15:08:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57178

PiBOb3cgdGhhdCB3ZSBhbHNvIGhhdmUgcmVsZWFzZSBub3RlcyBpbiB0aGUgZG9jdW1lbnRhdGlv
biAoc2VlDQo+IGh0dHBzOi8vZG9jcy55b2N0b3Byb2plY3Qub3JnL21pZ3JhdGlvbi1ndWlkZXMv
cmVsZWFzZS1ub3Rlcy0zLjQuMi5odG1sDQo+IGZvciBleGFtcGxlLCBhbmQgdGhlIHNvdXJjZSBj
b2RlIG9uDQo+IGh0dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcveW9jdG8tZG9jcy90cmVlL2Rv
Y3VtZW50YXRpb24vbWlncmF0aW9uLQ0KPiBndWlkZXMvcmVsZWFzZS1ub3Rlcy0zLjQuMi5yc3Qp
LA0KPiB3aGF0IGFib3V0IG1vZGlmeWluZyB0aGUgc2NyaXB0cyB0byBnZW5lcmF0ZSBzdWNoIG5v
dGVzIGRpcmVjdGx5IGluIFNwaGlueA0KPiBzeW50YXgsIGFuZCByaWdodCBiZWZvcmUgYSBuZXcg
cmVsZWFzZSBpcyBtYWRlLCBhZGQgdGhlbSB0byB0aGUNCj4gZG9jdW1lbnRhdGlvbiBkaXJlY3Rv
cnk/DQpUaGlzIGlzIGluIG15IHRvIGRvIGxpc3QuICANCg0KQ2hlZSBZYW5nICANCg==

