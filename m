Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34716E006E9; Tue, 31 Mar 2015 21:41:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.34 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA8CAE0056E
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 21:41:43 -0700 (PDT)
Received: from epcpsbgr3.samsung.com
	(u143.gpu120.samsung.co.kr [203.254.230.143])
	by mailout4.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NM400C3N2DGRI10@mailout4.samsung.com> for
	yocto@yoctoproject.org; Wed, 01 Apr 2015 13:41:40 +0900 (KST)
Received: from epcpsbgx3.samsung.com ( [172.20.52.126])
	by epcpsbgr3.samsung.com (EPCPMTA) with SMTP id 3C.F8.18484.3077B155;
	Wed, 1 Apr 2015 13:41:39 +0900 (KST)
X-AuditID: cbfee68f-f791c6d000004834-23-551b770361b6
Received: from epmailer03 ( [203.254.219.143])
	by epcpsbgx3.samsung.com (EPCPMTA) with SMTP id D6.A9.14702.EF67B155;
	Wed, 1 Apr 2015 13:41:34 +0900 (KST)
Date: Wed, 01 Apr 2015 04:41:34 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: Mark Hatle <mark.hatle@windriver.com>, Khem Raj <raj.khem@gmail.com>,
	Maninder Singh <maninder1.s@samsung.com>
MIME-version: 1.0
X-MTR: 20150401043517428@maninder1.s
Msgkey: 20150401043517428@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150401043517428@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <366908481.207361427863292912.JavaMail.weblogic@epmlwas09b>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrMIsWRmVeSWpSXmKPExsWyRsSkTpe5XDrUYOdbUYtJL9ewOTB6tJ/o
	YwtgjOKySUnNySxLLdK3S+DKePPQoqBNvuLKjqlMDYxz5LoYOTmEBNQkFu19zAZiSwiYSOw9
	dZAdwhaTuHBvPRtEzVJGidfnsmBqpl2bxdTFyAUUn8MocfDUBUaQBIuAikTrrz/MIDabgL7E
	2b3rwGxhgWSJY293gw0VEaiROLJyKdBQDg5mAVOJtTNKIeYrSqy/8QRsDK+AoMTJmU9YIHap
	SHy6cIgJIq4qMbfzDjNEXE5iydTLTBA2r8SM9qcsMPFpX9dA1UhLnJ+1gRHml8XfH0PF+SWO
	3d4B1SsgMfXMQagaTYldt6dDxfkk1ix8ywJTv+vUcmaYXfe3zIWqkZDY2vKEFcRmBrp/SvdD
	dgjbQOLIojms6H7hFXCX+HBtLVRvL4fErV3CExiVZiEpm4Vk1Cwko5DVLGBkWcUomlqQXFCc
	lF5krFecmFtcmpeul5yfu4kRmBZO/3vWv4Px7gHrQ4wCHIxKPLwaEdKhQqyJZcWVuYcYTYGx
	NJFZSjQ5H5h88kriDY3NjCxMTUyNjcwtzZTEeRdK/QwWEkhPLEnNTk0tSC2KLyrNSS0+xMjE
	wSnVwHgqQPJS+ZcJpVJWwrbFk7049CVE7VsrU4tNHzqqMt7Z9p5H6WFOBptMgqyP1KNTVpfq
	fgnGPF3SOXnNi4pmh61Mgbz3nk9XMNtZri7gsip8XewZpY6FfQbPeiUWZ3fHzt++8nZZQkTn
	5akCh5S6V94z3jTztjDX5e6L9ZtvbjmbrxA9fTFnhBJLcUaioRZzUXEiAGtm+88GAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGKsWRmVeSWpSXmKPExsVy+t/tft1/ZdKhBhOns1hMermGzYHRo/1E
	H1sAY1SaTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7Q
	VCWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVK0obmRnpGBnqmRnqFprJWhgYGRKVBNQlrG
	m4cWBW3yFVd2TGVqYJwj18XIySEkoCaxaO9jNhBbQsBEYtq1WUwQtpjEhXvrgeJcQDVzGCUO
	nrrACJJgEVCRaP31hxnEZhPQlzi7dx2YLSyQLHHs7W52EFtEoEbiyMqlQM0cHMwCphJrZ5RC
	7FKUWH/jCdgYXgFBiZMzn7BA7FKR+HThEBNEXFVibucdZoi4nMSSqZeh7uGVmNH+lAUmPu3r
	GqgaaYnzszYwwty8+PtjqDi/xLHbO6B6BSSmnjkIVaMpsev2dKg4n8SahW9ZYOp3nVrODLPr
	/pa5UDUSEltbnrCC2MxA90/pfsgOYRtIHFk0hxXdL7wC7hIfrq1lmsAoOwtJahaS9llI2pHV
	LGBkWcUomlqQXFCclF5hrFecmFtcmpeul5yfu4kRnIaeLd7B+P+89SFGAQ5GJR7exijpUCHW
	xLLiytxDjBIczEoivNuPSIUK8aYkVlalFuXHF5XmpBYfYjQFRtpEZinR5HxgiswriTc0NjE3
	NTa1MDA0NzdTEuf9fy43REggPbEkNTs1tSC1CKaPiYNTqoFR8FBcrwa7Djdrf9nybwcl505J
	5mu80PsgdY76t+XN/UckIjvK/nrNvymmUrB0W84vlbbQ11xp/xpkeFgL8x94xf9Q2ZXKM0Ht
	AE/DY0Yz+Q0h2ZxiBZdfxHxIW6j2vqm/x3e77yRp+YlmNdt21bDkqlhNbOz6vSaz7wjvEbsL
	87TspbtClymxFGckGmoxFxUnAgB/zA04WQMAAA==
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
X-List-Received-Date: Wed, 01 Apr 2015 04:41:49 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGkgTWFyaywNClNvcnJ5IGZvciBtaXNzaW5nIElEIGluIFNpZ25lZC1vZmYtYnk6IE1hbmluZGVy
IFNpbmdoIA0KU2lnbmVkLW9mZi1ieTogTWFuaW5kZXIgU2luZ2ggPG1hbmluZGVyMS5zQHNhbXN1
bmcuY29tPg0KDQpJIHN1Z2dlc3RlZCB0aGF0IGNoYW5nZSBqdXN0IHRvIHJlbW92ZSByZWR1bmRh
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



