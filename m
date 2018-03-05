Return-Path: <external.Rob.vanRiel@nl.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19C52E00DE0; Mon,  5 Mar 2018 07:12:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from de-out1.bosch-org.com (de-out1.bosch-org.com [139.15.230.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4C36E0074C
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 07:12:31 -0800 (PST)
Received: from fe0vm1649.rbesz01.com
	(lb41g3-ha-dmz-psi-sl1-mailout.fe.ssn.bosch.com [139.15.230.188])
	by fe0vms0187.rbdmz01.com (Postfix) with ESMTPS id 3zw3L634Wnz1XLFYb
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 16:12:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nl.bosch.com;
	s=2015-01-21; t=1520262750;
	bh=lAeBgR9Vy9muYEkVAIxrOyiQm5CJtS0wHpPjJXTZwBE=; l=10;
	h=From:From:Reply-To:Sender;
	b=WN/JTxszV4O17Tt0/dEACjmeEnu4mBf3bbipE3DwYoFqgZ+kG5XRf2vQ3rEmdYWmx
	lnB2SwikMxAopXldZBV2Y+QB4wy1R00wEfIY7BcBYwfG1Vjrw6E46CbA6BBRYqrIZa
	NEcNDX7KZNafsIcPmgs6weiLVrLS4EOPjA0D/cNU=
Received: from fe0vm7918.rbesz01.com (unknown [10.58.172.176])
	by fe0vm1649.rbesz01.com (Postfix) with ESMTPS id 3zw3L62fWBz1q
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 16:12:30 +0100 (CET)
X-AuditID: 0a3aad10-271ff7000001805c-13-5a9d5e5e62cf
Received: from fe0vm1652.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm7918.rbesz01.com (SMG Outbound) with SMTP id
	6A.68.32860.E5E5D9A5; Mon,  5 Mar 2018 16:12:30 +0100 (CET)
Received: from FE-MBX2022.de.bosch.com (fe-mbx2022.de.bosch.com [10.3.231.32])
	by fe0vm1652.rbesz01.com (Postfix) with ESMTPS id 3zw3L60PMKzBctd
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 16:12:30 +0100 (CET)
Received: from FE-MBX2023.de.bosch.com (10.3.231.33) by
	FE-MBX2022.de.bosch.com (10.3.231.32) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Mon, 5 Mar 2018 16:12:29 +0100
Received: from FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7]) by
	FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7%3]) with mapi id
	15.01.1415.002; Mon, 5 Mar 2018 16:12:29 +0100
From: "EXTERNAL van Riel Rob (ENTER, BT-CO/ENG1.1)"
	<external.Rob.vanRiel@nl.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] bitbake: git and patch problem
Thread-Index: AdO0bDg9YcONI9sMQR2mVKfKBya5NQAFu6mAAAJt1sA=
Date: Mon, 5 Mar 2018 15:12:29 +0000
Message-ID: <37c9bd2f2aee4dc2bd27e346e96eee87@nl.bosch.com>
References: <84f7a513eb7140518cc715c1e3d4bf9e@nl.bosch.com>
	<55456292-ab67-8e2c-f4eb-88293d29d25d@windriver.com>
In-Reply-To: <55456292-ab67-8e2c-f4eb-88293d29d25d@windriver.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.120.14.72]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA22TbUxTVxjHObe39dL1yqVQ+tCtRO7caybC0MjUOCF+IPEDZss+0Cjarhfa
	0BfWWxphbmGsjCG4iLO8XFt1ExoxGpBBIIaGpVOkBGW6l7AldSLOAetcsoIj2+x2LxdsP+zL
	yf/8n/N7nuc8J4eQKE8SGsJsczIOm95Cy+S4fPsl7aayMp8ulzudX3Bi/qJsNypuHP9Etg/p
	5DuNjMXsYhybdx2SmyabLqOqoPrwxJ0P8Tq0mHEUJRNAbYE27yWZoJVUOwYLY+8dRXJeTyP4
	eOm6VNxEEJy9FcHFTQBBa/1DHiEIGVUKsYadAp1ObYW5scWVTGlUPsyEvUj0t4Cv3ScV9Xbo
	Gzq+onFqI/x0dRAXNEntgOXojdUuHHBt6rFE0MlUIRwLPFo5gygtNNU9xAQtodTw4/0zmHgD
	CrpGpiSiVsH8bEwq6g3Q19guFdqUUC9B75XNIpoNJ5tn1ollUyHUeR8/jjK4hKxcnOASCC6B
	OIvwC0hVzuS6rNteyyvIcRgYtjY3L+dtu7UfiY9CDSMuZAgiikC0gizY69MppXoXW2MNoq0E
	RqvIMgVvrTfYjTUmPWs66Ki2MCytIVFSUpIy7YnNVhusZpY1221BBISETiffL+U50qivqWUc
	dhELoqcJnFaTLcYjOiVVoXcylQxTxTjWojsIggay9gAPpjqYCuZwudniXAvTWrFmRmIksSxG
	JAdRPqHga9cLKUi2Sm9lzRWreKaIK9fcODqB3iIeBe5+JCGm537l1wF/hF//6g80SZS4zW5j
	NGry+n4+IyWwpmrbk540z5DULk6nVCUE4nkX0A+In2oa+bzQjoL/DfFugBxO85YqU1fNOPRq
	N89QtxVwrqcZQceVcQyWe1pxiHIzOAT9bin8Ez4thW+vnZFB7+1uGUQ+bV0Hk1MTBHz19c8E
	DPuGngKuYW49DPzWkgLRaHcKDIcvp8AXI/+mQMdyBwWjQyEKFn4fUEKsbVAF0+dPAIx3ejKh
	43FIA57ZB1pY7oplwb3g9xvgaue5bBj1/JkNnlDgWTg1+mAjeMPjLyzwo8b4UU+FvcKonXrn
	/4x61Y3fTlOH+rMylyZvHrxbsn/x3d5703vkX9787u+2wTvpxpayzj66YT7MvOjDQt3PTbhR
	5HXLplf824q1XT1HVOWzrpGYenJvwy+0v/CNPe5Ac1HhbueNzz21Hvd5w1JRSckhh9uVle/D
	Ko811Rf9EU3/jBsrfufCrcpS7M0c/ynZB42x5pFvaJw16fNeljhY/X+SeB5epwQAAA==
Subject: Re: bitbake: git and patch problem
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
X-List-Received-Date: Mon, 05 Mar 2018 15:12:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCcnVjZSBBc2hmaWVsZCBbbWFp
bHRvOmJydWNlLmFzaGZpZWxkQHdpbmRyaXZlci5jb21dDQo+IFNlbnQ6IG1hYW5kYWcgNSBtYWFy
dCAyMDE4IDE1OjA5DQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGJpdGJha2U6IGdpdCBhbmQgcGF0
Y2ggcHJvYmxlbQ0KPiANCj4gT3V0IG9mIGN1cmlvc2l0eSAuLiB3aHkgaXMgdGhhdCB1bmV4cGVj
dGVkLCBvciBpbmNvbnZlbmllbnQgPyBJIG5ldmVyIHdhbnQgYSBnaXQNCj4gcmVwb3NpdG9yeSB0
byBoYXZlIGRpcnR5L3VuY2hlY2tlZCBpbiBmaWxlcywgc28gaGF2aW5nIHRoZSBidWlsZCBzeXN0
ZW0gYXBwbHkgYQ0KPiBwYXRjaCwgbWFrZSBzdXJlIGl0IGlzIGEgdmFsaWQgZm9ybWF0LCBzaWdu
ZWQtb2ZmLWJ5IGFuZCB0aGVuIGNvbW1pdHRlZCBpcyBhIGdvb2QNCj4gdGhpbmcuDQoNCkFjdWFs
bHksIEkgd291bGRuJ3QgZXZlbiB3YW50IHRvIGhhdmUgdGhlIHBhdGNoIGluIG15IHJlY2lwZXMs
IGFuZCBzaW1wbHkgY29tbWl0IHRoZSBjb2RlIG15c2VsZiwgZm9yIHByZXR0eSBtdWNoIHRoZSBy
ZWFzb25zIHlvdSBtZW50aW9uLiBIb3dldmVyLCB0aGlzIHBhcnRpY3VsYXIgcGllY2Ugb2Ygc291
cmNlIGNvZGUgaXMgc2hhcmVkIGJldHdlZW4gc2V2ZXJhbCBwcm9kdWN0cywgbm90IGFsbCBvZiB3
aGljaCBuZWVkIHRoZSBjaGFuZ2UuIFBlcm1hbmVudGx5IGFuZCB1bml2ZXJzYWxseSBtYWtpbmcg
dGhlIHJlbGV2YW50IGNoYW5nZSBpcyBvdXQsIHNvIHBhdGNoIGl0IGlzICh1bmxlc3MgSSBjYW4g
Y29tZSB1cCB3aXRoIGEgYmV0dGVyIHdheSB0byBmb3JjZSBhIHNpbmdsZSBkZWZpbmUgaW50byB0
aGUgYnVpbGQgcHJvY2VzczsgSSB0cmllZCBhZGRpbmcgdG8gQ0ZMQUdTLCBidXQgdGhhdCB3YXNu
J3QgcGlja2VkIHVwLiBPdGhlcnMgaGF2ZSB0YW5nbGVkIHdpdGggdGhpcyBmb3IgbGVzcyB0cml2
aWFsIGNoYW5nZXMgdG9vKS4NCkFkZGVkIHRvIHRoYXQgaXMgdGhhdCB0aGUgeW9jdG8gc3lzdGVt
IGlzIG91ciBkZSBmYWN0byBkZXZlbG9wbWVudCBlbnZpcm9ubWVudCwgdGhhdCBpcywgZGV2ZWxv
cG1lbnQgaXMgdHlwaWNhbGx5IGRvbmUgb24gd2hhdGV2ZXIgZW5kcyB1cCBpbiB0aGUgdG1wL3dv
cmsgZGlyZWN0b3JpZXMsIGFuZCBwdXNoZWQgdG8gdGhlIHZhcmlvdXMgdmVyc2lvbiBjb250cm9s
IHN5c3RlbXMgZnJvbSB0aGVyZS4gSSBkb24ndCByZWFsbHkgYmVsaWV2ZSB0aGlzIGlzIHRoZSBj
b3JyZWN0IHdheSB0byB1c2UgeW9jdG8sIGJ1dCBpdCdzIHdoYXQgSSBoYXZlIHRvIGRlYWwgd2l0
aC4NCkN1cnJlbnQgYmVoYXZpb3VyIGlzIHVuZXhwZWN0ZWQsIGJlY2F1c2UgSSB3b3VsZCBub3Qg
ZXhwZWN0IHlvY3RvIHRvIGJlIHRoZSBtZWRpdW0gZm9yIHB1c2hpbmcgY2hhbmdlcyBiYWNrIHVw
c3RyZWFtLiBJdCBpcyBpbmNvbnZlbmllbnQsIGJlY2F1c2UgdGhvc2UgZ2l0IGNsb25lcyBhcmUg
d2hhdCB3ZSB1c2UgdG8gbWFrZSBjaGFuZ2VzIGluLCBzb21lIG9mIHdoaWNoIGFyZSBmb3IgdGhl
IGdsb2JhbCBjb2RlIGJhc2UsIGFuZCBpbiB0aGF0IHNpdHVhdGlvbiwgSSB3b3VsZCBub3Qgd2Fu
dCB0byBoYXZlIHRvIHJvbGwgYmFjayBhbiBhdXRvbWF0aWMsIGxvY2FsIGNoYW5nZSBmaXJzdCBi
ZWZvcmUgZ2V0dGluZyB0byB3b3JrIG9uIHRoZSBnbG9iYWwgcGFydC4NCg0KPiA+IElzIHRoaXMg
ZXhwZWN0ZWQgYmVoYXZpb3VyLCBhbmQgaWYgc28sIGlzIHRoZXJlIGFueSB3YXkgdG8gcHJldmVu
dCBpdD8NCj4gDQo+IEl0IGlzLCBidXQgeW91IGNhbiBjaGFuZ2Ugd2hhdCBhcHBsaWVzIHRoZSBw
YXRjaC4NCj4gDQo+IEhhdmUgYSBsb29rIGF0IGNsYXNzZXMvcGF0Y2guYmJjbGFzcywgYW5kIGlu
IHBhcnRpY3VsYXIgdGhlIHZhcmlhYmxlIFBBVENIVE9PTC4NCj4gDQo+IElmIHlvdXJzIGlzIHNl
dCB0byAnZ2l0JywgZ2l0IHdpbGwgYmUgdXNlZC4gQnV0IGJ5IGRlZmF1bHQsIGl0IGlzIHR5cGlj
YWxseSBzZXQgdG8gJ3F1aWx0JyAuLg0KPiBzbyBpdCBoYXMgYmVlbiBjaGFuZ2VkIGZyb20gdGhl
IGRlZmF1bHQgaW4geW91ciBlbnZpcm9ubWVudC4NCg0KVGhhbmsgeW91LCB0aGlzIG1heSB3ZWxs
IGJlIGp1c3QgdGhlIGhpbnQgSSB3YXMgbG9va2luZyBmb3IuIEknbGwgZGlnIGluLCBhbmQgc2Vl
IHdoZXJlIHRoZSB0cmFpbCBsZWFkcy4NCg0KUm9iDQo=

