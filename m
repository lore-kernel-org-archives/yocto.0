Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF0F8E00FB6; Mon, 22 Aug 2016 20:13:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.42.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4622 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Aug 2016 20:13:33 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam03on0104.outbound.protection.outlook.com [104.47.42.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 704DBE00CBE
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 20:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=GwRTs++1RGVe6nuznCuX0DWm5xdp8l2qciKSulO/c4o=;
	b=Dw2VAySHbthGP6jJAbkhKXCCr7FgC2cdEWj1pYan3Qhs+GG+6zGAl8C8rMVY20MlOA90Yp7NxxWMm4rbfab9ypnm5oI/pRe63GfluUVtGiHtKd7dVI+s2KXnKHMyeBryqTTNVDRuHF7J5FrDgicr2xRT7vIAISGOeaXG8HE570I=
Received: from DM3PR1201MB0974.namprd12.prod.outlook.com (10.164.197.26) by
	DM3PR1201MB0973.namprd12.prod.outlook.com (10.164.197.25) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.557.21; Tue, 23 Aug 2016 01:41:34 +0000
Received: from DM3PR1201MB0974.namprd12.prod.outlook.com ([10.164.197.26]) by
	DM3PR1201MB0974.namprd12.prod.outlook.com ([10.164.197.26]) with
	mapi id 15.01.0587.009; Tue, 23 Aug 2016 01:41:32 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] How to run a runqemu with intel-corei7-64?
Thread-Index: AQHR/HmCrFAdeDKMx0aLAtEhVQdDKqBVxawQ
Date: Tue, 23 Aug 2016 01:41:31 +0000
Message-ID: <DM3PR1201MB0974C3442CD2FDEDE1AB9A73A5EB0@DM3PR1201MB0974.namprd12.prod.outlook.com>
References: <BN3PR1201MB096367B23D96E0998DA7C22BA5160@BN3PR1201MB0963.namprd12.prod.outlook.com>
	<CAJTo0Lbxd4fx+R91H1TGD-SRgakUo-gnaro2RNhbgx6-3rwN+A@mail.gmail.com>
In-Reply-To: <CAJTo0Lbxd4fx+R91H1TGD-SRgakUo-gnaro2RNhbgx6-3rwN+A@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: 151adde1-7156-466e-a221-08d3caf69c67
x-microsoft-exchange-diagnostics: 1; DM3PR1201MB0973;
	6:a/jmyOzcUZvHFpkIv2YwVyWZN6IbMAz6uFWSpcBizFDm58N7OrTyiyp3kT42QCwI7GBLB4iwbJvI/19SGyPMkFL2F16BHf8THq2RYSyOQ/xOSmcCMWyWwyA5o1l69rFvZLzofMMITBOkSNBaGmPcTXyqvuFL51TU3ScM5UPck42g01mUezFuhuynkfkY5MBSQHg82pJUerFFF66rOMTOkQOpqGDgcMXnbX6WxCGs0eyV3aTijd7lWzQMC5k4Xma1GNJNhpb9ljGP1kp0KSfEjspYUk+ceC4Xj8s4axFGeZZt4LszfMwXVcKA6GeCslq3;
	5:VB7z3t9ND3Fi0qU3OcuIZo2kTgdaSBJUYUqX7Z5VvRSB+V8UMHU+uRElcqnVXsIEdKqEftZh1kAzuNAu+dKxmUP3nYhTblG6YKmiNHXs5MzjI6kFlqV5ZQa5eYh7Nt+IHc3mQddmt71WZpEATrjtRQ==;
	24:UwSEfsDbPOwhg9/UuaMhLOTwxdVC1Y4xEdCPs0nlA0IP//udftykO/WtzATYCoHVyJFsu980rhZf64EQbPSCIIXa/rRGAd4DyOORddDF4LU=;
	7:0iXrrMg0zXnNNpoY8jPXaZdELDKxeJUgxJ2djl7KVirHgxRX82+vHys4fjgb+Kwk7soAgWuVLWA6FUNE6cw6VqZS3psKF+cxSUEQR3bc9Q0OH1XES62zQYBwFR222wyCptW7mr9SNYMLavFdjOmdbBeU8ZMTwXXZdCKrWZLmlgEkTBrzsXQxUPgNWuWJOnJhgB9I1JL/uMRlz+BitqqWNNtmkXIdgGFbbsUbaiV2s1Y7u4TO1ManYTUQl3rUwF5Q
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM3PR1201MB0973;
x-microsoft-antispam-prvs: <DM3PR1201MB097331E2E282A42C2DA2B5B7A5EB0@DM3PR1201MB0973.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155)(17755550239193);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6043046)(6042046);
	SRVR:DM3PR1201MB0973; BCL:0; PCL:0; RULEID:;
	SRVR:DM3PR1201MB0973; 
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(979002)(7916002)(199003)(24454002)(189002)(16236675004)(7736002)(7696003)(8936002)(110136002)(7846002)(81166006)(81156014)(68736007)(790700001)(102836003)(19580405001)(3846002)(6116002)(66066001)(87936001)(19580395003)(3280700002)(97736004)(586003)(86362001)(3660700001)(9686002)(4326007)(33656002)(2906002)(122556002)(19625215002)(106356001)(101416001)(189998001)(15975445007)(2950100001)(77096005)(224303003)(2900100001)(106116001)(229853001)(230783001)(5660300001)(5002640100001)(74316002)(76576001)(50986999)(10400500002)(19300405004)(105586002)(54356999)(76176999)(92566002)(99286002)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM3PR1201MB0973;
	H:DM3PR1201MB0974.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2016 01:41:31.8239 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR1201MB0973
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?562U5aSNOiBIb3cgdG8gcnVuIGEgcnVucWVtdSB3aXRoIGludGVsLWNvcmVpNy02ND8=?=
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
X-List-Received-Date: Tue, 23 Aug 2016 03:13:38 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_DM3PR1201MB0974C3442CD2FDEDE1AB9A73A5EB0DM3PR1201MB0974_"

--_000_DM3PR1201MB0974C3442CD2FDEDE1AB9A73A5EB0DM3PR1201MB0974_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGFua3MuDQpJIHdhcyB3b3JraW5nIG9uIHRoZSBxZW11eDg2LTY0IG1hY2hpbmUsIGJ1dCBz
b21lIHRlc3Qgc2hvdWxkIGJlIHJ1biBvbiBbaW50ZWwtY29yZWk3LTY0XSAuDQoNCkkgd2lsbCB0
cnkgdG8gdXNlIHFlbXUuDQoNCkJlc3QgcmVnYXJkcy4NCg0KDQpPbiAxOSBBdWd1c3QgMjAxNiBh
dCAwMjo1MCwgUmljaGFyZCBaaGFuZyA8cmljaGFyZC56aGFuZ0BwaWNhOC5jb208bWFpbHRvOnJp
Y2hhcmQuemhhbmdAcGljYTguY29tPj4gd3JvdGU6DQpBZnRlciBidWlsdCBhbiDigJhpbnRlbC1j
b3JlaTctNjTigJkgaW1hZ2Ugd2l0aCBUb2FzdGVyLCBJIHRyeSB0byBydW4gYSBydW5xZW11LCBp
dCBjYW7igJl0IHJ1bi4NCkVSUk9SOiB1bmFibGUgdG8gY2xhc3NpZnkgYXJnIFtpbnRlbC1jb3Jl
aTctNjRdLg0KRG9lcyBpbnRlbC1jb3JlaTctNjQgY291bGQgYmUgcnVuIHdpdGggcnVucWVtdT8N
Cg0KQ3VycmVudGx5LCBub3Qgb3V0IG9mIHRoZSBib3gsIGFsdGhvdWdoIGl0IHNob3VsZCBiZSBw
b3NzaWJsZSBpZiB5b3UgcnVuIHFlbXUgZGlyZWN0bHkuDQoNClRoZXJlIGlzIHdvcmsgb25nb2lu
ZyB0byBhbGxvdyBCU1BzIHRvIGV4dGVuZCBydW5xZW11IHNvIHRoaXMgY291bGQgd29yaywgYnV0
IGZvciBub3cgaWYgeW91IHdpc2ggdG8gcnVuIGltYWdlcyBpbiBxZW11IGZyZXF1ZW50bHkgdGhl
biBpdCdzIHJlY29tbWVuZGVkIHRvIHVzZSB0aGUgcWVtdXg4Ni02NCBtYWNoaW5lLCBhcyBpdCB3
aWxsIGluY2x1ZGUgYSBmZXcgcGllY2VzIChrZXJuZWwgbW9kdWxlcywgZ3JhcGhpY3MgZHJpdmVy
cywgZXRjKSB3aGljaCBpbmNyZWFzZSBwZXJmb3JtYW5jZSBpbnNpZGUgcWVtdS4NCg0KUm9zcw0K

--_000_DM3PR1201MB0974C3442CD2FDEDE1AB9A73A5EB0DM3PR1201MB0974_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
5a6L5L2TOw0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAxIDE7fQ0KQGZvbnQtZmFjZQ0KCXtm
b250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2IDMgMiA0
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUg
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OuW+rui9r+mbhem7kTsN
CglwYW5vc2UtMToyIDExIDUgMyAyIDIgNCAyIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFt
aWx5OiJcQOWui+S9kyI7DQoJcGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OiJcQOW+rui9r+mbhem7kSI7DQoJcGFub3NlLTE6MiAxMSA1IDMg
MiAyIDQgMiAyIDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5N
c29Ob3JtYWwsIGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9tOi4w
MDAxcHQ7DQoJZm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseTrlrovkvZM7fQ0KYTpsaW5r
LCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6Ymx1
ZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCmE6dmlzaXRlZCwgc3Bhbi5Nc29IeXBl
cmxpbmtGb2xsb3dlZA0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJY29sb3I6cHVycGxlOw0K
CXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcNCgl7bXNvLXN0
eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2Vy
aWY7DQoJY29sb3I6IzFGNDk3RDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpl
eHBvcnQtb25seTsNCglmb250LXNpemU6MTAuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixz
YW5zLXNlcmlmO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBwdDsN
CgltYXJnaW46NzIuMHB0IDkwLjBwdCA3Mi4wcHQgOTAuMHB0O30NCmRpdi5Xb3JkU2VjdGlvbjEN
Cgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHht
bD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3ht
bD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6
ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBl
bGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iWkgtQ04iIGxp
bms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjEw
LjVwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFG
NDk3RCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZx
dW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5UaGFua3MuPG86cD48
L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
IHN0eWxlPSJmb250LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDss
c2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5JIHdhcyB3b3JraW5nIG9uIHRoZSBxZW11eDg2LTY0
IG1hY2hpbmUsIGJ1dCBzb21lIHRlc3Qgc2hvdWxkIGJlIHJ1biBvbiBbaW50ZWwtY29yZWk3LTY0
XSAuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFu
Zz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGli
cmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bh
bj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZv
bnQtc2l6ZToxMC41cHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlm
O2NvbG9yOiMxRjQ5N0QiPkkgd2lsbCB0cnkgdG8gdXNlIHFlbXUuPG86cD48L286cD48L3NwYW4+
PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250
LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtj
b2xvcjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMC41cHQ7Zm9udC1m
YW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPkJlc3Qg
cmVnYXJkcy48L3NwYW4+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
O2ZvbnQtZmFtaWx5OiZxdW90O+W+rui9r+mbhem7kSZxdW90OyxzYW5zLXNlcmlmIj48bzpwPjwv
bzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0K
PGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5PbiAxOSBBdWd1
c3QgMjAxNiBhdCAwMjo1MCwgUmljaGFyZCBaaGFuZyAmbHQ7PGEgaHJlZj0ibWFpbHRvOnJpY2hh
cmQuemhhbmdAcGljYTguY29tIiB0YXJnZXQ9Il9ibGFuayI+cmljaGFyZC56aGFuZ0BwaWNhOC5j
b208L2E+Jmd0OyB3cm90ZTo8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8YmxvY2txdW90ZSBzdHls
ZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgI0NDQ0NDQyAxLjBwdDtwYWRkaW5nOjBj
bSAwY20gMGNtIDYuMHB0O21hcmdpbi1sZWZ0OjQuOHB0O21hcmdpbi10b3A6NS4wcHQ7bWFyZ2lu
LXJpZ2h0OjBjbTttYXJnaW4tYm90dG9tOjUuMHB0Ij4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0
eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzt0
ZXh0LWluZGVudDoyMS4wcHQiPg0KPHNwYW4gbGFuZz0iRU4tVVMiPkFmdGVyIGJ1aWx0IGFuIDwv
c3Bhbj7igJg8c3BhbiBsYW5nPSJFTi1VUyI+aW50ZWwtY29yZWk3LTY0PC9zcGFuPuKAmTxzcGFu
IGxhbmc9IkVOLVVTIj4gaW1hZ2Ugd2l0aCBUb2FzdGVyLCBJIHRyeSB0byBydW4gYSBydW5xZW11
LCBpdCBjYW48L3NwYW4+4oCZPHNwYW4gbGFuZz0iRU4tVVMiPnQgcnVuLjxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6
YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzt0ZXh0LWluZGVudDoyMS4wcHQiPg0KPHNw
YW4gbGFuZz0iRU4tVVMiPkVSUk9SOiB1bmFibGUgdG8gY2xhc3NpZnkgYXJnIFtpbnRlbC1jb3Jl
aTctNjRdLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxl
PSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzt0ZXh0
LWluZGVudDoyMS4wcHQiPg0KPHNwYW4gbGFuZz0iRU4tVVMiPkRvZXMgaW50ZWwtY29yZWk3LTY0
IGNvdWxkIGJlIHJ1biB3aXRoIHJ1bnFlbXU/PG86cD48L286cD48L3NwYW4+PC9wPg0KPC9ibG9j
a3F1b3RlPg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+
PGJyPg0KQ3VycmVudGx5LCBub3Qgb3V0IG9mIHRoZSBib3gsIGFsdGhvdWdoIGl0IHNob3VsZCBi
ZSBwb3NzaWJsZSBpZiB5b3UgcnVuIHFlbXUgZGlyZWN0bHkuPG86cD48L286cD48L3NwYW4+PC9w
Pg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5UaGVyZSBpcyB3b3JrIG9uZ29pbmcgdG8gYWxs
b3cgQlNQcyB0byBleHRlbmQgcnVucWVtdSBzbyB0aGlzIGNvdWxkIHdvcmssIGJ1dCBmb3Igbm93
IGlmIHlvdSB3aXNoIHRvIHJ1biBpbWFnZXMgaW4gcWVtdSBmcmVxdWVudGx5IHRoZW4gaXQncyBy
ZWNvbW1lbmRlZCB0byB1c2UgdGhlIHFlbXV4ODYtNjQgbWFjaGluZSwgYXMgaXQgd2lsbCBpbmNs
dWRlIGEgZmV3IHBpZWNlcyAoa2VybmVsDQogbW9kdWxlcywgZ3JhcGhpY3MgZHJpdmVycywgZXRj
KSB3aGljaCBpbmNyZWFzZSBwZXJmb3JtYW5jZSBpbnNpZGUgcWVtdS48bzpwPjwvbzpwPjwvc3Bh
bj48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJF
Ti1VUyI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPlJvc3M8bzpwPjwvbzpwPjwvc3Bhbj48
L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_DM3PR1201MB0974C3442CD2FDEDE1AB9A73A5EB0DM3PR1201MB0974_--
