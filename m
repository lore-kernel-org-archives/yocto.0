Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25BCC04FFE
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 08:42:10 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.10415.1715676125558311605
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 May 2024 01:42:05 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5864d3919a=qi.chen@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44E67w9N029439;
	Tue, 14 May 2024 01:42:00 -0700
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3y23xyjb2j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 14 May 2024 01:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PiGZXgXQJ6aTPtQOdMK0w13Bo0H9OvNuU9dr50jETMNA6X0s0LJWd9zGyB7xbumQBFejw8K3Co5BDbb4ft7rGY/O9ljGXfqrQOt3tMk4q20xGClji3S7SRNt0EX5FqM5hsOOJjivrUECcoH2m5nkpTjJnQy3t29C/oqrFwG8LBN2w+/EMbfu/XLbhDzzJMS+W5qif9QMXqHLfu8OVP5DAipINVdvvFKLGr57HEFgmS0LOvHLhCidFArjyvI5nZIiGJLNzfnH9bNdvOcAXIhCkoAOzbfIz3s1zfjpx5rYXFLqT4vB6lX2sMSvH6H8fkwgwg2CiqsYlqruHBX7TsNGqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RxhGmIa/lN3qHkUUtFAfSzD0hZC2PIrx9IiJuf2ZwzI=;
 b=KLVpCLyL1647m4kZBaMiRBzmJnvhnF123/b4FRnECvjpupQoiOaOxwjDnIkN3MVg/d+8EpE8hPnZGTauvrGzw+XNeYv4O+rwsdOQRYVGREkj5DtRM14PaCN0rq+FNf18aNouk+95le1SBui+HHfZ9bWJOj5Q7r4S0Ke8EIFtHK+QhlgkNH2zpmuTLPRmI5EH9DBv4sD8cB7gNPLWmdL6/gI4nhCINkV22el9RGNv86+piUWEgKKD1LCS62hSJZy78ztj0sBF2mdEZZX/+elpkB78ik0/rA08RT9l7e8dv2XET1+BIFs+Rpz5bZrtFYSLBnj90nxNVWh9Add/GQQtoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by PH8PR11MB8107.namprd11.prod.outlook.com (2603:10b6:510:256::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Tue, 14 May
 2024 08:41:52 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093%6]) with mapi id 15.20.7544.052; Tue, 14 May 2024
 08:41:52 +0000
From: "Chen, Qi" <Qi.Chen@windriver.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
        "alex.kanavin@gmail.com" <alex.kanavin@gmail.com>,
        "Salahaldeen.Altous@leica-camera.com" <Salahaldeen.Altous@leica-camera.com>
Subject: RE: [yocto] requires libsqlite3.so()(64bit), but no providers found
 in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
Thread-Topic: [yocto] requires libsqlite3.so()(64bit), but no providers found
 in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
Thread-Index: AQHapdQu9SMhhVidmki9YvypXQHLo7GWZyMAgAABvTA=
Date: Tue, 14 May 2024 08:41:52 +0000
Message-ID: 
 <CO6PR11MB560278C97BA078A862F09B26EDE32@CO6PR11MB5602.namprd11.prod.outlook.com>
References: <AqAx.1715673358859537428.AIQN@lists.yoctoproject.org>
 <CANNYZj_nzmmCVt5U+pbHbCGCPBSxPAkDj3jowKOhAW8g_7aVLA@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_nzmmCVt5U+pbHbCGCPBSxPAkDj3jowKOhAW8g_7aVLA@mail.gmail.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR11MB5602:EE_|PH8PR11MB8107:EE_
x-ms-office365-filtering-correlation-id: 5a98f80b-cb4f-4b76-39a3-08dc73f1b40d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: 
 =?utf-8?B?eU01ZlUrQXlkMEllbEJ1eGk5VmtLY1g1blNoeTVRK2J4K2drNkg3NHpiNXBH?=
 =?utf-8?B?VHZ5WGszc0ZzdkltbXZRVHJiWFArWGcrMkF6dnJsZUsraklSUmlDOFNhNG5B?=
 =?utf-8?B?MXVWcnpyV2ZvTEI5QUo2bUJSc084akNOUjFmMVkvMWk0N2pocHptY2tSREY2?=
 =?utf-8?B?QWtKeGpHQUNtOXlSd0g3S0RpK0plVTkrRkJOOG4rc3d4d243RVJlYmg3cHZa?=
 =?utf-8?B?aHVZNVJ0YVovREZQczFNQ3dNd0RkWjJVb21OZGxuQzdqTWJaaTRYS0NnMTEw?=
 =?utf-8?B?dit3eGtST240aGxhbmpCbnFVcHdYVUZpMnpDbVcxem9aQXUxTEdNR3ZOOVY5?=
 =?utf-8?B?M2l0cDR4MDA3M2o3VmYybmZJMEFUa1FKSkJDeWEwZWlyNmZzdDFqNy9CdjlV?=
 =?utf-8?B?S1Z5OE9uNkUxSXUwY1FIaVNTUS9xc1FncFd3OFRMTk9mZU45aXRVNWVmbkVJ?=
 =?utf-8?B?MXgybHlob1dMSHl2ZjhPdHhtTmlocmc3OU9jU25CcmNGbWkxL2ZlemhuT3hk?=
 =?utf-8?B?SDI5TnFlR2h3Z20zTXZuRlljLzNUQjlMeklaRVBpNTVWZFpmeVkvalAybTFo?=
 =?utf-8?B?bG0vSUNvNFh1NUtQa3hxM0N0MmpETCtuT1g3bVBjVWVYa012MC9QVDQ3Y1M1?=
 =?utf-8?B?em9lQ2Z4clVQSGw5TDF4cGtsMzFaMFRiRjd1cXA3N09qdEZUYmtmVExYY0FG?=
 =?utf-8?B?YkFyaTVzUFBiQm1xL3ExQjFncnVJV2oxWUFhV0s2eExobmVVa1d5ZWhLNUNO?=
 =?utf-8?B?M3h2QUdUeFF6M3NDUE40NWp2ZEtnZjhzZ2RwQWl6bDZuWDJadkp4YmF4c2RQ?=
 =?utf-8?B?UjVYL1N5TVBXUHpxc1ozbGdOaFJEOER1eU5xM25Zci9WWC9CV2RnTFhOL0c3?=
 =?utf-8?B?VnpYaG50STBFbUtkLzA1TlZ2SURtY2gwenptcjRJeDZtM2R1WmpuKzFlajlr?=
 =?utf-8?B?QkRKQlR5b21LdElTQXRFS0J5N0hOdGlQM2N5QkFsdHNkcU93Uk9rVTFaYWNM?=
 =?utf-8?B?L2hoQnhOSGkzZmJoNEpaSy9HRXFFM1ZlZXViRDBRQjlCTldXQlRTakxpNU5v?=
 =?utf-8?B?L1FjdW10czkwaDJEaytPQVZZQlJyV3ZGN3NKK29aeFBoQ3JpTmJpSzVSbzA2?=
 =?utf-8?B?YndSN3ZJVUFJNTduanJVRWZSQ3V2V3ZBNGhIZ1ZRZDkwTnFPekZGYU04UWtq?=
 =?utf-8?B?WHBDckdUL2Jpdk9vT0JwVHl3Z08xekJOVUptWGhDSk5DL2RiWThSMHFVZ1Jm?=
 =?utf-8?B?cTUvSGR0d3Y4QUxidVB1ZTNxaHhqbWovV1U0WXV1ekRrSkQrNXdBbmY4dWty?=
 =?utf-8?B?RFZmV2JJOHhHM3gxMWVOKzAweEFKd1NNeERqREdJcjBkWXQ4Rkk0ek9yc2M3?=
 =?utf-8?B?TG1UV3g0RlRkN0RXY3kyY21tVDUydEIvS09VTkVIcTd5aVc5dDd5dUIwVGI0?=
 =?utf-8?B?SmtKN1NJaE9maDM1eWp5WGZWNm54UE5pc0wwVFpqSWp0THIrSHhaQ2JZb2Iw?=
 =?utf-8?B?NnNLY2NMMVVxd2RGSUZiVFEwby91dEc4aUQzUXdKRytQb3BMci9KV3B0alcx?=
 =?utf-8?B?bU5MV1hiRmd2c00rU0p0M1dBTDZlczFuVU9mVzI0eXdwcUdKekZ5Z0Q3MkN3?=
 =?utf-8?B?Z0Y4ZTBKaWVLRkUxaHJ1TmxMYkdPdER1cDJoczVRWVo2bVZORDlBSFhNcUo4?=
 =?utf-8?B?R0d6SlREaWRKcnEzMG93eEtDb1ZFNldYcEt2UHhJVTdmUklKdkF5Qnl3PT0=?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bjEzMjB1Q3R3OWNQOUY3SVJwcW8xS2ErMkhiWGtuQXpHTkFVaGFXS3FmMVkx?=
 =?utf-8?B?cFBZTnVmd1NYVDYwWVF2U1BvVWRtdWFvR1Yyc29tN3hCUUFWT09FM1BKY0Ix?=
 =?utf-8?B?UERCVjJrLzdTQXNRVnZ2MmhTc1B2OFlkVHJsdE1HU0dDK0RGVlV2UmFTbEFV?=
 =?utf-8?B?RjZ1YTNtSlkrRGJTbUp4VHdtOVdCL1A0RHJ0TXp1WnpSUTNFZ2llMTgrRjE2?=
 =?utf-8?B?aXBYWGhmaWZweWMvUFp1K0VKeGcyVkNuOVBNSGhpZzVjRW1JeXVrYmFMaHps?=
 =?utf-8?B?Y2tRWFRlV3V6RHdybkdEdHNYS0p0RlM3RXA1czZwV1ZtRXZWbXNKRGI1eHl0?=
 =?utf-8?B?azUzOHZLQkppdUFWNmo4STlOVEFEQU5NZ1VVc2p0RHFaeEZTQ0NrWTBGdEtK?=
 =?utf-8?B?ajNibXJBOGx6aGdhU0wxUHE0UlJjbGwzZ1lXemFKdEpSWERUMnRSNXplQXBU?=
 =?utf-8?B?VHMwNExwVWhaU1hnNkRZOEtVcXZwY0hidkZaZStVRmZ0dHF6MmNkck1HTHZO?=
 =?utf-8?B?aHdEYlBoeGpXWFpPOU14ekl3WEg4U1Mrc0E3Vml4QzJBUnNUcVdwUHhaQnpv?=
 =?utf-8?B?a3ZnM0Z0UVpSSjRiUExEM05seTQ2ZlZMZkZ6OTd2NGhlb2ZyeTA2aXpTc0xi?=
 =?utf-8?B?R1ozdVFta2xLbVhMZk44OWF6R1pObVlSMzNpZ0FiSDlYV29vSmtuTmhFQ0cy?=
 =?utf-8?B?bXJBRFZ0S0JXNjg4WEFIYy85WjhFMVBpcG9UVklVOHdiUVFtdW1nMTJselVI?=
 =?utf-8?B?Z2FXY0sxUVBUbHVHMk01VWtLOXlxNFBuUDk3ZStpS2VBeHRvYUFnK09Gands?=
 =?utf-8?B?NTIrL1I4S2taUE02akRYVUVVejZPSHZLb0o3UTdDeDJhb1I3L3lUNS9tNzFV?=
 =?utf-8?B?d21iOHhWbWNMVlpOYm1YSkRYdVFvamJ6UEhvdHZzUjd0R3FibDJUZk5mOE83?=
 =?utf-8?B?cUE0cHA5TDE5bS9DYVpkN0lCNVY4QTVLWVRYaWNSb0liY2hpYS84VWlYUXBB?=
 =?utf-8?B?MHJoTC9SSFBoV2tDNUpRZDlNVDBFWTZyeWdxN0dobnNReUNsajFYUmdWSnV0?=
 =?utf-8?B?NTNudFZseW1OSm1qTzBaQ2tONnJ3OTBrbEVvWUFtOUszcVU5UGpWTTg1QTB3?=
 =?utf-8?B?Z2VTcUY4WkExL2FMQVhFR0swSE9HZ0NkWlNPK2JvSkd3QTdwWFI2M1dzSGxa?=
 =?utf-8?B?NWc4bkZPcEMzWUxXVjVMT3BhejhpYm9ZNkh3b1dKOERKZUlGVUdwWEV1YURY?=
 =?utf-8?B?UUFsK0k0TjNnb2g3UnFvK2dIK2xhdXBQeTYzdERxejRFMzNPcmQvSDMvczRw?=
 =?utf-8?B?b0F3eHZaQ3pTWUU5eXZqMFp4MDU3U3AxbllHQ2loOEt5NEU2bWhsUm5LTnVW?=
 =?utf-8?B?SjdvQ2xQSnNKYmtqTm1wVDI0YUhOWjA1Ymp6QkR3Szc0YU5QdXBnc1d2OVRD?=
 =?utf-8?B?QWxQMmkwRkgwRTAyRzNaVXFES3BWcmxxa3MwTHN1aW9ydndZNkdTNmlrTndn?=
 =?utf-8?B?T2ZrR1daV0xxWFYreS90YnExeE1ZZ0xVbnV6SmtUL3Y5NnpvcDNkenFPMURU?=
 =?utf-8?B?cm54anhBR3Fld1YwUDRDN1hpRHVPN1VTUTk2VktQK25YSE1OLzA3Q0xVQzZ1?=
 =?utf-8?B?V2ZLRWY4SGlsL1NhYUVDU2tUVHNVcHpFclNMVjZQaUZ5SGptYWtUaE9NRmNF?=
 =?utf-8?B?MGtDUWdzN1I0ZUQ0UitNRzlma2NvSTU1TS9oUHBBV0lsbFRuaUdoZk9IOUxl?=
 =?utf-8?B?dnFTNFYzMk54VStGS1B2bEpPcFlKcTBLNWMyb2ppemtreG1HQXhFQTBVOVUx?=
 =?utf-8?B?ajI1RndjcUt0OC9GUmtnRDBJTTFzTXJoNjhEZ1MwNmIwUjcyQnNrVzhZSDgr?=
 =?utf-8?B?VmcwVWI3TTJCL0Z4UWd3UUtaR1NjWjQza2hXRmZ0T0VQeW1OV0s1cW85YTNJ?=
 =?utf-8?B?c0kyZGV1cmIzOC9VQUFaZmdnQ0JObUtwTEV6RU1VQlJjQ1A5S1A1S3lQUzRu?=
 =?utf-8?B?aVpHUHlEMDFxUEIvdnZGVGhiSkl4UGJnZDRrV2dwT1hWNGEzcnlveXZJNVlM?=
 =?utf-8?B?cVhpWVhYNnk3RXp0bTB1ZCtHS1RTK1RLMGduMjV5UFltK1dEejUrYUwxN3BQ?=
 =?utf-8?Q?BVHcczTxuceWyBpoXktA3I6Mi?=
Content-Type: multipart/alternative;
	boundary="_000_CO6PR11MB560278C97BA078A862F09B26EDE32CO6PR11MB5602namp_"
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a98f80b-cb4f-4b76-39a3-08dc73f1b40d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2024 08:41:52.4617
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oBxBRHsxSQSHnJuHThtdNndbRzosytZv+XE2eAVDFxujhLhSjfOKBI5RKKo1ne+xRPlS+eWherXz4v0iXwKpnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8107
X-Proofpoint-GUID: z16NHV2dmu2EHj8sfFDiOaZoTzANR-0d
X-Proofpoint-ORIG-GUID: z16NHV2dmu2EHj8sfFDiOaZoTzANR-0d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1039,Hydra:6.0.650,FMLib:17.11.176.26
 definitions=2024-05-14_03,2024-05-10_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 spamscore=0 adultscore=0
 clxscore=1011 bulkscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2405010000
 definitions=main-2405140060
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 08:42:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63085

--_000_CO6PR11MB560278C97BA078A862F09B26EDE32CO6PR11MB5602namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93IGFib3V0IHVzaW5nIHRoZSBmb2xsb3dpbmcgc2V0dGluZz8NClJERVBFTkRTOiR7UE59ICs9
IOKAnHNxbGl0ZTPigJ0NCg0KUmVnYXJkcywNClFpDQoNCkZyb206IHlvY3RvQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBB
bGV4YW5kZXIgS2FuYXZpbg0KU2VudDogVHVlc2RheSwgTWF5IDE0LCAyMDI0IDQ6MzQgUE0NClRv
OiBTYWxhaGFsZGVlbi5BbHRvdXNAbGVpY2EtY2FtZXJhLmNvbTsgeW9jdG9AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gcmVxdWlyZXMgbGlic3FsaXRlMy5zbygp
KDY0Yml0KSwgYnV0IG5vIHByb3ZpZGVycyBmb3VuZCBpbiBSREVQRU5EUzp4eHg/IFtmaWxlLXJk
ZXBzXSAja2lya3N0b25lICN5b2N0bw0KDQpDYW4geW91IHNob3cgdGhlIGNvbXBsZXRlIHJlY2lw
ZT8NCg0KQWxleA0KDQpPbiBUdWUgMTQuIE1heSAyMDI0IGF0IDkuNTYsIEFsdG91cywgU2FsYWhh
bGRlZW4gdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmc8aHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92
My9fX2h0dHA6L2xpc3RzLnlvY3RvcHJvamVjdC5vcmdfXzshIUFqdmVZZHc4RXZRIWVPX3BPaEI2
NkEtdENlUEJUSDYybXZCU08xcGptUEhnS0pVODhkMHVCVGNhYUlReG5wcmV1Q3gtTEVDX0wzMElH
RXNWN2dyX0RyQjN4Vk5rV2VZVkExWE9SMnckPiA8U2FsYWhhbGRlZW4uQWx0b3VzPWxlaWNhLWNh
bWVyYS5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZzxtYWlsdG86bGVpY2EtY2FtZXJhLmNvbUBs
aXN0cy55b2N0b3Byb2plY3Qub3JnPj4gd3JvdGU6DQoNCkhpIEFsbCwNCg0KSSBoYXZlIG9uZSB5
b2N0byByZWNpcGUgd2hpY2ggaXMgdXNpbmcgbGlic3FsaXRlMywgdGhlIGNvbXBpbGUgdGFzayBp
cyBPSyBidXQgSSBnb3QgdGhpcyBlcnJvciB3aXRoIGRvX3BhY2thZ2VfcWENCg0KL3Vzci9saWIv
bGliZXhhbXBsZS5zby4wLjIuMyBjb250YWluZWQgaW4gcGFja2FnZSBleGFtcGxlIHJlcXVpcmVz
IGxpYnNxbGl0ZTMuc28oKSg2NGJpdCksIGJ1dCBubyBwcm92aWRlcnMgZm91bmQgaW4gUkRFUEVO
RFM6ZXhhbXBsZS4/IFtmaWxlLXJkZXBzXQ0KDQoNCg0KSSBoYXZlIGFkZGVkIHRoaXMgdG8gdGhl
IGV4YW1wbGUgcmVjaXBlIFJERVBFTkRTIGJ1dCBzdGlsbCB0aGUgcHJvYmxlbSBpcyBub3Qgc29s
dmVkLCBhbnkgaWRlYT8NCg0KREVQRU5EUyArPSAiIHNxbGl0ZTMiDQpSREVQRU5EU18ke1BOfSAr
PSAiIGxpYnNxbGl0ZTMuc28oKSg2NGJpdCkiDQoNCg0KDQpSZWdhcmRzLA0KDQpTYWxhaGFsZGVl
bg0KDQoNCg==

--_000_CO6PR11MB560278C97BA078A862F09B26EDE32CO6PR11MB5602namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5Ouetiee6vzsNCglwYW5vc2UtMToyIDEgNiAwIDMgMSAxIDEgMSAx
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUg
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkFwdG9zO30NCkBmb250
LWZhY2UNCgl7Zm9udC1mYW1pbHk6IlxA562J57q/IjsNCglwYW5vc2UtMToyIDEgNiAwIDMgMSAx
IDEgMSAxO30NCi8qIFN0eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwgbGkuTXNvTm9y
bWFsLCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjowaW47DQoJZm9udC1zaXplOjEyLjBwdDsNCglm
b250LWZhbWlseToiQXB0b3MiLHNhbnMtc2VyaWY7fQ0KYTpsaW5rLCBzcGFuLk1zb0h5cGVybGlu
aw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6Ymx1ZTsNCgl0ZXh0LWRlY29yYXRp
b246dW5kZXJsaW5lO30NCnNwYW4uRW1haWxTdHlsZTE5DQoJe21zby1zdHlsZS10eXBlOnBlcnNv
bmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJBcHRvcyIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5k
b3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5O30N
CkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4g
MS4yNWluIDEuMGluIDEuMjVpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rp
b24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1
bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEt
LVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzpp
ZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtl
bmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSJibHVlIiB2bGluaz0i
cHVycGxlIiBzdHlsZT0id29yZC13cmFwOmJyZWFrLXdvcmQiPg0KPGRpdiBjbGFzcz0iV29yZFNl
Y3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEu
MHB0Ij5Ib3cgYWJvdXQgdXNpbmcgdGhlIGZvbGxvd2luZyBzZXR0aW5nPzxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEu
MHB0Ij5SREVQRU5EUzoke1BOfSArPSDigJxzcWxpdGUz4oCdPG86cD48L286cD48L3NwYW4+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0
eWxlPSJmb250LXNpemU6MTEuMHB0Ij5SZWdhcmRzLDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5RaTxvOnA+
PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTEuMHB0Ij48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8ZGl2IHN0eWxlPSJi
b3JkZXI6bm9uZTtib3JkZXItdG9wOnNvbGlkICNFMUUxRTEgMS4wcHQ7cGFkZGluZzozLjBwdCAw
aW4gMGluIDBpbiI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPkZy
b206PC9zcGFuPjwvYj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTom
cXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnICZsdDt5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnJmd0Ow0KPGI+T24gQmVoYWxmIE9m
IDwvYj5BbGV4YW5kZXIgS2FuYXZpbjxicj4NCjxiPlNlbnQ6PC9iPiBUdWVzZGF5LCBNYXkgMTQs
IDIwMjQgNDozNCBQTTxicj4NCjxiPlRvOjwvYj4gU2FsYWhhbGRlZW4uQWx0b3VzQGxlaWNhLWNh
bWVyYS5jb207IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc8YnI+DQo8Yj5TdWJqZWN0Ojwv
Yj4gUmU6IFt5b2N0b10gcmVxdWlyZXMgbGlic3FsaXRlMy5zbygpKDY0Yml0KSwgYnV0IG5vIHBy
b3ZpZGVycyBmb3VuZCBpbiBSREVQRU5EUzp4eHg/IFtmaWxlLXJkZXBzXSAja2lya3N0b25lICN5
b2N0bzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PG86cD4mbmJzcDs8L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Q2FuIHlv
dSBzaG93IHRoZSBjb21wbGV0ZSByZWNpcGU/PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkFsZXg8bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRp
dj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxk
aXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiBUdWUgMTQuIE1heSAyMDI0IGF0IDkuNTYsIEFs
dG91cywgU2FsYWhhbGRlZW4gdmlhIDxhIGhyZWY9Imh0dHBzOi8vdXJsZGVmZW5zZS5jb20vdjMv
X19odHRwOi9saXN0cy55b2N0b3Byb2plY3Qub3JnX187ISFBanZlWWR3OEV2USFlT19wT2hCNjZB
LXRDZVBCVEg2Mm12QlNPMXBqbVBIZ0tKVTg4ZDB1QlRjYWFJUXhucHJldUN4LUxFQ19MMzBJR0Vz
Vjdncl9EckIzeFZOa1dlWVZBMVhPUjJ3JCI+DQpsaXN0cy55b2N0b3Byb2plY3Qub3JnPC9hPiAm
bHQ7U2FsYWhhbGRlZW4uQWx0b3VzPTxhIGhyZWY9Im1haWx0bzpsZWljYS1jYW1lcmEuY29tQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmciPmxlaWNhLWNhbWVyYS5jb21AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZzwvYT4mZ3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8YmxvY2txdW90ZSBz
dHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgI0NDQ0NDQyAxLjBwdDtwYWRkaW5n
OjBpbiAwaW4gMGluIDYuMHB0O21hcmdpbi1sZWZ0OjQuOHB0O21hcmdpbi1yaWdodDowaW4iPg0K
PHA+SGkgQWxsLDxvOnA+PC9vOnA+PC9wPg0KPHA+SSBoYXZlIG9uZSB5b2N0byByZWNpcGUgd2hp
Y2ggaXMgdXNpbmcgbGlic3FsaXRlMywgdGhlIGNvbXBpbGUgdGFzayBpcyBPSyBidXQgSSBnb3Qg
dGhpcyBlcnJvciB3aXRoIGRvX3BhY2thZ2VfcWE8bzpwPjwvbzpwPjwvcD4NCjxwPi91c3IvbGli
L2xpYmV4YW1wbGUuc28uMC4yLjMgY29udGFpbmVkIGluIHBhY2thZ2UgZXhhbXBsZSByZXF1aXJl
cyBsaWJzcWxpdGUzLnNvKCkoNjRiaXQpLCBidXQgbm8gcHJvdmlkZXJzIGZvdW5kIGluIFJERVBF
TkRTOmV4YW1wbGUuPyBbZmlsZS1yZGVwc108bzpwPjwvbzpwPjwvcD4NCjxwPiZuYnNwOzxvOnA+
PC9vOnA+PC9wPg0KPHA+SSBoYXZlIGFkZGVkIHRoaXMgdG8gdGhlIGV4YW1wbGUgcmVjaXBlIFJE
RVBFTkRTIGJ1dCBzdGlsbCB0aGUgcHJvYmxlbSBpcyBub3Qgc29sdmVkLCBhbnkgaWRlYT88bzpw
PjwvbzpwPjwvcD4NCjxwPkRFUEVORFMgKz0gJnF1b3Q7IHNxbGl0ZTMmcXVvdDs8YnI+DQpSREVQ
RU5EU18ke1BOfSArPSAmcXVvdDsgbGlic3FsaXRlMy5zbygpKDY0Yml0KSZxdW90OzxvOnA+PC9v
OnA+PC9wPg0KPHA+Jm5ic3A7PG86cD48L286cD48L3A+DQo8cD5SZWdhcmRzLDxvOnA+PC9vOnA+
PC9wPg0KPHA+U2FsYWhhbGRlZW48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
IHN0eWxlPSJtYXJnaW4tYm90dG9tOjEyLjBwdCI+PGJyPg0KPGJyPg0KPG86cD48L286cD48L3A+
DQo8L2Jsb2NrcXVvdGU+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+
DQo=

--_000_CO6PR11MB560278C97BA078A862F09B26EDE32CO6PR11MB5602namp_--

