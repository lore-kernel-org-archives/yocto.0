Received: from NAM10-MW2-obe.outbound.protection.outlook.com (NAM10-MW2-obe.outbound.protection.outlook.com [40.107.94.64])
 by mx.groups.io with SMTP id smtpd.web09.7089.1579499896439042596
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Jan 2020 21:58:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=h1eLbIs3;
 spf=pass (domain: windriver.com, ip: 40.107.94.64, mailfrom: andreea.volosincu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YaodV7yLZCMQvRWp+vQFzqY7GBn9tlV2vpgxaa0v21ONfjTwO8F3efHOo0VDfARowMSPn+Vjd0CdEAmxw9o2xANVPrfZ6egFB5hcdxFqviNC3iTeHrt9KjfzEvCwq+Y2mQKQLqJI2pLg6I7qhQhoqUxJU9Arv7EUnwnD4MomYy/o4OoqVd5QptYBBfsNsVO3PNfmafM5E7Pn5DKfcZiytmbDGJTPJMU+VAxqGNQh7ErvwuDvvx6hIosn2C45Od3Gnq1vh4DiI8h5/Z9AGr89UQvQppaPfTy+kS0WvsbyPjq2Q6QOs7YbzuDa0sLuVchxVNC5+D6y+L4SpT11iWKjlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46ap7ygujt2ED1sbkqz0J96DzOgjsOVeWMzTMDz0294=;
 b=m1jCqgDakBjhR0GVseJmWRnYP5cUWvc/6D0pTUvFg9ChRH7UBeJ/xkO9XpFZY6kmXfu4jqGUJqyflDb5Lpey5uk4VfIILxdTycugIWAcLiCoZrZcEuCKWDsSlbAl4Kuy1sC+ESHI+jLeWaGkrlUsyhbGbLFJghv0ywLtS9B6zXco8IFefaqBAC2i32QlMR7kauarD4isWZlU4YXgHcZ8V0wUPWlje+k1Fvkjdwx/NCm8u6vuY9lnynUrhqqzidnT7CO7bC9Hx17ADOmgZRVaDHjv4tHGwqgOZnXj78MNhKVtKwyTHP0JRvfD9iitg+Z6+9XVJ05U0s6DvrC9AQac5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=46ap7ygujt2ED1sbkqz0J96DzOgjsOVeWMzTMDz0294=;
 b=h1eLbIs3Nugc4NvGQTBasS0Drieek2tP0fxsXfXjCsSd70m+wM2ZhT/j4DqCVk2qrMnlYJzHuFAs2HEZ6cr9Z7gkCs/Ka7GVTdGju+H6E8Wx7EJpRyK/QI013X0s84os+9CIyxAm34i3tXF8Rex+Qt4QQmS6Xxlb8WFg7W3ZTCU=
Received: from BN6PR11MB1617.namprd11.prod.outlook.com (10.172.23.142) by
 BN6PR11MB1924.namprd11.prod.outlook.com (10.175.100.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Mon, 20 Jan 2020 05:58:14 +0000
Received: from BN6PR11MB1617.namprd11.prod.outlook.com
 ([fe80::e888:7f10:d52b:ee7c]) by BN6PR11MB1617.namprd11.prod.outlook.com
 ([fe80::e888:7f10:d52b:ee7c%12]) with mapi id 15.20.2644.015; Mon, 20 Jan
 2020 05:58:14 +0000
From: "Volosincu, Andreea S" <Andreea.volosincu@windriver.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Live Coding - 2020 Edition Kick-off
Thread-Topic: Live Coding - 2020 Edition Kick-off
Thread-Index: AdXPVoxUcN2aYwmFTlmAQquyb2KALA==
Date: Mon, 20 Jan 2020 05:58:13 +0000
Message-ID: 
 <BN6PR11MB16177843A3720104BD5D3D89F5320@BN6PR11MB1617.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=andreea.volosincu@windriver.com; 
x-originating-ip: [76.80.228.139]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9dce8f27-a523-4329-738f-08d79d6dbcd6
x-ms-traffictypediagnostic: BN6PR11MB1924:
x-microsoft-antispam-prvs: 
 <BN6PR11MB19245736302C7B4CA6A7BB37F5320@BN6PR11MB1924.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1148;
x-forefront-prvs: 0288CD37D9
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(136003)(376002)(39840400004)(346002)(396003)(366004)(199004)(189003)(76116006)(66946007)(52536014)(5660300002)(186003)(66446008)(66476007)(66556008)(64756008)(478600001)(33656002)(26005)(6916009)(6506007)(2906002)(316002)(8936002)(81166006)(86362001)(558084003)(71200400001)(81156014)(9686003)(7696005)(55016002)(8676002);DIR:OUT;SFP:1101;SCL:1;SRVR:BN6PR11MB1924;H:BN6PR11MB1617.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 tYRPuhkhzIKp0+kUoYLD7TLQVXlCUPhF0kejZ86WEPW+lqXV6EXTjT5Cy2KxstkAz0fg9U9r1Kz0OJADRmAoIfr4hJQ6fc/czhfxiiWrNp4Tqqnb5wNDia6f5R7VXD4pHcEG976guP79aFyJGpPgRDYSDlRtGvoc+fqxoXz/9EDXFGHylGoqpmlgLDrz8XNMqJX8EQss/wtPhjUscj+NQnwIdWPJI2pPI0cuwJsisIddeeq0tZNqPma0S4PaQzEzsvnKlJLSqNkqJtsIAIKcp+yMXzO+ghLhF4kG3JN7yhtR3ch6PPoNnosM8rUAWSyOOCYdwz6ujQQ1/IuFw7q70pQIPFTVzVlaqjyfCv33pMarwwqz2ny+R9p/dmW5vMs7XNvLDZPm6byzd5Szd87Kr7gC1+Mbuf9SZPa7JmChgpCF/UjVWg7tO4fi4hU7V2+Y
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dce8f27-a523-4329-738f-08d79d6dbcd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 05:58:13.9262
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rpjj6ZMdJFpW6DT+IXL/ave4OADaB3jLsS9ddGl1WCFfPK+7rdtoETfLVFismsWqpIE+8kA+ttTL5eD0I1l+Yei8juW0MFcN2jKfzpDjxk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1924
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR11MB16177843A3720104BD5D3D89F5320BN6PR11MB1617namp_"

--_000_BN6PR11MB16177843A3720104BD5D3D89F5320BN6PR11MB1617namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

8J+Rh1RoZSBZb2N0byBQcm9qZWN0IGxpdmUgY29kaW5nIHNlc3Npb25zIGNvbnRpbnVlLg0KV2hl
bjogTW9uZGF5LCBKYW4gMjB0aCwgNTowMCBQTSBFdXJvcGUvQmVybGluDQpXaGVyZTogWW9jdG8g
UHJvamVjdCBUd2l0Y2ggY2hhbm5lbCDigJMgdHdpdGNoLnR2L3lvY3RvX3Byb2plY3QNCldoYXQ6
IEpvc2VmIHdpbGwgc2hvdyB5b3UgaG93IHRvIGNyZWF0ZSBhbmQgY29uZmlndXJlIGNvbnRhaW5l
cnMgdXNpbmcgWVANCg0KDQo=

--_000_BN6PR11MB16177843A3720104BD5D3D89F5320BN6PR11MB1617namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRvciIgY29udGVu
dD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxlPjwhLS0NCi8q
IEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IkNhbWJyaWEg
TWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2Zv
bnQtZmFtaWx5OiJNYWxndW4gR290aGljIjsNCglwYW5vc2UtMToyIDExIDUgMyAyIDAgMCAyIDAg
NDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1
IDIgMiAyIDQgMyAyIDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseToiXEBNYWxndW4gR290
aGljIjsNCglwYW5vc2UtMToyIDExIDUgMyAyIDAgMCAyIDAgNDt9DQpAZm9udC1mYWNlDQoJe2Zv
bnQtZmFtaWx5OiJTZWdvZSBVSSBTeW1ib2wiOw0KCXBhbm9zZS0xOjIgMTEgNSAyIDQgMiA0IDIg
MiAzO30NCi8qIFN0eWxlIERlZmluaXRpb25zICovDQpwLk1zb05vcm1hbCwgbGkuTXNvTm9ybWFs
LCBkaXYuTXNvTm9ybWFsDQoJe21hcmdpbjowaW47DQoJbWFyZ2luLWJvdHRvbTouMDAwMXB0Ow0K
CWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0K
YTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29s
b3I6IzA1NjNDMTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlzaXRlZCwgc3Bh
bi5Nc29IeXBlcmxpbmtGb2xsb3dlZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6
Izk1NEY3MjsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4uRW1haWxTdHlsZTE3
DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLWNvbXBvc2U7DQoJZm9udC1mYW1pbHk6IkNhbGli
cmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXtt
c28tc3R5bGUtdHlwZTpleHBvcnQtb25seTt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4
LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30NCmRpdi5Xb3Jk
U2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBt
c28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYi
IC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBl
bGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0K
PC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0i
RU4tVVMiIGxpbms9IiMwNTYzQzEiIHZsaW5rPSIjOTU0RjcyIj4NCjxkaXYgY2xhc3M9IldvcmRT
ZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6
JnF1b3Q7U2Vnb2UgVUkgU3ltYm9sJnF1b3Q7LHNhbnMtc2VyaWYiPvCfkYc8L3NwYW4+VGhlIFlv
Y3RvIFByb2plY3QgbGl2ZSBjb2Rpbmcgc2Vzc2lvbnMgY29udGludWUuDQo8bzpwPjwvbzpwPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPldoZW46IE1vbmRheSwgSmFuIDIwdGgsIDU6MDAgUE0g
RXVyb3BlL0JlcmxpbjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+V2hlcmU6
IFlvY3RvIFByb2plY3QgVHdpdGNoIGNoYW5uZWwg4oCTIHR3aXRjaC50di95b2N0b19wcm9qZWN0
PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5XaGF0OiBKb3NlZiB3aWxsIHNo
b3cgeW91IGhvdyB0byBjcmVhdGUgYW5kIGNvbmZpZ3VyZSBjb250YWluZXJzIHVzaW5nIFlQPG86
cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Jv
ZHk+DQo8L2h0bWw+DQo=

--_000_BN6PR11MB16177843A3720104BD5D3D89F5320BN6PR11MB1617namp_--
