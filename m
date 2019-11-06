Return-Path: <anthony.bagwell@hivehome.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B51AE00DF3; Wed,  6 Nov 2019 04:38:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [104.47.10.57 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur03lp2057.outbound.protection.outlook.com [104.47.10.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32620E00D7E
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 04:37:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=RQcTf24KyrONVLiCD/au6PYS2CqSRD5oh2ARkrtu3Ela+l46b80Aztq/iY4ZWfTTne5sraOJlyGgc7f8sYZJfSr+2nangjeFF+47gU3FmClaJVq1PsaQMJlEhqANzjYH6ltFRUnfD8aMi/5Q6We9M8oQEuG76uxi9CYksHN0/mEA8nbp4bVv6ewFPGXQHo40k6jHDeS7ZgGwAdrV2RwXNUR4hyG8we4eHG9+LDHHe7FonKszSumrPtEQDQuQE2xGxnNICpEosq9AJyqgey9/vvL8GegJwa3klfTGjV/uPjJI6YXWBggNyq8R1hCmPO5JG/bRSWAVgQqdsTb9FUTOjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=nS2J9LbVzJXuUSDC4wYMFSX/ExHridqT36k4WwpqSNo=;
	b=GTHI+T0lsIGi1GwuIYCF1F1mnmy7gn13ZsLUBGCMlT27Bbkkdl6G37pa1K1+fDJVptCkPaFblmZne50CVnb0TASA6Vhe9oztN+NVUxLnRyGDg2wmEQSYjG7/Zijv852pKWraTYW8EewzkA3N0fiQf2Z1AEkAVrp6oXyQGs4kAZ5qthRAujPywwlKH1nQC23Gwo+go4Wxtpjbma+bIKu9P/pZKJ3RHY6DNjwGUwgslVhwU88ePSAiV+7143HY5C9MuwdEvluA8Wpv1MZfxTKKvtfaSAAr+tLAWT6flmDvEc8EmM5oju+Hy6oaTDlBBNEeCOVu9TlmppZLGM/fojk5HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=hivehome.com;
	dmarc=pass action=none header.from=hivehome.com; 
	dkim=pass header.d=hivehome.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=centricaplc.onmicrosoft.com; s=selector2-centricaplc-onmicrosoft-com; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=nS2J9LbVzJXuUSDC4wYMFSX/ExHridqT36k4WwpqSNo=;
	b=jHHtYonkU3CDCV/XkLG9Qj6/36Nyl7eMy4Mp9mxY4LCz8bR4FT7bFEOS9ygX4K3I1bQz66rwPtzb4nhkxXiG0pIaFhIvylObBoeKF6HNRYOjM9ugYa4zRnoGe+StIvQHyDe6oQaenfh4JA2ZGLJZ/zSBnBYVv6Na7dtt2/9Bsgk=
Received: from AM6P191MB0263.EURP191.PROD.OUTLOOK.COM (52.134.118.145) by
	AM6P191MB0375.EURP191.PROD.OUTLOOK.COM (52.134.121.18) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2408.24; Wed, 6 Nov 2019 12:37:54 +0000
Received: from AM6P191MB0263.EURP191.PROD.OUTLOOK.COM
	([fe80::8fc:460b:87da:66bd]) by AM6P191MB0263.EURP191.PROD.OUTLOOK.COM
	([fe80::8fc:460b:87da:66bd%7]) with mapi id 15.20.2430.020;
	Wed, 6 Nov 2019 12:37:54 +0000
From: "Bagwell, Anthony" <anthony.bagwell@hivehome.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-gplv2][PATCH] dosfstools: fix out of bound writes
Thread-Index: AQHVlJ8CBbgKayjRrEysZ368z/ZbKg==
Date: Wed, 6 Nov 2019 12:37:54 +0000
Message-ID: <3E5EEBA9-E930-42C9-B943-5898537D6BF6@hivehome.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=anthony.bagwell@hivehome.com; 
x-originating-ip: [52.17.69.150]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94f12746-1187-4f02-361a-08d762b62561
x-ms-traffictypediagnostic: AM6P191MB0375:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM6P191MB037517970D22C2C00992C4C89B790@AM6P191MB0375.EURP191.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(39860400002)(376002)(396003)(136003)(366004)(346002)(40134004)(199004)(189003)(81156014)(33656002)(102836004)(66066001)(99286004)(36756003)(91956017)(76116006)(66946007)(66476007)(66556008)(64756008)(66446008)(6436002)(5640700003)(6306002)(6916009)(6512007)(966005)(5024004)(14444005)(86362001)(6486002)(256004)(478600001)(316002)(8676002)(305945005)(8936002)(25786009)(7736002)(6116002)(3846002)(2351001)(2906002)(476003)(486006)(26005)(186003)(71200400001)(2501003)(71190400001)(14454004)(2616005)(6506007)(1730700003)(5660300002)(55236004)(81166006);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6P191MB0375;
	H:AM6P191MB0263.EURP191.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: hivehome.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wh7M/aQKSnTzNgxp7/GavqUGt/0PIwVsvEauoS43DV+BCJxbTAq/VbqoU0UZA3C8TxNPGFgoxjksgu+WtZhUhexMdnyzD08+Ls/UiN1aatKdOww0EB2tXkNU/L2xBUBqvR6CZA1xo3KNsRllnP0TEWUaSWhxZo8+dwuTxp9HhnSJJBSvTSp9Ubj1vnCtff9O1j+FQvqjsRTAtrE94exmLi8HIMZGO7GaOJRgXM63amdRWGDW/o5/N1airK9Jd+3O9lAjLGhe7bOPZjX+3BpzczVO7IdoownnytbAaRb53m+OP3qVPb3D1T6GUzRSjzDjDwHUXZqzWU23zH+tE6aYQ4oRiml4XfbV3b7bH3SDQK6USsvVH+yWI7B2OG/RTxvggMgpDek3MFHCsVZlTZ417MQvFkapE8q6BVcxIsXojg4egpRXtEPePgHpDCilvI5Ikd1+4waZXOMmw2eY/TbXSLKbw8P6sOoRzkTzRt47Gx4=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hivehome.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94f12746-1187-4f02-361a-08d762b62561
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 12:37:54.6312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a603898f-7de2-45ba-b67d-d35fb519b2cf
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FowIk2eA4YwUt8goYVALbEbx3KkkfiGmP+gP9s+Wgq9oP/fv3VW8bFsEDjdQqMYhuK+J31jAhWjsTrE6NICayCZgwIORgyKE1ffZRQV9e9A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6P191MB0375
Subject: [meta-gplv2][PATCH] dosfstools: fix out of bound writes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 06 Nov 2019 12:38:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <C54E647E2CA13F4184BBD1DA2167DF30@EURP191.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

Rml4IHdyaXRlIGlzc3VlcyB3aGVyZSBzcHJpbnRmIHdyaXRlcyBhY3Jvc3MgYm90aCBuYW1lIGFu
ZCBleHQgZmllbGRzDQphbmQgZHJvcHMgdGhlIGZpbmFsIG51bGwgdGVybWluYXRvciBvdXRzaWRl
IHRoZSBzdHJ1Y3QNCg0KU2lnbmVkLW9mZi1ieTogQUogQmFnd2VsbCA8YW50aG9ueS5iYWd3ZWxs
QGhpdmVob21lLmNvbT4NCi0tLQ0KIC4uLi9maXhpbmctb3V0LW9mLWJvdW5kLXdyaXRlcy5wYXRj
aCAgICAgICAgICB8IDU0ICsrKysrKysrKysrKysrKysrKysNCiAuLi4vZG9zZnN0b29scy9kb3Nm
c3Rvb2xzXzIuMTEuYmIgICAgICAgICAgICAgfCAgMSArDQogMiBmaWxlcyBjaGFuZ2VkLCA1NSBp
bnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAwNjQ0IHJlY2lwZXMtZGV2dG9vbHMvZG9zZnN0
b29scy9kb3Nmc3Rvb2xzL2ZpeGluZy1vdXQtb2YtYm91bmQtd3JpdGVzLnBhdGNoDQoNCmRpZmYg
LS1naXQgYS9yZWNpcGVzLWRldnRvb2xzL2Rvc2ZzdG9vbHMvZG9zZnN0b29scy9maXhpbmctb3V0
LW9mLWJvdW5kLXdyaXRlcy5wYXRjaCBiL3JlY2lwZXMtZGV2dG9vbHMvZG9zZnN0b29scy9kb3Nm
c3Rvb2xzL2ZpeGluZy1vdXQtb2YtYm91bmQtd3JpdGVzLnBhdGNoDQpuZXcgZmlsZSBtb2RlIDEw
MDY0NA0KaW5kZXggMDAwMDAwMC4uZjgwZjVhYg0KLS0tIC9kZXYvbnVsbA0KKysrIGIvcmVjaXBl
cy1kZXZ0b29scy9kb3Nmc3Rvb2xzL2Rvc2ZzdG9vbHMvZml4aW5nLW91dC1vZi1ib3VuZC13cml0
ZXMucGF0Y2gNCkBAIC0wLDAgKzEsNTQgQEANCitGaXggb3V0IG9mIGJvdW5kIHdyaXRlIGlzc3Vl
cyB3aGVyZSBzcHJpbnRmIHdyaXRlcyBhY3Jvc3MgYm90aA0KK25hbWUgYW5kIGV4dCBmaWVsZHMg
YW5kIGRyb3BzIHRoZSBmaW5hbCBudWxsIHRlcm1pbmF0b3Igb3V0c2lkZSB0aGUgc3RydWN0DQor
DQorVXBzdHJlYW0tU3RhdHVzOiBJbmFwcHJvcHJpYXRlIFtsaWNlbnNpbmddDQorV2UncmUgdHJh
Y2tpbmcgYW4gb2xkIHJlbGVhc2Ugb2YgZG9zZnN0b29scyBkdWUgdG8gbGljZW5zaW5nIGlzc3Vl
cy4NCisNCitkaWZmIC0tZ2l0IGEvZG9zZnNjay9jaGVjay5jIGIvZG9zZnNjay9jaGVjay5jDQor
aW5kZXggZThjMTNiYi4uOTExNzdkMyAxMDA2NDQNCistLS0gYS9kb3Nmc2NrL2NoZWNrLmMNCisr
KysgYi9kb3Nmc2NrL2NoZWNrLmMNCitAQCAtNTgsNiArNTgsMTMgQEAgc3RhdGljIERPU19GSUxF
ICpyb290Ow0KKyAgICAgfVwNCisgICB9IHdoaWxlKDApDQorDQorK3N0YXRpYyB2b2lkIGRlX3By
aW50ZihESVJfRU5UICpkZSwgY29uc3QgY2hhciAqcGF0dGVybiwgaW50IGN1cnJfbnVtKQ0KKyt7
DQorKyAgICBjaGFyIGJ1ZmZlclsxMl07DQorKyAgICBzcHJpbnRmKGJ1ZmZlciwgcGF0dGVybiwg
Y3Vycl9udW0pOw0KKysgICAgbWVtY3B5KGRlLT5uYW1lLCBidWZmZXIsIDgpOw0KKysgICAgbWVt
Y3B5KGRlLT5leHQsIGJ1ZmZlciArIDgsIDMpOw0KKyt9DQorDQorIGxvZmZfdCBhbGxvY19yb290
ZGlyX2VudHJ5KERPU19GUyAqZnMsIERJUl9FTlQgKmRlLCBjb25zdCBjaGFyICpwYXR0ZXJuKQ0K
KyB7DQorQEAgLTExMCw3ICsxMTcsOCBAQCBsb2ZmX3QgYWxsb2Nfcm9vdGRpcl9lbnRyeShET1Nf
RlMgKmZzLCBESVJfRU5UICpkZSwgY29uc3QgY2hhciAqcGF0dGVybikNCisgfQ0KKyBtZW1zZXQo
ZGUsMCxzaXplb2YoRElSX0VOVCkpOw0KKyB3aGlsZSAoMSkgew0KKy0gICAgc3ByaW50ZihkZS0+
bmFtZSxwYXR0ZXJuLGN1cnJfbnVtKTsNCisrICAgIGRlX3ByaW50ZihkZSwgcGF0dGVybiwgY3Vy
cl9udW0pOw0KKysNCisgICAgIGNsdV9udW0gPSBmcy0+cm9vdF9jbHVzdGVyOw0KKyAgICAgaSA9
IDA7DQorICAgICBvZmZzZXQyID0gY2x1c3Rlcl9zdGFydChmcyxjbHVfbnVtKTsNCitAQCAtMTUw
LDcgKzE1OCw3IEBAIGxvZmZfdCBhbGxvY19yb290ZGlyX2VudHJ5KERPU19GUyAqZnMsIERJUl9F
TlQgKmRlLCBjb25zdCBjaGFyICpwYXR0ZXJuKQ0KKyBvZmZzZXQgPSBmcy0+cm9vdF9zdGFydCtu
ZXh0X2ZyZWUqc2l6ZW9mKERJUl9FTlQpOw0KKyBtZW1zZXQoZGUsMCxzaXplb2YoRElSX0VOVCkp
Ow0KKyB3aGlsZSAoMSkgew0KKy0gICAgc3ByaW50ZihkZS0+bmFtZSxwYXR0ZXJuLGN1cnJfbnVt
KTsNCisrICAgIGRlX3ByaW50ZihkZSwgcGF0dGVybiwgY3Vycl9udW0pOw0KKyAgICAgZm9yIChz
Y2FuID0gMDsgc2NhbiA8IGZzLT5yb290X2VudHJpZXM7IHNjYW4rKykNCisgaWYgKHNjYW4gIT0g
bmV4dF9mcmVlICYmDQorICAgICAhc3RybmNtcChyb290W3NjYW5dLm5hbWUsZGUtPm5hbWUsTVNE
T1NfTkFNRSkpDQorQEAgLTMxMSw4ICszMTksOCBAQCBzdGF0aWMgdm9pZCBhdXRvX3JlbmFtZShE
T1NfRklMRSAqZmlsZSkNCisgICAgIGZpcnN0ID0gZmlsZS0+cGFyZW50ID8gZmlsZS0+cGFyZW50
LT5maXJzdCA6IHJvb3Q7DQorICAgICBudW1iZXIgPSAwOw0KKyAgICAgd2hpbGUgKDEpIHsNCist
c3ByaW50ZihmaWxlLT5kaXJfZW50Lm5hbWUsIkZTQ0slMDRkIixudW1iZXIpOw0KKy1zdHJuY3B5
KGZpbGUtPmRpcl9lbnQuZXh0LCJSRU4iLDMpOw0KKytkZV9wcmludGYoJmZpbGUtPmRpcl9lbnQs
ICJGU0NLJTA0ZFJFTiIsIG51bWJlcik7DQorKw0KKyBmb3IgKHdhbGsgPSBmaXJzdDsgd2Fsazsg
d2FsayA9IHdhbGstPm5leHQpDQorICAgICBpZiAod2FsayAhPSBmaWxlICYmICFzdHJuY21wKHdh
bGstPmRpcl9lbnQubmFtZSxmaWxlLT5kaXJfZW50Lg0KKyAgICAgICBuYW1lLE1TRE9TX05BTUUp
KSBicmVhazsNCmRpZmYgLS1naXQgYS9yZWNpcGVzLWRldnRvb2xzL2Rvc2ZzdG9vbHMvZG9zZnN0
b29sc18yLjExLmJiIGIvcmVjaXBlcy1kZXZ0b29scy9kb3Nmc3Rvb2xzL2Rvc2ZzdG9vbHNfMi4x
MS5iYg0KaW5kZXggZGQ1NDNiMS4uMzdjMjE4MSAxMDA2NDQNCi0tLSBhL3JlY2lwZXMtZGV2dG9v
bHMvZG9zZnN0b29scy9kb3Nmc3Rvb2xzXzIuMTEuYmINCisrKyBiL3JlY2lwZXMtZGV2dG9vbHMv
ZG9zZnN0b29scy9kb3Nmc3Rvb2xzXzIuMTEuYmINCkBAIC0xOSw2ICsxOSw3IEBAIFNSQ19VUkkg
PSAiaHR0cDovL3BrZ3MuZmVkb3JhcHJvamVjdC5vcmcvcmVwby9wa2dzLyR7QlBOfS8ke0JQfS5z
cmMudGFyLmd6LzQwN2Q0DQogICAgICAgICAgICBmaWxlOi8vbm9mYXQzMl9hdXRvc2VsZWN0LnBh
dGNoIFwNCiAgICAgICAgICAgIGZpbGU6Ly9maXhfcG9wdWxhdGVkX2Rvc2ZzX2NyZWF0aW9uLnBh
dGNoIFwNCiAgICAgICAgICAgIGZpbGU6Ly8wMDAxLUluY2x1ZGUtZmNudGwuaC1mb3ItZ2V0dGlu
Zy1sb2ZmX3QtZGVmaW5pdGlvbi5wYXRjaCBcDQorICAgZmlsZTovL2ZpeGluZy1vdXQtb2YtYm91
bmQtd3JpdGVzLnBhdGNoIFwNCiAiDQoNCiBTUkNfVVJJW21kNXN1bV0gPSAiNDA3ZDQwNWFkZTQx
MGY3NTk3ZDM2NGFiNWRjOGM5ZjYiDQotLQ0KMi4xNy4xDQoNCg0KDQpUaGUgaW5mb3JtYXRpb24g
Y29udGFpbmVkIGluIG9yIGF0dGFjaGVkIHRvIHRoaXMgZW1haWwgaXMgaW50ZW5kZWQgb25seSBm
b3IgdGhlIHVzZSBvZiB0aGUgaW5kaXZpZHVhbCBvciBlbnRpdHkgdG8gd2hpY2ggaXQgaXMgYWRk
cmVzc2VkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBvciBhIHBlcnNv
biByZXNwb25zaWJsZSBmb3IgZGVsaXZlcmluZyBpdCB0byB0aGUgaW50ZW5kZWQgcmVjaXBpZW50
LCB5b3UgYXJlIG5vdCBhdXRob3Jpc2VkIHRvIGFuZCBtdXN0IG5vdCBkaXNjbG9zZSwgY29weSwg
ZGlzdHJpYnV0ZSwgb3IgcmV0YWluIHRoaXMgbWVzc2FnZSBvciBhbnkgcGFydCBvZiBpdC4gSXQg
bWF5IGNvbnRhaW4gaW5mb3JtYXRpb24gd2hpY2ggaXMgY29uZmlkZW50aWFsIGFuZC9vciBjb3Zl
cmVkIGJ5IGxlZ2FsIHByb2Zlc3Npb25hbCBvciBvdGhlciBwcml2aWxlZ2UgdW5kZXIgYXBwbGlj
YWJsZSBsYXcuDQoNClRoZSB2aWV3cyBleHByZXNzZWQgaW4gdGhpcyBlbWFpbCBhcmUgbm90IG5l
Y2Vzc2FyaWx5IHRoZSB2aWV3cyBvZiBDZW50cmljYSBwbGMgb3IgaXRzIHN1YnNpZGlhcmllcywg
YW5kIHRoZSBjb21wYW55LCBpdHMgZGlyZWN0b3JzLCBvZmZpY2VycyBvciBlbXBsb3llZXMgbWFr
ZSBubyByZXByZXNlbnRhdGlvbiBvciBhY2NlcHQgYW55IGxpYWJpbGl0eSBmb3IgaXRzIGFjY3Vy
YWN5IG9yIGNvbXBsZXRlbmVzcyB1bmxlc3MgZXhwcmVzc2x5IHN0YXRlZCB0byB0aGUgY29udHJh
cnkuDQoNCkFkZGl0aW9uYWwgcmVndWxhdG9yeSBkaXNjbG9zdXJlcyBtYXkgYmUgZm91bmQgaGVy
ZTogaHR0cHM6Ly93d3cuY2VudHJpY2EuY29tL3ByaXZhY3ktY29va2llcy1hbmQtbGVnYWwtZGlz
Y2xhaW1lciNlbWFpbA0KDQpQSCBKb25lcyBpcyBhIHRyYWRpbmcgbmFtZSBvZiBCcml0aXNoIEdh
cyBTb2NpYWwgSG91c2luZyBMaW1pdGVkLiBCcml0aXNoIEdhcyBTb2NpYWwgSG91c2luZyBMaW1p
dGVkIChjb21wYW55IG5vOiAwMTAyNjAwNyksIEJyaXRpc2ggR2FzIFRyYWRpbmcgTGltaXRlZCAo
Y29tcGFueSBubzogMDMwNzg3MTEpLCBCcml0aXNoIEdhcyBTZXJ2aWNlcyBMaW1pdGVkIChjb21w
YW55IG5vOiAzMTQxMjQzKSwgQnJpdGlzaCBHYXMgSW5zdXJhbmNlIExpbWl0ZWQgKGNvbXBhbnkg
bm86IDA2NjA4MzE2KSwgQnJpdGlzaCBHYXMgTmV3IEhlYXRpbmcgTGltaXRlZCAoY29tcGFueSBu
bzogMDY3MjMyNDQpLCBCcml0aXNoIEdhcyBTZXJ2aWNlcyAoQ29tbWVyY2lhbCkgTGltaXRlZCAo
Y29tcGFueSBubzogMDczODU5ODQpIGFuZCBDZW50cmljYSBFbmVyZ3kgKFRyYWRpbmcpIExpbWl0
ZWQgKGNvbXBhbnkgbm86IDAyODc3Mzk3KSBhcmUgYWxsIHdob2xseSBvd25lZCBzdWJzaWRpYXJp
ZXMgb2YgQ2VudHJpY2EgcGxjIChjb21wYW55IG5vOiAzMDMzNjU0KS4gRWFjaCBjb21wYW55IGlz
IHJlZ2lzdGVyZWQgaW4gRW5nbGFuZCBhbmQgV2FsZXMgd2l0aCBhIHJlZ2lzdGVyZWQgb2ZmaWNl
IGF0IE1pbGxzdHJlYW0sIE1haWRlbmhlYWQgUm9hZCwgV2luZHNvciwgQmVya3NoaXJlIFNMNCA1
R0QuDQoNCkJyaXRpc2ggR2FzIEluc3VyYW5jZSBMaW1pdGVkIGlzIGF1dGhvcmlzZWQgYnkgdGhl
IFBydWRlbnRpYWwgUmVndWxhdGlvbiBBdXRob3JpdHkgYW5kIHJlZ3VsYXRlZCBieSB0aGUgRmlu
YW5jaWFsIENvbmR1Y3QgQXV0aG9yaXR5IGFuZCB0aGUgUHJ1ZGVudGlhbCBSZWd1bGF0aW9uIEF1
dGhvcml0eS4gQnJpdGlzaCBHYXMgU2VydmljZXMgTGltaXRlZCBhbmQgQ2VudHJpY2EgRW5lcmd5
IChUcmFkaW5nKSBMaW1pdGVkIGFyZSBhdXRob3Jpc2VkIGFuZCByZWd1bGF0ZWQgYnkgdGhlIEZp
bmFuY2lhbCBDb25kdWN0IEF1dGhvcml0eS4gQnJpdGlzaCBHYXMgVHJhZGluZyBMaW1pdGVkIGlz
IGFuIGFwcG9pbnRlZCByZXByZXNlbnRhdGl2ZSBvZiBCcml0aXNoIEdhcyBTZXJ2aWNlcyBMaW1p
dGVkIHdoaWNoIGlzIGF1dGhvcmlzZWQgYW5kIHJlZ3VsYXRlZCBieSB0aGUgRmluYW5jaWFsIENv
bmR1Y3QgQXV0aG9yaXR5Lg0K

