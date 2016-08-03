Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA6A7E00C44; Tue,  2 Aug 2016 17:10:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 57487 seconds by postgrey-1.32 at yocto-www;
	Tue, 02 Aug 2016 17:10:47 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0095.outbound.protection.outlook.com [104.47.32.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35A63E00C37
	for <yocto@yoctoproject.org>; Tue,  2 Aug 2016 17:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=JVSCMdy3BliH0IxiCJXr6WXfxLElBbxbblHHXkYf2dI=;
	b=SUVy2G9WpIFEfl+f+7KeZPpDFSdW02F6Xc5bo56Sxm0PEcfWw3D2WbASo+lPbhzh0FtsKYNp8POQ84zf4N32At3X1twL6C+Wsy947eBRi8TDLjTTJte03ibSiJPNhe9OuALj93yEndGTQ3itDDRjD+cRqx75o/Vrgt2BUjDjYq0=
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com (10.165.76.133) by
	BN3PR1201MB0961.namprd12.prod.outlook.com (10.165.76.25) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.549.15; Wed, 3 Aug 2016 00:10:44 +0000
Received: from BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) by
	BN3PR1201MB0963.namprd12.prod.outlook.com ([10.165.76.133]) with
	mapi id 15.01.0549.022; Wed, 3 Aug 2016 00:10:44 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] libnetconf recipe configure error
Thread-Index: AdHskZlSGFzwX8jBQKWtVc8EURdbIgAIev6AABn5acA=
Date: Wed, 3 Aug 2016 00:10:43 +0000
Message-ID: <BN3PR1201MB0963F23F36BCF88AD102CFDAA5060@BN3PR1201MB0963.namprd12.prod.outlook.com>
References: <BN3PR1201MB0963E0F226A49187386F552FA5050@BN3PR1201MB0963.namprd12.prod.outlook.com>
	<CAJTo0Lbuz_YzfQ2EKb1Hw2zT-fM2C0+PYNzwWFa0511UKeW7-A@mail.gmail.com>
In-Reply-To: <CAJTo0Lbuz_YzfQ2EKb1Hw2zT-fM2C0+PYNzwWFa0511UKeW7-A@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: 0ebf1d7f-c505-4cce-417c-08d3bb329cb0
x-microsoft-exchange-diagnostics: 1; BN3PR1201MB0961;
	6:4IL7F+Olky7QcXUeq4uQCrIssBB1UW5cCizXLD+re2sSK1bPXzdjtDsG0Eqbd2juZE1XP4rqeNz2d0Kvc++Yv/oRJ9Kgd7RTzra4BTwXLWdh/X2iqN1PWxxN8OCjbtdwtEDmX7ATJafX+pvFEz3iRHhLElq6K/2VkXgBz8XpaDcdq+dU6HKClMjZVU2jYlvQ7O3LKtu6tgRXcnuQX98lR+WwlGTlQeXMjfQrwzPKzJ53Yza6Ndip7BopMAR7cVnlBsTMJQAExXnxsdjjv/x4FgTrPKfXk54THEWXjYA2OhILld8DHdK1SOllGwDMvzgc;
	5:g9TulolDQWrsw8/49pZ+SN3OcsDbfCgxjDEho4zo2T8pKDgr4hoMr1OyqraLdHL4sEf3orr5VMSWMBkckii2SdDt/N04bmAU6TMRlXsBDH4r5FrYpUgbDd5s0vIeQfJpo65NHnD1QUZOf55DxEEcVw==;
	24:wi9ZfixF+dgX74Wu5sK4AlLlg184+8ymStFEBWTF0a5CAzBP5/QBenSGGSKJP+E5sSw1H9oV9ZBhhcUrqtFmhLjC0ORHPsyR4F4b+k57o7Q=;
	7:QJEGEqTEU/Rq3gdCNdabWsfKS9nO/b32In3FsryMk4+Ic+OqbtveHiA6SIU7GHK7HJDKo0lYTICUZC9VcPVEMWk9f666LQKJOIsBHQzoLTC86EcPaPYcrwF+n9lXSz0pSjwYBgCGOAR/AutCFQBL5fEhCQh9s9OfOSUx/XbxL/0KM/g6HYYwjrEqcyHQQKiSVrn/GhhX2asoRjbxLzCv/exjeP5VKAgfT/7ownyffXaRoGZpgNQ51iNMC01U15M1
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR1201MB0961;
x-microsoft-antispam-prvs: <BN3PR1201MB0961B66B3626793D9D562E78A5060@BN3PR1201MB0961.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040130)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6041072)(6043046);
	SRVR:BN3PR1201MB0961; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR1201MB0961; 
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(7916002)(24454002)(189002)(199003)(189998001)(86362001)(8936002)(790700001)(3846002)(66066001)(11100500001)(19580395003)(81156014)(2900100001)(15975445007)(2950100001)(6116002)(110136002)(19300405004)(5002640100001)(81166006)(92566002)(9686002)(102836003)(10400500002)(19580405001)(1680700002)(4326007)(2906002)(97736004)(3660700001)(87936001)(77096005)(19625215002)(229853001)(3280700002)(122556002)(101416001)(586003)(76576001)(33656002)(50986999)(105586002)(76176999)(7846002)(99286002)(16601075003)(54356999)(74316002)(7736002)(68736007)(19617315012)(224303003)(106356001)(16236675004)(7906003)(7696003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR1201MB0961;
	H:BN3PR1201MB0963.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2016 00:10:43.7855 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR1201MB0961
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?562U5aSNOiBsaWJuZXRjb25mIHJlY2lwZSBjb25maWd1cmUgZXJyb3I=?=
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
X-List-Received-Date: Wed, 03 Aug 2016 00:10:51 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BN3PR1201MB0963F23F36BCF88AD102CFDAA5060BN3PR1201MB0963_"

--_000_BN3PR1201MB0963F23F36BCF88AD102CFDAA5060BN3PR1201MB0963_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpPbiAyIEF1Z3VzdCAyMDE2IGF0IDA4OjU2LCBSaWNoYXJkIFpoYW5nIDxyaWNoYXJkLnpoYW5n
QHBpY2E4LmNvbTxtYWlsdG86cmljaGFyZC56aGFuZ0BwaWNhOC5jb20+PiB3cm90ZToNCmNoZWNr
aW5nIGZvciB4bWwyLWNvbmZpZy4uLiB5ZXMNCkVSUk9SOiAvdXNyL2Jpbi94bWwyLWNvbmZpZyBz
aG91bGQgbm90IGJlIHVzZWQsIHVzZSBhbiBhbHRlcm5hdGl2ZSBzdWNoIGFzIHBrZy1jb25maWcN
CkVSUk9SOiAvdXNyL2Jpbi94bWwyLWNvbmZpZyBzaG91bGQgbm90IGJlIHVzZWQsIHVzZSBhbiBh
bHRlcm5hdGl2ZSBzdWNoIGFzIHBrZy1jb25maWcNCmNoZWNraW5nIGZvciB4bWxET01XcmFwUmVj
b25jaWxlTmFtZXNwYWNlcyBpbiAtbHhtbDIuLi4gbm8NCmNoZWNraW5nIGZvciB4c2x0LWNvbmZp
Zy4uLiB5ZXMNCkVSUk9SOiAvdXNyL2Jpbi94c2x0LWNvbmZpZyBzaG91bGQgbm90IGJlIHVzZWQs
IHVzZSBhbiBhbHRlcm5hdGl2ZSBzdWNoIGFzIHBrZy1jb25maWcNCkVSUk9SOiAvdXNyL2Jpbi94
c2x0LWNvbmZpZyBzaG91bGQgbm90IGJlIHVzZWQsIHVzZSBhbiBhbHRlcm5hdGl2ZSBzdWNoIGFz
IHBrZy1jb25maWcNCg0KVGhpcyBpcyB0aGUgcHJvYmxlbS4gIHhtbDItY29uZmlnIGFuZCB4c2x0
LWNvbmZpZyBhcmUgYnJva2VuIGluIGNyb3NzLWNvbXBpbGUgc2l0dWF0aW9ucywgc28geW91IG5l
ZWQgdG8gcGF0Y2ggbGlibmV0Y29uZidzIGNvbmZpZ3VyZS5hYzxodHRwOi8vY29uZmlndXJlLmFj
PiB0byB1c2UgcGtnY29uZmlnIGluc3RlYWQgb2YgdGhvc2Ugc2NyaXB0cy4NCg0KUm9zcw0KDQoN
ClRoYW5rcy4NCkJlc3QgUmVnYXJkLg0KDQo=

--_000_BN3PR1201MB0963F23F36BCF88AD102CFDAA5060BN3PR1201MB0963_
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
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJcQOWui+S9kyI7DQoJ
cGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0K
cC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0K
CW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5
OuWui+S9kzt9DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0
eTo5OTsNCgljb2xvcjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNp
dGVkLCBzcGFuLk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsN
Cgljb2xvcjpwdXJwbGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWls
U3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbDsNCglmb250LWZhbWlseToiQ2FsaWJy
aSIsc2Fucy1zZXJpZjsNCgljb2xvcjojMUY0OTdEO30NCnNwYW4uRW1haWxTdHlsZTE4DQoJe21z
by1zdHlsZS10eXBlOnBlcnNvbmFsLWNvbXBvc2U7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNh
bnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5
bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9
DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo2MTIuMHB0IDc5Mi4wcHQ7DQoJbWFyZ2luOjcy
LjBwdCA5MC4wcHQgNzIuMHB0IDkwLjBwdDt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29y
ZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFw
ZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZd
LS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+
DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3ht
bD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IlpILUNOIiBsaW5rPSJibHVlIiB2
bGluaz0icHVycGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8ZGl2Pg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj48bzpwPiZuYnNwOzwvbzpw
Pjwvc3Bhbj48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4t
VVMiPk9uIDIgQXVndXN0IDIwMTYgYXQgMDg6NTYsIFJpY2hhcmQgWmhhbmcgJmx0OzxhIGhyZWY9
Im1haWx0bzpyaWNoYXJkLnpoYW5nQHBpY2E4LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnJpY2hhcmQu
emhhbmdAcGljYTguY29tPC9hPiZndDsgd3JvdGU6PG86cD48L286cD48L3NwYW4+PC9wPg0KPGJs
b2NrcXVvdGUgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci1sZWZ0OnNvbGlkICNDQ0NDQ0MgMS4w
cHQ7cGFkZGluZzowY20gMGNtIDBjbSA2LjBwdDttYXJnaW4tbGVmdDo0LjhwdDttYXJnaW4tcmln
aHQ6MGNtIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6
YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzt0ZXh0LWF1dG9zcGFjZTpub25lIj4NCjxz
cGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+Y2hlY2tpbmcgZm9yIHht
bDItY29uZmlnLi4uIHllczwvc3Bhbj48c3BhbiBsYW5nPSJFTi1VUyI+PG86cD48L286cD48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1zby1tYXJnaW4tdG9wLWFsdDph
dXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvO3RleHQtYXV0b3NwYWNlOm5vbmUiPg0KPHNw
YW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5FUlJPUjogL3Vzci9iaW4v
eG1sMi1jb25maWcgc2hvdWxkIG5vdCBiZSB1c2VkLCB1c2UgYW4gYWx0ZXJuYXRpdmUgc3VjaCBh
cyBwa2ctY29uZmlnPC9zcGFuPjxzcGFuIGxhbmc9IkVOLVVTIj48bzpwPjwvbzpwPjwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibXNvLW1hcmdpbi10b3AtYWx0OmF1dG87
bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG87dGV4dC1hdXRvc3BhY2U6bm9uZSI+DQo8c3BhbiBs
YW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPkVSUk9SOiAvdXNyL2Jpbi94bWwy
LWNvbmZpZyBzaG91bGQgbm90IGJlIHVzZWQsIHVzZSBhbiBhbHRlcm5hdGl2ZSBzdWNoIGFzIHBr
Zy1jb25maWc8L3NwYW4+PHNwYW4gbGFuZz0iRU4tVVMiPjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28t
bWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzt0ZXh0LWF1dG9zcGFjZTpub25lIj4NCjxzcGFuIGxhbmc9
IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+Y2hlY2tpbmcgZm9yIHhtbERPTVdyYXBS
ZWNvbmNpbGVOYW1lc3BhY2VzIGluIC1seG1sMi4uLiBubzwvc3Bhbj48c3BhbiBsYW5nPSJFTi1V
UyI+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1z
by1tYXJnaW4tdG9wLWFsdDphdXRvO21zby1tYXJnaW4tYm90dG9tLWFsdDphdXRvO3RleHQtYXV0
b3NwYWNlOm5vbmUiPg0KPHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTEuMHB0
Ij5jaGVja2luZyBmb3IgeHNsdC1jb25maWcuLi4geWVzPC9zcGFuPjxzcGFuIGxhbmc9IkVOLVVT
Ij48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIiBzdHlsZT0ibXNv
LW1hcmdpbi10b3AtYWx0OmF1dG87bXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG87dGV4dC1hdXRv
c3BhY2U6bm9uZSI+DQo8c3BhbiBsYW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQi
PkVSUk9SOiAvdXNyL2Jpbi94c2x0LWNvbmZpZyBzaG91bGQgbm90IGJlIHVzZWQsIHVzZSBhbiBh
bHRlcm5hdGl2ZSBzdWNoIGFzIHBrZy1jb25maWc8L3NwYW4+PHNwYW4gbGFuZz0iRU4tVVMiPjxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtc28tbWFy
Z2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6YXV0bzt0ZXh0LWF1dG9zcGFj
ZTpub25lIj4NCjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+RVJS
T1I6IC91c3IvYmluL3hzbHQtY29uZmlnIHNob3VsZCBub3QgYmUgdXNlZCwgdXNlIGFuIGFsdGVy
bmF0aXZlIHN1Y2ggYXMgcGtnLWNvbmZpZzwvc3Bhbj48c3BhbiBsYW5nPSJFTi1VUyI+PG86cD48
L286cD48L3NwYW4+PC9wPg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+PGJyPg0KVGhpcyBpcyB0aGUgcHJvYmxlbS4gJm5ic3A7
eG1sMi1jb25maWcgYW5kIHhzbHQtY29uZmlnIGFyZSBicm9rZW4gaW4gY3Jvc3MtY29tcGlsZSBz
aXR1YXRpb25zLCBzbyB5b3UgbmVlZCB0byBwYXRjaCBsaWJuZXRjb25mJ3MNCjxhIGhyZWY9Imh0
dHA6Ly9jb25maWd1cmUuYWMiPmNvbmZpZ3VyZS5hYzwvYT4gdG8gdXNlIHBrZ2NvbmZpZyBpbnN0
ZWFkIG9mIHRob3NlIHNjcmlwdHMuPG86cD48L286cD48L3NwYW4+PC9wPg0KPC9kaXY+DQo8ZGl2
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9zcGFuPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIj5Sb3NzPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTAuNXB0O2ZvbnQtZmFt
aWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+PG86cD4mbmJzcDs8L286cD48L3Nw
YW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJm
b250LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJp
ZiI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJmb250LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZxdW90
O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+VGhhbmtzLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXpl
OjEwLjVwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPkJlc3Qg
UmVnYXJkLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFu
IGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjEwLjVwdDtmb250LWZhbWlseTomcXVvdDtD
YWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjwv
ZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_BN3PR1201MB0963F23F36BCF88AD102CFDAA5060BN3PR1201MB0963_--
