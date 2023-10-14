Return-Path: <petr.gotthard@advantech.cz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEDD3CDB465
	for <webhook@archiver.kernel.org>; Sat, 14 Oct 2023 09:49:37 +0000 (UTC)
Received: from APC01-TYZ-obe.outbound.protection.outlook.com (APC01-TYZ-obe.outbound.protection.outlook.com [40.107.117.57])
 by mx.groups.io with SMTP id smtpd.web11.59706.1697276974462052483
 for <yocto@lists.yoctoproject.org>;
 Sat, 14 Oct 2023 02:49:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@advantech.cz header.s=selector1 header.b=Zit0FA+Q;
 spf=pass (domain: advantech.cz, ip: 40.107.117.57, mailfrom: petr.gotthard@advantech.cz)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M9/Dl/AO4hyKFxGn3q6LWPa+9VbciGE+7ARwLiMYrM/xL5/3pb7kA60NDuGyXld+0OwLpPYiIyB31xpb0HPuWZptqYZzGYFYZ/Typ1w3vYob2LS75+ye1y+vwWZ9Bm7ipCdEKxn2P+NSMmvo/7ZExRa7EY1Y18RSggB6UB84WhNtu3Y+iZtpcFTjTf+/pE3I9QMioYkeci1uQB3fU18iVJZE6FKWQvoryKRQxXDQEJ0hmgwO7B3cUjBUCD2yJYtl4lRxkmn9RBUtWRSnQkIY2E9NDv+q5tMv0awa5qe8X8jD09giLOdl3T+0xbxz+oAI7p9QsGTnyCYZ88Bn6GLCrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=StRa4ZwSYHn3009Ki7LWRMx10pbxScnle0g0QLOvD4M=;
 b=H0rYZyeHXAA3RemXi/MtmgXrLfPaYBZOObY6N+tby1ZHpmr4H3292yyw0Z4HYGJcQpkJryFStRXwWu58w444oJZOCyHvEw5R7XFzQWt0Pv35BfmFQ6Ev2ho+GS+S6rdeO0NtTW2yQ3iiH5hdfXLybjkVgEwvsmHZdGZGOIGtLVDhavvZ89VFniAUrNjsdyNZCR/IPUaEErnUOOVglKZnumJCkgTzbnGJSuA6wnpENuVcyyYGUofyKPGgHir9sM7Lh4NjPC9VSQh2wkmBDibaNMJE5g7vEWvGnZaxDkPvXqKCREEvZ/oDH/y4G+KlHyxTslB9L74abwySdiSDmJ+rOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=advantech.cz; dmarc=pass action=none header.from=advantech.cz;
 dkim=pass header.d=advantech.cz; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=advantech.cz;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=StRa4ZwSYHn3009Ki7LWRMx10pbxScnle0g0QLOvD4M=;
 b=Zit0FA+QYtIml5MFhSzrDMNVtkGwivsX2YcgADkPoikwxBMrInBt3r+3LN8QSwUWn+hG+O6eLd+SZjnrljA6WtGS7VWGTYgEutebO7JrUMtZAhklD5lkTqkpmB+thFV22vTL0g9asRRKKikZf0R1vHBZziMUFxMG+vgVt9f6ooflv+Fwpwomr6GIlxzareRxKk0YrAD56kcWsocHHSiE9NqE/fJM2JIbCGEIwC4FJFrRPSZfShS9Xyy/vKl745SandvEti3FDRmm4TT35p1lOJnhWz8uebfDPdQfnQE7YOeEqu4uJvTRLw0s3BqN7P23eg3lwbLKwGXgcOluwVUdqQ==
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com (2603:1096:404:b7::12)
 by TY0PR02MB7107.apcprd02.prod.outlook.com (2603:1096:405:c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Sat, 14 Oct
 2023 09:49:28 +0000
Received: from TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::6a30:1e99:4003:e795]) by TY2PR02MB3678.apcprd02.prod.outlook.com
 ([fe80::6a30:1e99:4003:e795%7]) with mapi id 15.20.6863.046; Sat, 14 Oct 2023
 09:49:28 +0000
From: Petr Gotthard <petr.gotthard@advantech.cz>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] tpm2-openssl: update to 1.2.0
Thread-Topic: [meta-security][PATCH] tpm2-openssl: update to 1.2.0
Thread-Index: Adn+g1XFhfxPVuGMQ7ybhk/gFCDaow==
Date: Sat, 14 Oct 2023 09:49:27 +0000
Message-ID: 
 <TY2PR02MB36783D529BC25304E749D44D81D1A@TY2PR02MB3678.apcprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: cs-CZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=advantech.cz;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TY2PR02MB3678:EE_|TY0PR02MB7107:EE_
x-ms-office365-filtering-correlation-id: 6ea90e10-c4a9-40e0-b2a8-08dbcc9adb59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uXZqdiGxYKbzRju3WcRFG5WKf/tWW5ai2bqQ9O9Y/AmfUey19jNe6SMrnbfjDoqID+X1OeeJpc8qRWCGi9R1cGapbkzCSvRl4lsSXq9pEcLnkKNNrh1NI+Tu5XyTS6VZOA+uKwugy6lRE7KnDzTLeRztbPoPfE460XxN5lgBVacghBeRgBl0nsOyLOFZ/2ZLY5RfiPu/ww06tBI1wftGxb332HOXEvhb/Hi+5VNjL8FaFsHdGVblGEQbOxAgiQ6JErFUqZDROrv5xF1y3aFrgT1pnAM+wnONRp2yiIZyG3GWpojDLmxvO7QYHdV3LmuAfbYo5lIEe2PKkaeIiaaJ1Xi0QbDC/FMtumu5JHj7aK2p0vAnB/A4RbzPDpBrpsfHKggL9Hy/MdVTNI/e7Z8x60O0k0AdKfyLMf1OmgigvXjmMUHUo6V5R/q//y4zErRYRGUNsFZDWc5NsY9VidHQgG0RHHVbBw+0BHDA8gq4biZOUhfGPtY1LphokfjLqWdI1rTqSsMDKX55Ix1kUfTE/0znJjxfWGoD2H0wP4QEOQVDMyloLclPLmdYNnE7F1miGdUoQWt/CabBww8XrzNWaHif30Jb60fXYX1mtgGVuLI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY2PR02MB3678.apcprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(366004)(376002)(396003)(346002)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(966005)(71200400001)(2906002)(478600001)(41300700001)(8936002)(8676002)(52536014)(5660300002)(55016003)(64756008)(44832011)(66946007)(66476007)(66446008)(66556008)(6916009)(316002)(76116006)(83380400001)(7696005)(33656002)(26005)(6506007)(9686003)(122000001)(38100700002)(38070700005)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?d1ZSbURjcks4dnhhL3ZkdExONjhyU29EajNsdmJTZmw3aGU0QWVMTTJ0Ny9r?=
 =?utf-8?B?N2RzSk1TQlZBa2RScTIvT2NFL0gwMWc4RE5Xb3Npa0x5NWx4T1dMUnYvdk5B?=
 =?utf-8?B?cDVud0FKOTZUakFrK1hIa2ZvcUNaWjJNU1hHcWExUjBmUnhpdUMrYlc2U000?=
 =?utf-8?B?cVQ1K2lwR0xXU1pibkI5TEJHN0FOUFZVaUJGcWVTQUFrS3VpK0hzQUdQWXpV?=
 =?utf-8?B?dzh0SEF1V1pNbVNIYytmWHZEdUEzR0QzczVQS25rTVVDWFE4L1RBU3dNRGFy?=
 =?utf-8?B?UHNod2hKYlUzSjc3Z1kzaXRoWEhidGdYdnAwa1c3emp0NTNpRWNXd3NZM3dZ?=
 =?utf-8?B?eHdiWTJ3MkV0YzZoL2p0aU9WdVYxalc5SXArOWpKaEN5aHdOMSsrRUsyRTZ0?=
 =?utf-8?B?OFRoS0hpcTdBcEZHczd0UGwvbXRHWjNvWHNxQ3gzYjBYeTdXV1h4U3NITHF4?=
 =?utf-8?B?N0pOQlpmeDF6dGVsa2NBNmZPbGY1RVhEVCtYaklGaFJ3U2hzUE05VVl3SmJU?=
 =?utf-8?B?OTVSTTFQMU1JaTloWXVKZmtiZHpDS2F6TzJjZ0ZYUXpnUGdFZ0l0VDFzZEJl?=
 =?utf-8?B?Z0IzdUFnVTYyT1k2Y3hQUi9qUnV4Q1NYYzViZlgrOGg1MmNob21sQzVYVWwx?=
 =?utf-8?B?MHZlcjVYSlhrM1ZlcmN0aGxhRHptTFpMQWFzcTBZVHlCV0ovekJ6c2dFdlJk?=
 =?utf-8?B?M1ZWbk9zTkE0ZlRwMkpyVWdJcVhYejJkTTUxdzdQUWZ6Qm5tWTdISUFsYkhi?=
 =?utf-8?B?c2F4ODdzalpLREw2UTU1SmoxVHA0RzF2WEpwMWdnczRPWmlOWUJXeWZTWjRj?=
 =?utf-8?B?RE5xVHVrcis2cHlNelJtajFkcGVIbTVjNVN6Q0JMQzMwUDRYTVY1ZXZ3NHhY?=
 =?utf-8?B?Wi82bjBIaWxkN1BRV1U4TlhCRWI2K2puZXNIdjF2VUhMa1c3WEc0aFRkcXk2?=
 =?utf-8?B?UXd5VzJzeHVBc0JEZXlmamRVdUExeXVxQlhvVmVUazBPNVJHMlNEU0diMENS?=
 =?utf-8?B?S3AvVzVmTE41OTZjSWRPZjA5RFFrQ2lJc0VvcGNGWHJsT09jYlI0anRJQTMr?=
 =?utf-8?B?Z1JFSi9PcWJQVEMxdUxyWGxBVlJRdW9DYktlOVdSOGhGaVYxZXZaeFd1bGdB?=
 =?utf-8?B?SUg3cEQydGw3Wnc4L3d3cUVrM05qbDVNcjloSnBIQktQVDB2RHFJcEFFalgy?=
 =?utf-8?B?T3NNNEk3QXRJM2FvSm9nQkRrTCtHYTduWGlhWmtSb2pzdXVYVjRzRGZjeDBT?=
 =?utf-8?B?UTQ2SC9wdVZRSUtPaVd4dU14d1dWSEplWm04Y0Y3eitqdXNubEdjVmdVMWtj?=
 =?utf-8?B?dmd4aW11THpEeXlJekdQVG9BNUs1dVpZYzNiQ0RlRTBoRGNhdjlia1NsZzQ5?=
 =?utf-8?B?MWJSN3FvWVg2eGZEUTlPNmpJS1FsS1h4dTVML1o3cWZ4WmFLcksvR1RESTlS?=
 =?utf-8?B?TGU0UnN4TmpCbUJkdGQ3YXdTU1c1Wmp6Wm43NTdFQjMyN1N0OUg2VUJWejB3?=
 =?utf-8?B?RU1MaDlQNUZWR1Awc3psRDhmelVLYXEzc0hxR01NMUxBVUZwdUhBcW91cWVo?=
 =?utf-8?B?aC9XRnZVc0w2WUVuWHpKdlFaNnppR0pVdU15WkpmMlZiS0xNRzFhTWVQQ0sx?=
 =?utf-8?B?VVJ1aktPaWk4M0NzU1VvV3hHUk9vam1Hamx1enhudS9Nb2xOeXJZRUNCZlZW?=
 =?utf-8?B?Wk9oellYdzNLSXRVR2g5L0pIOEtqNU50aXBkM0VyOVdwQndobVBNYVRhbGhF?=
 =?utf-8?B?bDh4MWNjc2VmbklXbDAxc015dTBOMlZwU1VNcVZYYVp2T0JQUVBtM3VuM3Mw?=
 =?utf-8?B?b3J4WEFNYVlNNlh5dG9RK2NPSjN0NnAyTDBpQkNBMDJNSEZpaEQzb2hQb0o1?=
 =?utf-8?B?MkNGKzhCdVNUOWJFYzF3aWVrME5QRUx4ODViblVrU0ROeUprdUtzYXZpYjQx?=
 =?utf-8?B?QWJGK2FubEovV2ZUZVFibzVIQlNaNWcvQURxWGh2UENsaGU0SGkvMzdKZ0do?=
 =?utf-8?B?UGx6NHoyTThUSGlITVdYMEl6cmxBRWlEYVRnWXpBc2ZONGRZNko1L3RtaWQ3?=
 =?utf-8?B?MUFHbzE3U0RTOHcwMCtQZWZBTEd4ODRtV2dUOG1nYWdBSnplaXd5ZjRNTzFW?=
 =?utf-8?B?bFFBMis2TWxmVngrMHBYYklEOTBkQUV4Z1JRbWtWdjdHUXVleGZyVFV2TjlJ?=
 =?utf-8?B?YUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: advantech.cz
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR02MB3678.apcprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea90e10-c4a9-40e0-b2a8-08dbcc9adb59
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2023 09:49:27.9896
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a77d40d9-dcba-4dda-b571-5f18e6da853f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NCZZekgrC99jTyF8vIdM8+nC4pwQcBmqRha8Ro/IRDIGtEVHqFvcVgE2fDHkTVYMIzEJoaG4vounkW2LA894vDtalZHSHykQLU8sU2v98Kw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR02MB7107
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Oct 2023 09:49:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61341

VGhpcyBpcyBhIGZlYXR1cmUgcmVsZWFzZToNCmh0dHBzOi8vZ2l0aHViLmNvbS90cG0yLXNvZnR3
YXJlL3RwbTItb3BlbnNzbC9ibG9iLzEuMi4wL2RvY3MvQ0hBTkdFTE9HLm1kDQoNClRoZSBkb19j
b25maWd1cmUgYW1lbmRtZW50IGlzIG5vIGxvbmdlciBuZWVkZWQuDQoNClNpZ25lZC1vZmYtYnk6
IFBldHIgR290dGhhcmQgPHBldHIuZ290dGhhcmRAYWR2YW50ZWNoLmN6Pg0KLS0tDQogLi4uL3t0
cG0yLW9wZW5zc2xfMS4xLjEuYmIgPT4gdHBtMi1vcGVuc3NsXzEuMi4wLmJifSAgICAgICB8IDcg
Ky0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNiBkZWxldGlvbnMoLSkN
CiByZW5hbWUgbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItb3BlbnNzbC97dHBtMi1vcGVuc3Ns
XzEuMS4xLmJiID0+IHRwbTItb3BlbnNzbF8xLjIuMC5iYn0gKDY0JSkNCg0KZGlmZiAtLWdpdCBh
L21ldGEtdHBtL3JlY2lwZXMtdHBtMi90cG0yLW9wZW5zc2wvdHBtMi1vcGVuc3NsXzEuMS4xLmJi
IGIvbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTItb3BlbnNzbC90cG0yLW9wZW5zc2xfMS4yLjAu
YmINCnNpbWlsYXJpdHkgaW5kZXggNjQlDQpyZW5hbWUgZnJvbSBtZXRhLXRwbS9yZWNpcGVzLXRw
bTIvdHBtMi1vcGVuc3NsL3RwbTItb3BlbnNzbF8xLjEuMS5iYg0KcmVuYW1lIHRvIG1ldGEtdHBt
L3JlY2lwZXMtdHBtMi90cG0yLW9wZW5zc2wvdHBtMi1vcGVuc3NsXzEuMi4wLmJiDQppbmRleCBi
Njc2ODcxLi4zYjRmOWY3IDEwMDY0NA0KLS0tIGEvbWV0YS10cG0vcmVjaXBlcy10cG0yL3RwbTIt
b3BlbnNzbC90cG0yLW9wZW5zc2xfMS4xLjEuYmINCisrKyBiL21ldGEtdHBtL3JlY2lwZXMtdHBt
Mi90cG0yLW9wZW5zc2wvdHBtMi1vcGVuc3NsXzEuMi4wLmJiDQpAQCAtNiwxNiArNiwxMSBAQCBE
RVBFTkRTID0gImF1dG9jb25mLWFyY2hpdmUtbmF0aXZlIHRwbTItdHNzIG9wZW5zc2wiDQogDQog
U1JDX1VSSSA9ICJodHRwczovL2dpdGh1Yi5jb20vdHBtMi1zb2Z0d2FyZS8ke0JQTn0vcmVsZWFz
ZXMvZG93bmxvYWQvJHtQVn0vJHtCUE59LSR7UFZ9LnRhci5neiINCiANCi1TUkNfVVJJW3NoYTI1
NnN1bV0gPSAiNWE5YmIwYzZjNjFkMDI2MjcyYjg4NDNjYmMyOTFiNWRmYTlhNTVjMTY2MWE1MTNi
MWM5ODA4MDdhZDJkYWQwMSINCitTUkNfVVJJW3NoYTI1NnN1bV0gPSAiMmVlMTVkYTJkY2VhZTE0
NjZmZmJhODY4ZTc1YTAwYjExOWQ3NTJiYWJjMWI2YTI3OTIyODYzMzZhMzMyNGZiMCINCiANCiBV
UFNUUkVBTV9DSEVDS19VUkkgPSAiaHR0cHM6Ly9naXRodWIuY29tL3RwbTItc29mdHdhcmUvJHtC
UE59L3JlbGVhc2VzIg0KIA0KIGluaGVyaXQgYXV0b3Rvb2xzIHBrZ2NvbmZpZw0KIA0KLWRvX2Nv
bmZpZ3VyZTpwcmVwZW5kKCkgew0KLSAgICAjIGRvIG5vdCBleHRyYWN0IHRoZSB2ZXJzaW9uIG51
bWJlciBmcm9tIGdpdA0KLSAgICBzZWQgLWkgLWUgJ3MvbTRfZXN5c2NtZF9zKFxbZ2l0IGRlc2Ny
aWJlIC0tdGFncyAtLWFsd2F5cyAtLWRpcnR5XF0pLyR7UFZ9LycgJHtTfS9jb25maWd1cmUuYWMN
Ci19DQotDQogRklMRVM6JHtQTn0gPSAiXA0KICAgICAke2xpYmRpcn0vb3NzbC1tb2R1bGVzL3Rw
bTIuc28iDQotLSANCjIuMzQuMQ0KDQo=

