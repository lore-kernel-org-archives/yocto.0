Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F78EE006E9; Tue, 31 Mar 2015 21:52:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02724E0056E
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 21:52:53 -0700 (PDT)
Received: from epcpsbgr1.samsung.com
	(u141.gpu120.samsung.co.kr [203.254.230.141])
	by mailout1.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NM400IIM2VZ89C0@mailout1.samsung.com> for
	yocto@yoctoproject.org; Wed, 01 Apr 2015 13:52:47 +0900 (KST)
Received: from epcpsbgx1.samsung.com ( [172.20.52.122])
	by epcpsbgr1.samsung.com (EPCPMTA) with SMTP id EA.22.17016.F997B155;
	Wed, 1 Apr 2015 13:52:47 +0900 (KST)
X-AuditID: cbfee68d-f79296d000004278-31-551b799fdd9f
Received: from epmailer01 ( [203.254.219.141])
	by epcpsbgx1.samsung.com (EPCPMTA) with SMTP id 2C.6C.15273.2997B155;
	Wed, 1 Apr 2015 13:52:34 +0900 (KST)
Date: Wed, 01 Apr 2015 04:52:34 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: Maninder Singh <maninder1.s@samsung.com>,
	Mark Hatle <mark.hatle@windriver.com>, Khem Raj <raj.khem@gmail.com>
MIME-version: 1.0
X-MTR: 20150401045114152@maninder1.s
Msgkey: 20150401045114152@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150401043517428@maninder1.s
X-ParentMTR: 20150401043517428@maninder1.s
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <697078699.208391427863953097.JavaMail.weblogic@epmlwas09b>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCIsWRmVeSWpSXmKPExsWyRsSkSnd+pXSowZbTXBaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CV8XlDC2NBj1JF46bHjA2MMxS7GDk5hATUJBbtfczWxcjBISFg
	IvF5QRZIWEJATOLCvfVAYS6gkqWMEn1rNzBBJEwk5vasZoZIzGGU+NyzkR0kwSKgIjH38kMW
	EJtNQF/i7N51zCC2sEC6xJqDTxlBbBGBGolrr3ezgyxjFjCVWDujFOIGRYn1N56AlfAKCEqc
	nPmEBWKXisT37YfZIeKqEs9+rmSEiMtJLJl6GeoeXokZ7U9ZYOLTvq5hhrClJc7P2sAI88zi
	74+h4vwSx27vgOoVkJh65iBUjabErtvTmSDhoC2x6YIYTPmuU8uZYVbd3zIXqlVCYmvLE1YQ
	mxno/CndD9khbAOJI4vmsKJ7hVfAXWLm9PPg8JQQmMghsezpdcYJjEqzkNTNQjJrFpJZyGoW
	MLKsYhRNLUguKE5KLzLUK07MLS7NS9dLzs/dxAhMDKf/PevdwXj7gPUhRgEORiUeXo0I6VAh
	1sSy4srcQ4ymwFiayCwlmpwPTD95JfGGxmZGFqYmpsZG5pZmSuK8ilI/g4UE0hNLUrNTUwtS
	i+KLSnNSiw8xMnFwSjUwHpc/vKQqxH/izulyy+RFGYNsfZ/O2djTascgXhYf/WtP0sSne731
	Zs76o7C1b5fBWVldNhPOU03bd79tWa2kK3Mqoa2b9fbjtvXBEzcViavaevBMbXl6ND1JLZwh
	1fx/lePb01Mmmx+e/ffY4/77S0SUC3zlmyuslR/p9Upe/Nz0+qJlwL/PSizFGYmGWsxFxYkA
	eVqxowcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGKsWRmVeSWpSXmKPExsVy+t/tXt1JldKhBi938llMermGzYHRo/1E
	H1sAY1SaTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7Q
	VCWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVK0obmRnpGBnqmRnqFprJWhgYGRKVBNQlrG
	5w0tjAU9ShWNmx4zNjDOUOxi5OQQElCTWLT3MRuILSFgIjG3ZzUzhC0mceHeeqA4F1DNHEaJ
	zz0b2UESLAIqEnMvP2QBsdkE9CXO7l0H1iAskC6x5uBTRhBbRKBG4trr3UD1HBzMAqYSa2eU
	QuxSlFh/4wlYCa+AoMTJmU9YIHapSHzffpgdIq4q8eznSkaIuJzEkqmXmSBsXokZ7U9ZYOLT
	vq6BulNa4vysDYwwNy/+/hgqzi9x7PYOqF4BialnDkLVaErsuj2dCeQ0CQFtiU0XxGDKd51a
	zgyz6v6WuVCtEhJbW56wgtjMQOdP6X7IDmEbSBxZNIcV3Su8Au4SM6efZ5vAKDsLSWoWkvZZ
	SNqR1SxgZFnFKJpakFxQnJReYahXnJhbXJqXrpecn7uJEZyGni3cwfjlvPUhRgEORiUeXs0I
	6VAh1sSy4srcQ4wSHMxKIrzbj0iFCvGmJFZWpRblxxeV5qQWH2I0BcbZRGYp0eR8YIrMK4k3
	NDYxNzU2tTAwNDc3UxLn/X8uN0RIID2xJDU7NbUgtQimj4mDU6qB0WartIGHfW174KREnjP2
	3lNCXAQ5JqvKfPkR6flvfV73p/6NZwJKX102ZT/zfm95RZlz/Ow5e2ddEg1mfanDKleSGh3C
	LxpppjODMS0zvD62dKKu0CvnFxuiLv5j/XyUWWW64US+pP1PTsr4X7Vqfbn4091K384JP99q
	TfxTf3vugh7LK2tKlFiKMxINtZiLihMBI5ZlRVkDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [prelink-cross] [PATCH 1/1] Remove extra check for ld-linux.so.3 in strcmp
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maninder1.s@samsung.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Apr 2015 04:52:57 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGkgTWFyaywNCnRoZXJlIGlzIG9uZSB0eXBvIGVycm9yIGluIHRoaXM6LQ0KaHR0cDovL2dpdC55
b2N0b3Byb2plY3Qub3JnL2NnaXQvY2dpdC5jZ2kvcHJlbGluay1jcm9zcy9jb21taXQvP2g9Y3Jv
c3NfcHJlbGlua19zdGFnaW5nJmlkPWZkOTlhNDcxMjRiMWYxMTQxZjJhZmU0ZTg3ZGE3Y2IyMDlj
YzI5MjcNCisgc3JjL2dldC5jOiBSZW1vdmUgZXh0cmEgY2hlY2tmIHJvIGxkLWxpbnV4LnNvLjMg
aW4gc3RyY21wDQoqKiogY2hlY2sgZm9yICoqKioqDQpUaGFua3MNCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCkhpIE1hcmssDQpTb3JyeSBmb3IgbWlzc2luZyBJRCBp
biBTaWduZWQtb2ZmLWJ5OiBNYW5pbmRlciBTaW5naCANClNpZ25lZC1vZmYtYnk6IE1hbmluZGVy
IFNpbmdoIA0KDQpJIHN1Z2dlc3RlZCB0aGF0IGNoYW5nZSBqdXN0IHRvIHJlbW92ZSByZWR1bmRh
dCBjb2RlLg0KVGhpcyBsb29rcyBPayB0byBtZSANCmh0dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9y
Zy9jZ2l0L2NnaXQuY2dpL3ByZWxpbmstY3Jvc3MvY29tbWl0Lz9oPWNyb3NzX3ByZWxpbmtfc3Rh
Z2luZyZpZD1mZDk5YTQ3MTI0YjFmMTE0MWYyYWZlNGU4N2RhN2NiMjA5Y2MyOTI3DQoNClRoYW5r
cyBhIGxvdA0KDQpNYW5pbmRlciBTaW5naA0KDQo+IEhtbSwgSSBuZXZlciBzYXcgdGhlIG9yaWdp
bmFsIGVtYWlsIChvciB0aHJlYWQpLg0KDQooSSBoYXZlIG5vIHJlY29yZCBvZiBldmVyIHJlY2Vp
dmluZyB0aGUgb3JpZ2luYWwgZW1haWwuICBIb3cgb2RkLi4uKQ0KDQo+IFdoYXQgaXMgdGhlIGNv
bnRleHQgZm9yIHRoaXMsIHNpbXBseSB0aGF0IHRoZXJlIGFyZSBtdWx0aXBsZSBsZC1saW51eC5k
by4zIGluDQo+IHRoZSBzYW1lIGNoZWNrIGFuZCByZW1vdmUgb25lIG9yIHRoZSBvdGhlciBpcyBt
b3JlIGVmZmljaWVudD8NCj4gDQo+IChJIHN1c3BlY3QgaXQgd2lsbCBiZSBvcHRpbWl6ZWQgb3V0
LCBidXQgSSBjYW4gbWFrZSB0aGUgY2hhbmdlIHF1aWNrbHkgZW5vdWdoLikNCg0KSSBoYXZlIG1l
cmdlZCB0aGUgY2hhbmdlLCBzbGlnaHRseSBkaWZmZXJlbnQgZm9ybWF0Lg0KDQpTZWU6DQoNCmh0
dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQuY2dpL3ByZWxpbmstY3Jvc3MvY29t
bWl0Lz9oPWNyb3NzX3ByZWxpbmtfc3RhZ2luZyZpZD1mZDk5YTQ3MTI0YjFmMTE0MWYyYWZlNGU4
N2RhN2NiMjA5Y2MyOTI3DQoNClRoaXMgaXMgaW4gdGhlIHN0YWdpbmcgYXJlYS4NCg0KTWFuaW5k
ZXIgaWYgdGhpcyBpcyBvaywgSSdtIG1vcmUgdGhlbiBoYXBweSB0byBhZGQgeW91ciBzaWduZWQt
b2ZmLWJ5IGxpbmUgdG8NCnRoZSBjb21taXQgYmVmb3JlIG1vdmluZyBpdCBpbnRvIHRoZSBjcm9z
c19wcmVsaW5rIGJyYW5jaC4NCg0KVGhhbmtzIQ0KLS1NYXJrDQoNCj4gLS1NYXJrDQo+IA0KPiBP
biAzLzMxLzE1IDE6MDEgUE0sIEtoZW0gUmFqIHdyb3RlOg0KPj4NCj4+PiBPbiBNYXIgMzAsIDIw
MTUsIGF0IDg6MTQgUE0sIE1hbmluZGVyIFNpbmdoID4+PiA+IHdyb3RlOg0KPj4+DQo+Pj4gSGks
DQo+Pj4NCj4+Pg0KPj4+IEZyb20gMDVhYjc3OWFmMjRiYWVmOTU3OTcyYWExZDJhOWU5ZDI5MjEy
Y2M0YyBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDENCj4+PiBGcm9tOiBNYW5pbmRlciBTaW5naCA+
DQo+Pj4gRGF0ZTogVGh1LCAxOSBNYXIgMjAxNSAwMzowMjo1OSArMDUzMA0KPj4+IFN1YmplY3Q6
IFtQQVRDSCAxLzFdIFJlbW92ZSBleHRyYSBjaGVjayBmb3IgbGQtbGludXguc28uMyBpbiBzdHJj
bXANCj4+PiAgIA0KPj4+IGlmICghIHN0cmNtcCAoc29uYW1lLCAibGQtbGludXguc28uMiIpDQo+
Pj4gICAgICAgfHwgISBzdHJjbXAgKHNvbmFtZSwgImxkLWxpbnV4LnNvLjMiKSAgLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tPg0KPj4+ICAgICAgIHx8ICEgc3RyY21wIChzb25hbWUsICJsZC5zby4x
IikNCj4+PiAgICAgICB8fCAhIHN0cmNtcCAoc29uYW1lLCAibGQtbGludXgtaWE2NC5zby4yIikN
Cj4+PiAgICAgICB8fCAhIHN0cmNtcCAoc29uYW1lLCAibGQtbGludXgteDg2LTY0LnNvLjIiKQ0K
Pj4+ICAgICAgIHx8ICEgc3RyY21wIChzb25hbWUsICJsZDY0LnNvLjEiKQ0KPj4+ICAgICAgIHx8
ICEgc3RyY21wIChzb25hbWUsICJsZC1saW51eC5zby4zIikgLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tPg0KPj4+IHJlZHVuZGFudCBjb2RlDQo+Pj4gICAgICAgfHwgISBzdHJjbXAgKHNvbmFt
ZSwgImxkLWxpbnV4LWFybWhmLnNvLjMiKSkNCj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IE1hbmlu
ZGVyIFNpbmdoIA0KPj4+DQo+Pg0KPj4gdXNlIEZpcnN0IExhc3QgDQo+Pg0KPj4+IC0tLQ0KPj4+
IHNyYy9nZXQuYyB8ICAgIDEgLQ0KPj4+IDEgZmlsZXMgY2hhbmdlZCwgMCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9ucygtKQ0KPj4+IGRpZmYgLS1naXQgYS9zcmMvZ2V0LmMgYi9zcmMvZ2V0LmMN
Cj4+PiBpbmRleCA2YTYzZjAyLi5hMzQ2NjhhIDEwMDY0NA0KPj4+IC0tLSBhL3NyYy9nZXQuYw0K
Pj4+ICsrKyBiL3NyYy9nZXQuYw0KPj4+IEBAIC0zNSw3ICszNSw2IEBAIGlzX2xkc29fc29uYW1l
IChjb25zdCBjaGFyICpzb25hbWUpDQo+Pj4gICAgICAgIHx8ICEgc3RyY21wIChzb25hbWUsICJs
ZC1saW51eC1pYTY0LnNvLjIiKQ0KPj4+ICAgICAgICB8fCAhIHN0cmNtcCAoc29uYW1lLCAibGQt
bGludXgteDg2LTY0LnNvLjIiKQ0KPj4+ICAgICAgICB8fCAhIHN0cmNtcCAoc29uYW1lLCAibGQ2
NC5zby4xIikNCj4+PiAtICAgICAgfHwgISBzdHJjbXAgKHNvbmFtZSwgImxkLWxpbnV4LnNvLjMi
KQ0KPj4+ICAgICAgICB8fCAhIHN0cmNtcCAoc29uYW1lLCAibGQtbGludXgtYXJtaGYuc28uMyIp
KQ0KPj4+ICAgICAgcmV0dXJuIDE7DQo+Pj4gICAgcmV0dXJuIDA7DQo+Pj4gLS0gDQo+Pj4gMS43
LjENCj4+Pg0KPj4+DQo+Pj4gVGhhbmtzIGFuZCBSZWdhcmRzLA0KPj4+IE1hbmluZGVyIFNpbmdo
DQo+Pj4NCj4+PiA8MjAxNTAzMzEwODQ0MDEyX1FLTk1CRElGLmdpZj4NCj4+Pg0KPj4+IC0tIA0K
Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+Pj4g
eW9jdG8gbWFpbGluZyBsaXN0DQo+Pj4geW9jdG9AeW9jdG9wcm9qZWN0Lm9yZyANCj4+PiBodHRw
czovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4+DQo+IA==



