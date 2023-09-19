Return-Path: <Pascal.Weisser.ext@karlstorz.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24E7DCE79A9
	for <webhook@archiver.kernel.org>; Tue, 19 Sep 2023 16:01:49 +0000 (UTC)
Received: from mx08-0040c702.pphosted.com (mx08-0040c702.pphosted.com [185.183.31.154])
 by mx.groups.io with SMTP id smtpd.web10.13432.1695139306237600932
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Sep 2023 09:01:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@karlstorz.com header.s=S-DKIM-20210427 header.b=Ff1twMSQ;
 spf=pass (domain: karlstorz.com, ip: 185.183.31.154, mailfrom: pascal.weisser.ext@karlstorz.com)
Received: from pps.filterd (m0267678.ppops.net [127.0.0.1])
	by mx07-0040c702.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38JDVf3i028346
	for <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 16:01:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=karlstorz.com;
	 h=from:to:subject:date:message-id:content-type:mime-version; s=
	S-DKIM-20210427; bh=S5BllnT9ioof4UmQVD9uW2VjUa+g61/M09QNbSGxDe0=; b=
	Ff1twMSQM1nzmB08UXxiZPrTOC/z5wc/xIY4K/nnJofhqLRv0XK1nIYcWx21Y566
	5Wpsn2ZV6NJr1bApgEtyPfAmIUGMQ2Mrvba9AN3bIfedu/QDmmnKSeMS40dfUB3m
	YeCDRs6mlDEgCBDm3yeqFqo3+xqLnzV2exV1J2DBIpnUnpYWqDZvnmnOeMkgrxHq
	SWXg6JFxVZaqX46z4JcQj0d9HMTtjpt6NZNhJ24LdTfHaOcmGt7EdDRqcYebn2+H
	y+D1/ibRoqe/AkBRnOS/MtPbN5QmjZyvp/IJniQw8dNWhxq3L/3Z+P6j80eeclc4
	mKB9l4cTMgU99E/Ivnz9LQ==
Received: from eur02-vi1-obe.outbound.protection.outlook.com (mail-vi1eur02lp2049.outbound.protection.outlook.com [104.47.11.49])
	by mx07-0040c702.pphosted.com (PPS) with ESMTPS id 3t539c1pd2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 16:01:44 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hmpvsns0D8wSeXLhYxbA7nu1qVoiPfKEn2SzPqHjBQ8nqLHjrM3HM9ZBydeQBtzRUdGN1w3Ee08wg8VhxtKow0xGbkQf+ZT1AHcVHwzCj9Rcp31rDUf0nCbQNnbzL9wDiW1hHGVjWCY59UIv8xmQyIFTw100GcZwd5MflC3x56xA/54PtudaPXN5aXy8EVMWKQQEBdrdqWPV/G4UtBMsEu5zrvPkSu4gEeAQ0V+HSfQaVimjK5lA/aksX9xEyUGdiFgL0xFnQ8anKwkQ1DtRPJyYD4CiKRK8AMD7SF9sKZG7qnDcS+iSqRDdZlcQSm2bhZWjQLSTSVKu3MLcJCJyRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S5BllnT9ioof4UmQVD9uW2VjUa+g61/M09QNbSGxDe0=;
 b=J8vcWgtm3fEYVkKTCsgkNB47Ih6ZWd4yqmA0sJDIwWu68pCPwYbACKqXa1RKQ6XJ62GWbjGTUIBvyh7EkK0Lv+jy2HMSFStVc5cd+OC1vgEyAZdkTcATb/mA2CA2zw4TZyO6qoa7ve6yjsEJzMYHu/nULMqwLVvmHWgmhBEjF9D+z9xmY/iX9u/0X9iX9oc41yekkvqmEmF3jhPl0BAuAZ0n2mSZX/nZWYsyDlrt1ig1Yvf+00zQUM9QyHan/1Re+k7HqKj2vV37yfSQj++JyArBOWZWFhC/nMVSIiWzH0VLBQyDwE4ila5SDmx52v1q1PWTQe5CDMzIN7dSCA8fdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=karlstorz.com; dmarc=pass action=none
 header.from=karlstorz.com; dkim=pass header.d=karlstorz.com; arc=none
Received: from AM5PR0102MB2753.eurprd01.prod.exchangelabs.com
 (2603:10a6:206:5::31) by AM0PR01MB6513.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:167::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.15; Tue, 19 Sep
 2023 16:01:43 +0000
Received: from AM5PR0102MB2753.eurprd01.prod.exchangelabs.com
 ([fe80::b872:3bb8:570f:92ae]) by
 AM5PR0102MB2753.eurprd01.prod.exchangelabs.com
 ([fe80::b872:3bb8:570f:92ae%7]) with mapi id 15.20.6813.013; Tue, 19 Sep 2023
 16:01:43 +0000
From: "Weisser, Pascal.ext" <Pascal.Weisser.ext@karlstorz.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: SPDX and debug-kernel feature
Thread-Topic: SPDX and debug-kernel feature
Thread-Index: AQHZ6xKCq+AArtKeQEiDkPDhLl1sMg==
Date: Tue, 19 Sep 2023 16:01:43 +0000
Message-ID: 
 <AM5PR0102MB27537C9D28F35F25D1D6E736C8FAA@AM5PR0102MB2753.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM5PR0102MB2753:EE_|AM0PR01MB6513:EE_
x-ms-office365-filtering-correlation-id: b228d4cb-ced9-4ac8-6aa3-08dbb929b7d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5RqbVYtoAqv9ILLYexlFZmQOASGruFxDoABNx5pbyAGD6clwrWNiL0tgNO/ZuKoTEH0uTtdDiuDlBBbOyjAtE98v9CW9ZoQiM9/xDppH5PX6SUFofsKIUF0XjNN++tr53fE6Bw1sigy8V5DAKLOTU4Q2ChRVYHwzogiXo16LFvW7lu2DDVWWijLd/ZAFvSlRCxvy1MNPtJW1cNCEacOLzLBvtWq8sgvmdHBn7wD8rR5+Hr+TYccpXCQq9QahTq2WHsTsI73XwqOVQcdz1z6E97TkeV7lOclh62rFyM2OB0QdWK67Opvt//31QtqZ4S46NE8JXUoURwWaUSGCFSvhv6IQBjxkP+++yjjvMAmJIz7O1cytA9Y6AHxGxnK+nVihb8st3NRkyK2DsamkOvU93Lw6CPRyDHRtAzR0UccIIC7rdB6rwYuAI1cyV5b4tOxKBvRutc/SRMtKMORtFwHGWkws4/c1lOq643x+SnDuLjiwg3aBboK6AbmYxM7SnK+4ORFEiHZe+4BEZua/ImVJMTkp+SztQ75TS6HxlSxn4vosnsK2NyH9lQc1OMWc3E9Vsbv4TL2yO3agIovVxHNr2I4oDciV2ccH6YdEwN8dr9Q=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5PR0102MB2753.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(346002)(366004)(396003)(136003)(1800799009)(451199024)(186009)(19627405001)(55016003)(7696005)(6506007)(38100700002)(33656002)(122000001)(86362001)(3480700007)(38070700005)(26005)(2906002)(4744005)(478600001)(9686003)(71200400001)(52536014)(8676002)(5660300002)(8936002)(6916009)(91956017)(316002)(41300700001)(66476007)(76116006)(66946007)(64756008)(66446008)(66556008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?eDZBK0s0RlhEQUVMSjdoSlE1TUhnOEliSk4rWmhmamNWQ1F6cU05Zmh4ZDVF?=
 =?utf-8?B?QitpUlJYREJORExzTW5jRFlnL3F0OXRxcGR4K3lFWjI0cnRweXVWczdKNFRW?=
 =?utf-8?B?LzNaWFMwREduRWNaSmI4bnJGcS9oQVJwajdEazV4NVByUHBWWFhmc3M2TmMz?=
 =?utf-8?B?Z0k4R3lJNVJGYUpuQmxacWsrNjEyT0tHYndCTHB1MGVmdTdrZS9aVDUyUmRm?=
 =?utf-8?B?Y0tMc0g3eWUzS2I4L0VMSUtlQkQ3cDBtYmo1U2dwZ1dDMVU1aGRzL3owZ0dO?=
 =?utf-8?B?VHhFK0dWZFZTaThZSFk2RXlUUTFNQzFOOUFDcUlZaGx5eFlNUWI2UFoyVFVM?=
 =?utf-8?B?L0Nkbi8zYlVrZHIzN2djamJQRW96aHdaUE1UQy9EUjlycmtPcVQ0NnovZ0Vn?=
 =?utf-8?B?ZDRvUTZjQWx4Vi9JV0s2ZXp3V3FBaG0yUG5OZjZScGZESDZGR2U4dkNDSENE?=
 =?utf-8?B?bWdhdGhJQS9QYmlxWDI2R1ZZbVcvT3NSNFh3SWEza0NRV2xoVG4wSjZIekx6?=
 =?utf-8?B?OG5PdDB5MldTcEJKSC9oMEVmNHBxR3BpSHlDREtnMTB6N2V0dENVcjFJMlBK?=
 =?utf-8?B?bTFSSFIxRnpYNGVndmlXbjF1aGxmUG5iNENyNE5DWTYySHIxbWtpKzJFclhw?=
 =?utf-8?B?UVRMTzYvU1JHS25PZmtjeTNwMTVBWjJFS05hSG1kVWRrL0R2bU9HODNndzlU?=
 =?utf-8?B?enRLa2VYeXhEYlhCd0xJbm9XQkw0YzdyRGNoZjNrTXJpUmFNbU03MkhwdXU5?=
 =?utf-8?B?c21GV2l3QVhWdTZYbC9CMzRqR0RCSnFDN21HLzh2b1NvVlNwNEExaENSTFgw?=
 =?utf-8?B?L2hwcy94dGlWb3FmdjR4eVNGWU9ybWQzZGlGY21FN3RockJFTmxiTzZQK3da?=
 =?utf-8?B?ZWtlb2pxd2YvUmMxNmtXeU8rTW85NlZLK01qU1RUU0RrY2p0UHNWcXNkMlRS?=
 =?utf-8?B?UFFVbElBdmdoRnZTQ1NOeGpQTFI0bkxnUHdBaWdWNEl1NlR2UVlpdGRuYUJY?=
 =?utf-8?B?dWxlTkk1U0dYbjc4K29HWEpydEZiUHBUNVpHQS9mNXdmTnBsRmZyZUgvYnBi?=
 =?utf-8?B?OHliZmlZdkZpRVNMc2hCbUxKZFVTRGw5bW4ydGJPSjg1ZlJNOXBDQ2EwdHR2?=
 =?utf-8?B?dDY4cnViM2JnV3lNYXcxQ010TnozcFY0WTFQRURrc3JuM1YyYVBMckdSQTJm?=
 =?utf-8?B?SmhCalJ2VnlhWXprNmZEdXJaUGRaT253TkYzRUhRQUduZlVVUTVJNkNlOVBM?=
 =?utf-8?B?ZzJlL3N3WE5MZWxNdHhwYUtsWUxjS3ZPUVgwZG5obzdyTTJIMmVKd1RBakxi?=
 =?utf-8?B?ZUo2aWg5akVzTWJsQlp5K2ZyT1U5aS9EbTFjKzRxT0NyUEhUQ3dCbmV0bFUz?=
 =?utf-8?B?T2dKNFRoK28vZHJCSmhTVnl0MzR6MkU1QmdramFaQ0dUTHg1SnJteUFhQi93?=
 =?utf-8?B?TTJMRHl4S3JvM1Z3a1BTUGRkNENOL2lDc0hhRjNCV1RnOHJFakVEUnNhT3Mr?=
 =?utf-8?B?bkNzcWRLcVN0YnRLaHRkSFJZZnNFTWorQ3lxUCtuTGhoZXhhR2ZwdEROb3o1?=
 =?utf-8?B?N0ZPTjc0bmlaZnVFdjFiVXMrQ0F3R3dhZGcrdzJIYXVSSXBkNnJ4Y0NjZEM1?=
 =?utf-8?B?b29YYlRBVkJ3eU1uZk9udjdpSWhvSWJDdXM0M1FVQkRLNU9pSVJqb2EwQUdz?=
 =?utf-8?B?YXpkRWQ5dGVVc3EzY1JsakNLa3dTbzlubnppK2VWVVc4MWFPNG4yMklhS1gv?=
 =?utf-8?B?aFJZYmtLd3l1TnFkN0ovdGcvOW9GZ3dQdm5iRXlJZHcxdi91aEFVcWVGNEpt?=
 =?utf-8?B?T2RoUGVhaXpNM2RZR2w2Mm1yTnZFaXVYcUJCSi9lVFdRS2hCTXIzeDkrQUk2?=
 =?utf-8?B?R1kwa2lzNG1rT0hDNDRKSHNvNzc0NXVDd0hhRERSMytjZUQ4WEhnM0o2Q2Np?=
 =?utf-8?B?eU84WDV6UlN2eUNNS0lidzl1elFJdTlMUzNRR3FCRFUyMi9Way9vZHJwNGlo?=
 =?utf-8?B?TUZ4cmhIMDdIdGpjUnI2QlVQSThvbmRId1dQSzg4czBETSt1TWcrclkzZ1RS?=
 =?utf-8?B?a0lDS2NsaWlqemhMUTQwb3MzTVFab05OYlJGYTA0WUxlcVFwWnQ3N3hTSzJk?=
 =?utf-8?B?WnJVOFI5RWZacGJWVjZWSUhvV1RPTlR5OUMvMzg5SkNpZ250bVBBTjZSa1BS?=
 =?utf-8?B?OEE9PQ==?=
Content-Type: multipart/alternative;
	boundary="_000_AM5PR0102MB27537C9D28F35F25D1D6E736C8FAAAM5PR0102MB2753_"
MIME-Version: 1.0
X-OriginatorOrg: karlstorz.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM5PR0102MB2753.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b228d4cb-ced9-4ac8-6aa3-08dbb929b7d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2023 16:01:43.1965
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4a0b6f21-e6e1-4ed6-9dcf-e60e7190f648
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GaIfZc5j4Jv2e7O9TqNjvAXtuI4xeNxERLgTbwoGTVvl7vAoYtEXZbp54DlitJ4VR2z/CrE3flKc6j5DLDau/elQE/CPuRdsADpVk/wvP3EUiP7NDtKKBZt6tFbD+QXX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR01MB6513
X-Proofpoint-GUID: GHe1WPbUgJONV-cgPyt9TbEXgiU0lL8O
X-Proofpoint-ORIG-GUID: GHe1WPbUgJONV-cgPyt9TbEXgiU0lL8O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-19_07,2023-09-19_01,2023-05-22_02
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Sep 2023 16:01:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61043

--_000_AM5PR0102MB27537C9D28F35F25D1D6E736C8FAAAM5PR0102MB2753_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQppbiB0aGUgZmlsZSBwb2t5L21ldGEtcG9reS9jb25mL2Rpc3Ryby9wb2t5LmNv
bmYgdGhlcmUncyB0aGUgZm9sbG93aW5nIGNvbW1lbnQ6ICJXZSBuZWVkIGRlYnVnIHN5bWJvbHMg
c28gdGhhdCBTUERYIGxpY2Vuc2UgbWFuaWZlc3RzIGZvciB0aGUga2VybmVsIHdvcmsiLiBJJ3Zl
IGdvdCBzZXZlcmFsIHF1ZXN0aW9ucyByZWdhcmRpbmcgdGhpcyBjb21tZW50Og0KDQoqIFdoYXQg
ZG9lcyB0aGlzIGV4YWN0bHkgbWVhbiwgaS5lLiB3aGF0IGRvZXNuJ3Qgd29yayB3aGVuIGRlYnVn
IHN5bWJvbHMgYXJlbid0IGF2YWlsYWJsZT8gSXMgdGhlIFNQRFggbGljZW5zZSBpbmZvcm1hdGlv
biBub3QgY29tcGxldGUgaW4gdGhhdCBjYXNlLCBvciBkb2Vzbid0IGl0IHdvcmsgYXQgYWxsPw0K
DQoqIOKAi0lmIHRoaXMgaXMgbmVlZGVkLCBzaG91bGRuJ3QgaXQgYmUgZG9jdW1lbnRlZCBhcyBh
IHJlcXVpcmVtZW50IGZvciB0aGUgImNyZWF0ZS1zcGR4IiBjbGFzcz8gT3IgZXZlbiBiZXR0ZXI6
IENvdWxkbid0IHRoZSBzZWxlY3Rpb24gb2YgdGhlIHJlbGF0ZWQga2VybmVsIGNvbmZpZ3VyYXRp
b24gb3B0aW9ucyBiZSBkb25lIGluc2lkZSB0aGUgImNyZWF0ZS1zcGR4IiBjbGFzcyBzbyB0aGF0
IHRoZSB1c2VyIGRvZXNuJ3QgaGF2ZSB0byByZW1lbWJlciB0byBzZWxlY3QgdGhlIHJlbGF0ZWQg
a2VybmVsIGNvbmZpZ3VyYXRpb24gb3B0aW9ucyBpbiB0aGUgZGlzdHJvIGZpbGU/DQoNClRoYW5r
IHlvdSB2ZXJ5IG11Y2ggaW4gYWR2YW5jZS4NCg0KV2l0aCBiZXN0IHJlZ2FyZHMNClBhc2NhbCBX
ZWlzc2VyDQo=

--_000_AM5PR0102MB27537C9D28F35F25D1D6E736C8FAAAM5PR0102MB2753_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyIgc3R5bGU9
ImRpc3BsYXk6bm9uZTsiPiBQIHttYXJnaW4tdG9wOjA7bWFyZ2luLWJvdHRvbTowO30gPC9zdHls
ZT4NCjwvaGVhZD4NCjxib2R5IGRpcj0ibHRyIj4NCjxkaXYgc3R5bGU9ImZvbnQtZmFtaWx5OiBB
cHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBI
ZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAw
KTsiIGNsYXNzPSJlbGVtZW50VG9Qcm9vZiI+DQo8c3BhbiBjbGFzcz0ieF9lbGVtZW50VG9Qcm9v
ZiBDb250ZW50UGFzdGVkMCIgc3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRk
ZWRGb250LCBBcHRvc19NU0ZvbnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2Vy
aWY7IGZvbnQtc2l6ZTogMTJwdDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPkhpIGFsbCw8L3NwYW4+
DQo8ZGl2IGNsYXNzPSJ4X2VsZW1lbnRUb1Byb29mIiBzdHlsZT0iZm9udC1mYW1pbHk6IEFwdG9z
LCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENhbGlicmksIEhlbHZl
dGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdiKDAsIDAsIDApOyI+
DQo8YnIgY2xhc3M9IkNvbnRlbnRQYXN0ZWQwIj4NCjwvZGl2Pg0KPGRpdiBjbGFzcz0ieF9lbGVt
ZW50VG9Qcm9vZiB4X0NvbnRlbnRQYXN0ZWQwIENvbnRlbnRQYXN0ZWQwIiBzdHlsZT0iZm9udC1m
YW1pbHk6IEFwdG9zLCBBcHRvc19FbWJlZGRlZEZvbnQsIEFwdG9zX01TRm9udFNlcnZpY2UsIENh
bGlicmksIEhlbHZldGljYSwgc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxMnB0OyBjb2xvcjogcmdi
KDAsIDAsIDApOyI+DQppbiB0aGUgZmlsZSBwb2t5L21ldGEtcG9reS9jb25mL2Rpc3Ryby9wb2t5
LmNvbmYgdGhlcmUncyB0aGUgZm9sbG93aW5nIGNvbW1lbnQ6ICZxdW90O1dlIG5lZWQgZGVidWcg
c3ltYm9scyBzbyB0aGF0IFNQRFggbGljZW5zZSBtYW5pZmVzdHMgZm9yIHRoZSBrZXJuZWwgd29y
ayZxdW90Oy4gSSd2ZSBnb3Qgc2V2ZXJhbCBxdWVzdGlvbnMgcmVnYXJkaW5nIHRoaXMgY29tbWVu
dDo8L2Rpdj4NCjxkaXYgY2xhc3M9InhfZWxlbWVudFRvUHJvb2YgeF9Db250ZW50UGFzdGVkMCIg
c3R5bGU9ImZvbnQtZmFtaWx5OiBBcHRvcywgQXB0b3NfRW1iZWRkZWRGb250LCBBcHRvc19NU0Zv
bnRTZXJ2aWNlLCBDYWxpYnJpLCBIZWx2ZXRpY2EsIHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTJw
dDsgY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGRpdj48c3Bhbj48YnIgY2xhc3M9IkNvbnRlbnRQ
YXN0ZWQwIj4NCjwvc3Bhbj48L2Rpdj4NCjxkaXY+PHNwYW4gY2xhc3M9IkNvbnRlbnRQYXN0ZWQw
Ij4qIFdoYXQgZG9lcyB0aGlzIGV4YWN0bHkgbWVhbiwgaS5lLiB3aGF0IGRvZXNuJ3Qgd29yayB3
aGVuIGRlYnVnIHN5bWJvbHMgYXJlbid0IGF2YWlsYWJsZT8gSXMgdGhlIFNQRFggbGljZW5zZSBp
bmZvcm1hdGlvbiBub3QgY29tcGxldGUgaW4gdGhhdCBjYXNlLCBvciBkb2Vzbid0IGl0IHdvcmsg
YXQgYWxsPzwvc3Bhbj48L2Rpdj4NCjxkaXY+PHNwYW4+PGJyIGNsYXNzPSJDb250ZW50UGFzdGVk
MCI+DQo8L3NwYW4+PC9kaXY+DQo8ZGl2Pg0KPGRpdj48c3BhbiBjbGFzcz0iQ29udGVudFBhc3Rl
ZDAiPiog4oCLSWYgdGhpcyBpcyBuZWVkZWQsIHNob3VsZG4ndCBpdCBiZSBkb2N1bWVudGVkIGFz
IGEgcmVxdWlyZW1lbnQgZm9yIHRoZSAmcXVvdDtjcmVhdGUtc3BkeCZxdW90OyBjbGFzcz8gT3Ig
ZXZlbiBiZXR0ZXI6IENvdWxkbid0IHRoZSBzZWxlY3Rpb24gb2YgdGhlIHJlbGF0ZWQga2VybmVs
IGNvbmZpZ3VyYXRpb24gb3B0aW9ucyBiZSBkb25lIGluc2lkZSB0aGUgJnF1b3Q7Y3JlYXRlLXNw
ZHgmcXVvdDsgY2xhc3Mgc28gdGhhdA0KIHRoZSB1c2VyIGRvZXNuJ3QgaGF2ZSB0byByZW1lbWJl
ciB0byBzZWxlY3QgdGhlIHJlbGF0ZWQga2VybmVsIGNvbmZpZ3VyYXRpb24gb3B0aW9ucyBpbiB0
aGUgZGlzdHJvIGZpbGU/PC9zcGFuPjwvZGl2Pg0KPGRpdj48c3Bhbj48YnIgY2xhc3M9IkNvbnRl
bnRQYXN0ZWQwIj4NCjwvc3Bhbj48L2Rpdj4NCjxkaXY+PHNwYW4gY2xhc3M9IkNvbnRlbnRQYXN0
ZWQwIj5UaGFuayB5b3UgdmVyeSBtdWNoIGluIGFkdmFuY2UuPC9zcGFuPjwvZGl2Pg0KPGRpdj48
c3Bhbj48YnIgY2xhc3M9IkNvbnRlbnRQYXN0ZWQwIj4NCjwvc3Bhbj48L2Rpdj4NCjxkaXY+PHNw
YW4gY2xhc3M9IkNvbnRlbnRQYXN0ZWQwIj5XaXRoIGJlc3QgcmVnYXJkczwvc3Bhbj48L2Rpdj4N
CjxzcGFuPjxzcGFuIGNsYXNzPSJDb250ZW50UGFzdGVkMCI+UGFzY2FsIFdlaXNzZXI8L3NwYW4+
PC9zcGFuPjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_AM5PR0102MB27537C9D28F35F25D1D6E736C8FAAAM5PR0102MB2753_--

