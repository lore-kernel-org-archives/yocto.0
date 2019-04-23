Return-Path: <erik.hoogeveen@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17EADE004D8; Wed, 24 Apr 2019 05:20:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.69.107 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.hoogeveen[at]outlook.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 50345 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Apr 2019 05:19:40 PDT
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092069107.outbound.protection.outlook.com [40.92.69.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5054E00754
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 05:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=YsMi7PJTVJ9LJ3BnRoa23YZXh8crHuD4P7YPM0hxazo=;
	b=sodwHi72/Iovpm8CClUBpmUMRQJAmEWmenRTOl5VOUo2bKMxAfIUD7DYOh3ohXnRMb9iVfth61DJoA1L0jLKY+f6Ni7h4hSQssr07P7KY+oyR0UFxDgbsx8qnkIfZGA79FFtiQwvhcX1LK/pOui3m8EC+r3snNbz1wplX7UKpZO4I9M3viePznJTz1KpBzkrWYga6frqfav1EMXAZICEGH45X+lsi8jIRhr7SYzlPkwSXQVlRCqkrXd0lTdRAuyRBEhoDHzlS65Bds/nWF/PZmJ+3DNa/OTNHDwPz5UOdJKgJ4A4bn7CyrjH8Sik5ag49/Oa9nbkpDc93AIupqFU+Q==
Received: from VE1EUR02FT055.eop-EUR02.prod.protection.outlook.com
	(10.152.12.58) by VE1EUR02HT117.eop-EUR02.prod.protection.outlook.com
	(10.152.13.42) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1771.16;
	Tue, 23 Apr 2019 11:49:21 +0000
Received: from VI1PR0701MB2527.eurprd07.prod.outlook.com (10.152.12.59) by
	VE1EUR02FT055.mail.protection.outlook.com (10.152.13.34) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1771.16 via Frontend Transport; Tue, 23 Apr 2019 11:49:21 +0000
Received: from VI1PR0701MB2527.eurprd07.prod.outlook.com
	([fe80::9a5:3a18:14aa:381e]) by
	VI1PR0701MB2527.eurprd07.prod.outlook.com
	([fe80::9a5:3a18:14aa:381e%5]) with mapi id 15.20.1835.010;
	Tue, 23 Apr 2019 11:49:21 +0000
From: Erik Hoogeveen <erik.hoogeveen@outlook.com>
To: JH <jupiter.hce@gmail.com>
Thread-Topic: [yocto] What is the right SRC_URI syntax for git@bitbucket.org?
Thread-Index: AQHU9xSRmPlBynJ7cEW0+ldhKhfGjaZFzDCAgAPBOwCAABgcgIAAAXGA
Date: Tue, 23 Apr 2019 11:49:21 +0000
Message-ID: <VI1PR0701MB252796A4D460A59941E82F2F95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
References: <CAA=hcWQk+gOfOU6LsHWFcLtZJ9V9VfTfGRXDMfLD_0gAA1QqBQ@mail.gmail.com>
	<CAA=hcWRfFKhQzqS8yKRyth14dWN=VPQqhXejbew01EnOtUtAJg@mail.gmail.com>
	<VI1PR0701MB2527360E293EACEB7ABC707D95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
	<CAA=hcWQJ+cJQpy6zZ3wQQaH2eutk=cdnikspBiyyL0K+-Q9gjQ@mail.gmail.com>
In-Reply-To: <CAA=hcWQJ+cJQpy6zZ3wQQaH2eutk=cdnikspBiyyL0K+-Q9gjQ@mail.gmail.com>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P193CA0086.EURP193.PROD.OUTLOOK.COM
	(2603:10a6:209:88::27) To VI1PR0701MB2527.eurprd07.prod.outlook.com
	(2603:10a6:800:6f::12)
x-incomingtopheadermarker: OriginalChecksum:F71E7D923629881E8776A14E3FBA7FFEA0E4348D122B3D08ADA2A8A54D9F3692;
	UpperCasedChecksum:61AF343C6C5AC91166E690CB0E2A0DA6F2B02CEB03E1702CD510992A88368F9C;
	SizeAsReceived:7811; Count:50
x-ms-exchange-messagesentrepresentingtype: 1
x-readdle-message-id: 642212d2-29db-45b5-a951-5882323d57f6@Spark
x-tmn: [gvB47POnNQm3iIZiF6HHBiz+6e5n6Rp3]
x-microsoft-original-message-id: <642212d2-29db-45b5-a951-5882323d57f6@Spark>
x-ms-publictraffictype: Email
x-incomingheadercount: 50
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
	SRVR:VE1EUR02HT117; 
x-ms-traffictypediagnostic: VE1EUR02HT117:
x-microsoft-antispam-message-info: a5PU8qkTKEjLAGJcAZBYhVzSmKTA7HQT4Qxgz58pXYjQwox8vMe/WJResiznKFFEqO2ID3qknVM2MSapHL5KQ5i+dQ2YiYJoYPmS/79GYoCoaxnt+DsNR5gKtpiaOhCbPiKp8aiJY5BSen7xT3JkSTCRhjnejVF5QLvrmrrfJ4uL7RjgvmLiAXA+sJz6oZu6
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 41b8f869-55cb-488c-79c6-08d6c7e1b942
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2019 11:49:21.5589 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT117
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: What is the right SRC_URI syntax for git@bitbucket.org?
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
X-List-Received-Date: Wed, 24 Apr 2019 12:21:16 -0000
X-List-Received-Date: Wed, 24 Apr 2019 12:21:16 -0000
X-List-Received-Date: Wed, 24 Apr 2019 12:21:16 -0000
X-List-Received-Date: Wed, 24 Apr 2019 12:21:16 -0000
X-List-Received-Date: Wed, 24 Apr 2019 12:21:16 -0000
X-List-Received-Date: Wed, 24 Apr 2019 12:21:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0701MB252796A4D460A59941E82F2F95230VI1PR0701MB2527_"

--_000_VI1PR0701MB252796A4D460A59941E82F2F95230VI1PR0701MB2527_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2hhdCBJIGhhdmUgaXM6DQoNClNSQ1JFViA9ICIke0FVVE9SRVZ9Ig0KUEUgPSAiMSINClBWID0g
IjAuMCtnaXQke1NSQ1BWfSINCg0KVG8gbWFrZSB0aGF0IHdvcmsgeW91ciByZWNpcGUgZmlsZSBu
YW1lIG11c3QgaGF2ZSB0aGUgZm9ybWF0ICc8cmVjaXBlX25hbWU+X2dpdC5iYuKAmQ0KDQpDaGVl
cnMsDQpFcmlrDQpPbiAyMyBBcHIgMjAxOSwgMTM6NDQgKzAyMDAsIEpIIDxqdXBpdGVyLmhjZUBn
bWFpbC5jb20+LCB3cm90ZToNClRoYW5rcyBFcmljLCBob3cgZGlkIHlvdSBzZXQgdXAgU1JDUkVW
PyBJJ3ZlIGdvdCBhbiBlcnJvciBuZWVkIHRvIHNldA0KYSB2YWxpZCBTUkNSRVYuDQoNClRoYW5r
IHlvdS4NCg0KS2luZCByZWdhcmRzLA0KDQotIGp1cGl0ZXINCg0KDQpPbiA0LzIzLzE5LCBFcmlr
IEhvb2dldmVlbiA8ZXJpay5ob29nZXZlZW5Ab3V0bG9vay5jb20+IHdyb3RlOg0KSGksDQoNClRo
aXMgd29ya3MgZm9yIG1lLiBJJ3ZlIGhhdmUgc2V0dXAgc3NoIG15IGlkZW50aXR5IGZvciBCaXRi
dWNrZXQuDQoNCkkgdXNlIHRoaXMgaW4gbXkgcmVjaXBlczoNCg0KU1JDX1VSSSA9ICJnaXRzbTov
L2dpdEBiaXRidWNrZXQub3JnLzxhY2NvdW50X25hbWU+LzxyZXBvc2l0b3J5DQpuYW1lPi5naXQ7
cHJvdG9jb2w9c3NoO2JyYW5jaD0ke0JSQU5DSH0iDQoNCkNoZWVycywNCkVyaWsNCk9uIDIxIEFw
ciAyMDE5LCAwMjo1OCArMDIwMCwgSkggPGp1cGl0ZXIuaGNlQGdtYWlsLmNvbT4sIHdyb3RlOg0K
SGksDQoNCkNvdWxkIHNvbWVvbmUga2luZGx5IGNsYXJpZnkgd2hhdCBpcyB0aGUgc3ludGF4IHRv
IGFjY2VzcyBnaXQgc291cmNlDQpmcm9tIGJpdGJ1Y2tldC5vcmc/IEkgdHJpZWQgZm9sbG93aW5n
IGRpZmZlcmVudCBwYXR0ZXJucywgbm90aGluZw0Kd29ya3M6DQoNClNSQ19VUkkgPSAiZ2l0Oi8v
Yml0YnVja2V0Lm9yZy88YWNjb3VudCBuYW1lPi88cmVwb3NpdG9yeQ0KbmFtZT47cHJvdG9jb2w9
aHR0cDticmFuY2g9JHtCUkFOQ0h9Ig0KDQpTUkNfVVJJID0gImdpdDovLzx1c2VybmFtZT5AYml0
YnVja2V0Lm9yZy88YWNjb3VudCBuYW1lPi88cmVwb3NpdG9yeQ0KbmFtZT4uZ2l0O3Byb3RvY29s
PXNzaCI7YnJhbmNoPSR7QlJBTkNIfSINCg0KVGhhbmsgeW91Lg0KDQpLaW5kIHJlZ2FyZHMsDQoN
Ci0ganVwaXRlcg0KT24gNC8yMC8xOSwgSkggPGp1cGl0ZXIuaGNlQGdtYWlsLmNvbT4gd3JvdGU6
DQpIaSwNCg0KU29ycnkgZm9yIGEgbmV3IHN0YXJ0ZXIgcXVlc3Rpb25zLCBJIHNlYXJjaGVkIElu
dGVybmV0LCB0aGVyZSBhcmUgYQ0KZmV3IGV4YW1wbGVzIHRvIHNldCB1cDoNCg0KU1JDX1VSSSA9
ICJnaXQ6Ly88dXNlcm5hbWU+QGJpdGJ1Y2tldC5vcmcvPGFjY291bnQgbmFtZT4vPHJlcG9zaXRv
cnkNCm5hbWU+LmdpdDtwcm90b2NvbD1zc2giO2JyYW5jaD0ke0JSQU5DSH0iDQoNCk5vdCBvbmx5
IHRoYXQgZG9lcyBub3Qgd29yaywgSSBoYXZlIHNldCB1cCB0aGUgcHVibGljIGtleSB0byBhY2Nl
c3MNCnRoZSBnaXQgYml0YnVja2V0IHJlcG9zaXRvcnk6DQoNCiQgc3NoIC12IGdpdEBiaXRidWNr
ZXQub3JnDQoNClRoZSBZb2N0byBhbHNvIGNvbXBsYWluZWQgU1JDUkVWLCBmb2xsb3dpbmcgc29t
ZSBibG9nIHRvIGFkZCB0aGUNClNSQ1JFViA9ICIke0FVVE9SRVZ9IiB0aGF0IG5vdCB3b3JrIGVp
dGhlci4NCg0KVGhhbmsgeW91Lg0KDQpLaW5kIHJlZ2FyZHMsDQoNCi0gamgNCg0KLS0NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQp5b2N0byBtYWlsaW5n
IGxpc3QNCnlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCmh0dHBzOi8vbmFtMDIuc2FmZWxpbmtzLnBy
b3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxpc3RzLnlvY3RvcHJvamVj
dC5vcmclMkZsaXN0aW5mbyUyRnlvY3RvJmFtcDtkYXRhPTAyJTdDMDElN0MlN0NiNDcwMDgwNTU2
ZGY0NDU0ZDI2NzA4ZDZjN2UwZmI3MSU3Qzg0ZGY5ZTdmZTlmNjQwYWZiNDM1YWFhYWFhYWFhYWFh
JTdDMSU3QzAlN0M2MzY5MTYxNjY0MzE1NTM0NzUmYW1wO3NkYXRhPWVCc2pWdEQwRkFybHRBREFI
RDhick1qZ0lhcWFhbGc1cGJFSUVGUWVSOHMlM0QmYW1wO3Jlc2VydmVkPTANCg0K

--_000_VI1PR0701MB252796A4D460A59941E82F2F95230VI1PR0701MB2527_
Content-Type: text/html; charset="utf-8"
Content-ID: <563D312DF033BD4A9F8A8341FF6AA830@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiPg0KPGhlYWQ+DQo8bWV0
YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11
dGYtOCI+DQo8dGl0bGU+PC90aXRsZT4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBuYW1lPSJtZXNz
YWdlQm9keVNlY3Rpb24iIHN0eWxlPSJmb250LXNpemU6IDE0cHg7IGZvbnQtZmFtaWx5OiAtYXBw
bGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsIHNhbnMtc2VyaWY7Ij4NCldoYXQgSSBoYXZl
IGlzOg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+U1JDUkVWID0gJnF1b3Q7JHtBVVRPUkVWfSZx
dW90Ozxicj4NClBFID0gJnF1b3Q7MSZxdW90Ozxicj4NClBWID0gJnF1b3Q7MC4wJiM0MztnaXQk
e1NSQ1BWfSZxdW90Ozxicj4NCjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+VG8gbWFr
ZSB0aGF0IHdvcmsgeW91ciByZWNpcGUgZmlsZSBuYW1lIG11c3QgaGF2ZSB0aGUgZm9ybWF0ICcm
bHQ7cmVjaXBlX25hbWUmZ3Q7X2dpdC5iYuKAmTwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxk
aXY+Q2hlZXJzLDwvZGl2Pg0KPGRpdj5FcmlrPC9kaXY+DQo8L2Rpdj4NCjxkaXYgbmFtZT0ibWVz
c2FnZVJlcGx5U2VjdGlvbiIgc3R5bGU9ImZvbnQtc2l6ZTogMTRweDsgZm9udC1mYW1pbHk6IC1h
cHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgc2Fucy1zZXJpZjsiPg0KT24gMjMgQXBy
IDIwMTksIDEzOjQ0ICYjNDM7MDIwMCwgSkggJmx0O2p1cGl0ZXIuaGNlQGdtYWlsLmNvbSZndDss
IHdyb3RlOjxicj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIHN0eWxlPSJtYXJnaW46IDVweCA1
cHg7IHBhZGRpbmctbGVmdDogMTBweDsgYm9yZGVyLWxlZnQ6IHRoaW4gc29saWQgIzFhYmM5Yzsi
Pg0KVGhhbmtzIEVyaWMsIGhvdyBkaWQgeW91IHNldCB1cCBTUkNSRVY/IEkndmUgZ290IGFuIGVy
cm9yIG5lZWQgdG8gc2V0PGJyPg0KYSB2YWxpZCBTUkNSRVYuPGJyPg0KPGJyPg0KVGhhbmsgeW91
Ljxicj4NCjxicj4NCktpbmQgcmVnYXJkcyw8YnI+DQo8YnI+DQotIGp1cGl0ZXI8YnI+DQo8YnI+
DQo8YnI+DQpPbiA0LzIzLzE5LCBFcmlrIEhvb2dldmVlbiAmbHQ7ZXJpay5ob29nZXZlZW5Ab3V0
bG9vay5jb20mZ3Q7IHdyb3RlOjxicj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiIHN0eWxlPSJt
YXJnaW46IDVweCA1cHg7IHBhZGRpbmctbGVmdDogMTBweDsgYm9yZGVyLWxlZnQ6IHRoaW4gc29s
aWQgI2U2N2UyMjsiPg0KSGksPGJyPg0KPGJyPg0KVGhpcyB3b3JrcyBmb3IgbWUuIEkndmUgaGF2
ZSBzZXR1cCBzc2ggbXkgaWRlbnRpdHkgZm9yIEJpdGJ1Y2tldC48YnI+DQo8YnI+DQpJIHVzZSB0
aGlzIGluIG15IHJlY2lwZXM6PGJyPg0KPGJyPg0KU1JDX1VSSSA9ICZxdW90O2dpdHNtOi8vZ2l0
QGJpdGJ1Y2tldC5vcmcvJmx0O2FjY291bnRfbmFtZSZndDsvJmx0O3JlcG9zaXRvcnk8YnI+DQpu
YW1lJmd0Oy5naXQ7cHJvdG9jb2w9c3NoO2JyYW5jaD0ke0JSQU5DSH0mcXVvdDs8YnI+DQo8YnI+
DQpDaGVlcnMsPGJyPg0KRXJpazxicj4NCk9uIDIxIEFwciAyMDE5LCAwMjo1OCAmIzQzOzAyMDAs
IEpIICZsdDtqdXBpdGVyLmhjZUBnbWFpbC5jb20mZ3Q7LCB3cm90ZTo8YnI+DQpIaSw8YnI+DQo8
YnI+DQpDb3VsZCBzb21lb25lIGtpbmRseSBjbGFyaWZ5IHdoYXQgaXMgdGhlIHN5bnRheCB0byBh
Y2Nlc3MgZ2l0IHNvdXJjZTxicj4NCmZyb20gYml0YnVja2V0Lm9yZz8gSSB0cmllZCBmb2xsb3dp
bmcgZGlmZmVyZW50IHBhdHRlcm5zLCBub3RoaW5nPGJyPg0Kd29ya3M6PGJyPg0KPGJyPg0KU1JD
X1VSSSA9ICZxdW90O2dpdDovL2JpdGJ1Y2tldC5vcmcvJmx0O2FjY291bnQgbmFtZSZndDsvJmx0
O3JlcG9zaXRvcnk8YnI+DQpuYW1lJmd0Oztwcm90b2NvbD1odHRwO2JyYW5jaD0ke0JSQU5DSH0m
cXVvdDs8YnI+DQo8YnI+DQpTUkNfVVJJID0gJnF1b3Q7Z2l0Oi8vJmx0O3VzZXJuYW1lJmd0O0Bi
aXRidWNrZXQub3JnLyZsdDthY2NvdW50IG5hbWUmZ3Q7LyZsdDtyZXBvc2l0b3J5PGJyPg0KbmFt
ZSZndDsuZ2l0O3Byb3RvY29sPXNzaCZxdW90OzticmFuY2g9JHtCUkFOQ0h9JnF1b3Q7PGJyPg0K
PGJyPg0KVGhhbmsgeW91Ljxicj4NCjxicj4NCktpbmQgcmVnYXJkcyw8YnI+DQo8YnI+DQotIGp1
cGl0ZXI8YnI+DQpPbiA0LzIwLzE5LCBKSCAmbHQ7anVwaXRlci5oY2VAZ21haWwuY29tJmd0OyB3
cm90ZTo8YnI+DQpIaSw8YnI+DQo8YnI+DQpTb3JyeSBmb3IgYSBuZXcgc3RhcnRlciBxdWVzdGlv
bnMsIEkgc2VhcmNoZWQgSW50ZXJuZXQsIHRoZXJlIGFyZSBhPGJyPg0KZmV3IGV4YW1wbGVzIHRv
IHNldCB1cDo8YnI+DQo8YnI+DQpTUkNfVVJJID0gJnF1b3Q7Z2l0Oi8vJmx0O3VzZXJuYW1lJmd0
O0BiaXRidWNrZXQub3JnLyZsdDthY2NvdW50IG5hbWUmZ3Q7LyZsdDtyZXBvc2l0b3J5PGJyPg0K
bmFtZSZndDsuZ2l0O3Byb3RvY29sPXNzaCZxdW90OzticmFuY2g9JHtCUkFOQ0h9JnF1b3Q7PGJy
Pg0KPGJyPg0KTm90IG9ubHkgdGhhdCBkb2VzIG5vdCB3b3JrLCBJIGhhdmUgc2V0IHVwIHRoZSBw
dWJsaWMga2V5IHRvIGFjY2Vzczxicj4NCnRoZSBnaXQgYml0YnVja2V0IHJlcG9zaXRvcnk6PGJy
Pg0KPGJyPg0KJCBzc2ggLXYgZ2l0QGJpdGJ1Y2tldC5vcmc8YnI+DQo8YnI+DQpUaGUgWW9jdG8g
YWxzbyBjb21wbGFpbmVkIFNSQ1JFViwgZm9sbG93aW5nIHNvbWUgYmxvZyB0byBhZGQgdGhlPGJy
Pg0KU1JDUkVWID0gJnF1b3Q7JHtBVVRPUkVWfSZxdW90OyB0aGF0IG5vdCB3b3JrIGVpdGhlci48
YnI+DQo8YnI+DQpUaGFuayB5b3UuPGJyPg0KPGJyPg0KS2luZCByZWdhcmRzLDxicj4NCjxicj4N
Ci0gamg8YnI+DQo8YnI+DQotLTxicj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fPGJyPg0KeW9jdG8gbWFpbGluZyBsaXN0PGJyPg0KeW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZzxicj4NCmh0dHBzOi8vbmFtMDIuc2FmZWxpbmtzLnByb3RlY3Rpb24ub3V0bG9v
ay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmxpc3RzLnlvY3RvcHJvamVjdC5vcmclMkZsaXN0aW5m
byUyRnlvY3RvJmFtcDthbXA7ZGF0YT0wMiU3QzAxJTdDJTdDYjQ3MDA4MDU1NmRmNDQ1NGQyNjcw
OGQ2YzdlMGZiNzElN0M4NGRmOWU3ZmU5ZjY0MGFmYjQzNWFhYWFhYWFhYWFhYSU3QzElN0MwJTdD
NjM2OTE2MTY2NDMxNTUzNDc1JmFtcDthbXA7c2RhdGE9ZUJzalZ0RDBGQXJsdEFEQUhEOGJyTWpn
SWFxYWFsZzVwYkVJRUZRZVI4cyUzRCZhbXA7YW1wO3Jlc2VydmVkPTA8YnI+DQo8YnI+DQo8L2Js
b2NrcXVvdGU+DQo8L2Jsb2NrcXVvdGU+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_VI1PR0701MB252796A4D460A59941E82F2F95230VI1PR0701MB2527_--
