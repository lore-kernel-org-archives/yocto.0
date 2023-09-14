Return-Path: <david.daniel@vrag.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79164EDE9AD
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 11:57:58 +0000 (UTC)
Received: from CHE01-ZR0-obe.outbound.protection.outlook.com (CHE01-ZR0-obe.outbound.protection.outlook.com [40.107.24.128])
 by mx.groups.io with SMTP id smtpd.web10.10192.1694692675868263589
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 04:57:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vrag.onmicrosoft.com header.s=selector1-vrag-onmicrosoft-com header.b=QNLVZyra;
 spf=pass (domain: vrag.ch, ip: 40.107.24.128, mailfrom: david.daniel@vrag.ch)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oP7W2MPI/mlOekMOsS0xp9mihYDImSH5WPRAl1ZPCfJhPf67g4TXaLDXYWBZyFfTaLB//IEpXT8UOiBrsCK/3+YfOd1qldXKnRCY3dmnHS0/CAF4UkYtvPZX27XmvgtbEQZiO1Hslw+l/NR+bHVyTwP1Pj9OCEfaKk7i2/0KF2CDwNW1LJf8v122jA67nGwqsWdq/zS/N2AA0z2APqP+AE9eWIuNcFe9p7l28w5f+nLmtFauxk+31A6crdX5HDHxkJz5Ms7r9wOuseWt1GB54WPuerksizDzEbDEB3tDddELbqloaYrMnK+wBbkhgrKhMKg7lOvUjArD0so699Yodw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mPZWYpfNoazVOvKSnygjuV3UmsIuZAB53+qlA6zz4S0=;
 b=exVZKNwgVJUVZ6D2zXrCJqgC0u/hKBUKqv+PLyGUjvF0zUbgLBoOB1TJaNgzZYNSS+L1yFlcEiFlvJtPJ4E/bL65VUgTdzeRtADzIrck/yC44KUNeGC+jQHv4TC/m/Wizs+TasKRP+/hdCRjSSB1tKbLEg1sYkiOFw1fxDi1vgKtkOE4WSoVipSkmIhn+AeHZhKRajqDj0bJ5f7CGn8k03yUroZNgxDAEwlWjCY1TnJ2f6F2jETM5Lu65hW02bRT6RY2Vp5bD7w9kiIdmdbApBxc6WI1IMrX+O0TgSejAVr3jLMIIa4NG058J/83MBNMFMwxc1IZ3psJ2SWlgDNNxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vrag.ch; dmarc=pass action=none header.from=vrag.ch; dkim=pass
 header.d=vrag.ch; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vrag.onmicrosoft.com;
 s=selector1-vrag-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mPZWYpfNoazVOvKSnygjuV3UmsIuZAB53+qlA6zz4S0=;
 b=QNLVZyraP3XSp6y6TGwWDgImoV7XeMCpTmvscTwkAJDV0jIK5BzxQxIEnrFKoF2//UQQs/dBU0LeRspFb8zgQEvakKR2TMHIXLXMBNy9wmYzi5tZemvkgJzsIe142eD4IaKZYFwDwETCw0uL6BhB8Wtg2uuLoLfwtAK8Fwpd090=
Received: from GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:49::5) by
 GVAP278MB0835.CHEP278.PROD.OUTLOOK.COM (2603:10a6:710:56::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.20; Thu, 14 Sep 2023 11:57:52 +0000
Received: from GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3b5c:5994:c657:216b]) by GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
 ([fe80::3b5c:5994:c657:216b%4]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 11:57:52 +0000
From: David Daniel <david.daniel@vrag.ch>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Documentation: How to build multiple packages from one source
 repository
Thread-Topic: Documentation: How to build multiple packages from one source
 repository
Thread-Index: AQHZ5wKw2CUncOyFwEKfFqZocrt+8Q==
Date: Thu, 14 Sep 2023 11:57:52 +0000
Message-ID: <31637059211ed2cfca942dd0f26228048987a76a.camel@vrag.ch>
Accept-Language: de-CH, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vrag.ch;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GVAP278MB0550:EE_|GVAP278MB0835:EE_
x-ms-office365-filtering-correlation-id: d6aff9ac-0a14-4e2c-fe62-08dbb519d305
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 MGXhfHEXLsLg8cbhKv8GRe4QH3iqYkT2G2BRsfMzmXgvJo/Fx8pg3Q5juQCdwso6Q7GYyGI973zpgqjRb+cgRFDeJLfhjX2CBW0rSvZblBdFIAkDNiwkXkxTo2D+KnV0OGQcGFFoScayxryiMZNnVgZvQPwQ8LPooXJfM9go7HPTKso5jswv43l8u37gfCiuAwZ5uD0rbq3D5V5bLHZvn049Pvhe2WNUVGH6yfJ6gsc0V601O9yd6RDtjKXHW00c53okAV6iKdwxWUxXOoqwP0m0ghaDGw5pwL903hzc2l5Dnxe4kmTKpsvHFbVBuvoNWM0x5DwO9mhTawkl68ApfhUBFcIvdddsFHQEtncywrUK+rnV/XYrhMXGHwth8E+MdbrK1fuGOFT+4Zy6nl06DZMnzVexnmCbLcxrJP/hj19OavdTKdbhCjb6iU4r7ZLJyva2ythoEMnwIWH2SOsRM/PjUlV9SUSQutdJPu+DL6hL7F82uIu4muJxVy5jJm+ZUiH6ns3X1oAWxt90fQzu4a9WBUAXtiU26ugYvB0907Gw+FOX2erps6nC09Q4SfbqxPySGgXBRvxsY4ZK3qpQRGQqboILZGhk6Rb+Kz4WtY4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(346002)(39840400004)(376002)(451199024)(186009)(1800799009)(122000001)(2906002)(71200400001)(38100700002)(478600001)(38070700005)(5660300002)(8676002)(316002)(44832011)(66446008)(8936002)(66556008)(76116006)(91956017)(66476007)(66946007)(64756008)(6916009)(41300700001)(83380400001)(36756003)(26005)(2616005)(6486002)(6506007)(6512007)(86362001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZGdzVkFQK1dkbEV3UGdJeUppV0xzTTk1ciszNW52ZGh0WEtXVGowcHhkQUNw?=
 =?utf-8?B?eGZkcHRkQXN6Zk9XQWQ3R05EVHFWdEJlekVYeDc3U2o5b3lFSFdKUFhpdjFY?=
 =?utf-8?B?Q05QVU9DZHpJTXdqdWs2MWJITW9GYWJGVUJFaHVqVUxyMGowelpUK1VHZ2FW?=
 =?utf-8?B?bldBcEF4Wmd4Zm1vVGZFaVZBNWlIdFdBUXJXY0pyc1NMZDE3YzRFd2lVNnNW?=
 =?utf-8?B?akNjalg0OXFEc0dqQk4vUGRGRTZlcHgyOGdlcnpJQ0VkdmtwZzB6NXlJTThQ?=
 =?utf-8?B?VmRZUVpLVlI3Y0I0OWs2am9OdEFQS04zdG9yYTAySVFGWVMycmVQWjBTREZ5?=
 =?utf-8?B?U2RVM0V3dFlreURPUmJ4cXQzMWZFYlEwTG1Uc2JnUXRZUVd5dEJlanZXYXRO?=
 =?utf-8?B?SzRwVElyaU9VYnpHV05ZZDZxblAvc2RQMTBVQytDeCs2ZGNBRDg4bGs5a2Ni?=
 =?utf-8?B?VjhmRUthQ0JZTnU1cXVpSnk2Y1dVQ2dtTHlkYXpNMTdsNTRIMzVWNFIrc09T?=
 =?utf-8?B?RzlOck1QMk1lc3QvT3hzVVRscTdUVUp2T0FtRmZGQWI1MTRGa0J2aUpJVm9H?=
 =?utf-8?B?akorR2R1R1k4bjFxeE5OWE8vaFBDcFhDcUFabE94UDF1V0NqeDQ0ZGpIaDRn?=
 =?utf-8?B?MllaR0JaK2NhUGhEMjYyQkJsZXhsMDVPUWszd3Z6Ui9xYnVyUXJ4ZnhmSUlP?=
 =?utf-8?B?V2hyZ2tlRUt4TkJvQWxhRy9XODV1RW5tdk5YcGkyQ0phVUVWVGNkSzVydUhN?=
 =?utf-8?B?dmlzcU1vNU0wNjFlU0swNGtWOURQcTgzTFIyamF4aUwyMTdFdUs0WU05d25h?=
 =?utf-8?B?cjl1alVQZERnSllSOEFzN1NuSTZJTFFUUzhvUHo0U0hUKzU2eFJQWFFoNDk2?=
 =?utf-8?B?Zk5mQ1dyZFlnN0Uza0tacEc3QWlOMWJyalFXNWZDMThqbTUzZUhGbDhnVzA1?=
 =?utf-8?B?ZjRCWnB1RkdVWVZBQWxSUHp2SXpWNThMbnBZdW1QaS9mS2YvMUlYbmhtb3gz?=
 =?utf-8?B?eWlidzg4MjE0dUFINHZsN0tGT3gwcE1uQlo5dDdadkpCQ1JEaXVCaW9YMmt4?=
 =?utf-8?B?TkZ0SytUSmNpeForL3hxNEx4Y2hMWjMxbjFDWjYvc0JIK2IxbXh5TGptZFQ4?=
 =?utf-8?B?VWpNdFdxQ3pxbnNqT2FGMk96NnFvNjJpbXNtaGR6d1hBSGp0dTZXbmplc2dj?=
 =?utf-8?B?ZnE0UkcyZ3BGa2RVRjRFblI5UkVTRm9vby8wZlBiczYrZDlpemVFbWNQTlZW?=
 =?utf-8?B?Z2F1NjZNMmFkako2aCsxa0Y1R05sZThYdnhDUVZEaWxkdFZ6anp0M3JIcVlS?=
 =?utf-8?B?ek9rMUJDbEljZk54UkpMaEtEZXVmOHRLKytFQ2pGR2JnVmphNk5SczhyNVlW?=
 =?utf-8?B?VVFMTFEyZFJzWGRnNnpaT0FKTjRpSlNkOFRtSDlHU2JNTHpmWnBVOXVldEtT?=
 =?utf-8?B?ZWovU0VIN1laQWVtTWJjK1R3N25BaTBQYkw3WTNpUlVRSWZrUW9GRjRxWFR6?=
 =?utf-8?B?M3lHTjE0TU9naFNyVWswWFhWTVNLWjI0VVFRb2d0T215eEwvMndNOHZvb0ds?=
 =?utf-8?B?WEF0bXE2WTBIVGl1NWdNRjRVOEY3cW9ZSE1zSDI4clI5OGJMcUJMbkZoYjh3?=
 =?utf-8?B?V3FqQVgvR2FsLzFaZHViN1VSM1JUa0h4bEpiU2d0SzZSVmVXSmtmT3VBSGxY?=
 =?utf-8?B?aWVFODlXNDZqbm5UdVhOdktwd2JFSjJKZ1dNRkNid1lEZ1hiL2ZONVc0RHRt?=
 =?utf-8?B?YTV2cGVyem1IUm9NS21IZWhLUUFJcjE5SmNaQk04Z1p2Z0hOdVE0d25yUlph?=
 =?utf-8?B?R003Z25CazZuRVk5RW9qQmYzRzU3SzZCdjVhNTRKMEFXSStlK01LUHN1dFBJ?=
 =?utf-8?B?dTErSGcrL0VqOFByYlA3Q1EwVTVxc2IvSG1Xb1lhM1Y2bU53ZnJ0MjJGUEJ5?=
 =?utf-8?B?K3orcnZRUzlWNFVVblhWcEpadVBLY3RydXo5eXhaenpDcUtxKzkrd3VjN3Yz?=
 =?utf-8?B?eE52ZzR6SnZxTkxsY1lHY2VPOUk5UkNadGpFT1p6dFJhVzQrWVRnYStOMzRW?=
 =?utf-8?B?Tm16T01qb01WMXBHN05xdmZqeXhuNm13cWpSczYxOWRWVGo3bklWZTZWNTJZ?=
 =?utf-8?Q?tjSDP5ReaRisNYVkC7B0dc88x?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <22B3CC390C1FE34FA3FD596167B7DED1@CHEP278.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: vrag.ch
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GVAP278MB0550.CHEP278.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d6aff9ac-0a14-4e2c-fe62-08dbb519d305
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2023 11:57:52.1995
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 71bd83c1-ce5c-4e57-8993-45bae4514c77
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7o19N5me1EGpjHAM/I5u041sCALqTUg6d+iH6IDGlSrsu/itpxSdktNokRm6lE1NEGvK32+bSmHgtLxojEsIwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVAP278MB0835
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 11:57:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60992

SGkgZXZlcnlib2R5DQoNCkkgYW0gYSBuZXdjb21lciBjdXJyZW50bHkgdHJ5aW5nIHRvIGZpZ3Vy
ZSBvdXQsIGhvdyBJIGNhbiBidWlsZCBhDQpsaWJyYXJ5IGFuZCBhIGJpbmFyeSBmcm9tIG9uZSBz
b3VyY2UgcmVwb3NpdG9yeSBpbiBvbmUgcmVjaXBlLiBUaGUNCnJlYXNvbiBmb3IgdGhlICJvbmUg
cmVjaXBlIiBpcyB0aGF0IGJvdGgsIHRoZSBsaWJyYXJ5IGFuZCB0aGUgYmluYXJ5DQpjb21lIGZy
b20gdGhlIHNhbWUgc291cmNlIHJlcG9zaXRvcnkgKE9wZW5CTFQpLiBUaGUgcHJvYmxlbSBpcywg
dGhhdA0KdGhlIHByb2plY3QgaXMgc3BsaXQgdXAgaW50byBkaWZmZXJlbnQgcGFydHMsIHdoZXJl
YXMgdGhlIGJpbmFyeSB1c2VkDQpvbiB0aGUgdGFyZ2V0IGRlcGVuZHMgb24gdGhlIGxpYnJhcnks
IHdoaWNoIGlzIGEgc2VwYXJhdGUgQ01ha2UNCnByb2plY3QuDQpTbyB0aGlzIG1lYW5zLCBJIG5l
ZWQgdG8gcnVuIHR3byBkaWZmZXJlbnQgYnVpbGRzLCB0d28gY29uZmlndXJlcywgdHdvDQpidWls
ZHMgYW5kIHR3byBkZXBsb3ltZW50cyBvbiB0b3Agb2Ygb25lIHNvdXJjZSByZXBvc2l0b3J5Lg0K
TmVpdGhlciB1c2luZyB0aGUgc2VhcmNoIGZ1bmN0aW9uIG9uIHRoZSBwcm9qZWN0IGRvY3VtZW50
YXRpb24NCihodHRwczovL2RvY3MueW9jdG9wcm9qZWN0Lm9yZy9zZWFyY2guaHRtbCkgbm9yIGdv
b2dsZSBwb2ludGVkIG1lIHRvIGENCmhpbnQgb24gaG93IHRvIHN0YXJ0IGRvaW5nIHNvLg0KSSBh
bSBzdGlsbCB0cnlpbmcgdG8gZmlndXJlIHRoaW5ncyBvdXQsIG1lcmVseSBieSB0cmlhbCBhbmQg
ZXJyb3IsDQp3aGljaCBpcyBxdWl0ZSBjdW1iZXJzb21lIGFuZCBleHRyZW1lbHkgdGltZSBjb25z
dW1pbmcuIE15IGN1cnJlbnQNCmFwcHJvYWNoIGlzIHNvbWV0aGluZyBsaWtlDQoNClBBQ0tBR0VT
ICs9ICIke1BOfS1saWIgJHtQTn0tYmluIg0KDQpCdXQgSSBhbSBzdGlsbCBjb25mdXNlZCBvbiBo
b3cgdG8gdXNlIHRoZW0uDQoNClNvIHRvIG1lIHRoZSBxdWVzdGlvbnMgYXJyaXZlIGhvdyBjYW4g
SSBhY2hpZXZlDQoNCiogVGhhdCBJIGZpcnN0IGNvbmZpZ3VyZSBhbmQgYnVpbGQgdGhlIGxpYnJh
cnkNCiogVGhlbiBjb25maWd1cmUgYW5kIGJ1aWxkIHRoZSBiaW5hcnkgdXNpbmcgdGhlIHByZXZp
b3VzbHkgYnVpbHQNCmxpYnJhcnkNCiogVGhlbiBpbnN0YWxsIHRoZSBsaWJyYXJ5IGFuZCB0aGUg
YmluYXJ5IGluIHRoZSBpbWFnZSBhbmQgcHJvdmlkZSB0aGUNCmxpYnJhcnkgYWxzbyBpbiB0aGUg
c2RrDQoNCkkgY291bGQgY3JlYXRlIHR3byByZWNpcGVzIC0gYnV0IHRoYXQgd291bGQgbWVhbiwg
dGhlIHNhbWUgc291cmNlcyBhcmUNCmRvd25sb2FkZWQgdHdpY2UsIGFtIEkgcmlnaHQ/DQoNCkJl
c3QgUmVnYXJkcw0KRGF2aWQNCg==

