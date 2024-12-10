Return-Path: <pelle.windestam@skf.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDCE7717F
	for <webhook@archiver.kernel.org>; Tue, 10 Dec 2024 19:29:56 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.71])
 by mx.groups.io with SMTP id smtpd.web10.2130.1733858990852187084
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2024 11:29:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@SKF.com header.s=selector1 header.b=L2OKrODr;
 spf=pass (domain: skf.com, ip: 40.107.22.71, mailfrom: pelle.windestam@skf.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=scX8asbzd29uely+D9MpSUtoXYkTE6ELJtUodQx3xJu8+uCY1mXA+oW8F6mo7qjv+uMwCZ6srCymgFuG643lKl/rZ+YQ/vdpsF3MI9k81g9Z6H/D+Aoe483J00bxdctCyE2Hx/vsjsNI9tnC+VDPs5gAepXm4JpUwH9b0FQehzRl8HPDCY5o+YfDB7T7K6l/3czVjRBTt3vVgJPM8cTWm4DwRsCJinoNjATIvajwkHcJrY99cDq8E2Mh2ldRJ3CvbWsUGNLHI21sT7Xz6hiI6NKdX38r/vyS6+coS26Sh30VY1Ovdry17YD+LfJAEUSNCUPc09njAFhsCdjTd6kmlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rI1GpeXZCbFuPn98VsTTU2sE7wQEKYmWOTQOVuhSJTc=;
 b=Yk7t66VpCsothQ/nakEJCZoBuZPd9T/9ETuiWjQmPvZ5ckidCwyFc5HNixwiSPMcenBU5O0BTOGR3BA2hzlNN1lGo3MIhnaobP8AmfCOl65Lcq7pVEOQ9NjQP6b+tyA+Pw95sKmCDG5FpP9A0+OljUDF+/+DSNONG5kUxZ73vJ+/NF8JrPu2dz0+EUddHDQh5148Q2D5I/7Ie6ezjJzCNsLv0K5JRZdgwGk9EdxD/1+Dc92H8dEyClRw1Nw7uQ7HXZ94aMBRC9huor6BZpgQ6uApEhsRJQIdHQqhoFIf3ocYg5BUTQbrbuRd4xM6cvpJCmKvp8bmm/7CQyuadVsPgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=skf.com; dmarc=pass action=none header.from=skf.com; dkim=pass
 header.d=skf.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=SKF.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rI1GpeXZCbFuPn98VsTTU2sE7wQEKYmWOTQOVuhSJTc=;
 b=L2OKrODr//ZaOJ9XltsZ6oVaaC7te70lyhmZd4uXYsj4zj9tJk4q0QBd3kv3wQik3oDMl1iqh3pEU0lXLud1S0LUDx+yvN4vbFMLMW5zfB1lMUDZbYY2Zw4q/jO/If5O+jaEaw4pdVyhcvaN/NXIjl+6Q1Osh1lp5owDypSCi+4=
Received: from AM7PR09MB3893.eurprd09.prod.outlook.com (2603:10a6:20b:122::18)
 by AM0PR09MB4321.eurprd09.prod.outlook.com (2603:10a6:20b:165::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.20; Tue, 10 Dec
 2024 19:29:47 +0000
Received: from AM7PR09MB3893.eurprd09.prod.outlook.com
 ([fe80::eb3b:9d98:d71a:e413]) by AM7PR09MB3893.eurprd09.prod.outlook.com
 ([fe80::eb3b:9d98:d71a:e413%6]) with mapi id 15.20.8230.016; Tue, 10 Dec 2024
 19:29:47 +0000
From: Pelle Windestam <pelle.windestam@skf.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: UBOOT_ENV causes dependency loop
Thread-Topic: UBOOT_ENV causes dependency loop
Thread-Index: AQHbSznf8Qn7Dm/5ck+nN/A/2K3QeQ==
Date: Tue, 10 Dec 2024 19:29:47 +0000
Message-ID: <8dcaa41d-8fac-4d4b-8e3b-fd10dab0898b@skf.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=skf.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM7PR09MB3893:EE_|AM0PR09MB4321:EE_
x-ms-office365-filtering-correlation-id: bb8b8400-0df8-43fc-3a1a-08dd19510223
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?V2RqeDRZUXJRUE9jMG1YZk9DYjVHbERWMDlKbmZRcnNKZ3ZKZ2xlbklabE1I?=
 =?utf-8?B?a1Q4Wm5nU0Z1YXZUTzZVZE1nbkRnQjFJL1Y4SUsxd0w5TXRMTnp4Z3BzN082?=
 =?utf-8?B?bldDdEZhVTE1dExGcmRKaUZIZFVxL2Vzc0J4bHdTcDNrWmR0SE1aRjh0WHpz?=
 =?utf-8?B?aDFYS2tGdjNDeFdGT0xYb2VjM2ZQWjJRalkrckpGa2lFNk8zcDNCbWtMcnNT?=
 =?utf-8?B?dFAxb1pIbXdkWE5zZXRXdnRselVFSGs5am1hVFl0M1U4ZTUzOGU0a3VvTWhu?=
 =?utf-8?B?Q1JMSGh4T09ZT2I0RVpZZDdkbWxlQ0pCWUhOdmxoN01kWkNXVmsrc1pBcGQz?=
 =?utf-8?B?TC9WN3d2VEQyRkFaMmJvbGlBN2diUWhJcjJMN1Z4bmR4S3FJV2Jjb0d2YUFL?=
 =?utf-8?B?VnZIL21Yb1gxTXFnTUpFUnhPUTJwdy9nVEdSZEMvR3FSSnUzSW9KVm9hZi9l?=
 =?utf-8?B?Q2JDS0xOdk8yN00yV21lMFkrK08wQTRJbDBUeXo0UmVFNzAxb2kvV3JnOEQ3?=
 =?utf-8?B?OURKWTVuL09KSk0yd1VFaWFxcENZNmxQczZYbWNGalpodGJPdFh4aXdyZEdk?=
 =?utf-8?B?bnlMV1hBVXkyTzNlczU1ZEVydlRyYTl4aU9GQnd2UERKWTRuUHZuUEt1eWsy?=
 =?utf-8?B?aVp6Qkk0UHI3K0RJSWpDa2lsZDdVaDFXdnJRZWJjdmhydHlGdGtpb3R2ZWNG?=
 =?utf-8?B?MXlxTnZZblF1RFpjSEk1WkNqMzc4VkVjSWVKajR3eFl6Q1ZBTGhnajFzRWds?=
 =?utf-8?B?S2JsdE9NQlVQY0dIa3Vjb0twTjF0dXp5ZkVhVTEwN3dqcnJld2l6ODhKeS9D?=
 =?utf-8?B?ekpwS1Z0UzJ6RVY1NlRrVkFITFBYMEloZnhQckxPZzEybkJ1SiszSEV4d2w2?=
 =?utf-8?B?QTA0dUJ4ZlRyS09FVTFIQVpod2pQUzZJbUptRzVvVFlsbXY2YTlacVNYRE56?=
 =?utf-8?B?NGZKZFJibWo0V3MxSm9vKzdyY2xmc2tndGFONS9pdWc1bVZjeUpSYUlxNWlY?=
 =?utf-8?B?TDhKRmVrcHRiYWlJTmR2Rk1IcU5rNExSWDVIclR1Ym4xOUNYblhPZnVkZ2Nz?=
 =?utf-8?B?OW5TV0svRmZVZ2FaRVB4cFZsemx6dG1Qc01nSGU3K0ZNNmJEZ2JUbDM5NmlW?=
 =?utf-8?B?SlQyRmp4WGhPRjErM0VjV2FUeWh1UUJrK0d3YkdEYjl2dFVGYzJoZFNvY3li?=
 =?utf-8?B?K09qcmV0aWtDazFacWpTN2NUT3hNZ2swSTZXR291cHZtaWpqaloySHdiYnpT?=
 =?utf-8?B?NHJINS9sMXRCTlpYY0RZUHpETTQ0OVRCNGtnTlYrSWJDQVJCd1RHZ0JvVm9z?=
 =?utf-8?B?amd3MWdIeVhZQmtFazFxRGpLR0ZlSjd0T01FS1psMkRxMHlTMUhLN2kzRFll?=
 =?utf-8?B?MmV4U05LY0kvZlFFWEJKOWdNNVA4ZFU4dEsxNWgzbzFVcjREUWpRYy9xaFJP?=
 =?utf-8?B?cVJ0NUFPY1BYQUd2bHZOYkRHL2ZQTzRvMkJxNDZocEF0ZzNPWlg5V0pCNUpm?=
 =?utf-8?B?alV0WC9kYnNYUDRJd3N1Vk12eFd2dU8ra3hJUVY3YUZnclJNS1QzSWhGYk1B?=
 =?utf-8?B?S2dPci9GTGswcUFtNkZ4YTlvQVJBa2h4R1VqeHhCUHF5UTh6dHUrcUpmR1B3?=
 =?utf-8?B?Y3ppTFdXWlJ4N0hxT2VWZVlOaGY0c1dJQTRIZ0t5ZURTRHArdTcyVmJjU2Fq?=
 =?utf-8?B?aEhPblFYWm5IWkYvKzJ6QXQ2YkdYTVFhcFAvdjk3NVBDZzlkQnhkTHpXa3Nh?=
 =?utf-8?B?QVdEZ1dRa21rY2hFNHpIU0tsWnlNd3VEZ3NvcFVhNE1HVUlmRXliWlRsODdB?=
 =?utf-8?B?THF3QmJkeVI3TThhUXRwOWFaWjBGQ3hLWElrNVBpOWZNUWRYZWYvSjBkZjRK?=
 =?utf-8?B?anJndWI5UGRQTzY5WlhDSVZTZnIwaTZQZGUxUGVxbmtQMWc9PQ==?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR09MB3893.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?ZW53ZGZnNU4xcmd2WE5ad1VWNi9OWTg5WllGLytKRVlFaU1ObFlaaS9ST0RS?=
 =?utf-8?B?dktBQkFIQTdIWFpBbHZuUld2am1UZjFsVEV4WlJqSzFWSWR6K09jSDBBNlNa?=
 =?utf-8?B?L0hTUE9OdmVqOUpFU3daaEh2YzYzTXYwNWxSeXl3T2EyYTB0Z3VUMjE1VmVL?=
 =?utf-8?B?RkdadmxxOWc1K3NNVXgvVFBCbVJWWDNtMDlRYXJERkQyVGNpTmxDTWs4U1Nn?=
 =?utf-8?B?dllBYkdwNXIzbDVSQXczYVhuOCtuanZRVzhnYVpFMEp3eWRWMHN6UkFSNmdp?=
 =?utf-8?B?UnJZVXFIa1hJTEtiM0doeFcwcFAveFg1Z0JTdXFOODVicmlsU3hRV0RSYlFa?=
 =?utf-8?B?ckszUmpJeVIrTFVLTWQ4dSsvdFhZZWRuOHBEYUN5RTViOUJLejd5L0tBWExh?=
 =?utf-8?B?TlRxbUpOWmZnOTZWd2IvUi8wclhUNXI4VEtxbzBuTXNCY2tadE14T3dzVXJO?=
 =?utf-8?B?V1JkdGdMeWV5M2liSjZvUWtXQTd6WlY2Q1h1RmJBUHk3ZENCc2wzVEhHWExl?=
 =?utf-8?B?YlErQWkycXgzYXVqOVZ2OXdaUGM3c1FFb0hoTTJ2MitKQzJaZWNSekhWV1Nr?=
 =?utf-8?B?ME1ERG1xdjNreHM5NzF2bHRiSUdYYlFxdE52dXZVeU5GcGoraFhVUW01bFVu?=
 =?utf-8?B?SnVSMHFjSWlRZGVWN29NeGN2MUxITDZrSCtiYzJrMEhRd1h3TnBzbnlkcjBI?=
 =?utf-8?B?T0JYUmlVeC92ejU2OFJxMlN1OWZlS0pFd0drMzNZYUE1RndFNDVLU3RFdHpu?=
 =?utf-8?B?R1BNbk5QdXdudjBsS2VZVGs0dHl6TjAwUXNSdDFLUjdnNjdvRzZQNHFqMVpl?=
 =?utf-8?B?OXNaSk5RNnRkSWgxTXpXVXBDa3M3VEl4VGlTN3NLazFjQVcyby96OTZlRDhO?=
 =?utf-8?B?LzBRdDRwcmNNcjFhWWs1MUlXL2ljT0pSOTVySnVURmU0dGgyaTY5T0pHbitP?=
 =?utf-8?B?eU5NbHlSVFZHNmc3Y1pTSFFtTXprK00xZ216dVZaS2RLR29YbHhrUEtaUHdW?=
 =?utf-8?B?TmQzTjdnYWpOTmM0cE13NXRROWpkakJXZ0FkZGN4UmE4NXllaVl4MkdWL1ln?=
 =?utf-8?B?RUFnTE1ialBpa0syM05KVlR1OU5INm41RVFGbUdoWG11S3c2a0REeVRhSVBE?=
 =?utf-8?B?a2ptUXpOVEZROEZ3MGhrQWVyOHdpLzNFaTV1ZFYvRE1XK3F4N1J2TFFBNytY?=
 =?utf-8?B?Qnh3QkZCaG1PWGJDcmN0dTdHQW1lUXJGMUxzSEt6eDI5ZlJIaDJtWUhtZ2Ey?=
 =?utf-8?B?d3J4Mm83ZG5KY0tHazZac1UraE5kSUFKZHp1T1RZR0FEY0ozaFhiZzlQODgv?=
 =?utf-8?B?TlBONkhhNmtxSVFUVFlGQ282eDdkSXJlVEtiU0xPdngxRytrMzdWNVpXRklS?=
 =?utf-8?B?ZUJyckxURE1RZDluSXB0UmJ4K2grUjZydDFIRlZXdjZqQlE0MjArSHFsSmdj?=
 =?utf-8?B?YU5zSm4xK1FRUUJKb1VodGdXRlZuNjgwYmMxTjFsaW5ydVo4MGpFckJmQVNt?=
 =?utf-8?B?dUxELzVHUEM1Y3Z0bWhheGkxSEdCTStDZEJieFMyZUwvTVgyMGo4MnB6empO?=
 =?utf-8?B?R1U0SzZ2dDZsREdxVk0yOVZJMmM4d2kwMWpVSms3QjBvUW43SXdFOHgyODla?=
 =?utf-8?B?NHg3WTJLcGlwRFpOdzY5VFpRQ1NxbStjbXRQaWNuRW1xTGdhdGFEODdxQ2hO?=
 =?utf-8?B?R0RXQ2t6NFFvK0VKbnJUUjA1b1VzN3k0QXdmRE10UEMvMWVXbkhsS2t6aUEx?=
 =?utf-8?B?YzNyVG02dkdlTFBETU9WcnFEMHJaM1RSb3JoNnZjSWdWMHFoby84RThGRVR5?=
 =?utf-8?B?aEhNalN0SHdURDQ0U0RSV1V3MnhjVzZoL0diYk9DUXVneUNSeXZha0pBYVkw?=
 =?utf-8?B?WDQvQnRTUG05Y3ZrZkdPL0FFVlhuVnd4aDNVWTIxTU92UUZFNUdnUkxDVmZQ?=
 =?utf-8?B?US9icFBmdVZ6dHNJdkkxRHhFeE51YXlsd21SMWNibklRMTJDZDcwTkE2UURX?=
 =?utf-8?B?NVg4T2xxc0xYU0hKZVFPU051bkVraUI3anMwUHAzUWhTN2x3MFZyRW5HL1Fk?=
 =?utf-8?B?OElGVXpZa2hzeVMrb1k0NTFoa0MvY2FkVS9QWWpWdXovZWxsWnlqck1naHdi?=
 =?utf-8?B?bHB5YnVlNHZGRGN5NWQzOThVaFF3UFBIaFRNWTA4Ull6UkJ5WnNoWEhDQnBH?=
 =?utf-8?B?d2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DA83541E9BF3DD469C7E8DD2C0B9B47C@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: SKF.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM7PR09MB3893.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb8b8400-0df8-43fc-3a1a-08dd19510223
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2024 19:29:47.5167
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 41875f2b-33e8-4670-92a8-f643afbb243a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XXqAMgu0suiwWp0Rr1HxsB3TK5KGvRGklQa/hqXuDvnG6Jve0yDCuyDf0f154HHbvTDiGU6OoLCzVUuxyHtU4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB4321
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 19:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64427

SGVsbG8gZXZlcnlvbmUsDQoNCkkgYW0gZmFjaW5nIGEgZGVwZW5kZW5jeSBsb29wIHRoYXQgSSdt
IGhhdmluZyB0cm91YmxlIHVuZGVyc3RhbmRpbmcgaG93DQp0byBicmVhay4gVGhlIGlzc3VlIGFw
cGVhcmVkIHdoZW4gSSB0cmllZCB0byBtb3ZlIHRoZSB1LWJvb3QgYm9vdCBzY3JpcHQNCmludG8g
dGhlIGtlcm5lbCBmaXRJbWFnZSBhcyBwYXJ0IG9mIGltcHJvdmluZyBzZWN1cmUgYm9vdC4gQmVm
b3JlIHRoaXMNCmRlcGVuZGVuY3kgbG9vcCBJIGhhZCBhIHdvcmtpbmcgc2VjdXJlIGJvb3QgY29u
ZmlndXJhdGlvbiB3aGljaCBsb29rZWQNCnNvbWV0aGluZyBsaWtlIHRoaXM6DQpTUEwgKyBkdGIg
KHNpZ25lZCBieSBOWFAgdG9vbCkgLT4gVS1ib290ICsgRFRCIChzaWduZWQgYW5kIHZlcmlmaWVk
IGJ5DQpTUEwpIC0+IExpbnV4IGtlcm5lbCArIERUQiArIG9wdGVlIChzaWduZWQgYW5kIHZlcmlm
aWVkIGJ5IFUtYm9vdCkuDQoNCltVLUJvb3QgKyBEVEJdIGFuZCBbTGludXgga2VybmVsICsgRFRC
ICsgb3B0ZWVdIGFyZSBib3RoIHN0b3JlZCBpbg0KZml0SW1hZ2VzLiBBcyBmYXIgYXMgSSBjYW4g
dW5kZXJzdGFuZCB1LWJvb3QgaGFzIGEgZGVwZW5kZW5jeSBvbiB0aGUNCkxpbnV4IGtlcm5lbCBz
aW5jZSBpdCB3aWxsIHJlLXNpZ24gdGhlIGtlcm5lbCBhbmQgYWRkIHRoZSBwdWJsaWMga2V5IHRv
DQp0aGUgVS1ib290IERUQi1maWxlICh0aGlzIGlzIGhvdyBJIGludGVycHJldCB3aGF0IGlzIGdv
aW5nIG9uIGluDQp1Ym9vdC1zaWduLmJiY2xhc3MpLiBJIGJlbGlldmUgd2hhdCBoYXBwZW5zIG5l
eHQgd2hlbiBJIHRyeSB0byBwdXQgdGhlDQp1LWJvb3Qgc2NyaXB0IGluc2lkZSB0aGUga2VybmVs
IGZpdEltYWdlIGlzIHRoYXQgSSBnZXQgYSBkZXBlbmRlbmN5IGZyb20NCnRoZSBMaW51eC1rZXJu
ZWwgKHRoZSBkb19hc3NlbWJsZV9maXRpbWFnZSB0YXNrIHNwZWNpZmljYWxseSkgdG8gdGhlDQpk
b19wb3B1bGF0ZV9zeXNyb290IHRhc2sgb2YgdS1ib290LiBUaGlzIGlzIGR1ZSB0byB0aGUga2Vy
bmVsIHJlcXVpcmluZw0KdG8gaGF2ZSBhY2Nlc3MgdG8gdGhlIGJvb3Qtc2NyaXB0IGZpbGUgdG8g
cHV0IGl0IGludCBoZSBmaXRJbWFnZS4gVGhpcw0KbWFrZXMgYml0YmFrZSB1bmhhcHB5IHNpbmNl
IHRoZXJlIGNhbm5vdCBiZSBhIG11dHVhbCBkZXBlbmRlbmN5IGJldHdlZW4NClUtYm9vdCBhbmQg
TGludXgga2VybmVsLiBOb3Qgc3VyZSBpZiBJIGFtIG1pc3Npbmcgc29tZXRoaW5nIG9idmlvdXMN
CmhlcmUsIGl0IHNlZW1zIGxpa2UgdGhpcyBtdXN0IGJlIGEgZmFpcmx5IGNvbW1vbiBzZXR1cCB3
aGVuIHVzaW5nIHNlY3VyZQ0KYm9vdD8NCg0KLy9QZWxsZQ0KVGhlIGluZm9ybWF0aW9uIGNvbnRh
aW5lZCBpbiB0aGlzIGVtYWlsIGlzIGludGVuZGVkIHNvbGVseSBmb3IgdGhlIHVzZSBvZiB0aGUg
aW5kaXZpZHVhbCBvciBlbnRpdHkgdG8gd2hvbSBpdCBpcyBhZGRyZXNzZWQgYW5kIG1heSBjb250
YWluIGluZm9ybWF0aW9uIHRoYXQgaXMgY29uZmlkZW50aWFsLiBQbGVhc2UgZGVsZXRlIGFuZCBu
b3RpZnkgdGhlIHNlbmRlciBpZiByZWNlaXZlZCBpbiBlcnJvci4gU0tGIGRvZXMgbm90IGFjY2Vw
dCBsaWFiaWxpdHkgZm9yIGFueSBkYW1hZ2UgYXJpc2luZyBmcm9tIHRoaXMgZW1haWwuDQoNCkZv
ciBpbmZvcm1hdGlvbiBvbiBTS0bigJlzIHByb2Nlc3Npbmcgb2YgeW91ciBwZXJzb25hbCBkYXRh
LCBwbGVhc2UgdmlzaXQgU0tG4oCZcyBQcml2YWN5IFBvbGljeSBhdmFpbGFibGUgdmlhIHd3dy5z
a2YuY29tPGh0dHBzOi8vd3d3LnNrZi5jb20vcHJpdmFjeT4uDQo=

