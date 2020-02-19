Received: from EUR02-AM5-obe.outbound.protection.outlook.com (EUR02-AM5-obe.outbound.protection.outlook.com [40.107.0.93])
 by mx.groups.io with SMTP id smtpd.web09.11475.1582116642621792583
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 04:50:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@microsoft.com header.s=selector2 header.b=Lp/0kA+t;
 spf=pass (domain: microsoft.com, ip: 40.107.0.93, mailfrom: peter.morrow@microsoft.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LdnaIDI8yr4Gu4qLpdE87NmOZ/09uj6Ib37fleAJWUwSD0kXzBx+yw62+fD6nmBERHevLdP5SUEAEbLMbctNcHZGCute4hciz33lNtSDBOTe6YFFHmrBhLh0mEdIPwg5Xp9MsQeMiII6GAqmw2ijbJKX3nranVKGIg2V7v7hGT5G7SMzOWJOyeVN1cPHhAM2tPzMooyGzJFOJx2WcuO/Pt7tzhNBZ6jrhT9/TJ5pLuO4PeqpFP2bUaBXf+QvzjpgXE8RG1s4XgASNMFBAXM2LZnCSjVwjVXDL0TdkeuS764lC/3Nba8sooJahd6I2URDruv2uMdTK5wNoRSQw71kxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aH6W1EKTze30CRhOacLO5oXXQKjP7chGWZ27mPo9JtE=;
 b=Eb4tsoZ5R5zHQvzea1sJ+OuAEiVFQFtXufBLYtJNLAksIT4zWueUGWVENkoQCeMWvWxST0bEAs1DyIOON74LRGHh14U68SnFnBKfteXhY0QEeaGr22gOb7GjXFcKUBOTGTqhyzwoIj0zhGeMG1wH6kjbXYX22/YxqI6YZNjCSTEc3MQ/V5UXM8mTjRDHIraxFT3KHhxykP6F69fe1D/OjQ2oHwbTfRGqzR8SwK/mJTRCU+7H14iXRQBnYDXut0Nrg+bClqapNn3m0NnoXL9YOjyr52UFEqg791mQWNlfsVlr0tRnN3A4Z3kx3t4dUVrW9cBt9DeBeuvrR0XUwGvlEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aH6W1EKTze30CRhOacLO5oXXQKjP7chGWZ27mPo9JtE=;
 b=Lp/0kA+tuvm1F8BwUWPzXPUKBABDlRMGNmUTNkgpvYBqrO7eDLSPWZRJ9Zmd4GJV/W5JasxILU1dMc7v1fv5rKGdW0icwTLY4+yKs73jwMNdCw18tMQnWmOjorGZ+A/Pt1X0utfGp1fXPwEB9FZ8nkxuQ+WSBDNqL5dPMXeJvBY=
Received: from AM6PR83MB0229.EURPRD83.prod.outlook.com (52.135.181.148) by
 AM6PR83MB0262.EURPRD83.prod.outlook.com (52.135.182.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.2; Wed, 19 Feb 2020 12:50:39 +0000
Received: from AM6PR83MB0229.EURPRD83.prod.outlook.com
 ([fe80::21f5:43b0:d188:93e7]) by AM6PR83MB0229.EURPRD83.prod.outlook.com
 ([fe80::21f5:43b0:d188:93e7%13]) with mapi id 15.20.2772.004; Wed, 19 Feb
 2020 12:50:39 +0000
From: "Peter Morrow" <peter.morrow@microsoft.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: package QA & missing runtime dependency alerting (thud)
Thread-Topic: package QA & missing runtime dependency alerting (thud)
Thread-Index: AQHV5yMvqZ3i4i8JeUydlpgUTAYkvA==
Date: Wed, 19 Feb 2020 12:50:39 +0000
Message-ID: <657619e39266b23e1fc069691167d17692fa53ec.camel@microsoft.com>
Reply-To: Peter Morrow <Peter.Morrow@microsoft.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Peter.Morrow@microsoft.com; 
x-originating-ip: [88.215.3.59]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 7c3749da-3942-4fbc-eb42-08d7b53a529d
x-ms-traffictypediagnostic: AM6PR83MB0262:
x-microsoft-antispam-prvs: 
 <AM6PR83MB02627BC5F4FF8D12CEB902AE83100@AM6PR83MB0262.EURPRD83.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(396003)(366004)(376002)(39860400002)(136003)(346002)(189003)(199004)(3450700001)(8936002)(91956017)(6916009)(2616005)(66946007)(6512007)(66476007)(64756008)(66556008)(36756003)(76116006)(66446008)(71200400001)(6506007)(186003)(26005)(6486002)(15650500001)(4744005)(5660300002)(8676002)(316002)(966005)(81166006)(81156014)(2906002)(478600001)(86362001)(10290500003);DIR:OUT;SFP:1102;SCL:1;SRVR:AM6PR83MB0262;H:AM6PR83MB0229.EURPRD83.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dXW04ELV4SZvDB3akxmAz0l1959W8phavysqpWSp8koPtPwVFD9skCBeUYOiDXUluQx/o7S3r/R+E30cmam7c2TSL4s5mJCxOH9FkJn5RrZ1LJz9qkxBJrGrsohhlqSopfnHFU8QxU43Y0HNIgDFlsNf6WSXe7VTMWsDo+hMp1NR+MfYoWsh/tL2g3rIaXFbdVpc97MAmdAkyZIQ/zY37Q1ojmJKC3QLOaFqGjssk8ZPPvhk7Axx02jngvnKs05ps0bg/c5iz4I/K0bej4SC5ez+YYdCySHQGdP9/lnnMijPk9tB/HY0vvtG2jQZkYJFrhVfvOIz82/y962WrcxwM6QnI5iF1GdUrZYn7YgVAb+s+tyDlBG4CrM1viwzVkw8TV4B9X1ucTh9RU7IPn+enb0pp7DJC7sr2q/ge6hGoCCiJLdW0S5Lz4cPmx/0Jr2mQx2xl6zOU/3vdETv+Qpec+6k7AC0iMw20Rz3rx+TjBcP0WsaY/+hoZuaYbskKcNKdDx9TuIfgFAmXW6bbGFxiA==
x-ms-exchange-antispam-messagedata: 
 mBhd6XJppSqJ16FcgHPDG5tIrh0f0phLa//SiWbELjYzFHEY0RmSD/prr9OpXMRESVvE2+LMtsy9Iqp6MUHI9eKLUxUjZEfqrqjlXqaEnlY9b/B2N7MVf3j477vKQPqw+q877CaXxWIMd948UOEVFw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c3749da-3942-4fbc-eb42-08d7b53a529d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 12:50:39.2267
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UWTQlJ/dWrQPfvQzc8uYuSpLpII+z+cP9KX/gn9PryzoGm6Kk8+lsr06wA+wP8FjXN5ZjVpD1NXjz4d9kQwRZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR83MB0262
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <99283688E2CFE043AB6BAD1D075C71BB@EURPRD83.prod.outlook.com>
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCldlIG9jY2FzaW9uYWxseSBzZWUgb3VyIGJ1aWxkIGZhaWwgZHVlIHRvIHBhY2th
Z2UgUUEgaXNzdWVzLA0Kc3BlY2lmaWNhbGx5Og0KDQpFUlJPUjogZ2F3ay00LjIuMS1yMCBkb19w
YWNrYWdlX3FhOiBRQSBJc3N1ZToNCi91c3IvbGliL2dhd2svcHRlc3QvdGVzdC9mY2FsbF9leGl0
LmF3ayBjb250YWluZWQgaW4gcGFja2FnZSBnYXdrLXB0ZXN0IA0KcmVxdWlyZXMgL2Jpbi9hd2ss
IGJ1dCBubyBwcm92aWRlcnMgZm91bmQgaW4gUkRFUEVORFNfZ2F3ay1wdGVzdD8NCltmaWxlLXJk
ZXBzXSwgDQoNCkknbSB3b25kZXJpbmcgaG93IHlvY3RvIGhhcyBtYWRlIHRoZSBkZWNpc2lvbiB0
aGF0ICIvYmluL2F3ayIgaXMgYQ0KcnVudGltZSBkZXBlbmRlbmN5IGZvciBnYXdrLXB0ZXN0IChp
dCBpcywgc28gdGhpcyBpcyBnb29kKS4gIERvZXMNCnlvY3RvIHJlYWQgL3Vzci9saWIvZ2F3ay9w
dGVzdC90ZXN0L2ZjYWxsX2V4aXQuYXdrIGxvb2tpbmcgZm9yIGFueXRoaW5nDQp0aGF0IG1hdGNo
ZXMgb24gYSBzaGJhbmcgdGhlbiBhbGVydCB1cyB0byB0aGlzIGFzIGEgbWlzc2luZyBSREVQRU5E
Uz8NCg0KSSB0aGluayB0aGlzIGlzIHdoYXQgaXMgaGFwcGVuaW5nIGJ1dCBjYW5ub3Qgc2VlIHRo
aXMgaW4gdGhlDQpkb2N1bWVudGF0aW9uIGVycm9yLiAgU29tZXRoaW5nIHRvIGJhY2sgdGhpcyBo
dW5jaCB1cDoNCg0KaHR0cDovL2xpc3RzLm9wZW5lbWJlZGRlZC5vcmcvcGlwZXJtYWlsL29wZW5l
bWJlZGRlZC1jb3JlLzIwMTYtTm92ZW1iZXIvMTI4NDE5Lmh0bWwNCg0KSSdtIGFib3V0IHRvIHNl
bmQgcGF0Y2hlcyB1cHN0cmVhbSB0byBnYXdrIHRvIHJlbW92ZSBzb21lIG1vcmUgc2hiYW5ncw0K
ZnJvbSBhd2sgc2NyaXB0cyBhbmQgdGh1cyB3b3VsZCBsaWtlIHRvIGNoZWNrIHRoZSB5b2N0byBi
ZWhhdmlvdXINCmJlZm9yZSBJIGRvIHNvLg0KDQpUaGFua3MsDQpQZXRlci4NCg0KDQoNCg==
