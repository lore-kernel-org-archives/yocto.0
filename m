Return-Path: <external.Rob.vanRiel@nl.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5193E00E4D; Tue,  6 Mar 2018 04:47:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 454E0E00971
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 04:47:53 -0800 (PST)
Received: from si0vm1948.rbesz01.com
	(lb41g3-ha-dmz-psi-sl1-mailout.fe.ssn.bosch.com [139.15.230.188])
	by si0vms0217.rbdmz01.com (Postfix) with ESMTPS id 3zwc4n0h8qz4f3kRV
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 13:47:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nl.bosch.com;
	s=2015-01-21; t=1520340473;
	bh=ZPwWhVsc71kBdY0xtvw5bHQRy7hoKtqRt3CiD1Y7jlA=; l=10;
	h=From:From:Reply-To:Sender;
	b=kEqwZ4Jse9pRn0L2MsGVA6PlsT5nNN3MElpIXKguQxDbZcgv/6e/RZB/v5eR3I3jv
	Z4rm9VaExIcokU+ns99jXhxjX+BFcy4737TuDXJyu4k2zEbvJtmh6fQ6AnI9fE+CUY
	lAfbh/rA2N++2udOfFKqh2JGuxVmDieoXraMyW/o=
Received: from fe0vm1740.rbesz01.com (unknown [10.58.172.176])
	by si0vm1948.rbesz01.com (Postfix) with ESMTPS id 3zwc4n0Fvqz1S1
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 13:47:53 +0100 (CET)
X-AuditID: 0a3aad14-5e7ff7000000330d-b7-5a9e8df9ff76
Received: from fe0vm1651.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm1740.rbesz01.com (SMG Outbound) with SMTP id
	56.0E.13069.9FD8E9A5; Tue,  6 Mar 2018 13:47:53 +0100 (CET)
Received: from FE-MBX2023.de.bosch.com (fe-mbx2023.de.bosch.com [10.3.231.33])
	by fe0vm1651.rbesz01.com (Postfix) with ESMTPS id 3zwc4m5ssdzFFZ0
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 13:47:52 +0100 (CET)
Received: from FE-MBX2023.de.bosch.com (10.3.231.33) by
	FE-MBX2023.de.bosch.com (10.3.231.33) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Tue, 6 Mar 2018 13:47:52 +0100
Received: from FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7]) by
	FE-MBX2023.de.bosch.com ([fe80::89a:e274:f91a:35d7%3]) with mapi id
	15.01.1415.002; Tue, 6 Mar 2018 13:47:52 +0100
From: "EXTERNAL van Riel Rob (ENTER, BT-CO/ENG1.1)"
	<external.Rob.vanRiel@nl.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] bitbake: git and patch problem
Thread-Index: AdO0bDg9YcONI9sMQR2mVKfKBya5NQAFu6mAAAJt1sAAJqqvgAAINUKA
Date: Tue, 6 Mar 2018 12:47:52 +0000
Message-ID: <abdce99a2cd9445499bbc04c36919b48@nl.bosch.com>
References: <84f7a513eb7140518cc715c1e3d4bf9e@nl.bosch.com>
	<55456292-ab67-8e2c-f4eb-88293d29d25d@windriver.com>  
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.120.14.72]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA22Sf0wTZxjHeXvXcjScXq90PNTh9KJLxlIoAk5BnckSs2TJ5paYaLNFj/Wg
	zWiLvUKAuKWUqlCKgY6FrFKYQBSMRgXnOkL/sFkYP8xc5jZRYcJsSFHcNHOu6GZ3twPbP/bP
	5Xvf5/18n+eeewmMjqdqCbPVwdmtbAWjUOLK4rPZuqWWLoN+wqfa4ls4o9iJ3jw6dkyxGxmU
	24xchbmas+ftOKA0HXfNo0qXsqbx1O+pTjSb5kFpBFCFEIvG5B6kJGiqQwbjP8Zx6WUKQai1
	HYmnaGoRwfz8TkmHEAS+03sQQSioffDs8DbRzqCKIDr6SCFqNVUAczOdSPILIdARkEt6F1wK
	Bf47g1Mb4Ml9HybGkFQJjPYspzvgyqkFTNSIyoYm528yUWNUJtyMdMukmSnoG7mKSVoDC3ee
	ySW9Ds4f7ZCLkRj1CpwbzpPQ9dDePJcqapJSwfjnEbwVafxJqf4E4U8i/EnEFwg/jTRlnL7a
	kv9aoT7XXsrxdfr83A9tlkEk/YaMIOqf3BNGFIGYdLLn4y4DLWer+VpLGBURMkZDbmUDBnpV
	qc1Ya2J50357VQXHM1oSpaSk0OrnNl9VajHzvNlmDSMgMCaD3JsnRJFGtraOs9skLIzWEDiT
	SXqNhww0Vc46uI84rpKzr1RLCIIB8opXAFV2rpyrKTNXOFbKTLbU84XkSnJbGZEWRgVEutB7
	Towg+UrWwpvLl/EsCadX3AQ6gd4hHodmj2DEVPSe8Lx4cvEIRuNWm5XTZpLnxSxKpExV1ufT
	aF8k+c1CQZNUSCTeRVNI2KeaLBauOJ0u3PzEHEAG1Z37aNWymYA29QkMdVEBwVYH9A40I+i+
	04cg+H2jDMauL+AQPumWQ8zdrQCXZ4KAXvenq6D/wlMVXAv8DBA7078GusL1a2Hsm8m1MPTL
	vQ0QXfzqZXjY9vRV8N/262Bx6JEOzj34RwfxqC8XXMc8eRD5c1gP3qaRfPjjZn0hLN3/aQtM
	f9m8FfofDhZDZOl4CfjcnSUQ+bpnOww5I2/cFXYsE3Z8daZT3LGDdfzPjpfdxMdpnegDo9ur
	uLY5mNNGF7znnsY3NgxkvdvGvK9mBuov9G6/9esD+tLMk4n4avJEdJBrGvisYfqtx1xLTQul
	Hf4kVuZyvl6833H5r8HpeS97OeeHE+mr377R/q1hT+CWt+HsbIw4GB4ZryvVresZLZJNHtp1
	0BSb/dvdmBN6KWtv/PCB2h0MzpvY/BzMzrP/Au2wvQWSBAAA
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
X-List-Received-Date: Tue, 06 Mar 2018 12:47:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBGcm9tOiBFWFRFUk5BTCB2YW4gUmllbCBSb2IgKEVOVEVSLCBCVC1DTy9FTkcxLjEpDQo+IFNl
bnQ6IGRpbnNkYWcgNiBtYWFydCAyMDE4IDA5OjUxDQo+IFN1YmplY3Q6IFJFOiBbeW9jdG9dIGJp
dGJha2U6IGdpdCBhbmQgcGF0Y2ggcHJvYmxlbQ0KPiANCj4gVGhlIHRyYWlsIGxlZCBtZSB0byBk
aXNjb3ZlciBJJ2Qgb21pdHRlZCBhIHBpZWNlIG9mIGluZm9ybWF0aW9uIHRoYXQgSSBkaWRuJ3Qg
a25vdw0KPiB3YXMgcmVsZXZhbnQ6IHRoZSBjb2RlIEknbSB0cnlpbmcgdG8gcGF0Y2ggaXMgaW4g
dGhlIGtlcm5lbC4gSXQgdHVybnMgb3V0IHRoZSBrZXJuZWwNCj4gdXNlcyBhIGRlZGljYXRlZCBw
YXRjaGluZyBtZWNoYW5pc20sIG1vc3RseSB1bnJlbGF0ZWQgdG8gd2hhdCBldmVyeXRoaW5nIGVs
c2UNCj4gdXNlcy4gT24gdGhlIGJyaWdodGVyIHNpZGUsIEkgbm93IGtub3cgd2hhdCB0byBsb29r
IGludG8uDQoNClJhdGhlciB0aGFuIHRyeSB0byBkaWcgbXkgd2F5IHRocm91Z2ggdGhlIHBhdGNo
IHByb2Nlc3MsIEkndmUgZGVjaWRlZCB0byB2ZW50dXJlIGludG8gdGhlICh0aHVzIGZhciB1bmV4
cGxvcmVkKSB0ZXJyaXRvcnkgb2Yga2VybmVsIGNvbmZpZ3VyYXRpb24gb3B0aW9ucywgYW5kIGRv
IGEgbmVhdGVyIHRob3VnaCBtb3JlIGludmFzaXZlIGNoYW5nZSB0aGF0IHdheS4gVGhpcyBwcm92
ZWQgZWFzaWVyIHRoYW4gSSBmZWFyZWQsIGFuZCBhcyBhIHJlc3VsdCwgdGhlIChrZXJuZWwpIHBh
dGNoIGlzc3VlIGlzIG5vIGxvbmdlciByZWxldmFudCB0byB0aGUgam9iIGF0IGhhbmQuDQpOZXZl
cnRoZWxlc3MsIGEgYmlnIHRoYW5rIHlvdSB0byB0aG9zZSB3aG8gcmVzcG9uZGVkOyB0aGUgZXh0
cmEga25vd2xlZ2RlIGdhaW5lZCB3aWxsIHN1cmVseSBiZSB1c2VmdWwgYXQgc29tZSBwb2ludCBp
biB0aGUgZnV0dXJlLg0KDQpSb2INCg==

