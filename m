Return-Path: <Nicholas.Crast@saabsensis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15541E00566; Tue, 26 Aug 2014 11:41:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtpmail.saabsensis.com (smtpmail.saabsensis.com [173.225.55.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CF38E004F5
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 11:41:39 -0700 (PDT)
Received: from [10.92.64.54] (helo=ssa-syr-dimstar4.saabusa.com)
	by smtpmail.saabsensis.com with esmtps (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <Nicholas.Crast@saabsensis.com>)
	id 1XMLgY-0003HJ-P7
	for yocto@yoctoproject.org; Tue, 26 Aug 2014 14:41:38 -0400
Received: from corpmail01.corp.sensis.com ([10.93.64.16])
	by ssa-syr-dimstar4.saabusa.com with esmtp (Exim 4.72)
	(envelope-from <Nicholas.Crast@saabsensis.com>) id 1XMLgJ-0005Pv-Kl
	for yocto@yoctoproject.org; Tue, 26 Aug 2014 14:41:23 -0400
Received: from CORPMAIL01.corp.sensis.com ([10.93.64.16]) by
	corpmail01.corp.sensis.com ([10.93.64.16]) with mapi id 14.03.0195.001;
	Tue, 26 Aug 2014 14:41:23 -0400
From: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Using uboot to boot a large uimage
Thread-Index: AQHPwV1VjnRg0o+DokKkufwcyPW8jw==
Date: Tue, 26 Aug 2014 18:41:22 +0000
Message-ID: <36A43B0E1E88D84791516F9D44BC48331B3CA7E5@corpmail01.corp.sensis.com>
References: <36A43B0E1E88D84791516F9D44BC48331B3C9E7D@corpmail01.corp.sensis.com>
	<20140825053448.GD1014@haswell>
In-Reply-To: <20140825053448.GD1014@haswell>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.80.50]
MIME-Version: 1.0
X-Sensis-MailScanner-Information: Scanned at Sensis Corporation by MailScanner
X-Sensis-MailScanner-ID: 1XMLgJ-0005Pv-Kl
X-Sensis-MailScanner: Found to be clean
X-Sensis-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (not cached, score=-1.9, required 5, autolearn=not spam,
	BAYES_00 -1.90)
X-Sensis-MailScanner-From: nicholas.crast@saabsensis.com
Subject: Using uboot to boot a large uimage
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
X-List-Received-Date: Tue, 26 Aug 2014 18:41:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBhbSBjdXJyZW50bHkgYXR0ZW1wdGluZyB0byBib290IHdpdGggYW4gaW5pdHJhbWZzIGJ1aWx0
IGludG8gbXkgdWltYWdlIHVzaW5nIHVib290LiANCg0KSG93ZXZlciwgSSBjYW5ub3QgZ2V0IGl0
IHRvIGJvb3QgY29ycmVjdGx5LiBJZiBJIG1ha2UgdGhlIHVpbWFnZSB0b3RhbGx5IGJhcmUtYm9u
ZXMsIGFuZCBqdXN0IHVzZSBjb3JlLWltYWdlLW1pbmltYWwtaW5pdHJhbWZzLCB0aGVuIGl0IGhh
bmdzIGh1cmluZyBpbml0IGF0IHRoZSB3YWl0aW5nIGZvciBkZXZpY2VzLi4uIHByaW50b3V0LiBH
b2luZyBhbmQgZ3V0dGluZyB0aGUgaW5pdCBzY3JpcHQsIEkgY2FuIGdldCB0byBzaW5nbGUgdXNl
ciBtb2RlIGFuZCBpdCBsb29rcyBsaWtlIHRoZSBmaWxlc3lzdGVtIGlzIHRoZXJlLg0KDQpJIHdh
bnQgYSBtb3JlIGZ1bGwgc3lzdGVtLCBzbyBJIGluY2x1ZGVkIGNvcmUtaW1hZ2UtYm9vdCBhbmQg
Y29yZS1pbWFnZS1iYXNpYy4gSSBmaWd1cmVkIHRoaXMgd291bGQgaW5pdGlhbGl6ZSBiZXR0ZXIu
IFdoZW4gSSBkbyB0aGlzLCBteSB1SW1hZ2UganVtcHMgdXAgdG8gfjUwTUIuIFUtYm9vdCB0aGVu
IGhhbmdzIGF0ICJzdGFydGluZyBrZXJuZWwuLi4iDQoNCkkgZG9uJ3QgdGhpbmsgdGhhdCB0aGUg
dWltYWdlIGlzIGNsb2JiZXJpbmcgdGhlIGRldmljZSB0cmVlLCBiZWNhdXNlIHRoZSBkZXZpY2Ug
dHJlZSBpcyBsb2FkZWQgYXQgMHgxMDAsIGFuZCB0aGUgdWltYWdlIGlzIGxvYWRlZCBhdCAweDgw
MDAuIA0KDQpBbnkgaWRlYXM/DQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0NCk5pY2sgQ3Jhc3QNCkFzc29jaWF0ZSBTb2Z0d2FyZSBFbmdpbmVlcg0KU2FhYiBTZW5z
aXMgQ29ycG9yYXRpb24NClBob25lOiAzMTUtNDQ1LTU3MDMNCkVtYWlsOiBOaWNob2xhcy5DcmFz
dEBzYWFic2Vuc2lzLmNvbQ0KDQotDQpUaGlzIG1lc3NhZ2UgaXMgaW50ZW5kZWQgb25seSBmb3Ig
dGhlIGFkZHJlc3NlZSBhbmQgbWF5IGNvbnRhaW4gaW5mb3JtYXRpb24gdGhhdCBpcyBjb21wYW55
IGNvbmZpZGVudGlhbCBvciBwcml2aWxlZ2VkLiAgQW55IHRlY2huaWNhbCBkYXRhIGluIHRoaXMg
bWVzc2FnZSBtYXkgYmUgZXhwb3J0ZWQgb25seSBpbiBhY2NvcmRhbmNlIHdpdGggdGhlIFUuUy4g
SW50ZXJuYXRpb25hbCBUcmFmZmljIGluIEFybXMgUmVndWxhdGlvbnMgKDIyIENGUiBQYXJ0cyAx
MjAtMTMwKSBvciB0aGUgRXhwb3J0IEFkbWluaXN0cmF0aW9uIFJlZ3VsYXRpb25zICgxNSBDRlIg
UGFydHMgNzMwLTc3NCkuIFVuYXV0aG9yaXplZCB1c2UgaXMgc3RyaWN0bHkgcHJvaGliaXRlZCBh
bmQgbWF5IGJlIHVubGF3ZnVsLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50
LCBvciB0aGUgcGVyc29uIHJlc3BvbnNpYmxlIGZvciBkZWxpdmVyaW5nIHRvIHRoZSBpbnRlbmRl
ZCByZWNpcGllbnQsIHlvdSBzaG91bGQgbm90IHJlYWQsIGNvcHksIGRpc2Nsb3NlIG9yIG90aGVy
d2lzZSB1c2UgdGhpcyBtZXNzYWdlLiBJZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGVtYWlsIGlu
IGVycm9yLCBwbGVhc2UgZGVsZXRlIGl0LCBhbmQgYWR2aXNlIHRoZSBzZW5kZXIgaW1tZWRpYXRl
bHkuIA0KLSAgICAgICAgICA=

