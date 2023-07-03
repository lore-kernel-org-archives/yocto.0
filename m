Return-Path: <benjamin.baratte@st.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D45C8EB64DD
	for <webhook@archiver.kernel.org>; Mon,  3 Jul 2023 08:23:50 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [91.207.212.93])
 by mx.groups.io with SMTP id smtpd.web11.22743.1688372628714618969
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jul 2023 01:23:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@st.com header.s=stmicroelectronics header.b=nNgMotXZ;
 spf=pass (domain: st.com, ip: 91.207.212.93, mailfrom: prvs=5548ad76a2=benjamin.baratte@st.com)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3638DlZh027509;
	Mon, 3 Jul 2023 10:23:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=wyylA2hEPwuSzfZ6ZfpVGymO6Ns3MZRaoHKEKPo7LwI=;
 b=nNgMotXZTnj27T0wldUuA1mr8MeR914pojkX0dL99RnB80rF+wSsrvBfmQBsIMFZ81Lo
 DrNl7s5F7AUwBLeZRx7eAX6qtImHWSbi8FnLorBb8e9ePsxa6QpPx7WiEuPC4q4F3kFq
 jOcvcpLEqe/uyDtRsNSlq+W//LkEYlFc/2XG81SFmeJ5UKKKBh39AEzBIhmR97ZLs6bX
 fKjP0L8rTrGlokS86z2nMsWtsRSo0NxDSW2bf06inkTKfnfp+AR2//XGU2RMokwRrJxF
 Sw6/Z7slMRtaBo5mmsZPKDHv8ZhQvpigDbfQNS0Abb0WEqLfB2vRhdpnViW3Myornndo HA== 
Received: from eur04-db3-obe.outbound.protection.outlook.com (mail-db3eur04lp2051.outbound.protection.outlook.com [104.47.12.51])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3rkp9u9nxn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 03 Jul 2023 10:23:45 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wc6acN6gV6WcJYaHaaAu+wAUWAeTbxCW3cEyc25RJ6P5agj4GslXm9iPI7a6zac6tgKVNTAAcZwXnuIMXykcmlv8UIiwJBytpBlInUnQ3squIEx8Gt3bMSyf4JMJ3leplWe/K+Dc9fKDQxXWhxRRa3GV5wvoRuxAfjQuw+jJ/V7CC1frr47Ht2wHPoNCjjJfqTsLwKg3PeKGYL6XBA06qEQ8Gi7BW4KGqPsxFpb6jIeFAJifdins448UyPleY7DOfxj+k/tCO/XN4NYvrlVaUfhu3aCL3wHxJYQMPfe+wzeqtFbZbV53NEH+lyB5bssfRIG4pbDQz3aPvffETneLGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wyylA2hEPwuSzfZ6ZfpVGymO6Ns3MZRaoHKEKPo7LwI=;
 b=Lf2YGXM7RP1kcue2LGYd8oyOpr1P8KsovgsVC8LSLpAL05u6/2/e9/oD3B9zO3AsDA/D2rquhPa2Izdv7+/+1Dv9a8gkv1awBDE8SBid4NYLnPcxP8vWULA0NpI+o4sJ92sdyMDB/rY/422JoynRz2NmDYDnsx+CAWl2tnWLYMjdynI4GOJCF8s8eePfrEr0ySU+enOHzlvm1q+i+nMfB3N+c9N9tJHW9mmtTgFIo8BcF1vo3i+7GF63vq2aukS/F/w9UvlbvT2332FFSeX+eJGFoevr47sNvzoCmZBBYPPI3MnEaXCJxo3Ae6y8wxnfWl9vaHkBG8lV+8uwMvNDeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=st.com; dmarc=pass action=none header.from=st.com; dkim=pass
 header.d=st.com; arc=none
Received: from DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:34c::22)
 by DB9PR10MB5570.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:30a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Mon, 3 Jul
 2023 08:23:44 +0000
Received: from DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::163a:93da:d465:cbae]) by DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::163a:93da:d465:cbae%4]) with mapi id 15.20.6544.024; Mon, 3 Jul 2023
 08:23:44 +0000
From: Benjamin BARATTE <benjamin.baratte@st.com>
To: akuster808 <akuster808@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] [QUESTION] [meta-security/meta-tpm/recipes-tpm2]
 Kirkstone release
Thread-Topic: [yocto] [QUESTION] [meta-security/meta-tpm/recipes-tpm2]
 Kirkstone release
Thread-Index: AQHZrRjpUSCCDF/1KECC/oI1owguP6+ns2HA
Date: Mon, 3 Jul 2023 08:23:43 +0000
Message-ID: 
 <DU0PR10MB5244F40273C70903DD9ECD57E129A@DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <DU0PR10MB52441934DB7DE4BC76AF8804E12AA@DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM>
 <abae3de1-bd48-99fc-658c-afa4b450bbe2@gmail.com>
In-Reply-To: <abae3de1-bd48-99fc-658c-afa4b450bbe2@gmail.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_Enabled=true;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_SetDate=2023-07-03T08:18:23Z;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_Method=Privileged;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_Name=cf8c7287-838c-46dd-b281-b1140229e67a;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_SiteId=75e027c9-20d5-47d5-b82f-77d7cd041e8f;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_ActionId=ea4e6869-e0de-4b4e-93c3-b7fe3a4121f9;
 MSIP_Label_cf8c7287-838c-46dd-b281-b1140229e67a_ContentBits=0
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU0PR10MB5244:EE_|DB9PR10MB5570:EE_
x-ms-office365-filtering-correlation-id: cb7cac7a-f4e3-44df-4442-08db7b9ed0b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RtZUcWGqlZPXqqWPBHgatHdIggaLgLOowPcQaHpImCAl7XanAtZDiHyExjB7n5GCMTtPLlyFQKioF54tg0PvcUGAbjop8++qlWWjXtEQ5rFIOwtRMWeGsp8D2ZmRe7ygJtR893OiqHojDmuT2ehxiT3yytP/Utq+VL/cwBTW26fGxmpuqUglgk8DbyKAMPSE2HCr2udOA31kkt0rT8peyo33cWFKY/ScyKfljCs0IHUztTMuc2v1dwIxbUztB7iU59kH/Hkw2VhelDHm2USJCXTbtSRGr3oBJC6wtZBRGGabxN/IqpbY0mUGKPEWT9m/UKJxB6I+C0mn5oj3ReYqDLckhvMOwBwq2Sq/FBDkX7YX8TRYdYovoJhocLE3dGe7VXuM5Wnj/rLRJsHh2Q1stkslH4tXvYdhkubIpy/hnPh9EX8sBsCKWN6DBIXGNNTtoQEFGgEvT4EyPivnlhgNY3kuU9r5Ao+RNllBjZpnsge0tFNp1UumguggcjMqETocgoQyaBk/UyTtirQFn37TubnIus7IExKtaM5u2wkd0H9w6BGczp+CK2NFXGc4RDzIyi1Got4XN4FZMv61SL2OuCvBV+GS4pH4GUNoGA4TA+c=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(376002)(396003)(346002)(39860400002)(451199021)(38070700005)(2906002)(41300700001)(66899021)(5660300002)(52536014)(8936002)(8676002)(15650500001)(33656002)(55016003)(86362001)(186003)(478600001)(26005)(966005)(6506007)(9686003)(71200400001)(53546011)(7696005)(76116006)(55236004)(122000001)(316002)(66476007)(64756008)(66446008)(66556008)(66946007)(38100700002)(110136005)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Y1JsNk5NUzZhbXJJSFY5UExEZHlKMExSQW55Z0wxMk1YNWhnUEd6YnhqSzhO?=
 =?utf-8?B?SnEzY3RzMmdYT095a3dvU3B6Yk4rQUlKSUVKd3JOaUZTZTl2ajRPVXFlSnRq?=
 =?utf-8?B?b00wZ2JJMXpXY1h6Znh0M2taWXU4OUZOYS9mOXdwUDZUd0x1UlhDaWxkRVpK?=
 =?utf-8?B?alp6NDhkNGtleC83eWpMdW15bmpPM2Izdi9wRjZKWTNYNGNZaWdCZUV3dnFy?=
 =?utf-8?B?c2VqeDlsUldBNFNoTytVUTBlTjU0NS81ekltcnRqSlo4MndUOXNaaFpKNk9P?=
 =?utf-8?B?RVZHSG1GbzY4VThXb3VxenhKd3RndHppeER1blBGeXNpdmZNeDVlamM4T0FR?=
 =?utf-8?B?SmM1eWUvWG0vSVFwcThKTzN0UGNnME1tckRMVXFFS3pFZDVUcXlUM1hXckVR?=
 =?utf-8?B?ZDJ3YUhKNFNNUVZjUzF4MklxQ3Qvak01a1JadWNYeTk4cGxYam1HZk9WcXhs?=
 =?utf-8?B?VUdONnE5TXorTkhPTGdVK2VJc3FoaGVrcnlld1Z6cS9ocU5zYW1BYkVkS2lK?=
 =?utf-8?B?cDdyK2ljaWNGWWRGdmZlMTA4UzBnUHh5aTJ6UmZoTk4zVHREdmRWVURJWkFE?=
 =?utf-8?B?bTZYdTNBRFVOaSsvSHlYYkpKeUYyZUdnTFIwSXlrQ0c2aGhpT09kMnRESDU0?=
 =?utf-8?B?dUMyS0ZGRkJWOUg1QnoxTUppZTc1ZElMTnlqblgyZm5pcTh6THZaTjUzMmQ1?=
 =?utf-8?B?ZWxpeThsS21BTWZnMDYramtPak9LdlNWU0NtWG9OQzRkZlluRk96aURFb28r?=
 =?utf-8?B?VG1xZEEwRFRZc1dkU0pBWDd4WVdDZjdKdCtIU2R0bFI1VGdpb255dFJUM0p2?=
 =?utf-8?B?N2JwMmZISHRTaUFRZmxpRzlJL0RPbmd5QlNwclFZZU5paWJvdElTSjgzRktp?=
 =?utf-8?B?dTJpTW82cGhJSWhXQmtBUlc0cGJycXdpY3lyVTFydnNKOEdIUGN3Zjl4aHJ4?=
 =?utf-8?B?SWtzWU8zVE50NFNtek9BUWVHek5LSnFMK1N3QXJkcFlMb2E2eWQ2Ly9pUWpx?=
 =?utf-8?B?L2REdWplcXVSWS9TcldOSDA0Y2Y1TG5sTmpLQ1pDYzJpMTJLN3JGQTBQaWw4?=
 =?utf-8?B?Rkt3eUhKNDQwRU1saVUzSXMvZVE0bk9rc2Y2NjZmKzVlS2I1YU1ZQ295RTh5?=
 =?utf-8?B?dUxjVXFYU1prdHBJWGN3NUc2M0I5dzRtUjF3d25jSW5vNTZZdlJxRkF6K05W?=
 =?utf-8?B?TmpPMUhFSjEzSGhiV01EN0FKNnhuNzdGdzkwWWZqMTNNYzM5T2JXaGRwOWd0?=
 =?utf-8?B?S1RrZFBJMlNwbW4wRFd2bHY5aytCa3NKcjNoaEp2cmpWTmZ6YStkaDhBMEJX?=
 =?utf-8?B?RzMyWmM1NFJRcVZ3RnAzOFY0V2NOL0Y4N1lIOWJhYmdHMHIydmRIWFIzYXF4?=
 =?utf-8?B?cWFOalhneWVYcnIzdEx1N0U2UURacHFybWNJdmhwTTk3ajB3bUpQcW5tZEZx?=
 =?utf-8?B?MTRXb2ZINm1MMGR2SkhSVS9mYkZ3TnowVVA3VHdSMDQ0R1lITHR1NXhxZjYv?=
 =?utf-8?B?UFVNZW9HMW94bnViUUcvbTdZWmRjQ3hObUU0QnpGOERPaVZZd2ttaFZaeFY1?=
 =?utf-8?B?a2dnU1pOS1dOYld0UEZTSW5vSUVCSTY1Q1pscjZ2MmtJUlZDcTlIcnNjaEx4?=
 =?utf-8?B?SVVTcytSbGpRSG9TVTNuSWhST2dLVjJwY3RTZW94bzRPVHlLbXNUN3lZZFNt?=
 =?utf-8?B?SlQ2eXdKQWlGNHF5eGI4a0VNYk9uRmx1UjBRM3AzOXl1WThIaS9LY2xKajRs?=
 =?utf-8?B?ankyV1NvMTBRaWU3c29JNWlLRWZXdGlYOERoQ2QzdzRDMEJ0bHprNlN3RjVO?=
 =?utf-8?B?cTRsNzc1V2tHRTAzV2pLZmFLdDdXWm1SNWVYbkZWZkUzYTBHdDZWOFlPRmxN?=
 =?utf-8?B?V1lJSHVIemxJcnMzalBRVHlnSGVKbGhNYjFGTzNIY2g0cEJVVWNBdVBqVXZZ?=
 =?utf-8?B?bTZlMW4zcDBKWjB5cHg1MzN0ZGUvYzVIdTMrYXc5RTE3aVJ6UURhZERIU3Zk?=
 =?utf-8?B?UmphNUc2Qi8yVEltMlVncjRuaHBvc2Q3cEFtZDZXcVhoZ0l1RU41aHNnUTho?=
 =?utf-8?B?TmJDZENmNTF0QkMxZTZqRThSd3lCTTBTVElJN0NidHU1Qlo0TjdvQmJCV2k1?=
 =?utf-8?Q?w8so1kNKok+iqd2hP5VO0fVb5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: ST.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU0PR10MB5244.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: cb7cac7a-f4e3-44df-4442-08db7b9ed0b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2023 08:23:43.9796
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 75e027c9-20d5-47d5-b82f-77d7cd041e8f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eOQx4i8sqw8PjvqkRBo2dqXTKT3IkAm3WJzxSgiU0N3QeUQHdzdC2l6t32L+WAOLuLt8LOKcuR/vhwPQ21XNMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB5570
X-Proofpoint-GUID: xQrbUs3jm6X89fJTX3ysvFxa71m1iOEr
X-Proofpoint-ORIG-GUID: xQrbUs3jm6X89fJTX3ysvFxa71m1iOEr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-03_06,2023-06-30_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=791 spamscore=0 adultscore=0 clxscore=1011
 bulkscore=0 mlxscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2305260000
 definitions=main-2307030076
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jul 2023 08:23:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60494

SGkgQXJtaW4sDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogYWt1c3Rl
cjgwOCA8YWt1c3RlcjgwOEBnbWFpbC5jb20+DQo+IFNlbnQ6IFN1bmRheSwgSnVseSAyLCAyMDIz
IDk6MTEgUE0NCj4gVG86IEJlbmphbWluIEJBUkFUVEUgPGJlbmphbWluLmJhcmF0dGVAc3QuY29t
PjsNCj4geW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3Rv
XSBbUVVFU1RJT05dIFttZXRhLXNlY3VyaXR5L21ldGEtdHBtL3JlY2lwZXMtdHBtMl0NCj4gS2ly
a3N0b25lIHJlbGVhc2UNCj4gDQo+IEJlbmphbWluLA0KPiANCj4gT24gNi8zMC8yMyAxMToxMiBB
TSwgQmVuamFtaW4gQkFSQVRURSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyB3cm90ZToNCj4g
Pg0KPiA+IERlYXIgTWFpbnRhaW5lcnMsDQo+ID4NCj4gPiBJ4oCZbSB1c2luZyB0aGUgbWV0YS1z
ZWN1cml0eSB3aXRoIEtpcmtzdG9uZSB2ZXJzaW9uIHRvIHVzZSBkaXNjcmV0ZSBUUE0NCj4gPiB3
aXRoIFNUTTMyTVAxLg0KPiA+DQo+ID4gSeKAmW0gZmFjaW5nIDMgaXNzdWVzIDoNCj4gPg0KPiA+
ICAgKiBUaGUgcGFja2FnZWdyb3VwIGRvZXMgbm90IGluY2x1ZGUgbGlidHNzMi10Y3RpLWRldmlj
ZSBsaWJyYXJ5IMOoDQo+ID4gICAgIG1hbmRhdG9yeSB0byB1c2UgZGlzY3JldGUgVFBNLg0KPiA+
DQo+IA0KPiBEb2VzIHRoaXMgTWlja2xlZG9yZSBjb21taXQgYWRkcmVzcyB0aGUgaXNzdWU/DQo+
IGh0dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvbWV0YS1zZWN1cml0eS9jb21taXQvbWV0YS10
cG0vcmVjaXBlcy0NCj4gY29yZS9wYWNrYWdlZ3JvdXA/aWQ9OGE3MTEyZDM3YmZlMDE1NzI4OWVk
N2U2YmFlYjFkN2UzNzcwN2IyOQ0KDQp5ZXMsIHRoaXMgb25lIGlzIHdvcmtpbmcgb24gS2lya3N0
b25lDQoNCj4gPg0KPiA+ICAqDQo+ID4NCj4gPg0KPiA+ICAgKiBUaGUgcGFja2FnZWdyb3VwIGRv
ZXMgbm90IGluY2x1ZGUgdHBtMi1vcGVuc3NsIMOoIHN1cHBvcnQgb2YgVFBNDQo+ID4gICAgIHBy
b3ZpZGVzIGZvciBvcGVuc3NsIHYzLngNCj4gPg0KPiBNaW5kIHNlbmRpbmcgYSBwYXRjaCB0byBh
ZGQgdGhpcyB0byBtYXN0ZXIgYW5kIEkgd2lsbCBiYWNrcG9ydCB0byBraXJrc3RvbmUuDQoNCkJh
c2VkIG9uIE1pY2tsZWRvcmUgY29tbWl0LCB5b3UgY2FuIGFkZCB0cG0yLW9wZW5zc2wgaW4gdGhl
IGxpc3Qgb2YgZGVwZW5kZW5jaWVzIGZvciB0aGUgcGFja2FnZWdyb3VwLXNlY3VyaXR5LXRwbTIN
Cg0KPiA+DQo+ID4gICoNCj4gPg0KPiA+DQo+ID4gICAqIFRwbTItdG9vbHMgaXMgb24gcmVsZWFz
ZSA1LjIgd2hpY2ggaGFzIGFuIGlzc3VlIHdpdGggdHBtMl9udnJlYWQNCj4gPiAgICAgKGh0dHBz
Oi8vYnVnemlsbGEucmVkaGF0LmNvbS9zaG93X2J1Zy5jZ2k/aWQ9MjE1ODU5OCkgw6ggY291bGQg
aXQNCj4gPiAgICAgYmUgcG9zc2libGUgdG8gdXBkYXRlIGl0IGF0IGxlYXN0IHRvIHJlbGVhc2Ug
NS40DQo+ID4NCj4gDQo+IFRoZSBjaGFuZ2VzIGJldHdlZW4gNS4yIGFuZCA1LjQgaW5jbHVkZSBt
YW55IG5ldyBmdW5jdGlvbnMvZmVhdHVyZXMuIFlvdQ0KPiBjYW4gZWl0aGVyIGNhcnJ5IHRoYXQg
cmVjaXBlIGxvY2FsIG9yIGdpdmUgTWlja2xlZG9yZSBhIHRyeS4NCg0KSSBoYXZlIHNlZW4gdGhh
dCBNaWNrbGVkb3JlIHVzZSB0aGUgdmVyc2lvbiA1LjQgYWxyZWFkeS4gDQpUaGUgb3RoZXIgZGVw
ZW5kZW5jaWVzIHNlZW0gT0suIA0KQXMgdGhpcyBpcyBvbmx5IHRoZSB0cG0yLXRvb2xzIHBhY2th
Z2UgYW5kIEkgZG9uJ3QgaGF2ZSB0aGUgY2hvaWNlIG9mIHRoZSBZb2N0byByZWxlYXNlLCBJIGhh
dmUgbWFkZSBhIGxvY2FsIG1vZGlmaWNhdGlvbiB0byB1c2UgNS40DQoNCkJlc3QgUmVnYXJkcywN
Cg0KQmVuamFtaW4NCg0KPiANCj4gQlIsDQo+IEFybWluDQo+ID4NCj4gPiAgKg0KPiA+DQo+ID4g
VGhhbmtzLA0KPiA+DQo+ID4gQmVzdCBSZWdhcmRzLA0KPiA+DQo+ID4gQmVuamFtaW4NCj4gPg0K
PiA+DQo+ID4NCj4gPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiA+IExpbmtzOiBZb3UgcmVj
ZWl2ZSBhbGwgbWVzc2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiA+IFZpZXcvUmVwbHkgT25s
aW5lICgjNjA0ODcpOg0KPiA+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3Rv
L21lc3NhZ2UvNjA0ODcNCj4gPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9tdC85OTg3NDg2OC8zNjE2Njk4DQo+ID4gR3JvdXAgT3duZXI6IHlvY3RvK293
bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gPiBVbnN1YnNjcmliZTogaHR0cHM6Ly9saXN0
cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWINCj4gPiBbYWt1c3RlcjgwOEBnbWFpbC5j
b21dDQo+ID4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gPg0KDQo=

