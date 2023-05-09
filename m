Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66785C77B75
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 08:33:41 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.78])
 by mx.groups.io with SMTP id smtpd.web11.26823.1683621210855808576
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 01:33:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=PkijOM8N;
 spf=pass (domain: siemens.com, ip: 40.107.21.78, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WBWaMOJ1m77dL0vB0wGXMCY3DS9n98UVGtrwN3WnCr7SfCrK+/09PIDXK2ayiIZMxMJiJQ8kQuTasgO6rdoZODRGQoBBnQsSRpg04hlsi8eq5LVsclguMpsiCjq5+pLx9guSrSM+OCkS0Z42oZGKIQnHLzg3qbNdkSGrENPhlTuiXQifWe70Hx7Lw6dThFfY76XL7MzK2Az6Cgx9Fp+KKVpu4byIZb4JMYbsafXUC500c4CoZScu4RdX+kYOd1pID11k9FYC1pHRfJ4Fza61x9BgKZr77sX1+LIsXkrOICEiYnxvWzwX3ZEW4zJ/emkIrziVlpMHqeJ5QZ7qjG5TQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KUwmQ13ATngCYKvbkHwKQl0+h0mow0l+17uatU+st0E=;
 b=CaWVvQmI+wJZnjpCo5qOttrgrzB7ki5mWIjK+h96st+lBrAiUIU6mTKYIqGJz2xPZgUwKgatbzv0Lw/xUEBctE9g7++SQWBeIZ4XmkOhxYdT+U/gBGn////YGPmjBlmgg5q+Qbh6FxnLmvOrfHl/Ni60tqIuOIsnhm4PWGWzDglVyguGfP3BCTHJsjMPlOsAVNe3LSPZAw3IJtMbQ9mRItdYmgEFb+x3r2bgLwzwxiVo4U/py8OT2qkDAFGQsxY3m90QWWG92kL3OSz9qw8kxia+xP39/pz8BxYidJvF+r8L3H5CMuop5MonQV82Q8BBcXjUKizccf23H7wE77SotA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KUwmQ13ATngCYKvbkHwKQl0+h0mow0l+17uatU+st0E=;
 b=PkijOM8N6GOFvdNGY2EA8Z8zOAimC21AQfDtRJKed5RO2NDDFPqx6G5OcPFuDaHxhxyNWlkDkho2GtC4zFuRyC9rx/7B1YuZExzV2VbmPB1JGvd2JjkzbdW5GDzbMYcxNtzerEHmGihOAiXogeTg0BXGvuT8PKvJ6MI3SBBdduPtYsMwiaBK28V3rO4PlRr8AY+FLiXujOkz87fhLrXuocG5TryElNeLB4h9IQPFDjUh+YFkIAxeef/sZKjPyzqvO1fUh23qt3pOXDjtsZDdtuXENv2WeauiPoJdwCt0QLJvz9FNyfs71H0E9o0GD9sPjEp/YSRM7gkpQoxlspsXPg==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by PAWPR10MB8139.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:387::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.33; Tue, 9 May
 2023 08:33:27 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::412e:af24:fb75:da07]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::412e:af24:fb75:da07%4]) with mapi id 15.20.6363.033; Tue, 9 May 2023
 08:33:27 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, "Valek,
 Andrej" <andrej.valek@siemens.com>
Subject: RE: [yocto] [meta-security][kirkstone][PATCH v2] tpm2-tss: upgrade to
 3.2.2 to fix CVE-2023-22745
Thread-Topic: [yocto] [meta-security][kirkstone][PATCH v2] tpm2-tss: upgrade
 to 3.2.2 to fix CVE-2023-22745
Thread-Index: AQHZgbypkEsNKlVB7UOAMljyD9dqba9RkyyAgAAJW6A=
Date: Tue, 9 May 2023 08:33:27 +0000
Message-ID: 
 <AS1PR10MB5697A909F0CA07D532C2743DFD769@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <20230508145044.429707-1-peter.marko@siemens.com>
 <e3dbc417-fb92-6e48-4e4b-c42498d0be28@bootlin.com>
In-Reply-To: <e3dbc417-fb92-6e48-4e4b-c42498d0be28@bootlin.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2023-05-09T08:33:26Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=94b05e1c-124f-4545-a48f-4b0c3f0a35ae;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0
document_confidentiality: Restricted
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|PAWPR10MB8139:EE_
x-ms-office365-filtering-correlation-id: 0dc1c8cc-0100-48ce-7a90-08db50680fd3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 TEMouCYJsejuFxL4osbTopnIGEGA+wChLu2Yg+JBmAFMBacLOohJ/Bc3AiRURF2sSXPKiften2I92uJf8BWGf6mRe2Jhyl5+5aCMGFGls89wWWCidL1p0TMVMZW7p/XVQ/5hXuhZi0CykFij3/Iv/OCbhbCoxOl6P3xuEzouWvWODJej5flZMNMZRdWHcdftvf8IA+WH9M99IT392jix2cHQDM1miYIHqafZJ61DCwz6vzhwLQF8DBlSsWfgP58JAQpiktGH+kZP9DSs9Ib8nQLrqlaotP3KdYCr5Xg7KLd+IyKuzjphaNH8up+CWNk+RJ7q+kIuKEr62TtTaFtCatq+z8VLs9pt0iuTevpRrxeh6QSsmCo5yeFk+BnRPRMLkzHABbRj2Ch7Tk95TWVEP1qxFBuDCV51VAm1t8H1hhOY28IqcKAj9cLxZiW/hrpVvysK+5KnDUsUltySUhW5M9UBaGvyXLrLTHrh6T5ZQd7TYraPIcP5tgfPbeopw5Bo+rKNFMegk9K9ent4oR5b6rMy6q0zlc16O1DjmnK4n1MzcxjaKn0nFZzzO2DCU/4gpP36+ISvbfXKwuJTBBR0y7dAenbXJak7J+7BT2F/4iw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(451199021)(71200400001)(54906003)(478600001)(86362001)(38070700005)(122000001)(38100700002)(55016003)(76116006)(4326008)(66556008)(2906002)(66446008)(64756008)(6916009)(66946007)(66476007)(7696005)(966005)(33656002)(8936002)(5660300002)(15650500001)(316002)(41300700001)(52536014)(82960400001)(8676002)(107886003)(6506007)(9686003)(186003)(26005)(53546011)(55236004)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?bmxOWEhtaG0yNDNGL0QvbXE5ZDhpZUlVNDFDL3VoUEZ0dlVwSUxpTkdibk1Q?=
 =?utf-8?B?QW5BdGx1RzF2cUVvYndTM1hMc0hFQXdJSElJemdBK0N1cUtRZjFEeVBJSCs5?=
 =?utf-8?B?VjYvc042NTd4Z2o5bjhpS0Rhc1ZieDlHTmFxcUdhUU5SSDh1a0R0T0VCSXcr?=
 =?utf-8?B?ekVucDdESEc5aFR0ejExMC9rWk5CSG5xeWMvVzRvNkxva2RIemtSMzlDcHNN?=
 =?utf-8?B?bEZzYmw2SE43emJ1cEplc3dDanlJa3VKMWVGUUFjTlVtaVRHUWplNTBxNUpD?=
 =?utf-8?B?WkZGT2R1ZkhQRGMxMjQ5TGppMHNJNTl3RDEzaVdYWmd5NWFQVmNESlVpei93?=
 =?utf-8?B?SXlwMjNXK3Zid3lKZURqam1UbnBIWWcrcTZ6RDFObndoOXh5b004V1I1ejBW?=
 =?utf-8?B?cmk4ZGxyUHhmdjN4Vi9SMXRYc1VrODZvVVAwU01QcXhrVXhiNXo2eFhnL2Vy?=
 =?utf-8?B?UWNBRE5pTURteFc2S1pBRnZaaDdMa3Q5YmhIb2JXQXRmYmFjUHZCTnJHVkFk?=
 =?utf-8?B?eUkxVktxeU00OU1kZW9nOVBIQ0RuQmdkL0d5UlhyY0tDU1FVSnBidFZ5dkFx?=
 =?utf-8?B?c3BTQTF1YXVaNTNycDlTK2QyTXN6WFMybTZwcWlqODI1MG5TdWlqOEJBTTFI?=
 =?utf-8?B?bUZua0loMWtURy8zZU9EWHY0YTNGako1NjEyUVNwVjRJWHJnK05OSXZyMmF4?=
 =?utf-8?B?bTR4RU1LNzdPU3EwdlZBblhHOE94QStSeFphMTJKVG5NTmFad0lJMTNpZ3RJ?=
 =?utf-8?B?ckdGd1ZxQTQ4eG5xbGsxS2plUVpiaDdDZjk3VXpwQjZqYlhZdzR1OUtmTExV?=
 =?utf-8?B?aElGaXVkY1lkMEVCc21qZTRqb3dJdDNqckwvWVJpSUhzZzFRSm02cmUrbG5Y?=
 =?utf-8?B?cE0ya3E3NDdmTitKVnZkcldTcWxDbEtOODl3SlF2TGg1RzFKVE5tOUJlcWdm?=
 =?utf-8?B?YlFwMTdtdDllT2U2ZEUzQWt5WkhhaDlwaWJJWSs0UmtnV0xTRnorM1JzVXpM?=
 =?utf-8?B?enJ6VkpzbFExUUoxQkxWMWJwREN1UmtJRHZnSENnOElUSGxFTzc2RkJXT1JG?=
 =?utf-8?B?eEpSZ1A2c2EzMDBMbkJ2cmRMakMyUE9sSDk0ME9qTGI3NUxPVHUrODM2MDJK?=
 =?utf-8?B?aWx0WnJoRFZtTHc5VnhIL0M0RXBIQ3ZYbkM2QUd4bmNRUlgwQ0FpMS96Qm9V?=
 =?utf-8?B?b245S0RFTEJyRzV0KzAyWmEvbnNrRnlTd0tub1J1QStjRnU4ZEN3Mk16SFM1?=
 =?utf-8?B?bGZlVUoyekZtbkRqWUVhTStPRU9XVUR5dEZzT1g3azNTd0h3bTV2TEt0b2la?=
 =?utf-8?B?cWJGMnRNSzk1WXlCdmREN1BMOHJFVy90dkwvZ3lBV3RtelJjck02dDNLa3dH?=
 =?utf-8?B?Vm5jTmQwSnFvVU5ZNGJUNHBDV3lsZ0tZdW1mQzFoeUtTbUVZZUZrSXR2NmRM?=
 =?utf-8?B?L2lNVUtUNUVHN3IxS3JmSE5ncUcyUFFtcWdUd0xpb3hNTUtVdWRlNitKRC9R?=
 =?utf-8?B?cjVXOGtXVDNzdzhkYmlkY0RjbDJqQzlBb0xRcnhuY2NHbW94QmpDMkV6RHJB?=
 =?utf-8?B?RkVBeWdaMzIwZktOUDdraXc1ZlVIRTdRNDZUemhJSlN3ak1WTU14ZEZTbFY3?=
 =?utf-8?B?NVJLZ1d4d2ZTZm54WWU2TlB3WnlDNSt0K0NWMVA0VXUrUm1zSENuNlFPVVVh?=
 =?utf-8?B?MmJsdnRScUVtRWYwR2pScTBQWDZCQUkweGdlY3l6S01ydEhEUktKblVCWXc5?=
 =?utf-8?B?clplRGgyeDI1TEZkSi9kZXpNOENFTGgwQ1dFeXhHeTdvQlkxMHJ2TTBrTFVE?=
 =?utf-8?B?dUMxZ3lld1dQSTZYTFczL3YvczY2NGtrMitnekZNTnlBekdUcFZYMm9QaVRX?=
 =?utf-8?B?RGQyNHVsRE5lS3ROc0FqWElsVWIyZzJwSHRUN1ZJZGhPRURiSnh1Z3B3YWxz?=
 =?utf-8?B?c3hrajI5R0h0OVNHZUdCbzhpdzlyVFZTdmxyUlNwWFRkU05mN3hTblJkenpr?=
 =?utf-8?B?OVNPdFpjQTdqT05sbHc4SEZ3YXZjdjErZEhCYWNpYThWSkJzUkFJaUpkV1Bs?=
 =?utf-8?B?aW8rZ3d3ZTM0VFQzd0wxY05QSFNkdFZVRGlhemZ1NGJCWC9Ga3FqWFFmUUwz?=
 =?utf-8?Q?wZnxoeXsCpQxbCbfIHP3zKKKa?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dc1c8cc-0100-48ce-7a90-08db50680fd3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2023 08:33:27.4785
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hs20okR5BshQhvYjYwFlUrmvcsUVxlaXE4S2geGFtBA3D48I5ksg5We0RhhGl7Juh8f1oRl4AVR4YFNLu1ovFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR10MB8139
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 08:33:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59914

SGkgTWljaGFlbCwNCg0KVW5mb3J0dW5hdGVseSwgbXkgY29ycG9yYXRlIGVtYWlsIHNlcnZlciBk
b2VzIG5vdCBzdXBwb3J0IG1lIGluIHRoaXMuDQpJIGhhdmUgc2VudCB5b3UgYSB0ZXN0IGVtYWls
IGFmdGVyIGV4cGxpY2l0bHkgY29uZmlndXJpbmcgdGhpcyBpbiBnaXQsIGJ1dCBJIHRoaW5rIGl0
IHdvbid0IGRvIGFueXRoaW5nIGJldHRlci4NCkxhc3QgcGF0Y2ggdG8geW9jdG8gbWFpbGluZyBs
aXN0IGhhZCB0byBiZSBzZW50IGJ5IG15IGNvbGxlYWd1ZSBhcyB0aGUgc2VydmVyIGhhcyBib3Vu
Y2VkIGl0Lg0KaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS81
OTQ4OA0KTm93IGl0IHNlZW1zIHRvIGFjY2VwdHMgaXQgd2l0aCB3cm9uZyAiRnJvbToiIGZpZWxk
LCBub3Qgc3VyZSB3aGF0IGhhcyBjaGFuZ2VkIG1lYW53aGlsZS4NCg0KVmVyeSBpbnRlcmVzdGlu
ZyBpcyB0aGF0IEkgaGF2ZSBzZW50IGRvemVucyBvZiBwYXRjaGVzIHRvIG1ldGEtb2Ugb3Igb2Ut
Y29yZSB3aXRob3V0IGlzc3VlLCBqdXN0IHRoZSB5b2N0byBtYWlsaW5nIGxpc3QgaXMgYnJva2Vu
IGZvciBtZS4NCkknbSBob3BpbmcgeW91IGNhbiBhY2NlcHQgdGhlIHBhdGNoIGFsc28gbGlrZSB0
aGlzLCBvdGhlcndpc2UgSSBjYW4gYWdhaW4gYXNrIEFuZHJlaiB0byBzZW5kIGl0IGZvciBtZS4N
Cg0KU29ycnkgZm9yIHRoZSB0cm91YmxlLA0KICBQZXRlcg0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogTWljaGFlbCBPcGRlbmFja2VyIDxtaWNoYWVsLm9wZGVuYWNrZXJAYm9v
dGxpbi5jb20+IA0KU2VudDogVHVlc2RheSwgTWF5IDksIDIwMjMgOTo1Mw0KVG86IE1hcmtvLCBQ
ZXRlciAoQURWIEQgRVUgU0sgQkZTMSkgPFBldGVyLk1hcmtvQHNpZW1lbnMuY29tPg0KQ2M6IHlv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIFttZXRhLXNl
Y3VyaXR5XVtraXJrc3RvbmVdW1BBVENIIHYyXSB0cG0yLXRzczogdXBncmFkZSB0byAzLjIuMiB0
byBmaXggQ1ZFLTIwMjMtMjI3NDUNCg0KPiBUaGFua3MgZm9yIHRoZSBwYXRjaCENCj4gSG93ZXZl
ciwgd2UnZCBuZWVkIHlvdSB0byBhZGQgb25lIHRoaW5nIHRvIHlvdXIgZ2l0IGNvbmZpZ3VyYXRp
b24sIHNvIHRoYXQgeW91ciBwYXRjaGVzIGFyZSBnaXZlbiBhbiAiQXV0aG9yIiBmaWVsZCB3aGlj
aCBtYXRjaGVzIHlvdXIgIlNpZ25lZC1vZmYtYnkiIGluZm9ybWF0aW9uLiBTZWUgaHR0cHM6Ly93
d3cub3BlbmVtYmVkZGVkLm9yZy93aWtpL0hvd190b19zdWJtaXRfYV9wYXRjaF90b19PcGVuRW1i
ZWRkZWQjRml4aW5nX3lvdXJfRnJvbV9pZGVudGl0eQ0KZm9yIGRldGFpbHMuDQo+DQo+IERvbid0
IGhlc2l0YXRlIHRvIHNlbmQgYSBwYXRjaCB0ZXN0IGRpcmVjdGx5IHRvIG1lLCBpZiB5b3Ugd2lz
aC4NCj4gVGhhbmtzIGFnYWluLA0KPiBNaWNoYWVsLg0KPg0KPiAtLQ0KPiBNaWNoYWVsIE9wZGVu
YWNrZXIsIEJvb3RsaW4NCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZw0K
PiBodHRwczovL2Jvb3RsaW4uY29tDQoNCg==

