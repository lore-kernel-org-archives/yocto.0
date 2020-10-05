Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.96])
 by mx.groups.io with SMTP id smtpd.web11.28649.1601878719437721082
 for <yocto@lists.yoctoproject.org>;
 Sun, 04 Oct 2020 23:18:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@trackman.com header.s=selector1 header.b=LFBS1NwM;
 spf=pass (domain: trackman.com, ip: 40.107.21.96, mailfrom: hhj@trackman.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LNiFizLkttcABNueXhiZyTGbJQhhVFjZeJDG4YCFiP4OuUYGhgaMftZrtxhbSR/p4cdpVzBjx0d2BEfaWmI6WOxdtXa6xG462ggL4rFFsReT6Q0Qm1brdXPJ9dHtFHJR2GLJ9W6O2i4W0sb/TOsLb1VOyQcWDEQaN+WjXtEePksX8RvlbB2b+kniDccg+s7EeZ1J0tNH5b3iejcByxMzLQUNyhpAMVg9ruXnPa6y+sIL3oK9C/+SQRFrR/2heopzrjhhbaRMh0AWk0gXWCfHU7fx8OybljWbuoesxF6dUX1+psp2kO7zXWkwAdcjdWR3+9NqovrzH38tQko7RuTaTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=moVdS/14z9dCU9AodNbw1y1IE9gH1nbTFz1SmwexUCs=;
 b=IXE7c3q2thgjblr9ijkU6jNCi1MOutL32i3i38tRUEPgaNrM1DnX5f8GT1QvcFz0dEv/Lv7lqlPBFhZszmBFwVzVRQjpdpFTMWVLu89oH2930W4gDoep/E17q91ConGbqyGkzKFd1jHMYpNikNFqdRGWT0DxiwyGLrBlH86L1JhWElXQkJ2cgDZJg7+c0AHt/C7kB/nEMkrCDEVC/GsDyZSDkriJ6nZo80siYMro1ytOZyjDr/ItnuR+ev7Ms5iWVGnwUJUTdNGXWtCN31Kcaal8Dcr/bBdVew36woWJcz2Bjq6sVIIIEUZhbZu2NGsyPWi1aPmusE6kMzZDu9tbwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=trackman.com; dmarc=pass action=none header.from=trackman.com;
 dkim=pass header.d=trackman.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=trackman.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=moVdS/14z9dCU9AodNbw1y1IE9gH1nbTFz1SmwexUCs=;
 b=LFBS1NwMKMioY37mGmHRXNxVKcwnyTivjmdxozUJPyHFLErCZG1nWt28q3Tom4eguAOGBOYPojKq44hSfYOvwB+P9TJlOSKSGNyjctOgMb94d70Lk48g2cgJUbR5R7CvwEz8WIdtS7D3ytpOsVxdvYKfljwEElJORsSXNdH44lA=
Received: from AM6PR07MB6181.eurprd07.prod.outlook.com (2603:10a6:20b:3f::14)
 by AM7PR07MB6439.eurprd07.prod.outlook.com (2603:10a6:20b:13d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.13; Mon, 5 Oct
 2020 06:18:36 +0000
Received: from AM6PR07MB6181.eurprd07.prod.outlook.com
 ([fe80::97:e978:281d:3a8]) by AM6PR07MB6181.eurprd07.prod.outlook.com
 ([fe80::97:e978:281d:3a8%6]) with mapi id 15.20.3455.020; Mon, 5 Oct 2020
 06:18:36 +0000
From: hhj@trackman.com
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #sdk How to add *-dev packages to sdk installer and not to target rootfs
Thread-Topic: [yocto] #yocto #sdk How to add *-dev packages to sdk installer
 and not to target rootfs
Thread-Index: AQHWmIlhqelnQXZ0ikmTvdpGNopkRqmEka0AgAPuMDA=
Date: Mon, 5 Oct 2020 06:18:35 +0000
Message-ID: 
 <AM6PR07MB618112CCAFD0E5531F60E232D20C0@AM6PR07MB6181.eurprd07.prod.outlook.com>
References: <bCQA.1601621878946819360.YFe5@lists.yoctoproject.org>
 <CAMKF1sp5vcZKJmO474gRvwNaUbtGiSFW-nAYGR5c=ROTbJsCYQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sp5vcZKJmO474gRvwNaUbtGiSFW-nAYGR5c=ROTbJsCYQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=trackman.com;
x-originating-ip: [87.116.45.194]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2b872cb-bcce-4a96-2137-08d868f67e36
x-ms-traffictypediagnostic: AM7PR07MB6439:
x-microsoft-antispam-prvs: 
 <AM7PR07MB64397C95D36B7A1E22C603C9D20C0@AM7PR07MB6439.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vl/cQT85caaBah8rmpaS3+BzZGCKnVJK3BIoWXQjEbv3W7JCHL8e+hPHRM+347okvo05u3HZrTxs/cjDnCO2yXkcSvUOTa3y37uRPj/7+Fpd2Hy4TLLQYDg0AbYgGFxWwubHWU5haxNZ1buUITamMC1tZAVtQYgRxkGxn37GbKuezpSx81l0AC61bhXwpcGuvbgbHOqljd7/f9ArTBw64jRDTRBL/MAGkpAg+DhlPPc27E6W6836XSNs9voAFPqrvkvimnHP++G40lra9HTxfXEF6rYtP/lHx5B7nEdwHmu/BaRJMwutau6m08yVrMxvfqxs2yNC09f2J1nY3PRwL2eg9JNukAPMKaXYshs1StX/w+Dvn4Cg2iIRL6RV3J8uvQ9WVCo1ItNY/brTzG0jlw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM6PR07MB6181.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(366004)(39840400004)(136003)(346002)(2906002)(6916009)(86362001)(6506007)(53546011)(83380400001)(83080400001)(4326008)(52536014)(966005)(186003)(5660300002)(26005)(316002)(45080400002)(8676002)(478600001)(8936002)(33656002)(76116006)(55016002)(66556008)(64756008)(9686003)(71200400001)(66946007)(66446008)(66476007)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 vVi5MY4ap3RJ5GPxpLbOQdLsJRVsjRVjV45whdZ5RoU4GZEOMLzqbEC04dRBXr38CoFd9Qg+YqR14URlRVqsIPJXshUjQM1m5qAcLNJObyLtRDXyqm6NxFHmC9Y/rfmHn+Q6izwIUFP7veTsDJupDSehEvPkXlKo8rA3iS9QHmEhOcczY48ZLnWi/BSvWxSAiSAzlE9w2/Q4VzM25rKJf1F0GOe3US32WnTrwqVm07WFRy1sFBvSF2r/kz0Nm6ZFM22Qt26vieNnKmzKS4Gthi4m66IsvCxxEM3BCeqKW0Yk1EEPWAWMz4vXj4nLEycEMfwoclq6qhv9FkTr2J1+8NC33jUqJsmar+k3f4uEI1RF6tJzL6kDWRawS3r4q53WFqaPF1vJQ7g9zN4QVUIngdNkQ2GbKcEVm3P5YdbNCewf7e+vS/r/RvUlwSkhr4RQs5mNRdGvY2Z4KmlEK4FdeEGYs0j/9P5P6rfuRc1IPTUxkaIi79Cpo4wzZ2cuG2CLTDXSh793Dds2dq9QMnYGJPrrvyYptMwQs33FA0U//tkPVNL7O68qhJ0I6DTi8ot+P03EKHWNuxDa8QU2AiL7rzu64N7iojs2R1Te0syvIkcZ467CXrh9jvhTg8CVwt+AaLkXu6A0ICcwJNFi1zJasg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: trackman.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM6PR07MB6181.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2b872cb-bcce-4a96-2137-08d868f67e36
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2020 06:18:36.0196
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb272a1e-e767-4041-9363-f8736579f898
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: v94YSakhR70XNzFsMbzJAva7oseYZhgUFE0p+HISvAjKNKQUiNE1+or35GUDu5fcknrE0I7p7vcRcJ7FNCatDQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR07MB6439
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHRhcmdldCByb290ZnMgaXMgdGhlIGltYWdlIHdoaWNoICItYyBwb3B1bGF0ZV9zZGsiIGlz
IGJ1aWxkIGZyb20uIEkgaGF2ZSBhY3R1YWxseSBtb2RpZmllZCB0aGUgcG9wdWxhdGVfc2RrIHJl
Y2lwZSB0byBpbmNsdWRlIHRoZSByb290ZnMgaW4gdGhlIHNkayB0b2dldGhlciB3aXRoIHRoZSBz
eXNyb290cyBmb3IgdGFyZ2V0IGFuZCBob3N0LiBJbiB0aGlzIHdheSB0aGUgYXBwbGljYXRpb25z
IGNhbiBiZSBhZGRlZCB0byB0aGUgcm9vdGZzIHRvIGdlbmVyYXRlIHRoZSBjb21wbGV0ZSBmdyBm
b3IgdGhlIGRldmljZSAtIHdlIGRvIG5vdCB1cGRhdGUgYXBwbGljYXRpb25zIHdpdGggaW5kaXZp
ZHVhbCBwYWNrYWdlcyBidXQgYXMgYSBjb21wbGV0ZSBpbWFnZS4gT3VyIHJvb3RmcyBpcyBkZCdl
ZCB0byB0aGUgcGFydGl0aW9uIGFuZCBpcyByZWFkIG9ubHkgZm9yIG1heGltdW0gcmVsaWFiaWxp
dHkuIA0KSXQgd291bGQgYmUgbmljZSBpZiAqLWRldiBwYWNrYWdlcyBjb3VsZCBiZSBzcGVjaWZp
ZWQgdG8gaW5jbHVkZWQgaW4gdGhlIHNkayBzeXNyb290cyBvbmx5IHNpbmNlIHdlIGRvIG5vdCBu
ZWVkIHRoZW0gaW4gdGhlIHRhZ2V0IHJvb3Rmcy4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+IA0KU2VudDogRnJpZGF5LCAy
IE9jdG9iZXIgMjAyMCAxOS4yOA0KVG86IEhlbnJpayBIYXVnYWFyZCBKZW5zZW4gPGhoakB0cmFj
a21hbi5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6
IFt5b2N0b10gI3lvY3RvICNzZGsgSG93IHRvIGFkZCAqLWRldiBwYWNrYWdlcyB0byBzZGsgaW5z
dGFsbGVyIGFuZCBub3QgdG8gdGFyZ2V0IHJvb3Rmcw0KDQpPbiBUaHUsIE9jdCAxLCAyMDIwIGF0
IDExOjU4IFBNIDxoaGpAdHJhY2ttYW4uY29tPiB3cm90ZToNCj4NCj4gV2UgdXNlIHRoZSAic3Rh
bmRhcmQiIFNESyB0byBwcm92aWRlIGEgYmFzaWMgbGludXggZmlsZXN5c3RlbSBpbmNsdWRpbmcg
bGlicmFyaWVzICB0byBiZSB1c2VkIGZvciBhcHBsaWNhdGlvbiBkZXZlbG9wbWVudCAoYmFzZWQg
b24gY21ha2UpIGluIHRoZSBTREsuIFNvIHdlIG5lZWQgdGhlICotZGV2IHBhY2thZ2VzIGZvciB0
aGUgbGlicmFyaWVzIHRvIGJlIGF2YWlsYWJsZSBpbiB0aGUgdGFyZ2V0ICJzeXNyb290IiBpbiB0
aGUgU0RLIGJ1dCBub3QgaW4gdGhlIHRhcmdldCByb290ZnMuIEhvdyBjYW4gdGhpcyBiZSBjb25m
aWd1cmVkPw0KDQpzdGFuZGFyZCBTREsgY2FuIG9ubHkgYnVpbGQgYXBwbGljYXRpb25zIGFuZCBp
dCBoYXMgLWRldiBwYWNrYWdlcyBpbmNsdWRlZCBpbiBpdCBwZXIgeW91ciBpbWFnZSAoIGlmIHlv
dSBidWlsdCBTREsgd2l0aCAtY3BvcHVsYXRlX3Nkaykgd2hlcmUgZG9lcyB0YXJnZXQgcm9vdGZz
IGNvbWUgZnJvbSA/DQoNCj4gQlIncw0KPiBIZW5yaWsNCj4gDQo+DQo=
