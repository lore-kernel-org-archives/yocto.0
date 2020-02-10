Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.109])
 by mx.groups.io with SMTP id smtpd.web10.19895.1581330646996785741
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 02:30:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cognexcorporation.onmicrosoft.com header.s=selector1-cognexcorporation-onmicrosoft-com header.b=JSrsrA7/;
 spf=pass (domain: cognex.com, ip: 40.107.92.109, mailfrom: oliver.westermann@cognex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ny04+zh9pWdalDaKX5LQq96mBNw5MjYhEppr4JkZ3O0G10I/3Lf6gSlgVdnvndXMMoLFFxfYFil4vdv8gPbhjPP9UMMRW227c0F5kuSp4ZvWlgjwbMw6JHaPstirgwcc7R2nlnwI8iVAJrJyXNGvUJoSR8YpBwYpm02P2FeEJQaK61+N1uZt77CWgBwltGuZV/GGBRJs8CuoliUDlhvvFGFigsy/uFYJg6tUNrnh/i1MgrqJk+/nVqTZotDA1rw/2hkAgsU1SjZ2MQf54BuQYm3KnGT2XjS9vLxWnXk1/RzY2frB+3Ez7mJ8xvwCXyNtKpJfiNosue8xl94vJlCr5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vo7vxe+h+zzgdnxFjAcimu5fZYf1vVUTU0hi9V0MIZY=;
 b=GR2zA/ldvvtexYVoF57JrwlbOrvSEZiTNn3GipwjGrDrvGdYc2kIH5SIw9GGVlyYJhAdzulUvKAQvVL9AVKo0HHjUIYtR/0mPaVgruYnPdCm9GODkvWNsgKl8CrK2CKjCJeYEYWfRGxK1u4ariqtDXQ3lYs3G6n/WtvdzV8LS8I9PcC7E4L6LmaZgKm2ZZe7c+sxiAa1SjtlqCK0jz+ZzAbIYFljy+fNlvfN0Gj9bXPvHr2AVBvLCrS5IOIuqDZKHRod9AP/lDTaAISFuU9ra05D/wgYRXyKsX/YhBRng7olbbHETVq2PGjIgVwv7EMTWyS3pqmUTQ59cbHUcVJXdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
 dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cognexcorporation.onmicrosoft.com;
 s=selector1-cognexcorporation-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vo7vxe+h+zzgdnxFjAcimu5fZYf1vVUTU0hi9V0MIZY=;
 b=JSrsrA7/nHPArNrSB8LVKKe/Z2G6tiJBL5irND7QlLKnzGQZ9VTvcyf3Ht917r703XYSsAgq5n7s7EYzLDvZfTF+5NyaeKBRhWHD6de75kp9v8P8obP3FMi4pWvb9fU1txfge21yqM7iU9N3tycEE1yGc3V4qdSwl5HQ2+LG8O4=
Received: from MN2PR06MB6573.namprd06.prod.outlook.com (20.180.25.148) by
 MN2PR06MB6685.namprd06.prod.outlook.com (20.180.25.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.24; Mon, 10 Feb 2020 10:30:44 +0000
Received: from MN2PR06MB6573.namprd06.prod.outlook.com
 ([fe80::2106:f618:fa49:1f3c]) by MN2PR06MB6573.namprd06.prod.outlook.com
 ([fe80::2106:f618:fa49:1f3c%3]) with mapi id 15.20.2707.030; Mon, 10 Feb 2020
 10:30:44 +0000
From: "Oliver Westermann" <oliver.westermann@cognex.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [EXTERNAL] Re: [yocto] Clarifying install vs deploy
Thread-Topic: [EXTERNAL]  Re: [yocto] Clarifying install vs deploy
Thread-Index: AdXf+HbFY8BRJWMuTLiugBgP5FbweAAA0byAAAAY5RA=
Date: Mon, 10 Feb 2020 10:30:44 +0000
Message-ID: 
 <MN2PR06MB6573A6545D84AC5250BCE46586190@MN2PR06MB6573.namprd06.prod.outlook.com>
References: 
 <MN2PR06MB6573BCE29DA9E3E85FE09E6086190@MN2PR06MB6573.namprd06.prod.outlook.com>
 <CAP71Wjy5+wXkndn4iXoF39QOuQvTSC_oZqjQ3OZRL-XWTQCNnQ@mail.gmail.com>
In-Reply-To: 
 <CAP71Wjy5+wXkndn4iXoF39QOuQvTSC_oZqjQ3OZRL-XWTQCNnQ@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Oliver.Westermann@cognex.com; 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 64bd1980-b0b2-4341-3dbd-08d7ae1448fa
x-ms-traffictypediagnostic: MN2PR06MB6685:
x-microsoft-antispam-prvs: 
 <MN2PR06MB6685A7ED426790E0F60D085986190@MN2PR06MB6685.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03094A4065
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(376002)(136003)(39860400002)(396003)(366004)(346002)(189003)(199004)(66476007)(9686003)(86362001)(2906002)(6916009)(55016002)(52536014)(8936002)(66446008)(478600001)(53546011)(26005)(6506007)(186003)(33656002)(71200400001)(76116006)(64756008)(8676002)(81156014)(81166006)(66946007)(316002)(66556008)(5660300002)(4326008)(7696005);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR06MB6685;H:MN2PR06MB6573.namprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: cognex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 XN1AzEoeuIEOawcFw/P1FT8bT24Cqe/Pqoo+c0K2hEdBvlSQyGrItd7e3iNBXfLb/5AamSLlfn7j2u5qNEvvePg8q41cfxbNFPYZc1Lpy60bQHutzUeT4RFtedfFShborTq4yDg9dZrcTpe7pJ6elLDpf7hZocAhPS3kNTkCZ7+1U1FVPxgCP3OvKV3IoymvsHCv6spZIg0HOsvGN4bsg/nOGA1aSZwqz+fMeDtuvJMBBsmjj89SogoQVEskfov0IhDGHI2N0EuqUAnVM+km+OnzfZXc+TIOJGOs9QrsgXQhMRdoce8i8m41OekcWPfifCYGWm1OVC8euJV2uWGM1uq5jVam88bI/qvI9bN2qQJxJAIGs6lkftKbOvKviSbMG3nbn6mZTHpea5GBq1in8yTiiLlYVLtVspfrdqLsfRlyxBeZX42h3OCOYcG4Mpjl
x-ms-exchange-antispam-messagedata: 
 nRyGCG8Dj4DigfAAcC5Cf5baX5gBoT/9shIDg6UinOqzgYMzPxlyZueD1CLdkBE74d4mH28MVjmN4C/Z9QwDPmjbCK9yNp5tr887qWRLF9Pt5Svm/aKnBJLtr3Mm9/OmOSlmmLf8UeIysDUSjf2yZA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64bd1980-b0b2-4341-3dbd-08d7ae1448fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2020 10:30:44.1938
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9+H5+f2UqEAulI1qRAZQaO3inxfJRZIr/i8Mk5MoPSO5zSorzbBcNM0EQLYaxArkcfSJUyNdmSWDg4Iu/RZF2SV5tpQ4CrG1tkwk9jSSBc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB6685
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBGZWIgMTAsIDIwMjAgYXQgMTE6MjIgQU0gTmljb2xhcyBEZWNoZXNuZSA8bmljb2xh
cy5kZWNoZXNuZUBsaW5hcm8ub3JnPiB3cm90ZToNCj4geW91IHVzZSBkb19pbnN0YWxsKCkgdG8g
aW5zdGFsbCBhbnkgY29udGVudCB0aGF0IHlvdSBuZWVkIHRvIGJlIGFkZGVkIHRvIHlvdXIgcm9v
dGZzL2ltYWdlLCBhcyB5b3Ugc2FpZC4gdGhlIGNvbnRlbnQgb2YgJEQgd2lsbCBlbmQgdXAgaW4g
YSBiaW5hcnkgcGFja2FnZSAocnBtLCBkZWIsIG9yIGlwayksIGFuZCB0aGF0IHBhY2thZ2UgbWln
aHQgZXZlbnR1YWxseSBiZSBpbnN0YWxsZWQgaW50byBhbiBpbWFnZSwgd2hpY2ggbWVhbnMgdGhh
dCB0aGUgY29udGVudCBvZiAkRCB3aWxsIGJlICdhZGRlZCcgdG8gYW4gaW1hZ2UuDQo+IA0KPiBk
b19kZXBsb3koKSBkb2VzIG5vdCBleGlzdCBieSBkZWZhdWx0LCB5b3UgbmVlZCBpbmhlcml0IGRl
cGxveSBjbGFzcy4NCj4gWW91IHVzZSBkb19kZXBsb3koKSB0byAnaW5zdGFsbCcgZmlsZXMvY29u
dGVudCBpbiAkREVQTE9ZX0RJUl9JTUFHRSwgZS5nLiB0aGUgc2FtZSBmb2xkZXIgd2hlcmUgeW91
ciBpbWFnZSBpcyBkZXBsb3llZC4gVGhlcmUgaXMgZm9yIGV4YW1wbGUgYSBkb19kZXBsb3koKSB0
YXNrIGZvciBhbiBpbWFnZSByZWNpcGUuIFdoZW4geW91IHVzZQ0KPiBkb19kZXBsb3koKSB5b3Ug
ZG8gbm90IGNyZWF0ZSBhIGJpbmFyeSBwYWNrYWdlLCBidXQgZGlyZWN0bHkgY29weSBjb250ZW50
IGluICRERVBMT1lfRElSX0lNQUdFLiBZb3Ugc2hvdWxkIHVzZSAkREVQTE9ZRElSIGlzIHlvdXIg
cmVjaXBlLCB3aGljaCBpcyBhICdsb2NhbCcgZm9sZGVyIGZvciB5b3VyIHJlY2lwZSB0byBjb3B5
IHRoZSBjb250ZW50IHlvdSB3YW50IHRvIGRlcGxveS4gT0Ugd2lsbCB0YWtlIGNhcmUgb2YgdGhl
IGNvcHkgZnJvbSAkREVQTE9ZRElSIHRvICRERVBMT1lfRElSX0lNQUdFIChpdCdzIG9wdGltaXpl
ZCB0byB3b3JrIHdpdGggc3N0YXRlLWNhY2hlKS4NCg0KVGhhbmtzLCB0aGF0IGRlc3RpbmN0aW9u
IG1ha2VzIGl0IGEgbG90IGNsZWFyZXIgYW5kIHNvdW5kcyBwcmV0dHkgY2xlYXIgdG8gbWUuIEl0
IGFsc28gZXhwbGFpbnMgd2h5IHdlIHNhdyBkb19kZXBsb3kgYSBsb3QgbGFzdCB3ZWVrIHNpbmNl
IHdlIHdlJ3JlIHdvcmtpbmcgd2l0aCBvdXIgYm9vdGxvYWRlcnMsIHdoaWNoIGdlbmVyYWxseSBu
ZWVkIHRvIGVuZCB1cCBuZXh0IHRvIHRoZSBpbWFnZSAoc2FtZSB3aXRoIGUuZy4gVS1Cb290IHRv
b2xzKS4NCg0KQmVzdCByZWdhcmRzLCBPbGxpDQo=
