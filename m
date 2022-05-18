Return-Path: <anuj.mittal@intel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41F79C433EF
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 13:43:17 +0000 (UTC)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.5044.1652881389262656769
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 06:43:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@intel.com header.s=intel
 header.b=DymIqZ23;
 spf=pass (domain: intel.com, ip: 134.134.136.100,
 mailfrom: anuj.mittal@intel.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1652881389; x=1684417389;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version;
  bh=dTkPg9auV0iBAsClj9955cPdG/Ka34Cz8fESgLsqozg=;
  b=DymIqZ23yMw5wYOaPp6JiFt++JkAQGZMCypPwQddaC8MQ/eflm4jAvoj
   ZuFFk2xzl6ps6O6cII0qHvJwmF4/i3vw9mxcpGcvx92zzWUb+ykcKf1Sr
   bblu/br+ceGqJoou2V/CH8MecLPzyho3l92ZSJHPxHeSzxli8AvUoIdxF
   IbsZdOT1wHyz9l4nsh690wyLp27rh43W/zig2Y1xlix9Ch1+qiaa9ojMz
   Nv1q6iApzSDJyShC0289z1n8oMxg9sjdjMEG+QSf7e06Xa9NT1dDITCi4
   aJXSxbDJL/Q4SCLbLo+TLd58U/jy/L1MicZgGDjF7Nw/0dDnBlJzuxtur
   w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="334723657"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600";
   d="scan'208";a="334723657"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:43:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600";
   d="scan'208";a="575080269"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by fmsmga007.fm.intel.com with ESMTP; 18 May 2022 06:43:07 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 18 May 2022 06:43:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 18 May 2022 06:43:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 18 May 2022 06:43:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QhtfsSgTvdPZD/75eHbeqL3uNlJ02Uuu0qKIA9b04aAWR7bEjBI8fkuLfyTonKW5yUsOBStjaSK9dFclxU8E8EflE7Jc20xqDArG9pptwl8g3b1McfzA9w9b23ZyWkezfUtOmux1PZGfcLNbx9sEWjdt8ciW+wDApaeRvt/E3K1prhZ3OtkvSRTAdSYnyjqlojv+JmJ0h9AFE/wymalOnKoRxNwKVxZmCeo/F+bVT4BjOl6aV+LgipCY3q3cNzNl/gQf5ahPPOlLswmsElXkTJVeLRtPY+9o9nYVKN4eSJrQaC3Q1MICJSyl80Q5rDierMgHT5fpDCIl/aOaw+fp+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTkPg9auV0iBAsClj9955cPdG/Ka34Cz8fESgLsqozg=;
 b=k2HzCETlXldKkqz0r4dRR+4pDgErjTWIyp3K0DkLxFGE23BjO8hmWb7e+829VwcuE0llkWOHSjvR71rzc933RQlx+t7HjKbkWA5dDIzaTKy8wZEilwHdJenske/zonAlyv5gYfF8nAG/kbmS9V5qH7Ce3Ddb3j/L1mw/7dZOOD53upAS5YOdLsMxFx1GW+isU1d8lOStpOkOWUxFGEZUvzc00yTzBNLzpX0SFFGYMUw/fuF4kq5sGmv9J/KcYcxH5GX3CVZioTjY8+9wHA9vy0gQ65fh4XkFip2Fp/Q/lkrLMxPHZu9dEV3dQLlHELqBQJTl68YwkWI4Go3xctYEJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 by MWHPR11MB1437.namprd11.prod.outlook.com (2603:10b6:301:a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.14; Wed, 18 May
 2022 13:43:06 +0000
Received: from SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::3d10:f50f:7260:c4f8]) by SJ0PR11MB4896.namprd11.prod.outlook.com
 ([fe80::3d10:f50f:7260:c4f8%9]) with mapi id 15.20.5273.014; Wed, 18 May 2022
 13:43:06 +0000
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"alexander.duda@vector.com" <alexander.duda@vector.com>
Subject: Re: [yocto] ERROR: cp: cannot stat 'Module.symvers': No such file or
 directory
Thread-Topic: [yocto] ERROR: cp: cannot stat 'Module.symvers': No such file or
 directory
Thread-Index: AdhqrT7pyjlUBcS3RGu69vaHY6uXXAAD/RqA
Date: Wed, 18 May 2022 13:43:06 +0000
Message-ID: <d5a3de03a3610ef1627762776da572cf7bc61dcc.camel@intel.com>
References: 
 <AM0PR01MB4370CFEECE972B01700BC592FAD19@AM0PR01MB4370.eurprd01.prod.exchangelabs.com>
In-Reply-To: 
 <AM0PR01MB4370CFEECE972B01700BC592FAD19@AM0PR01MB4370.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b756da48-3a5c-4007-5668-08da38d4568c
x-ms-traffictypediagnostic: MWHPR11MB1437:EE_
x-microsoft-antispam-prvs: 
 <MWHPR11MB1437C5E8A3942AA07A833422F8D19@MWHPR11MB1437.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SG9ayEuhbr8AhpnMy1H53h7+xbzLjQJYTfF7TKtmaUMvCJkD66QOElpnpN282Xo2XKxLGDs5GA3AU0XS2PypW7ODWlhXAHdHvLWFIaFvrvZytTmb6/AmFWAqKm/Sj7FBY6tbxgobSOHAN/b1W/Mf1ZYWiXqQFdBlnKb2G08KmRqBQeYNBGAyceY1UBbSVsEIaHW5+9IRYemDFi7TsBiFWOXH8NimtreJzZoHh7nJvrYC/MeMW+BBnLzIFNV6f7x54XMknu/y6TLSQads/HAyvijuZTIwlJe6UA8KB70zAEUhRj9q/2bys/sDBlaii/WNd+IS3c/U5WSLQZYhQIDwr/2mYGxWumCBWsvenPY5wrt3/jGIV9pK9le8cGmmVCzPzR/55qyw9nLfsldjG6uNf0GvgPEoKblDbAWxKa5Qc8GEldsUbv3orKn1XnQTIodE/ML9Yqlhd20miG6dcowwXhUpT3aaEbmnjLqpmp/B7VJ4ywhT96DbkjDcN/l5f/f3btdEKnexLVipAnpdRCkoDjxK9TrlPbojcnOESSKlpXu7rrC8rKJjozJRSpYk4kydZwSVjnju/ZhP5mc8+K1YfzmGGnOtcgsXOJatXPhh0wPs8/rt23rNmJ/vubdGpz7b4Q/Bsvbo2peGLpelShnGdikrf4s+nZr1qCsttzGf1nbukCZrrzehr6+t3DlsEwDdgHj+sNNUeVkJb39mW0vQxIEQMYBRjL4UBrPYD78PAK+gUJ3YP845R94azBvIhA3WYxAgoZyvJ7hvmCZQ83k1oYwaKDpjzRqpzKZcf2OryTk=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB4896.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(71200400001)(186003)(66946007)(2616005)(66556008)(38100700002)(91956017)(26005)(110136005)(316002)(966005)(64756008)(66476007)(8936002)(36756003)(76116006)(38070700005)(86362001)(6486002)(66446008)(8676002)(2906002)(5660300002)(508600001)(6512007)(82960400001)(122000001)(83380400001)(6506007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?aGZPZWhmaTFvdXptR1pmQWEvR0Z1SjVNQy9zbFhLWW80Q1g5RTVucEhxYlln?=
 =?utf-8?B?bDBjc1BqTmFnZkU5M2diQml1NzR2bzBTdEVRNlJmZ2JiSndEdFdPVWRiSENU?=
 =?utf-8?B?MWQvcWZWL0ZKOXFVcEZrMEsyN0JrU3JUek5OamhWN0I4R1ozdDJUTXpzVFIz?=
 =?utf-8?B?NGFMWjBaZ2MrVE4xU1JIVWlXSWRpZGJyOVlOb0thUTZjd2QyQ2J3b0hzMXp4?=
 =?utf-8?B?bjcrNEI5UFBoN0tkZGRDT1I0RE5rOVI4S3U3TmlpbDVyVlBQRWg4NXZZTnVl?=
 =?utf-8?B?eHZUSVlqZDdCMGVkQURtNnlTUys1dmhDN2JRVXBKVlVIbGZRdXJCRXBsb3V6?=
 =?utf-8?B?WWJubHVqMEtBZDd5eWhOaDI2TUd2anFob2hxR2RlZGZEcDQ5UEpRc3MyRzBz?=
 =?utf-8?B?VVpXR0FZSGJoeTB1cFE3SjE4dXRiRFh4NlM1cmNHd25TRFdCZFV3Vm9XUFoz?=
 =?utf-8?B?eVgxVUwrdGV5QkRMTXpvbjlRcnppRnRYOUZvMXNJd3E2YW9sWTlMYmJEUGZY?=
 =?utf-8?B?SHNtK05aRVBpVElhdXFBdEdrejYvKzRxV0dJYWdJeURaTmxsZFRtejE4cXh3?=
 =?utf-8?B?WnprUi9sLzY5d1JlMUpRTm9nTkFiZDJZYitWWThCakFmMllGYmU1NHNTdjNa?=
 =?utf-8?B?OWlCYURzZ2xaSkJRcXVaYTgxWHlkSjUvd0xGb1pwZUpQYU95MVRJQUdkalFU?=
 =?utf-8?B?UWtMWWVnbWZvaURZa1lrdGV1MDVqM3d6R1Zta2JFYjVkamxnby9YNTdMTW93?=
 =?utf-8?B?TDZ0NXo3U3pKcCtyM2lvWjFxUXdWOXljNk56ZmR3elovemNuSlNNVGVnM0NB?=
 =?utf-8?B?RnFjTE9INERaMWh6aFpjNHZGcTF5MmdrZkxlREw3dThMckN5blgvNnBBSVVr?=
 =?utf-8?B?dzJ5TGI4R0NybVhjeDRxckN5WjVvcVJaZlNFdmtnSGorejZBTEYxZlByQ29T?=
 =?utf-8?B?UThWS3VZSlFzdlBYb0lFc3BaUzhWZHFPMXlGVkRsanBSOGpSby9GVituRmRL?=
 =?utf-8?B?Y2tuZDljeTVvNmpLbWhtOHd2SHF0dkwzay9RYllVTlVFTmVvc3ZCbk5wcEtK?=
 =?utf-8?B?UkNIeEJ0ZlV0SiswcnJyeEZpdktaQUU5L3dHZlpHMWMvYjNHYjJuL09pV3pQ?=
 =?utf-8?B?c1krekRwT04yNHFXWjdYYWpDQzhYMk5na0p2RTdCbVdKb2NTU3lDUDNRRzFx?=
 =?utf-8?B?TGEzTVNUdGFBT3dZa0JJZlI5SVU0QlF2eklZZW1oZ3FnTG41ZUFNeit2U3oz?=
 =?utf-8?B?TXQ3LzYwRHdiNXdaUnR1S3FTZ3Rwbmc5ZHgyWDk2ZnNudkRNM3NGeE55b3lX?=
 =?utf-8?B?VjB2bmU0OTAxWlRwWHZjeUxQYWVhdDRBdzRteG5xdm00YmlESHdtWUNBTk9G?=
 =?utf-8?B?WVdzZ3Q3M2xFNThaSHBkOXhqRDk0cEZuTlQzbUFSNEVjaXhwdElhK3FEREdu?=
 =?utf-8?B?TzJONHgvZnYwcWwxZUcwaW16WXZRcm4vQThHRXR3MXFEV0NhRTk3Y012TCs3?=
 =?utf-8?B?cjZUSmJPN3ZEb1YrMHlzTUNxcGJqVlUzWnhOZnl5VUdYbm4rdXp6NWtwbkNp?=
 =?utf-8?B?THZiNGh1aVZUNEFBak5TUTkzU3g4aWxIUVZPSHpvY3VnbHJVZVFNZ3E1OUNT?=
 =?utf-8?B?YkNPTzNpMVB0elhoOTZDWnVoVVc4RTlIcUViVjJPdzMvaXJLb2x5dithSUkv?=
 =?utf-8?B?MlBoZllEZWdUV2JYOWx2ekE3QUVIZEJSWStYeERHRHJKODhiMGpLT2o5QVlu?=
 =?utf-8?B?QTJ3TS9aU3BKYnFvcTYyaFlRL1lwNTZmcmNCRmhERGVSUXFuZ2tlcXAzWlhG?=
 =?utf-8?B?bU1WQlJFcjM0dzE1TlI4S3pBOUluaWQzVjdrYlpTc05mbmNrS0dXTnlXWXhM?=
 =?utf-8?B?MTV5MWdCMHZlN09YKys5R3JMQmxsOXdSWGxFUUlKRDdTdjVzQWNpTTluNU5Q?=
 =?utf-8?B?ZDBlb2IrekZzLzgzY0w0SmRGaHV2US9uQmY2ZllTTjNZTGhCdjVQTzhndEt1?=
 =?utf-8?B?SE43blh6bzY2akd1ZXJCRDBObTlCcjF0c2hVSjlvVnpIcGh6Y3Vzc2FhTzh0?=
 =?utf-8?B?NGs3SGt3dzNIcEZJT3dKM2pzaWVOc01LNDVsSnhpWUxtSU1iRUZDUnQyNW1L?=
 =?utf-8?B?azl6a3BWQ0c5MHArc0c2OTRpU3FtZjJFeVFKdkZtMTFOYzZ2VDJFMWFIbkdk?=
 =?utf-8?B?TjFtQWRNQ3VSN05HNUJIeGhHeFcwdjBUQmlWSnBJMEtOZTU2cHUwUVdNdHQx?=
 =?utf-8?B?Y0c1L002cXJlZU1zWjlPY1FJSTFncGFyMjB1UkpmRm9ZOEJISUNTWDR6KzRV?=
 =?utf-8?B?UnBPYlJybC9hdTExR2ZjKzN2V1haVlE3TTlRZVlhT3A5YzMzV3dHSU5DeEZn?=
 =?utf-8?Q?1K8Y7OTwwfK0AoWQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <99CCD8902B85C54D8D9D32C4F7EE514E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 b756da48-3a5c-4007-5668-08da38d4568c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2022 13:43:06.2294
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 vE5HM6huO9/O3heX/4GnOi4HtQfgkfGT8JnEogWuriCZRcotuDmpIgavE7FtdXp0NuhYvGsGzgl9mim+mP85bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1437
X-OriginatorOrg: intel.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 13:43:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57129

T24gV2VkLCAyMDIyLTA1LTE4IGF0IDExOjUwICswMDAwLCBEdWRhLCBBbGV4YW5kZXIgd3JvdGU6
DQo+IEhlbGxvIHlvY3RvIHVzZXJzLA0KPiDCoA0KPiBJIGtlZXAgZ2V0dGluZyB0aGUgZm9sbG93
aW5nIGVycm9yLCANCj4gRG9lcyBzb21lb25lIGhhdmUgYSBoaW50IHdoZXJlIEkgY2FuIGxvb2sg
dG8gc29sdmUgdGhpcyBpc3N1ZT8NCj4gwqANCj4gRVJST1I6IGxpbnV4LWZzbGMtNS4xNS1yMCBk
b19zaGFyZWRfd29ya2RpcjogRXhlY3V0aW9uIG9mDQo+ICcvemV1cy9idWlsZC90bXAvd29yay8g
LXBva3ktbGludXgvbGludXgtZnNsYy81LjE1LQ0KPiByMC90ZW1wL3J1bi5kb19zaGFyZWRfd29y
a2Rpci41ODkxOScgZmFpbGVkIHdpdGggZXhpdCBjb2RlIDE6DQo+IGNwOiBjYW5ub3Qgc3RhdCAn
TW9kdWxlLnN5bXZlcnMnOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQo+IFdBUk5JTkc6IGV4
aXQgY29kZSAxIGZyb20gYSBzaGVsbCBjb21tYW5kLg0KPiDCoA0KPiBFUlJPUjogTG9nZmlsZSBv
ZiBmYWlsdXJlIHN0b3JlZCBpbjogL3pldXMvYnVpbGQvdG1wL3dvcmsvIC1wb2t5LQ0KPiBsaW51
eC9saW51eC1mc2xjLzUuMTUtcjAvdGVtcC9sb2cuZG9fc2hhcmVkX3dvcmtkaXIuNTg5MTkNCj4g
TG9nIGRhdGEgZm9sbG93czoNCj4gfCBERUJVRzogRXhlY3V0aW5nIHNoZWxsIGZ1bmN0aW9uIGRv
X3NoYXJlZF93b3JrZGlyDQo+IHwgY3A6IGNhbm5vdCBzdGF0ICdNb2R1bGUuc3ltdmVycyc6IE5v
IHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCj4gfCBXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9tIGEg
c2hlbGwgY29tbWFuZC4NCj4gfCBFUlJPUjogRXhlY3V0aW9uIG9mICcvemV1cy9idWlsZC90bXAv
d29yay8gLXBva3ktbGludXgvbGludXgtDQo+IGZzbGMvNS4xNS1yMC90ZW1wL3J1bi5kb19zaGFy
ZWRfd29ya2Rpci41ODkxOScgZmFpbGVkIHdpdGggZXhpdCBjb2RlDQo+IDE6DQo+IHwgY3A6IGNh
bm5vdCBzdGF0ICdNb2R1bGUuc3ltdmVycyc6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCj4g
fCBXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9tIGEgc2hlbGwgY29tbWFuZC4NCj4gwqANCg0KRG8g
eW91IGhhdmUgdGhpcyBjaGFuZ2U6DQoNCmh0dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvcG9r
eS9jb21taXQvP2g9emV1cyZpZD0wNTA0M2EyNmNjMjk3ZWQ5ODM0MDU1Njc4YWM2OTllMjBlMmYx
NmQ1DQoNClRoYW5rcywNCg0KQW51ag0K

