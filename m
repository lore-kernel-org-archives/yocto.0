Received: from FRA01-MR2-obe.outbound.protection.outlook.com (FRA01-MR2-obe.outbound.protection.outlook.com [40.107.9.81])
 by mx.groups.io with SMTP id smtpd.web11.3263.1575361415960474849
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 00:23:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ext.actia.fr header.s=selector1 header.b=jnGa0W79;
 spf=pass (domain: ext.actia.fr, ip: 40.107.9.81, mailfrom: jean-francois.darocha@ext.actia.fr)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=brZ+AiOzeYVV8gNZzHN3LRFuGDUsCd8Pj9D8+wk6a2xTPuUivep7LDGBltXgTkF14j8Dy5ZiRZwOtDNQKq/M5hP+QUI5tcN9GbXrNkWox0LGCsnF7GYJFJCqJV7uaGJr2G0I6YrmyB0QiN+AE8WbNaNvQVBLvX6L1nnTwGGt5vsKE+kUSPg7hiGpMgw5sY8Ww8INC6h/hUAfZ5RICWqaGOvIHC2CWyECPqV9EHXzBd/eVvTDmQpc65a2T2OgJTpoenRmaz0S/GBsURITD7uCWkFGaN+eh1DcwHaGycj7/oscKBaY3fSNUQwFjwj6ijqFjnLI/9SXYBjkZQl3AdxyCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bpwfLsUBe8a5dO/lJYbVTH7lYs5KvfT1Xa6jVKLzjSw=;
 b=aNSx3RLA55spVxWbh8VF1VHSRDzrWoQ6/ik5/2fDc1aDEMwnj3yuqlyWY5kq3nu+xCvC59IItpw0ZDqdtXS1B7ci0YdfxoIogyCwh19WERYrCQhhzZ6bG2qYMdH6sJ/p6RG/WeNajotfORDzJwBTmEZM558Zr02OuDPwn7auwQdXIQrd/UnOpbJMRYWVhyx2u64EqsafUUCcYmEUzwMurwmn6ra4Zg/9jV0ZgCadSybzS6NPcFmGaq9hSvAF4g+trk4xOC9wzw+IUjwC4+D4Mr5uiPsHa9hW8FZKPyPJvEr4/GBp1WhL00yvohCnAvnSMQWavKtGVpOIJnoFih0O0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ext.actia.fr; dmarc=pass action=none header.from=ext.actia.fr;
 dkim=pass header.d=ext.actia.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ext.actia.fr;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bpwfLsUBe8a5dO/lJYbVTH7lYs5KvfT1Xa6jVKLzjSw=;
 b=jnGa0W79FHYPDJ1rgPuXZIwLJCyjr3gOWA96Nbo5g0pL8EjwbYd/w6NKI8vosyx7AzuBf92JNeoM0rtBRBpJAxCp2/B3b2/sWZx2GTWOAAoqFxDycvYSxIPK/L2B2ELhvGy/VOvRKHXDxoK3rmnLTl0RRaCUJeu+BR025u6I0W0=
Received: from MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM (52.134.50.18) by
 MRXP264MB0664.FRAP264.PROD.OUTLOOK.COM (52.134.48.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Tue, 3 Dec 2019 08:23:33 +0000
Received: from MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d959:30a2:ea1e:af1e]) by MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d959:30a2:ea1e:af1e%6]) with mapi id 15.20.2495.014; Tue, 3 Dec 2019
 08:23:33 +0000
From: jean-francois.darocha@ext.actia.fr
To: "morne@linux.com" <morne@linux.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP version ?
Thread-Topic: [yocto] Are both TFTPd and TFTPd-HPA handled in one YP version ?
Thread-Index: AQHVqSmcVY2k2lZejkWStwYcoPB5XqenRFuAgADL1RA=
Date: Tue, 3 Dec 2019 08:23:33 +0000
Message-ID: 
 <MRXP264MB0807D883F3D9EC4C43CC23D385420@MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM>
References: <Rp01.1575302414514166788.jCsI@lists.yoctoproject.org>
 <20191202200153.GD1625@archworkstation>
In-Reply-To: <20191202200153.GD1625@archworkstation>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jean-francois.darocha@ext.actia.fr; 
x-originating-ip: [212.194.216.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4f5c28d6-427e-46c1-a3aa-08d777ca1649
x-ms-traffictypediagnostic: MRXP264MB0664:
x-microsoft-antispam-prvs: 
 <MRXP264MB06648DEE7268A681D3FA61DD85420@MRXP264MB0664.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02408926C4
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(136003)(346002)(366004)(396003)(39850400004)(376002)(189003)(199004)(9686003)(6116002)(55016002)(3846002)(305945005)(25786009)(7736002)(6436002)(229853002)(6246003)(2906002)(7696005)(99286004)(86362001)(76116006)(66476007)(85182001)(71190400001)(64756008)(66946007)(33656002)(74316002)(478600001)(71200400001)(11346002)(2501003)(76176011)(81166006)(81156014)(52536014)(256004)(26005)(66066001)(6506007)(186003)(66446008)(66556008)(446003)(8676002)(14454004)(110136005)(85202003)(316002)(5660300002)(8936002)(102836004);DIR:OUT;SFP:1101;SCL:1;SRVR:MRXP264MB0664;H:MRXP264MB0807.FRAP264.PROD.OUTLOOK.COM;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:0;
received-spf: None (protection.outlook.com: ext.actia.fr does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 IfReIQ3ltnf+8CPcSz8ottxOqn5HXhZlatNbqvSqEJGCuwiUiSvkXF2zV6vJ+HObbPSGkhpmD/btYP2YQGE58Ydbs+cUF1WVpkC2SaIMCk14wSzr1LrxBbM322DSXsqXWx2bNgFvmcH32uCWksE9aFmy2p9D1NFSucnbuXErRDkEksASriblUz0yRBANn+Ry/L6fvLWkfN2qFC7qD0DEh9gJRcgI00U7rPxxjRwGGzPLlo2zJiC0xjRxc8PaP4sRQxkFZwqYAEe/AQV98e9+6ZUeS8wV9LvxT6Xfq1yUkoOjWbrN6/l/aM7nUreWaU8KlCPFjb106lmoKtqSb+x2kAaIuOMgoSEJCeCm1Y2iBaljbm7NNd/WSPMxXMEW+86895gIABA2VoEb4cFIqhGD+yvR0D6Lly6H05YHqCIvXgy2l0ve+f1DmYOehr+npsnO
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: ext.actia.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f5c28d6-427e-46c1-a3aa-08d777ca1649
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Dec 2019 08:23:33.6568
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fOGs+Kf/0dcyqVCA6yStKBeMpqm9LYBkItMG9AYAmhkbttEaVF1UOYOJZjgrvrBoMkqX79SCe8BQ8HuIwgRqLIHWh2tT7Qx79HtPBE69e9ikvaWxY4eHdYBtzWXtVpv/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRXP264MB0664
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIE1vcm7DqSwNCg0KSSdtIGxvb2tpbmcgZm9yIGEgdHJpZ2dlciB0byBoYW5kbGUgYm90
aCB0ZnRwIGRlYW1vbnMgKHRmdHBkIGFuZCB0ZnRwLWhwYSkgYnV0IGNvdWxkIHdlIGhhdmUgYW4g
WVAgaW1hZ2UgZW1iZWRkaW5nIHRoZXNlIDIgdGZ0cCBzZXJ2ZXJzID8gWW91IHNhaWQgWWVzLiAN
CklmIGl0J3MgaGFuZGxpbmcgY291bGQgYmUgZG9uZSB0aHJvdWdoIGEgc2ltcGxlIFUtQm9vdCBj
b25maWd1cmF0aW9uIHRoZW4gaXQgYW5zd2VycyB0byBteSBxdWVzdGlvbiwgYnV0IHdoYXQgY291
bGQgdGhpcyB0cmlnZ2VyIGJlIGF0IHRoZSBydW50aW1lID8NClNvcnJ5IGZvciBteSBzaW1wbGVt
aW5kZWQgcXVlc3Rpb25zLg0KDQpCUiAvIEotRnIrDQoNCi0tLS0tTWVzc2FnZSBkJ29yaWdpbmUt
LS0tLQ0KRGXCoDogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZz4gRGUgbGEgcGFydCBkZSBNb3JuZSB2aWEgTGlzdHMuWW9jdG9wcm9qZWN0
Lk9yZw0KRW52b3nDqcKgOiBsdW5kaSAyIGTDqWNlbWJyZSAyMDE5IDIxOjAyDQrDgMKgOiB5b2N0
b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpDY8KgOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qu
b3JnDQpPYmpldMKgOiBSZTogW3lvY3RvXSBBcmUgYm90aCBURlRQZCBhbmQgVEZUUGQtSFBBIGhh
bmRsZWQgaW4gb25lIFlQIHZlcnNpb24gPw0KDQo+U29ycnksIEnigJltIGEgbmV3YmllIGluIFlQ
LiBJIHVzZSBZUCBNb3J0eSAyLjIgYW5kIGZyb20gaXQsIEnigJlkIGxpa2UgdG8gDQo+a25vdyB3
aGljaCBZUCB2ZXJzaW9uKHMpIGlzIGFibGUgdG8gaGFuZGxlIGJvdGggdGZ0cGQgYW5kIGF0ZnRw
ZCBvciAodGZ0cGQtaHBhKSA/DQoNCkFyZSB5b3UgcmVmZXJyaW5nIHRvIGxvYWRpbmcgdGhlIGtl
cm5lbCBhbmQgZHRzIGZpbGVzIGZyb20gdGZ0cCBkdXJpbmcgYm9vdHVwIGFzIHBhcnQgb2YgYSBU
RlRQICYgTkZTIHNldHVwID8NCg0KSWYgc28sIHRoYXQgaXMgc2ltcGx5IHNvbWV0aGluZyB5b3Ug
Y29uZmlndXJlIGluIFUtQm9vdCBhbmQgYW55IG9mIHRoZSBZUCB2ZXJzaW9ucyB3aWxsIHdvcmsu
DQoNCgkJLSBNb3Juw6kNCg==
