Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B026ACA0EDC
	for <webhook@archiver.kernel.org>; Wed, 20 Aug 2025 15:19:41 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.51])
 by mx.groups.io with SMTP id smtpd.web10.479.1755703180319918610
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Aug 2025 08:19:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=AOo1i82M;
 spf=pass (domain: axis.com, ip: 52.101.69.51, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W1B+yE/TANUMfLAV8m3xO14bJHOTQDyRKDIrv6zAC6g6mbk+PuRKPLdxkogfg0hvfJINSJfDQI3t7XVOLPdjNvElgFeu0GxAwDWwUpeH9amILM9dxP+TUMocpr4k8eKne6A2qVvbud3EZkQtTPEUJS3orOD9USMW4IpGzAhQbxxQWiBTMGNKc7oxbFsav57ZalfTQwx4ShYRWZocDUUJIXQUyNYl3MIDv4XbgjxkgKaxd/yHwjb1F4OUb6EZyE/irUxJG7Xp1tB3oNqJmhzRC51ioE9u90qsy7636J1Q6OmDHXL1ZDc4WohyrdBrXr3uJliNlZtTF46N0g6nQgqsuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pI3UFGcshJQFHrU8yvUayKxA2m5SrFRYV3NowIZOuVo=;
 b=fxsNanGa0QqDaxC+wU8C29lxLV1Q0qLxszQ+e/s5bvpDFvz3NHoN3hwqMXjJ/v9CYKXXHBFLD9Gr3Bhcuz9RZfueMR0GgU/pAg9JIj2L2NVWfv4DH7KCygA+KzRBdpdQr+L9o89yADqNohUP71OneNFyn8MPRdd+2tCHxP6ca5QTge+XRWgJJXRDndAmpHZEh3B/pqGGq82nI0/Q+D3vfKLQ4UM8NU166gWEmNP8NiewyTCIeMNiIb/4EW4iBJ/qGS5WK9GXrBjQGbotUpHoldSX20G86ZsLD0ZUqeyIzjCqGgrZgin5t1BQyHLG/8gEI7M0XkieWTOrHZ/8dHApDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pI3UFGcshJQFHrU8yvUayKxA2m5SrFRYV3NowIZOuVo=;
 b=AOo1i82M45UvwW7nAJss9Ov0EXpSOIKN0D+SejnYEK6e8iWVLMePK/ryT9qHxns2B88HnMdeq6u8KsHXyKCkARlwNA6P4aXRgti3L6ay7wzJmMPaC3Cx9CWHfkcNMOT/08kTL65tV0W8npdGSrSVREXbsQAuGkmNw7i0MF81MHs=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by DB9PR02MB9945.eurprd02.prod.outlook.com (2603:10a6:10:454::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Wed, 20 Aug
 2025 15:19:37 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::1bee:3174:a078:5af9]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::1bee:3174:a078:5af9%3]) with mapi id 15.20.9052.013; Wed, 20 Aug 2025
 15:19:37 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"mark.hatle@kernel.crashing.org" <mark.hatle@kernel.crashing.org>,
	"alex.kanavin@gmail.com" <alex.kanavin@gmail.com>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: RE: [yocto] defining standard build targets in layer metadata
Thread-Topic: [yocto] defining standard build targets in layer metadata
Thread-Index: AQHcEdUHYAw5BqwbtUq9msyyIZCZGLRrpLkw
Date: Wed, 20 Aug 2025 15:19:37 +0000
Message-ID: 
 <DB5PR02MB102134F89E7CE4300DDE06369EF33A@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: 
 <CANNYZj8mvVaL1+VFCgShCxLyPHEEuwRZm-jo4z4o0R+yqYfM=g@mail.gmail.com>
 <28bea56e-968d-476a-8c92-ee38689ac41e@kernel.crashing.org>
In-Reply-To: <28bea56e-968d-476a-8c92-ee38689ac41e@kernel.crashing.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|DB9PR02MB9945:EE_
x-ms-office365-filtering-correlation-id: 00073e96-9f87-4c47-972d-08dddffcf9b3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|376014|366016|7053199007|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?NXpzejh3MlNzVDk5SWpvbHNIOUZlQVg2cG9hNGpJRFlmbnZleG9vdUZsbnZ2?=
 =?utf-8?B?cW1lMXBZMzI0NkMvSjRWSklva0xRdDB6K0xVdlovYWpOTlUxM3dlQmxiZ0xM?=
 =?utf-8?B?WWowZGd2VHk2Y2IxWmtwL1dZUFFTdC9CSjgvdSt1cmhaVTFCY0xTYkxyY3BO?=
 =?utf-8?B?dno5bDZJZWh0U0hhQTd1ckszWCtvVVIxM1dJSVJTQ0ozSzM1RE9nNy9kNkVQ?=
 =?utf-8?B?N1NWWFVVakpsRldUVFgvcUZ4UUNRZXVTUWowbXFlUENVbzJubUN1SzlrRFRm?=
 =?utf-8?B?d2EvNDMzN3UzdVc2d25YdjM4OTJaVnFya3ZEc3BBazgvbHBMNHo0ZThkQy9m?=
 =?utf-8?B?WC80Vlc3anlJMGFHV0ZFL21NNlhhLzljRlcwLzJDdnpNZjhQd2RESk9KRm5i?=
 =?utf-8?B?MUwrUks3d0o5SUozeENuZTNabVVPSHpWT3gxM1pIUGhJblNvTEJDWUZTTVhH?=
 =?utf-8?B?QjY4TWk4OHVDcGt3SUw3WVphR0VORVBDUm1iNXM2RmVDYTYxWWdLQld1MVZB?=
 =?utf-8?B?aStLU01HODdremY3V3pWTCtCQ1U0S0hxSmpuT1Vuc21Ucm54MkdlWFlDZFVz?=
 =?utf-8?B?R0gvSmxKc0gwRVdZbDFqTHVnL2ZMc2N2Ujk2THB0RWZDNDg0UW9VZ3haM2FO?=
 =?utf-8?B?N2NzaThvMC9Dd21NbVhFQUw5V0pTVVpzTUp1K1QrdjJaYjRpbGJTR3Urdnc5?=
 =?utf-8?B?aDVlYW9OeTkxMWNsd1JLUDZ4MXBiRERzN214MCtKZVRsTTRoZlVSd085MXFR?=
 =?utf-8?B?TEZVeWdvMzJuSWxhV3dVbk9kTVgvQmZ1MjJkMnNRK3BCRjM4RHJTUHdRMDI1?=
 =?utf-8?B?TTg0cWtSSkpPSGpsQ1dBVnQvcm9LZlQ1ZHlOa0M4RmVZaE5ESkdMaFphYkQy?=
 =?utf-8?B?ZExkSW5tWGFwdzBRMTA1enN3dng2RHNMeEk1cDhGZzAyUmk4KzFlRGZPMExr?=
 =?utf-8?B?TFhaRWVGNk1VaGRydnV3dVpGYnk3eE1XRTEyZnZqZVBJZGcwVkc4YVRzQnpZ?=
 =?utf-8?B?aXd3RHFxUHlZY3UzRmw2YTkrTUJtL1d0Rnh4a2dWY0lpaWlJQmxCVlgwWkpn?=
 =?utf-8?B?bmZTTkFOL3VHMGtESzRzMytRR0o5WmtzeEtjdGZxUWl5ZlhFeHZRdkN2eklT?=
 =?utf-8?B?M1pJSEQ2QjZ6dGJETDF1T3dTL2E1MHp6SFh2aWk0YXNUenNJVHdjcnAxQXRT?=
 =?utf-8?B?NURtbmpDRzBjSGZId3VlWkVSVHFNU1IyMzU1aHEybWZrVWdFQkhBTDcxZGI4?=
 =?utf-8?B?RUlaZnJOZHFTSDZpdk14QWlsSnJjclMrU2pjTVptZTluMXNZQ2pxLzAxT3Iy?=
 =?utf-8?B?OVc4Sm5LSVJaR3JXMHlyZ2RyNk43Q0pCUmJ1MTU4TlBEaGNoTW9URjFCZmVY?=
 =?utf-8?B?Q3RSVkhtaXFDVEljZUdZQmZtQVkwMjlwZnV2M0l0b1pLd1V2VWFuRnl5akNz?=
 =?utf-8?B?MTJiZE52MkdQRWJPY0JhNDJTMDQ4MEpPeUpidTFweVh0czlZWGJKSE5aUTBG?=
 =?utf-8?B?amd3NERUcXFDZFhHaTJxTStBYVlWMVlSZ0dyNm5hc0NDcEJhSEQ5ZjhieTZ5?=
 =?utf-8?B?K1A2bVRuMTYyMUtrdXpDZ2Via2pmejc2emVjcGtJbFJpdEVUN3lZZlJjT2ZY?=
 =?utf-8?B?TzMzaVdIZFh4KzBCSDlMVVFrZWNhdGtQUEhSd1J0UGh4b0J1SU9hYTBQdStq?=
 =?utf-8?B?TWVqOURiMjVnZjJpMFdJWEhBZGg1Q0FqZ2Y4UjRPbU9ma1ZtTXBoNXRWQnE0?=
 =?utf-8?B?c0ltUzI0U0F1WjhHajVyY0h0RlRuQ2xmUmpOcmJVeXF2dkNGNWhmSkZ1S3JW?=
 =?utf-8?B?eTM2a1FBY0RVT3BVcmxjb1hGMnY2Sk51S3lTdGp0aWVONFdWWmdKSlNWV1lL?=
 =?utf-8?B?YmJvV2FmYjdWRVFtRll3cFVzcGlreUkyM1JjUGFrU05HbURmajIvMnhmRzZB?=
 =?utf-8?B?dVNReWs2bG9DNldKa2RBdFQ5SEx2L205Qml0M21rcHVZeHN5ZCt4cldvaGpM?=
 =?utf-8?B?RUhsRHdpTVlnPT0=?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cXdoVzZ6VE1kQnhaNjk0QXJ1NWJuZEwwaUVvZjYrbWhGTlVwMDc4U3E0UlhG?=
 =?utf-8?B?b1ZnMm5ZNDlUR2pSQTlQUDJSNW1FREJlbjE4UmdHU2FibWpqMHZ5cmtMdTla?=
 =?utf-8?B?ajNZNVRjclFndGpBNlRQaStRalZKTlFPN2JZTnFidVZmK1piSTFGS0diWDgr?=
 =?utf-8?B?L0xycldJY05qZDRLaTFMdTcyOU13YjZOOTNyUDJPdklpRERxdUJFZjFJMURH?=
 =?utf-8?B?RVpKVHVoblVEU0hEVmlGSjVFTldKbUZmWWp3VGdUZ1EzZHc3akhISm1DQlI5?=
 =?utf-8?B?Y0tjN1NKVlVMK0lrUCt5WkxQM3pUTHFWeFcwOVY0Q1BoUmJkeUNrOFEweUpS?=
 =?utf-8?B?aGtGb0F0Y29rK3Q2VEVjeUQ3R0ZEeXNzb3JObTBKNEJnaHdsa3l4R0lDSFB4?=
 =?utf-8?B?eEhxSlZoS1pPY2hJMWNtZGdMUFAyNjhBYWNSWE1aU0tHOXFKR1psOXhpeXdu?=
 =?utf-8?B?bmNkY1laRFIwdzlTVWE4dmhVMXR6Tzh6M01qaHcyOEx4bU9RM0FYUXovR2Qr?=
 =?utf-8?B?a0dYeUNtcjNERThOVnBQMDdFNWFuZzNVaDNHNlZGUTNLYjVkTWlVQS8vdDJr?=
 =?utf-8?B?V1M2NGVUS215cTFGL0wvU25qVkdla3ZYZk1hZ0pKc2lVNjBxSGxHN2M3QWRm?=
 =?utf-8?B?Q0RVOTVQdGJmM2JVU3ZEb0NLdGMrb1ZMZnNnN3QzdGdUU203MUZkMWZZMEI1?=
 =?utf-8?B?SFMwQVRFZ1dFcGQvWTFrQXh1VkdnTXVRbThQbWt2NkM5aGdqZEJxWFQreUpT?=
 =?utf-8?B?MUZkcDk5VFFWcEdqUGFROXNZY1lzeXRFZDhacERHU0xyYjZPWUNDdVc4b0ZP?=
 =?utf-8?B?bG5YQ2lmSjhKc09xZGkzdkd6a2lOdzJ0dHhOTXRWWkZpL1FkemFPeEVTY0Nw?=
 =?utf-8?B?a3o5dlJta2FUWm5lUTNHRVFEVzZjcG80a1l6UHZVMmJSMVFDZFhIRjZQQU5n?=
 =?utf-8?B?U3RpcDVPYU0vRmxrdERTaExMb1dDWUlZaE4xVDZXM1lHNTNCaDdGZHo3RmJ1?=
 =?utf-8?B?c3FuM3hvM0FEWkZSekNUL3IrSXg5b3czSVlCL1UzL3hwZUxDdEczV2tvVldU?=
 =?utf-8?B?S09SZnFyMkhsZktJTWxlWnFSVk9SNytUOXk2VXBiS2xkbUdkMjhDck84ZnEx?=
 =?utf-8?B?WnNCcjN1OTZFVWQ2ZTVlOG4vTlFodTRCbFR5Y2orUGdFckxIU2laSWJMSXNr?=
 =?utf-8?B?ZE9taGxIQjZOdXBzc0ZLWE5TbVJmVUZoRXFLTWZXOHNmeWhwZjkxbXZjQnQx?=
 =?utf-8?B?amdkY2lqdEhkRUVHbS9PVnF1cEQwMjJWWTBTc1Z5SjdkUjlUVW1ZMXIwempK?=
 =?utf-8?B?STVTQWFrbDVtRkVTemhwS2s3WVI3VE1wUjkvczl4NVIwRi9uREVrUE1vWjVn?=
 =?utf-8?B?V1d4Y2YvbUZwQnl5TXcwc1VvaTB2dE9qd21vMFJkeWJxc0ltYUdsUTF4SGN4?=
 =?utf-8?B?bHlqeU5GbExvRkFPUDR5OWMvUFRKTjJ5QVo1MHoyc1krUVllcFExTjlNYmt2?=
 =?utf-8?B?dEt2LythZ1RrenM2NW05NTBhNkdmc1M0ZnkzVytYSmxqYXNmc2ZlNmwzRFFO?=
 =?utf-8?B?Sys1NnhLeDVybXlWcGZiVEQ1WWk2WGsyZnBxY3FSVGtrckVNVjdoRVorMjZH?=
 =?utf-8?B?VE1naC9ZN0FweVFaeHpncU9IV0pUTEZJOUo0RkJ3dC9LRDhvY3JwWjduWklj?=
 =?utf-8?B?emdMbWJNdHlnRFBBVm1qQzRybWwwdS9lb3hLTkk4U2MxbllTRjlra2xNdWZM?=
 =?utf-8?B?QWRmTzVWa0JsRm5jMStTUUx2S0FMMGFTcUlWc05lWFhRMkdGVWhDcU1HWVhZ?=
 =?utf-8?B?V3RlWCtJMDh3dTZOcGxoeElIWVJ2Y253RDVTbWZGdndBQlBZWnIvSERBMi8z?=
 =?utf-8?B?Y3UxVnM4eWtkaVdEL3lWdGxIMkMrZ2Q5U3dOU3F5N0s2czJ5S1hBRWJqK2tN?=
 =?utf-8?B?Z2NvTlcyd0pIbzBZQ1Q0Zk1ub0pwdUlKczBLanR0bnVPdkpBOE11c2pOUUxH?=
 =?utf-8?B?bVNkQnp2RllGVkNyUFhFRjZSTk55K1pSNm1EaVBJaTNPVDA2NktLNW1MY2F3?=
 =?utf-8?B?S2xkWnMvdGxVTm9IZFFyMVEzZUoydmk1eC9sUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00073e96-9f87-4c47-972d-08dddffcf9b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2025 15:19:37.0475
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PeDR/IgSKW+eSAbLje4gzVOXLBZ2yDXiv7WhFjBshNTVGdawZIqO2BdE/cEONPhq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB9945
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Aug 2025 15:19:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65778

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYgT2YgTWFy
ayBIYXRsZQ0KPiBTZW50OiBkZW4gMjAgYXVndXN0aSAyMDI1IDE1OjE5DQo+IFRvOiB5b2N0b0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnOyBhbGV4LmthbmF2aW5AZ21haWwuY29tOyBvcGVuZW1iZWRk
ZWQtYXJjaGl0ZWN0dXJlIDxvcGVuZW1iZWRkZWQtYXJjaGl0ZWN0dXJlQGxpc3RzLm9wZW5lbWJl
ZGRlZC5vcmc+DQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGRlZmluaW5nIHN0YW5kYXJkIGJ1aWxk
IHRhcmdldHMgaW4gbGF5ZXIgbWV0YWRhdGENCj4gDQo+IE9uIDgvMjAvMjUgNDo0MiBBTSwgQWxl
eGFuZGVyIEthbmF2aW4gdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+ID4gSGVs
bG8gYWxsLA0KPiA+DQo+ID4gd29ya2luZyBvbiBiaXRiYWtlLXNldHVwIG1hZGUgbWUgY29uc2lk
ZXIgdGhhdCBhIHRydWUgZW5kLXRvLWVuZA0KPiA+IGNvbmZpZ3VyYXRpb24gdG9vbCBzaG91bGQg
YWxzbyBrbm93IHdoYXQgdG8gYnVpbGQsIG5vdCBvbmx5IHdoYXQgdG8NCj4gPiBzZXQgdXAuDQo+
ID4NCj4gPiBFYXJsaWVyIGJpdGJha2Utc2V0dXAgcHJvdG90eXBlcyBhbGxvd2VkIGRlZmluaW5n
ICJvZS10YXJnZXRzIjpbLi4uXQ0KPiA+IGluIGl0cyBjb25maWd1cmF0aW9uIGZpbGVzLCBidXQg
SSBsYXRlciBvbiByZWFsaXplZCB0aGlzIGRvZXNuJ3Qgc2NhbGUNCj4gPiBhbmQgaXNuJ3QgZmxl
eGlibGUgZW5vdWdoLCBhbmQgaXNuJ3QgaW4gdGhlIHJpZ2h0IHBsYWNlIHRvIGJlZ2luIHdpdGgu
DQo+ID4gU28gSSB0b29rIGl0IG91dCBpbiB0aGUgbGF0ZXN0IHBhdGNoc2V0Lg0KPiA+DQo+ID4g
U28gaGVyZSdzIGEgcXVpY2ssIG5vdC13ZWxsLXRob3VnaHQtb3V0IGlkZWE6DQo+ID4NCj4gPiBC
Ql9UQVJHRVRTID0gImJ1aWxkOidjb3JlLWltYWdlLW1pbmltYWwnIHRlc3Q6Jy1jIHRlc3RtYWdl
IGNvcmUtaW1hZ2UtbWluaW1hbCcgIg0KPiA+DQo+ID4gZGVmaW5lZCBzb21ld2hlcmUgaW4gYSBs
YXllciAoZS5nLiBjb25mL2Rpc3Ryby9wb2t5LmNvbmYgb3IgaW4gYSBmcmFnbWVudCkuDQo+ID4N
Cj4gPiBBbmQgdGhlbiBvbmUgd291bGQgYmUgYWJsZSB0byBydW4NCj4gPg0KPiA+IGJpdGJha2Ug
YnVpbGQNCj4gPiBiaXRiYWtlIHRlc3QNCj4gPiBiaXRiYWtlIGZsYXNoDQo+ID4gYml0YmFrZSBk
ZXBsb3kNCj4gPiBldGMuDQo+ID4NCj4gPiB3aGljaCB3b3VsZCBzdGFuZGFyZGl6ZSBub3Qgb25s
eSBzZXR0aW5nIHVwIGEgYnVpbGQgYnV0IGFsc28gcnVubmluZw0KPiA+IGl0LiBUaGUgcGFydGlj
dWxhciBzZXQgb2YgZ2VuZXJpYyB0YXJnZXQgbmFtZXMgYW5kIHRoZWlyIHZhbHVlcyBjb3VsZA0K
PiA+IGJlIGRlZmluZWQgZGlmZmVyZW50bHksIGJ1dCB0aGUgYmFzaWMgaWRlYSB3b3VsZCBiZSBz
aW1pbGFyLg0KPiA+DQo+ID4gVGhvdWdodHM/DQo+IA0KPiBJbiBteSBleHBlcmllbmNlIHRoaXMg
dGVhY2hlcyBhbiBpbi1leHBlcmllbmNlZCB1c2VyIHRoYXQgdGhlcmUgaXMgb25seSBvbmUNCj4g
dGFyZ2V0IChidWlsZCksIGFuZCBpZiB0aGV5IHdhbnQgdG8gY3VzdG9taXplLCB0aGV5IGVkaXQg
dGhlaXIgbG9jYWwuY29uZiB3aXRoDQo+IElNQUdFX0lOU1RBTEw6YXBwZW5kLCBvciBhZGQgYmJh
cHBlbmRzIHRvIHRoZSBvbmUgdGFyZ2V0Lg0KPiANCj4gVGhpcyBpcyB1bmZvcnR1bmF0ZWx5IHJl
YWxseSBkYW5nZXJvdXMgYW5kIGVhc3kgZm9yIHBlb3BsZSB0byBzdGVwIGludG8uIEl0J3MgYQ0K
PiBiaWcgcmVhc29uIHdoeSB3ZSByZWNlbnRseSBkZXByZWNhdGVkIG91ciB3cmFwcGVycyBhbmQg
d2UncmUgcHVzaGluZyBwZW9wbGUNCj4gKGludGVybmFsbHkgYW5kIGV4dGVybmFsbHkpIHRvIGRl
ZmluZSB0aGVpciBvd24gaW1hZ2UgcmVjaXBlcyBmb3Igd2hhdCB0aGV5J3JlDQo+IHRyeWluZyB0
byBkbywgaW5zdGVhZCBvZiBjb250aW51b3VzbHkgaGFja2luZyBvbiB3aGF0ZXZlciB0aGUgZGVm
YXVsdCBmb3IgdGhlDQo+IHdyYXBwZXJzIChjb25maWd1cmF0aW9uKSB3YXMuDQo+IA0KPiBJIGRv
IHVuZGVyc3RhbmQgdGhlIHV0aWxpdHkgb2YgdGhpcywgYnV0IGluIHByYWN0aWNlIGl0J3MganVz
dCBiZWVuIGJhZCBvdmVyYWxsLg0KPiAgIEl0IHdvdWxkIGJlIGJldHRlciwgSU1ITywgdG8gYWxs
b3cgYSBsYXllciBvciBjb25maWd1cmF0aW9uIG9yIHdoYXRldmVyIHRvIHNheQ0KPiAid2Ugc3Vn
Z2VzdCB5b3UgdXNlIG9uZSBvZiB0aGUgZm9sbG93aW5nIHByZS13cml0dGVuIHRhcmdldHMiIGFu
ZCB0aGVuIHByb3ZpZGUNCj4gdGhlIHVzZXIgYSBsaXN0IG9mIHN1Z2dlc3RlZCB0YXJnZXRzLCBi
dXQgZm9yY2UgdGhlIHVzZXIgdG8gaXNzdWUNCj4gDQo+IGJpdGJha2UgPHRhcmdldD4NCj4gDQo+
IA0KPiBJJ3ZlIGFsd2F5cyB3b25kZXJlZCBpZiB0aGVyZSB3YXMgYSB3YXkgdG8gZG8gYSBtb3Jl
ICdkeW5hbWljJyBjb25mLW5vdGVzIGxpa2UNCj4gZmlsZS4gIFNvIHdoZW4gc29tZW9uZSBydW5z
IHRoZSBlcXVpdmFsZW50IG9mIG9lLWluaXQtYnVpbGQtZW52LCBpdCBjYW4gZ2l2ZQ0KPiB0aGVt
IG5vdGVzIHRoYXQgd2VyZSBwcm92aWRlZCBieSB0aGUgbGF5ZXJzIHRoYXQgYXJlIHBhcnQgb2Yg
dGhlaXIgcHJvamVjdC4NCj4gRXZlcnl0aGluZyBmcm9tIG1hY2hpbmVzIHRvIGltYWdlcyB0byBj
b25maWd1cmF0aW9ucyB0aGV5IG1pZ2h0IGNhcmUgYWJvdXQuDQo+IChPYnZpb3VzbHkgd2UgZG9u
J3Qgd2FudCB0byB3cml0ZSBhIGJvb2sgb2YgY29uZmlndXJhdGlvbiBoZXJlLCBidXQgZXNwZWNp
YWxseQ0KPiBpbiBkaXN0cmlidXRpb24gbGF5ZXJzLCBJJ3ZlIGRlZmluaXRlbHkgd2FudGVkIHRv
IGdpdmUgdGhlIHVzZXIgc29tZSBndWlkYW5jZS4pDQoNClRoZSB3YXkgd2UndmUgc29sdmVkIHRo
aXMgaW4gb3VyIGVudmlyb25tZW50IGlzIHRoYXQgd2UgaGF2ZSBhIHNtYWxsIHdyYXBwZXIgDQph
cm91bmQgb2UtaW5pdC1idWlsZC1lbnYgd2hpY2ggY3JlYXRlcyBhIHRlbXBsYXRlY29uZiBkaXJl
Y3RvcnkgZHluYW1pY2FsbHkgDQpiYXNlZCBvbiB0aGUgbGF5ZXJzIHRoYXQgYXJlIHBhcnQgb2Yg
dGhlIGJ1aWxkLiBGb3IgdGhlIGxvY2FsLmNvbmYuc2FtcGxlIGFuZCANCmNvbmYtbm90ZXMudHh0
IGZpbGVzIGl0IGdvZXMgdGhvdWdoIHRoZSBsYXllcnMgYW5kIGxvb2tzIGZvciBjb3JyZXNwb25k
aW5nIA0KZmlsZXMgc3VmZml4ZWQgd2l0aCAuWFggd2hlcmUgWFggaXMgYSBudW1iZXIgYmV0d2Vl
biAwMCBhbmQgOTkgKGl0IGFzc3VtZXMgNTAgDQpmb3IgYW55IGZpbGUgdGhhdCBoYXMgbm8gc3Vm
Zml4LCBpLmUuLCB0aGUgZmlsZXMgZnJvbSBwb2t5KS4gVGhlbiBpdCANCmNvbmNhdGVuYXRlcyB0
aGVtIG9yZGVyZWQgYnkgdGhlIHN1ZmZpeC4gDQoNCj4gDQo+IFRoZSBXaW5kIFJpdmVyIGNvbmZp
Z3VyYXRpb24gbWVjaGFuaXNtIGhhZCBhIHdheSB0byBpbmplY3QgaW5mbyBhbmQgd2FybmluZ3Mg
YXMNCj4gcGFydCBvZiB0aGUgZ2VuZXJhdGVkIGNvbmZpZ3VyYXRpb24gZm9yIHRoaXMgcmVhc29u
Lg0KPiANCj4gLS1NYXJrDQo+IA0KPiA+IEFsZXgNCg0KLy9QZXRlcg0KDQo=

