Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D0E0E00B6C; Sat, 20 May 2017 11:37:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.75 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4674 seconds by postgrey-1.32 at yocto-www;
	Sat, 20 May 2017 11:37:38 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0075.outbound.protection.outlook.com [104.47.42.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E1F6E0090E
	for <yocto@yoctoproject.org>; Sat, 20 May 2017 11:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=SierraWirelessInc.onmicrosoft.com; s=selector1-sierrawireless-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Zs/+1z6fULbniXhAda5hvA+ZSY7XaMGgrMmDvFHUNwM=;
	b=lzOr4VCFYaTDGwjRJfAoJdkktUkBjAb+3TRwv/pw7y+YuwGGpvzTXFxqWzLyFXtjQGSqatbOPzL02iB1BO1sW6rA6iHKvEXNbeZWVOZVCjXw2aNtEOqFkglbVTAPbMuZtuX7TiE6YOYu8u8c+PXjYVUjGElWplwkygzZEWLdf9U=
Received: from SN1PR0201MB1790.namprd02.prod.outlook.com (10.162.228.20) by
	SN1PR0201MB1789.namprd02.prod.outlook.com (10.162.228.19) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1101.14; Sat, 20 May 2017 17:04:44 +0000
Received: from SN1PR0201MB1790.namprd02.prod.outlook.com ([10.162.228.20]) by
	SN1PR0201MB1790.namprd02.prod.outlook.com ([10.162.228.20]) with
	mapi id 15.01.1101.019; Sat, 20 May 2017 17:04:44 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] What can I share between projects?
Thread-Index: AdLQQVOHq/FcpTMETAOAOoC1QNRfhwAVFj6AAC5GRgAAC05G+gABUQuAAAJ6s1A=
Date: Sat, 20 May 2017 17:04:44 +0000
Message-ID: <A885119E-943C-4F4A-AA65-126C4C59FDEA@sierrawireless.com>
References: <370377A93E714B81A54709E200F398A6@PAULD>
	<13aa5982-027c-371f-b289-684d4d7f5e80@topic.nl>
	<65fdbdb4-4169-edba-47ae-5b8e089475b6@topic.nl>
	<C58C38DF-6141-4798-A175-D04CEE872012@sierrawireless.com>,
	<CAMKF1so=4MOc8ZvKe9wkOGgrhZ2M6yhuaN+WAQY9VrzcH9+rNw@mail.gmail.com>
In-Reply-To: <CAMKF1so=4MOc8ZvKe9wkOGgrhZ2M6yhuaN+WAQY9VrzcH9+rNw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: sierrawireless.com; dkim=none (message not signed)
	header.d=none;sierrawireless.com; dmarc=none action=none
	header.from=sierrawireless.com;
x-originating-ip: [24.68.212.16]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1PR0201MB1789;
	7:jIf6A8lqRYXPdNg4AHJDaWaM97CWYo+1TH6wmQCGecuGFjVz65Us2OSuu9ak3irnQ7Vz1iKozrg+OIgs8lsz5ui0+I8BVaJ12t1yhBuC3uTc7Fx0EG9leB6WfQVhFMVx55C82KMJ2+fl8T2HXsqQXIir5lI77xDJ8N0fnnimzVdsThs7co6+b0Y6lTHBYxOpNcfA9CtD13sormgtX8qshR9peo0P05jxdGOyIn4SJhv9oOOmwqAP73srYCyidX/KfynZYmqu0JO7d+Bmct9JtrTyNIk5gdZRUI2Jja4OUu+K9vFheNs2cyIYXJyagvlYgHqROEkxXy3a4zqvTAKdgg==
x-ms-traffictypediagnostic: SN1PR0201MB1789:
x-ms-office365-filtering-correlation-id: 53eb777f-2949-41dd-549c-08d49fa2505f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254075)(48565401081)(201703131423075)(201703031133081)(201702281549075);
	SRVR:SN1PR0201MB1789; 
x-microsoft-antispam-prvs: <SN1PR0201MB1789172701D42740B37AFBB7B2FA0@SN1PR0201MB1789.namprd02.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(219636747203745)(5213294742642);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3002001)(6055026)(6041248)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123562025)(20161123564025)(20161123560025)(6072148);
	SRVR:SN1PR0201MB1789; BCL:0; PCL:0; RULEID:;
	SRVR:SN1PR0201MB1789; 
x-forefront-prvs: 03137AC81E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39850400002)(39450400003)(39840400002)(39400400002)(39410400002)(377454003)(24454002)(82746002)(83716003)(3846002)(2906002)(6916009)(3280700002)(53546009)(1680700002)(6116002)(66066001)(86362001)(2950100002)(102836003)(25786009)(2900100001)(54906002)(8676002)(36756003)(54356999)(122556002)(76176999)(6246003)(50986999)(236005)(6306002)(6512007)(54896002)(606005)(189998001)(77096006)(229853002)(6506006)(6436002)(6486002)(478600001)(7906003)(8936002)(7736002)(3660700001)(99286003)(81166006)(33656002)(38730400002)(4326008)(53936002)(110136004)(5660300001)(39060400002)(93886004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR0201MB1789;
	H:SN1PR0201MB1790.namprd02.prod.outlook.com; FPR:; SPF:None;
	MLV:ovrnspm; PTR:InfoNoRecords; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2017 17:04:44.5213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR0201MB1789
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What can I share between projects?
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
X-List-Received-Date: Sat, 20 May 2017 18:37:44 -0000
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_A885119E943C4F4AAA65126C4C59FDEAsierrawirelesscom_"

--_000_A885119E943C4F4AAA65126C4C59FDEAsierrawirelesscom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzISAgVGhhdCdzIGEgZ29vZCBjbGFyaWZpY2F0aW9uLg0KDQpOb3cgb24gb3RoZXIgaGFu
ZCwgSSBoYXZlIGV4cGVyaWVuY2VkIGEgZmV3IGFub21hbGllcyB0aGF0IGFyZSBtb3JlIGF0IHRo
ZSBmaW5hbCBpbWFnZSBidWlsZCBzdGFnZSwgZXNwZWNpYWxseSB3aGVuIHVzaW5nIFJQTSBmZWVk
LCBhbmQgdGhlIFBSIHNlcnZpY2UgdG8gYXV0byBidW1wIHRoZW0gd2hlbiByZWJ1aWx0IGZvciBk
ZXBlbmRlbmNpZXMuDQoNClRoZSBpbWFnZSBidWlsZCByZWNpcGVzIG11c3QgdGhlbiBub3QgaGF2
ZSB2aXNpYmlsaXR5IGFsbCB0aGUgd2F5IGJhY2sgaW50byB0aGUgc3N0YXRlIGNhY2hlLCBidXQg
b25seSBhcyBmYXIgYXMgdGhlIHZlcnNpb24gZGVjb3JhdGlvbnMgdXNlZCBpbiB0aGUgUlBNIGZl
ZWQsIHJpZ2h0Pw0KDQoNCl9fXw0KDQpSZWdhcmRzLA0KDQpEYXJjeQ0KDQpEYXJjeSBXYXRraW5z
IDo6ICBTZW5pb3IgU3RhZmYgRW5naW5lZXIsIEZpcm13YXJlDQoNClNJRVJSQSBXSVJFTEVTUw0K
RGlyZWN0ICArMSA2MDQgMjMzIDc5ODk8dGVsOisxJTIwNjA0JTIwMjMzJTIwNzk4OT4gICA6OiAg
RmF4ICArMSA2MDQgMjMxIDExMDk8dGVsOisxJTIwNjA0JTIwMjMxJTIwMTEwOT4gIDo6ICBNYWlu
ICArMSA2MDQgMjMxIDExMDA8dGVsOisxJTIwNjA0JTIwMjMxJTIwMTEwMD4NCjEzODExIFdpcmVs
ZXNzIFdheSAgOjogUmljaG1vbmQsIEJDIENhbmFkYSBWNlYgM0E0PHgtYXBwbGUtZGF0YS1kZXRl
Y3RvcnM6Ly8zLzE+DQpbTTRdDQpkd2F0a2luc0BzaWVycmF3aXJlbGVzcy5jb208bWFpbHRvOmR3
YXRraW5zQHNpZXJyYXdpcmVsZXNzLmNvbT4gOjogd3d3LnNpZXJyYXdpcmVsZXNzLmNvbTxodHRw
Oi8vd3d3LnNpZXJyYXdpcmVsZXNzLmNvbS8+IDo6IHd3dy5pbm1vdGlvbnRlY2hub2xvZ3kuY29t
PGh0dHA6Ly93d3cuaW5tb3Rpb250ZWNobm9sb2d5LmNvbS8+DQoNCg0KT24gTWF5IDIwLCAyMDE3
LCBhdCA4OjU0IEFNLCBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPG1haWx0bzpyYWoua2hl
bUBnbWFpbC5jb20+PiB3cm90ZToNCg0KT24gU2F0LCBNYXkgMjAsIDIwMTcgYXQgODoxNiBBTSwg
RGFyY3kgV2F0a2lucw0KPGR3YXRraW5zQHNpZXJyYXdpcmVsZXNzLmNvbTxtYWlsdG86ZHdhdGtp
bnNAc2llcnJhd2lyZWxlc3MuY29tPj4gd3JvdGU6DQpBcmUgeW91IHNheWluZyB0aGF0IHRoZSBz
c3RhdGUgY2FjaGUgaXMgc21hcnQgZW5vdWdoIHRvIGhhbmRsZSBleGFjdCBzYW1lDQpwYWNrYWdl
IGZvciBzYW1lIGFyY2ggYnV0IGp1c3QgYnVpbHQgdXNpbmcgZGlmZmVyZW50IGxheWVyIHN0YWNr
PyAgKFNheSBvbmUNCmNhc2UgYnVpbGRzIHBhY2thZ2UgQSB3aXRoIGEgYmJhcHBlbmQsIGJ1dCB0
aGUgb3RoZXIgdXNlcyBhIGJiYXBwZW5kIGZyb20gYQ0KZGlmZmVyZW50IGxheWVyLCBhbmQgc2F5
IHRoZXkgYXJlIGF0IHNhbWUgYmJhcHBlbmQgcmV2aXNpb24pLg0KDQp5ZXMgaXQgc2hvdWxkIGJl
LCBzaW5jZSBpdCBjaGVja3N1bXMgdGhlIHZhcmlhYmxlcyB3aGljaCBhcmUgZWZmZWN0aXZlDQpk
dXJpbmcgYnVpbGQgb2YgYSBnaXZlbiBwYWNrYWdlLg0K

--_000_A885119E943C4F4AAA65126C4C59FDEAsierrawirelesscom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGRpcj0iYXV0byI+DQo8
ZGl2PlRoYW5rcyEgJm5ic3A7VGhhdCdzIGEgZ29vZCBjbGFyaWZpY2F0aW9uLjwvZGl2Pg0KPGRp
diBpZD0iQXBwbGVNYWlsU2lnbmF0dXJlIj48YnI+DQo8L2Rpdj4NCjxkaXYgaWQ9IkFwcGxlTWFp
bFNpZ25hdHVyZSI+Tm93IG9uIG90aGVyIGhhbmQsIEkgaGF2ZSBleHBlcmllbmNlZCBhIGZldyBh
bm9tYWxpZXMgdGhhdCBhcmUgbW9yZSBhdCB0aGUgZmluYWwgaW1hZ2UgYnVpbGQgc3RhZ2UsIGVz
cGVjaWFsbHkgd2hlbiB1c2luZyBSUE0gZmVlZCwgYW5kIHRoZSBQUiBzZXJ2aWNlIHRvIGF1dG8g
YnVtcCB0aGVtIHdoZW4gcmVidWlsdCBmb3IgZGVwZW5kZW5jaWVzLjwvZGl2Pg0KPGRpdiBpZD0i
QXBwbGVNYWlsU2lnbmF0dXJlIj48YnI+DQo8L2Rpdj4NCjxkaXYgaWQ9IkFwcGxlTWFpbFNpZ25h
dHVyZSI+VGhlIGltYWdlIGJ1aWxkIHJlY2lwZXMgbXVzdCB0aGVuIG5vdCBoYXZlIHZpc2liaWxp
dHkgYWxsIHRoZSB3YXkgYmFjayBpbnRvIHRoZSBzc3RhdGUgY2FjaGUsIGJ1dCBvbmx5IGFzIGZh
ciBhcyB0aGUgdmVyc2lvbiBkZWNvcmF0aW9ucyB1c2VkIGluIHRoZSBSUE0gZmVlZCwgcmlnaHQ/
PC9kaXY+DQo8ZGl2IGlkPSJBcHBsZU1haWxTaWduYXR1cmUiPjxicj4NCjxicj4NCl9fXzxicj4N
CjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1h
cmdpbjogMGNtIDBjbSAwLjAwMDFwdDsiPjxiIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiByZ2Jh
KDI1NSwgMjU1LCAyNTUsIDApOyI+UmVnYXJkcyw8bzpwPjwvbzpwPjwvYj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luOiAwY20gMGNtIDAuMDAwMXB0OyI+PGIgc3R5bGU9
ImJhY2tncm91bmQtY29sb3I6IHJnYmEoMjU1LCAyNTUsIDI1NSwgMCk7Ij4mbmJzcDs8L2I+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbjogMGNtIDBjbSAwLjAwMDFwdDsi
PjxiIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiByZ2JhKDI1NSwgMjU1LCAyNTUsIDApOyI+RGFy
Y3k8bzpwPjwvbzpwPjwvYj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2lu
OiAwY20gMGNtIDAuMDAwMXB0OyI+PGIgc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYmEoMjU1
LCAyNTUsIDI1NSwgMCk7Ij4mbmJzcDs8L2I+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5
bGU9Im1hcmdpbjogMGNtIDBjbSAwLjAwMDFwdDsiPjxiIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9y
OiByZ2JhKDI1NSwgMjU1LCAyNTUsIDApOyI+RGFyY3kgV2F0a2lucyA6OiAmbmJzcDtTZW5pb3Ig
U3RhZmYgRW5naW5lZXIsIEZpcm13YXJlPG86cD48L286cD48L2I+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCIgc3R5bGU9Im1hcmdpbjogMGNtIDBjbSAwLjAwMDFwdDsiPjxiIHN0eWxlPSJiYWNr
Z3JvdW5kLWNvbG9yOiByZ2JhKDI1NSwgMjU1LCAyNTUsIDApOyI+Jm5ic3A7PC9iPjwvcD4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtYXJnaW46IDBjbSAwY20gMC4wMDAxcHQ7Ij48YiBz
dHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiYSgyNTUsIDI1NSwgMjU1LCAwKTsiPlNJRVJSQSBX
SVJFTEVTUzxvOnA+PC9vOnA+PC9iPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJt
YXJnaW46IDBjbSAwY20gMC4wMDAxcHQ7Ij48c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjog
cmdiYSgyNTUsIDI1NSwgMjU1LCAwKTsiPkRpcmVjdCZuYnNwOyZuYnNwOzxhIGhyZWY9InRlbDom
IzQzOzElMjA2MDQlMjAyMzMlMjA3OTg5IiBkaXI9Imx0ciIgeC1hcHBsZS1kYXRhLWRldGVjdG9y
cz0idHJ1ZSIgeC1hcHBsZS1kYXRhLWRldGVjdG9ycy10eXBlPSJ0ZWxlcGhvbmUiIHgtYXBwbGUt
ZGF0YS1kZXRlY3RvcnMtcmVzdWx0PSIxIj4mIzQzOzENCiA2MDQgMjMzIDc5ODk8L2E+Jm5ic3A7
ICZuYnNwOzo6Jm5ic3A7Jm5ic3A7RmF4Jm5ic3A7Jm5ic3A7PGEgaHJlZj0idGVsOiYjNDM7MSUy
MDYwNCUyMDIzMSUyMDExMDkiIGRpcj0ibHRyIiB4LWFwcGxlLWRhdGEtZGV0ZWN0b3JzPSJ0cnVl
IiB4LWFwcGxlLWRhdGEtZGV0ZWN0b3JzLXR5cGU9InRlbGVwaG9uZSIgeC1hcHBsZS1kYXRhLWRl
dGVjdG9ycy1yZXN1bHQ9IjIiPiYjNDM7MSA2MDQgMjMxIDExMDk8L2E+Jm5ic3A7IDo6Jm5ic3A7
Jm5ic3A7TWFpbiZuYnNwOyZuYnNwOzxhIGhyZWY9InRlbDomIzQzOzElMjA2MDQlMjAyMzElMjAx
MTAwIiBkaXI9Imx0ciIgeC1hcHBsZS1kYXRhLWRldGVjdG9ycz0idHJ1ZSIgeC1hcHBsZS1kYXRh
LWRldGVjdG9ycy10eXBlPSJ0ZWxlcGhvbmUiIHgtYXBwbGUtZGF0YS1kZXRlY3RvcnMtcmVzdWx0
PSIzLzAiIHN0eWxlPSItd2Via2l0LXRleHQtZGVjb3JhdGlvbi1jb2xvcjogcmdiYSgxMDEsIDEw
MSwgMTAxLCAwLjI1ODgyNCk7Ij4mIzQzOzENCiA2MDQgMjMxIDExMDA8L2E+PG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbjogMGNtIDBjbSAw
LjAwMDFwdDsiPjxzcGFuIHN0eWxlPSJiYWNrZ3JvdW5kLWNvbG9yOiByZ2JhKDI1NSwgMjU1LCAy
NTUsIDApOyI+MTM4MTEgV2lyZWxlc3MgV2F5Jm5ic3A7IDo6Jm5ic3A7PGEgaHJlZj0ieC1hcHBs
ZS1kYXRhLWRldGVjdG9yczovLzMvMSIgZGlyPSJsdHIiIHgtYXBwbGUtZGF0YS1kZXRlY3RvcnM9
InRydWUiIHgtYXBwbGUtZGF0YS1kZXRlY3RvcnMtdHlwZT0iYWRkcmVzcyIgeC1hcHBsZS1kYXRh
LWRldGVjdG9ycy1yZXN1bHQ9IjMvMSIgc3R5bGU9Ii13ZWJraXQtdGV4dC1kZWNvcmF0aW9uLWNv
bG9yOiByZ2JhKDEwMSwgMTAxLCAxMDEsIDAuMjU4ODI0KTsiPlJpY2htb25kLA0KIEJDIENhbmFk
YSBWNlYgM0E0PC9hPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
IHN0eWxlPSJtYXJnaW46IDBjbSAwY20gMC4wMDAxcHQ7Ij48c3BhbiBzdHlsZT0iYmFja2dyb3Vu
ZC1jb2xvcjogcmdiYSgyNTUsIDI1NSwgMjU1LCAwKTsiPltNNF08bzpwPjwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibWFyZ2luOiAwY20gMGNtIDAuMDAwMXB0
OyI+PHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYmEoMjU1LCAyNTUsIDI1NSwgMCk7
Ij48dT48YSBocmVmPSJtYWlsdG86ZHdhdGtpbnNAc2llcnJhd2lyZWxlc3MuY29tIj5kd2F0a2lu
c0BzaWVycmF3aXJlbGVzcy5jb208L2E+PC91PiZuYnNwOzo6Jm5ic3A7PGEgaHJlZj0iaHR0cDov
L3d3dy5zaWVycmF3aXJlbGVzcy5jb20vIj53d3cuc2llcnJhd2lyZWxlc3MuY29tPC9hPiZuYnNw
Ozo6Jm5ic3A7PGEgaHJlZj0iaHR0cDovL3d3dy5pbm1vdGlvbnRlY2hub2xvZ3kuY29tLyI+d3d3
LmlubW90aW9udGVjaG5vbG9neS5jb208L2E+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbjogMGNtIDBjbSAwLjAwMDFwdDsiPjxzcGFuIGxh
bmc9IkVOLUNBIiBzdHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiYSgyNTUsIDI1NSwgMjU1LCAw
KTsiPiZuYnNwOzwvc3Bhbj48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPGRpdj48YnI+DQpPbiBNYXkg
MjAsIDIwMTcsIGF0IDg6NTQgQU0sIEtoZW0gUmFqICZsdDs8YSBocmVmPSJtYWlsdG86cmFqLmto
ZW1AZ21haWwuY29tIj5yYWoua2hlbUBnbWFpbC5jb208L2E+Jmd0OyB3cm90ZTo8YnI+DQo8YnI+
DQo8L2Rpdj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KPGRpdj48c3Bhbj5PbiBTYXQsIE1h
eSAyMCwgMjAxNyBhdCA4OjE2IEFNLCBEYXJjeSBXYXRraW5zPC9zcGFuPjxicj4NCjxzcGFuPiZs
dDs8YSBocmVmPSJtYWlsdG86ZHdhdGtpbnNAc2llcnJhd2lyZWxlc3MuY29tIj5kd2F0a2luc0Bz
aWVycmF3aXJlbGVzcy5jb208L2E+Jmd0OyB3cm90ZTo8L3NwYW4+PGJyPg0KPGJsb2NrcXVvdGUg
dHlwZT0iY2l0ZSI+PHNwYW4+QXJlIHlvdSBzYXlpbmcgdGhhdCB0aGUgc3N0YXRlIGNhY2hlIGlz
IHNtYXJ0IGVub3VnaCB0byBoYW5kbGUgZXhhY3Qgc2FtZTwvc3Bhbj48YnI+DQo8L2Jsb2NrcXVv
dGU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bhbj5wYWNrYWdlIGZvciBzYW1lIGFyY2gg
YnV0IGp1c3QgYnVpbHQgdXNpbmcgZGlmZmVyZW50IGxheWVyIHN0YWNrPyAmbmJzcDsoU2F5IG9u
ZTwvc3Bhbj48YnI+DQo8L2Jsb2NrcXVvdGU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bh
bj5jYXNlIGJ1aWxkcyBwYWNrYWdlIEEgd2l0aCBhIGJiYXBwZW5kLCBidXQgdGhlIG90aGVyIHVz
ZXMgYSBiYmFwcGVuZCBmcm9tIGE8L3NwYW4+PGJyPg0KPC9ibG9ja3F1b3RlPg0KPGJsb2NrcXVv
dGUgdHlwZT0iY2l0ZSI+PHNwYW4+ZGlmZmVyZW50IGxheWVyLCBhbmQgc2F5IHRoZXkgYXJlIGF0
IHNhbWUgYmJhcHBlbmQgcmV2aXNpb24pLjwvc3Bhbj48YnI+DQo8L2Jsb2NrcXVvdGU+DQo8c3Bh
bj48L3NwYW4+PGJyPg0KPHNwYW4+eWVzIGl0IHNob3VsZCBiZSwgc2luY2UgaXQgY2hlY2tzdW1z
IHRoZSB2YXJpYWJsZXMgd2hpY2ggYXJlIGVmZmVjdGl2ZTwvc3Bhbj48YnI+DQo8c3Bhbj5kdXJp
bmcgYnVpbGQgb2YgYSBnaXZlbiBwYWNrYWdlLjwvc3Bhbj48YnI+DQo8L2Rpdj4NCjwvYmxvY2tx
dW90ZT4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_A885119E943C4F4AAA65126C4C59FDEAsierrawirelesscom_--
