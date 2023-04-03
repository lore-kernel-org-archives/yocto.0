Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C852C7619A
	for <webhook@archiver.kernel.org>; Mon,  3 Apr 2023 01:45:32 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.60486.1680486325966155270
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Apr 2023 18:45:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=R9lgHarY;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=34578fa1d9=qi.chen@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3331fN5x014278;
	Mon, 3 Apr 2023 01:45:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=de9ywjUMWl5Gg1rU/8bAB6G7WyVi3wwUFrB40Lm1EhM=;
 b=R9lgHarYJPa32linIfNb8AD6OMWv8Ms1lIGHtAgKpT/pWrK7GcXjkdmM1mgCZ2rBdtMb
 /1G5dQ3kj7gc0msbbo53eYm7NhuBduA9OzXhjhsbjSsZJFkSaowGnpijCqavirnOZDwR
 rcBphpbensLD/MnGJDDlLCWUqDafXKPfwLzZZbeNkDORZJGiFFA/Lyz6ulaMvqkZFlFe
 s8WhC6QZ5AWquOkWAp3ac5m+2zPp238zLxQiSCIHylPg5jwladMMjT+IbJOhWjuNM6dd
 chXt9oiLgJ/CUy6XvUFFSC+wc3be/+s4QQV742hFDQq824rCLdKr73CsApPkxkzCaaTu nQ== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pp9u4hhnr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 03 Apr 2023 01:45:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kMNb5b/lVbYIVo+LM+ZSn9RQDtTwXBgkHay/tG42L6FxgSOqXMUNw5EvDh955kuR0eSTeIU6iQu4h6GQwApgIB3OT1iirCCHpxHei/NnP6KqPlr+qJ+D+CI2TGOiATf39tDTsWXzNCxC4GryesCKSat6x4t65T9QOkoho0z5KeJl9JtIVSrM7SJasxtGavrsYc+JgOgg9dCJ5xFMK/KtpMOPzk8/C2w+qFZylkCx0aBdIHy+8TfOjC/kZP5aP24Ad5AOTY04duSBYop+Y8jg7k98qty1k7Cuy/6WZFZ1+zHTNJjdJuXWk/hUd/mezso4orHNnW8jnZxRxmc4ODY5LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=de9ywjUMWl5Gg1rU/8bAB6G7WyVi3wwUFrB40Lm1EhM=;
 b=hUCEqd/Gr5cZyICh1EVTDBh84fG+qrrKppwHYd+fDl+u+TRqJ1w4Covu9yFjItZ3rh2n1Vkp7W3KonMHtCPspeXGhtdodZ+2BQdtBZ8yNgCkKUKXOfdXikGqE7r2aVJ6tDyAhsNPo/0YWwA21V6iCZoXy6ucAITTc1GRjfsIzzanbHxF1yXKf5u24qIUKIZXYM/ZacCPqbk8woefGSHaN4NN9HEeuw+ZUf43mvdVFdYUbYcB5T4Ngay9g5su61K0642vqxraOMSrhmJZGvUyJHg1j6msUEZad7rSF6YOj3fHs6VHfbIJj88vWm8y6nZJijnFb6W0rCf3ickogBqJwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by SJ1PR11MB6300.namprd11.prod.outlook.com (2603:10b6:a03:455::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.30; Mon, 3 Apr
 2023 01:45:19 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::ab37:4985:7b95:2b95]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::ab37:4985:7b95:2b95%6]) with mapi id 15.20.6254.030; Mon, 3 Apr 2023
 01:45:19 +0000
From: "Chen, Qi" <Qi.Chen@windriver.com>
To: Tom Isaacson <tom.isaacson@teknique.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] How do I symbolically link /etc/resolv.conf to
 /var/run/systemd/resolve/stub-resolv.conf?
Thread-Topic: [yocto] How do I symbolically link /etc/resolv.conf to
 /var/run/systemd/resolve/stub-resolv.conf?
Thread-Index: AQHZZamzimwI4BtD9EOnY68jUVcCza8Yz0Xg
Date: Mon, 3 Apr 2023 01:45:19 +0000
Message-ID: 
 <CO6PR11MB5602D099419244D44B9E6AF2ED929@CO6PR11MB5602.namprd11.prod.outlook.com>
References: 
 <CA+EiEZKEGCOO0LKF2qokCGMULSHKZWOmC+bp7pOaeKBhT7-xPA@mail.gmail.com>
In-Reply-To: 
 <CA+EiEZKEGCOO0LKF2qokCGMULSHKZWOmC+bp7pOaeKBhT7-xPA@mail.gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5602:EE_|SJ1PR11MB6300:EE_
x-ms-office365-filtering-correlation-id: c37bdd70-080c-4e62-3cd1-08db33e5151c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 adLvEsN71P+W97Ns4N3W05PqQd2v1wBVAA2ge3Gy/g7dEcwStYW+beuJ7nN1NOFqMjo9hap1BF/mbov9DkUsimOiXEDvnCi8K46LL1h+aVuLPyXwff0UrOOYGOqJk3Uyb3g3pft8sqYpT5cNZZeXH5PNxjaHEjP+hduakAeGN9DTZ9X9/NzJY6nhsjB8WqFcWWHdchLTiZeS67mK5YH1SnYrFQmivc65BJC90Ejyj6AGLEJqkGtaBMuX2jMJqHb+aweiNszcqNrNEDPlO1As94URxZ04zR23JQVZtcfP34XtyRrDLvB5UMwynGFTJiHFVw4VklAemlyyBV5bKX7wDC70aG5+9GORx0uWPAq3p+qRcrai0nfAjtYXCgJj011Qyib3ffw2rjwqxMuOrqr+JcE1OM8vhvgyo9mjBeQA42ViY/xPuk1o40GBq1GCevBU5wgtTnzt8HJQjpgXWHtynYs5vwwIQk2LDAi5wN0CzJOXxTH5Yz0KOgOPLuYZrbreMZdSAea1BhgmIIA36KvEQGSOzLVeQZ3kqpv5y/+X4xPQ4LAX+XILDJiohF5k38jphOaYV7WAodTu+WigkjmIT0zAWuN3Sc+u9pXvzqDLQJ0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(136003)(366004)(346002)(376002)(396003)(451199021)(83380400001)(478600001)(2906002)(186003)(55016003)(9686003)(53546011)(6506007)(7696005)(33656002)(71200400001)(966005)(26005)(52536014)(8936002)(122000001)(86362001)(110136005)(316002)(38100700002)(5660300002)(41300700001)(38070700005)(66476007)(66556008)(66946007)(8676002)(66446008)(76116006)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MGVzTDl6M3JCWmRhOWp4ZTBpRTR6K0lmc3VUdHRLUFQrU2JIZFQwanh0VHJk?=
 =?utf-8?B?SExRbjFVdDhsZVZJVmMxZll1VWpaVWV4a3puSi9VbjEraHVnV3F5ZHlrVXB2?=
 =?utf-8?B?Vzl1eW9uc2d4Yk56eUFGbHhXYThEb2JYdnBEQ0ZkOUNKWlN3S3ltQzkyTHlE?=
 =?utf-8?B?ZnZVVEtJYzFEU3V6anY1ZnpiMzd6VVFtY05WOUhmT0VpYlhwU3dBMmlxaFB4?=
 =?utf-8?B?cUpiRHV6dWVwOW9sVzYyOUtFd2RSSC9uTFFUL1RhSHFXWXB0dGwxTXlqeGp5?=
 =?utf-8?B?MnhaZjJTakwwaUY0ZS81YjZ6OHZaeWh3eElSQ3lObjFwUjF6eDNGMXpZMWlY?=
 =?utf-8?B?KzRzUUk2Wnl1cU5tOVhHNFRpa3NUVU5YeVpxSzVJMXM3dmFRWlpxOHhNb3dD?=
 =?utf-8?B?TGticzFaUW1rYnI3WG5VTVRLZ2dBMmxZN2dock5GaVcxVWlIaGpyYmhpTkcr?=
 =?utf-8?B?RDAzRHRuaXFlaFMvZGtFZGFJL0Z1Ym5NUFYrdXluaFdReXQzaldRaFZIalJS?=
 =?utf-8?B?b0dQQ1dWQnF5Z1l1dUEvN1pkNFBZd0NZQXhHMFNUUWo3QjdnWkN3NjVza0FW?=
 =?utf-8?B?ZEl4RkNwUGpCRjhLYllNZ0xKYk9wQWZLakZCT1FsZWdWeVRKbUtHZVVRVHVF?=
 =?utf-8?B?WGVaYmo3eWdSRW94Y0RWYnNoT3lWMWw4N05xMk12VzQ4QldydXZSUWtOa1Ar?=
 =?utf-8?B?Qlk0TmtzdmE5aDlPeS9Ib0gxOFQzVXV0NnNaK1dhSkxOTW5BTHEyakQ1V0JY?=
 =?utf-8?B?TW15YTlobnBhTTRUNkF3dUlMZkE1eUhYNTBYZjlLTUUvWlNvQVhYUm81UEFn?=
 =?utf-8?B?Qkp1OXpDOFQyTWdJT25EUUxSWmluOHZMSnB2YnNDOFhSaEp6NXZCSnZPSThh?=
 =?utf-8?B?SXdJeDBqQXkzazBDSWx6OU0wZWo5TEVZQncxTHhhajJ0K3dMTTdKNWlMUUtz?=
 =?utf-8?B?d1BhUHBrdGVXQ3kzOUpoSlJCSVNzRUdNdmNDRUR5MUlTdVFRaHlHYkFONkdY?=
 =?utf-8?B?Z2pqUEJ5cDhqdFgycFg0RnhxUElBbDR6YVE1b0lLWk8rYlBCSDFCQmttb1RN?=
 =?utf-8?B?Q2F1UmpMdTJYYzZteUYxSTlmcitmTEpvOWFzS1dhWGhxY0RkYWNja3FhaFpF?=
 =?utf-8?B?TngyRnZiL2JwamdLV3diWEhSbmtZQXBkSFVISmtaYkJvSUkzNWVyNEpubS9p?=
 =?utf-8?B?TXFhZmdnUFVqVU8xOUhFUFcrbEZSNzdmelZ3Ukg2OW9GMHRrTUdBWXNyYitF?=
 =?utf-8?B?bGx1dDY4MVFMQk1PSUx3eTI3UkRjMXkrRlRJQ29yV3Ara2hZMkc0d1VmZHJ6?=
 =?utf-8?B?RFJwOVA1OXk2ZE13eGcxYW1wcFVUaDZYb3dwenlja2o4aE5Qb3gzR2p5NG1J?=
 =?utf-8?B?ZDF4NTN2a25adC9aSDBjaGpOK1BLdzFGVnhHNEpQU1h4dzN3SXpMeldkTG9L?=
 =?utf-8?B?VUNxRGJUK1NMU0VrbS9MV25saXNVRm16b2tnbjJyUW84Wi9CMlhZVEhabWlL?=
 =?utf-8?B?cDFYSklFN0xoZHlKYXNiTksyTklWRVNibmFsdkdBTU52akpDK21DZ0loeWgv?=
 =?utf-8?B?Y3dRU2JZWGJXMlRVTDFON3JTRllsV0dYcjdCenA2aVU1aW4vNURrNUxEWllt?=
 =?utf-8?B?cEJVODExOEFzWEtqS083N2xsRWlwRlJFVUQ1b0h2S2NJS1dlVkZqYU9zd3px?=
 =?utf-8?B?djZ0OFk5UUs1SEl5L1Yvci9KWGNFK3MraGpPc1U3aHd0ay9kaTBaTXVtNmls?=
 =?utf-8?B?dmF4TE9CL1U1Z0piVDlEL28yakVvOE9ENE5qUjBxeTBiSnc5SlJ4SFkvanhJ?=
 =?utf-8?B?aUJvdHFXQm1YWmV4cnZuQ1dxUHdBT0h1ZzBtZVFpODNwYlRGcVROOW0wVVJh?=
 =?utf-8?B?NXBOUmExUVB4aDJmbGVtNVd1M051N1hmSWx6MjBtSUxyengxVGR0OUxtRjEr?=
 =?utf-8?B?TWQ0WnNNd3VacUlueFM2SzBUR0F3VnBxQStQT2dvZUJGVitQbFFzUzRDS1pk?=
 =?utf-8?B?UmJOa1pJS2dzSUNSL0pQYkU3aUNlaVRSUU9VRXR3SVRJTTk1eFdwbzVNWXpT?=
 =?utf-8?B?blgwTERIZnhqRUpFamRwUnlwK1BBSEtidWRmWmkxMGFiUDdlRDV4TGRQRFVh?=
 =?utf-8?Q?LOgHxKHD1B0WkREAHtr/fOQ8t?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c37bdd70-080c-4e62-3cd1-08db33e5151c
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2023 01:45:19.7329
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HNYph/VUJKYV/3425tgXXOu7CjZk2Z7LJIqQWBgmnkBnhV+EofROYlnhrEM67dkepmwIyRgJ05mHPXZeNuy68A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6300
X-Proofpoint-ORIG-GUID: ewS9BK_oscNpnTcGKZCp0j2ktFsGDs4W
X-Proofpoint-GUID: ewS9BK_oscNpnTcGKZCp0j2ktFsGDs4W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-31_07,2023-03-31_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 spamscore=0
 bulkscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1011
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2304030010
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 01:45:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59592

VGhlIE5NIHJlc29sdi5jb25mIHByb2JsZW0gd2FzIHNvbHZlZCBieSB0aGUgZm9sbG93aW5nIGNv
bW1pdC4gWW91IGNhbiBjaGVycnkgcGljayB0aGF0Lg0KIiIiDQpjb21taXQgYThlYmYyM2RkZTlj
ODJkZDlkMWRjZDBmYTZkZTBiNDQ2N2EwMTEyYg0KQXV0aG9yOiBDaGVuIFFpIDxRaS5DaGVuQHdp
bmRyaXZlci5jb20+DQpEYXRlOiAgIFR1ZSBEZWMgMjAgMDI6MDE6MzggMjAyMiAtMDgwMA0KDQog
ICAgbmV0d29ya21hbmFnZXI6IGZpeCAvZXRjL3Jlc29sdi5jb25mIGhhbmRsaW5nDQoiIiINCg0K
SXQgcmVhbGx5IGRvZXMgbm90IG1hdHRlciB3aGF0IHRoZSByZXNvbHYuY29uZiBtb2RlIGlzIGlu
IHlvdXIgY2FzZSBiZWNhdXNlIHdoYXQgTk0gZG9lcyBpcyBqdXN0IHRvIHNlbmQgRE5TIGluZm8g
dG8gcmVzb2x2ZWQuDQoNCkJ1dCBpZiB5b3UgcmVhbGx5IHdhbnQgdG8gdXNlIHRoZSBzdHViIG1v
ZGUsIGEgbW9kaWZpY2F0aW9uIHRvIHRoZSBzeXN0ZW1kIHJlY2lwZSBpcyBuZWVkZWQgdG8gc3Vw
cG9ydCBpdCwgbWF5YmUgdmlhIFBBQ0tBR0VDT05GSUcuIEhvd2V2ZXIsIEkgZG9uJ3QgdGhpbmsg
dGhpcyBpcyBuZWNlc3NhcnkgZm9yIHlvdSB1bmxlc3MgeW91IGhhcHBlbiB0byBtYWtlIHVzZSBv
ZiBzb21lIGZlYXR1cmVzIHRoYXQgdGhlIHN0dWIgbW9kZSBwcm92aWRlcywgd2hpY2ggaXMgdW5y
ZWxhdGVkIHRvIE5NLg0KDQpSZWdhcmRzLA0KUWkNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBUb20gSXNhYWNzb24NClNlbnQ6IE1vbmRheSwgQXBy
aWwgMywgMjAyMyA1OjI2IEFNDQpUbzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3Vi
amVjdDogW3lvY3RvXSBIb3cgZG8gSSBzeW1ib2xpY2FsbHkgbGluayAvZXRjL3Jlc29sdi5jb25m
IHRvIC92YXIvcnVuL3N5c3RlbWQvcmVzb2x2ZS9zdHViLXJlc29sdi5jb25mPw0KDQpJJ20gdHJ5
aW5nIHRvIHNldHVwIGEgWW9jdG8gYnVpbGQgdXNpbmcgTmV0d29ya01hbmFnZXIgdjEuMjIuMTYg
YW5kIHN5c3RlbWQgMjQ0LjUuIGh0dHBzOi8vd3d3LmZyZWVkZXNrdG9wLm9yZy9zb2Z0d2FyZS9z
eXN0ZW1kL21hbi9zeXN0ZW1kLXJlc29sdmVkLnNlcnZpY2UuaHRtbCMvZXRjL3Jlc29sdi5jb25m
DQpyZWNvbW1lbmRzIEkgc2V0dXAgL2V0Yy9yZXNvbHYuY29uZiBhcyBhIHN5bWJvbGljIGxpbmsg
dG8gL3Zhci9ydW4vc3lzdGVtZC9yZXNvbHZlL3N0dWItcmVzb2x2LmNvbmYuIEluaXRpYWxseSBp
dCB3YXMgbGlua2VkIHRvIC9ldGMvcmVzb2x2LWNvbmYuTmV0d29ya01hbmFnZXIgYnV0IEkndmUg
Zml4ZWQgdGhhdCBieSBhZGRpbmcgYSBuZXR3b3JrbWFuYWdlcl8lLmJiYXBwZW5kIGZpbGUgd2l0
aDoNCg0KICAgIEFMVEVSTkFUSVZFXyR7UE59ID0gIiINCg0KQnV0IG5vdyBJIGZpbmQgL2V0Yy9y
ZXNvbHYuY29uZiBpcyBhIHN5bWJvbGljIGxpbmsgdG8gL2V0Yy9yZXNvbHYtY29uZi5zeXN0ZW1k
LCB3aGljaCBpcyBpdHNlbGYgYSBzeW1ib2xpYyBsaW5rIHRvIC9ydW4vc3lzdGVtZC9yZXNvbHZl
L3Jlc29sdi5jb25mLiBUaGlzIHNlZW1zIHRvIGNvbWUgZnJvbQ0Kc3lzdGVtZF8yNDQuNS5iYjoN
Cmh0dHA6Ly9jZ2l0Lm9wZW5lbWJlZGRlZC5vcmcvb3BlbmVtYmVkZGVkLWNvcmUvdHJlZS9tZXRh
L3JlY2lwZXMtY29yZS9zeXN0ZW1kL3N5c3RlbWRfMjQ0LjUuYmI/aD1kdW5mZWxsI24yODkNCg0K
ICAgIGlmICEgJHtAYmIudXRpbHMuY29udGFpbnMoJ1BBQ0tBR0VDT05GSUcnLCAncmVzb2x2ZWQn
LCAndHJ1ZScsICdmYWxzZScsIGQpfTsgdGhlbg0KICAgICAgICBlY2hvICdMISAke3N5c2NvbmZk
aXJ9L3Jlc29sdi5jb25mIC0gLSAtIC0gLi4vcnVuL3N5c3RlbWQvcmVzb2x2ZS9yZXNvbHYuY29u
ZicNCj4+JHtEfSR7ZXhlY19wcmVmaXh9L2xpYi90bXBmaWxlcy5kL2V0Yy5jb25mDQogICAgICAg
IGVjaG8gJ2QgL3J1bi9zeXN0ZW1kL3Jlc29sdmUgMDc1NSByb290IHJvb3QgLScNCj4+JHtEfSR7
ZXhlY19wcmVmaXh9L2xpYi90bXBmaWxlcy5kL3N5c3RlbWQuY29uZg0KICAgICAgICBlY2hvICdm
IC9ydW4vc3lzdGVtZC9yZXNvbHZlL3Jlc29sdi5jb25mIDA2NDQgcm9vdCByb290Jw0KPj4ke0R9
JHtleGVjX3ByZWZpeH0vbGliL3RtcGZpbGVzLmQvc3lzdGVtZC5jb25mDQogICAgICAgIGxuIC1z
IC4uL3J1bi9zeXN0ZW1kL3Jlc29sdmUvcmVzb2x2LmNvbmYNCiR7RH0ke3N5c2NvbmZkaXJ9L3Jl
c29sdi1jb25mLnN5c3RlbWQNCiAgICBlbHNlDQogICAgICAgIHNlZCAtaSAtZSAicyVeTCEgL2V0
Yy9yZXNvbHYuY29uZi4qJCVMISAvZXRjL3Jlc29sdi5jb25mIC0gLSAtDQotIC4uL3J1bi9zeXN0
ZW1kL3Jlc29sdmUvcmVzb2x2LmNvbmYlZyINCiR7RH0ke2V4ZWNfcHJlZml4fS9saWIvdG1wZmls
ZXMuZC9ldGMuY29uZg0KICAgICAgICBsbiAtcyAuLi9ydW4vc3lzdGVtZC9yZXNvbHZlL3Jlc29s
di5jb25mDQoke0R9JHtzeXNjb25mZGlyfS9yZXNvbHYtY29uZi5zeXN0ZW1kDQogICAgZmkNCg0K
QnV0IHRoZXJlIGRvZXNuJ3Qgc2VlbSB0byBiZSBhbnkgc3VwcG9ydCBmb3IgbWFraW5nIC9ldGMv
cmVzb2x2LmNvbmYgYSBzeW1ib2xpYyBsaW5rIHRvIC92YXIvcnVuL3N5c3RlbWQvcmVzb2x2ZS9z
dHViLXJlc29sdi5jb25mLiBJcyB0aGVyZSBhbnkgd2F5IG9mIGRvaW5nIHRoaXMgdGhhdCBJJ20g
bWlzc2luZyBvciBpcyB0aGlzIGZ1bmN0aW9uYWxpdHkganVzdCBtaXNzaW5nPw0KDQooQXBvbG9n
aWVzIGlmIHRoaXMgaXMgdGhlIHdyb25nIGZvcnVtIGZvciB0aGlzLCBJJ20gcmVsYXRpdmVseSBu
ZXcgdG8gWW9jdG8gYW5kIHN5c3RlbWQpLg0KDQpUaGFua3MuDQoNCi0tDQpUb20gSXNhYWNzb24N
Cg==

