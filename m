Return-Path: <treebody@embedstudy.com>
Received: from smtpbg56.qq.com (smtpbg56.qq.com [64.71.138.45])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 29923E00283
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 02:42:32 -0700 (PDT)
X-QQ-SSF: 00000000000000F000000000000000G
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 222.92.156.26
X-QQ-STYLE: 
X-QQ-mid: webmail635t1344850944t1313366
From: "=?gb18030?B?oe7Qx7/Voe4=?=" <treebody@embedstudy.com>
To: "=?gb18030?B?eW9jdG8=?=" <yocto@yoctoproject.org>
Mime-Version: 1.0
Date: Mon, 13 Aug 2012 17:42:24 +0800
X-Priority: 3
Message-ID: <tencent_497A3759751BDA08386799DD@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-Mailman-Approved-At: Mon, 13 Aug 2012 08:01:23 -0700
Subject: Question about dependency graphs of building busybox
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 13 Aug 2012 09:42:34 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5028CC00_D489B890_310B23FB"
Content-Transfer-Encoding: 8Bit

------=_NextPart_5028CC00_D489B890_310B23FB
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KICAgICBSZWNlbnRseSBJIGFtIGxlYXJuaW5nIHRvIHNlZSBob3cgdGhlIHBv
a3kgYnVpbGQgYnVzeWJveC5CZWNhdXNlIHRoZXJlIGV4aXN0cyB0b28gbWFueSByZWNpcGVz
IGFuZCBmaWxlcyByZWxhdGVkLEkgd2FudCB0byBmaW5kIG91dCB0aGUgZGV0YWlsIHByb2Nl
c3Mgb3IgZGVwZW5kZW5jeSBncmFwaHMgb2YgYnVpbGRpbmcgYnVzeWJveC5BbmQgbm93IEkg
dXNlICJiaXRiYWtlIC1nIC11IGRlcGV4cCBidXN5Ym94IiAgdG8gc2VlIHRoZSBwcm9jZXNz
LGJ1dCBpdCBmYWlsZWQgd2hlbiBJIGV4ZWN1dGUgdGhlIGNvbW1hbmQuIEZvbGxvd2luZyBp
cyB0aGUgbWVzc2FnZSBjb25zb2xlIG91dHB1dCA6DQogIA0KICoqIChiaXRiYWtlOjI0NTQp
OiBXQVJOSU5HICoqOiBDb21tYW5kIGxpbmUgYGRidXMtbGF1bmNoIC0tYXV0b2xhdW5jaD02
ODZjMGVjMTZkYTEyNWYxNTY4ZjVkOTkwMDAwMDAwYSAtLWJpbmFyeS1zeW50YXggLS1jbG9z
ZS1zdGRlcnInIGV4aXRlZCB3aXRoIG5vbi16ZXJvIGV4aXQgDQogICBzdGF0dXMgMTogQXV0
b2xhdW5jaCBlcnJvcjogWDExIGluaXRpYWxpemF0aW9uIGZhaWxlZC5cbg0KU2VnbWVudGF0
aW9uIGZhdWx0IChjb3JlIGR1bXBlZCkNCiAgDQogICAgSSB3YW50IHRvIGtvbncgaG93IHRv
IHNvbHZlIHRoaXMgcHJvYmxlbS5JcyB0aGVyZSBhbnkgZ29vZCBzdWdnZXN0aW9uIHRvIGhl
bHAgbWUgbGVhcm4gdGhlIGRldGFpbCBwcm9jZXNzIG9mIGJ1aWxkaW5nDQogYnVzeWJveCA/
DQogICAgVGhhbmtzLA0KICAgICBZdSBMaXU=

------=_NextPart_5028CC00_D489B890_310B23FB
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PERJVj5IaSBhbGwsPC9ESVY+DQo8RElWPiZuYnNwOyZuYnNwOyZuYnNwOyBSZWNlbnRseSBJ
IGFtIGxlYXJuaW5nIHRvJm5ic3A7c2VlIGhvdyB0aGUgcG9reSBidWlsZCBidXN5Ym94LkJl
Y2F1c2UgdGhlcmUgZXhpc3RzIHRvbyBtYW55IHJlY2lwZXMgYW5kIGZpbGVzIHJlbGF0ZWQs
SSB3YW50IHRvIGZpbmQgb3V0IHRoZSBkZXRhaWwgcHJvY2VzcyBvciBkZXBlbmRlbmN5IGdy
YXBocyBvZiBidWlsZGluZyBidXN5Ym94LkFuZCBub3cgSSB1c2UgImJpdGJha2UgLWcgLXUg
ZGVwZXhwIGJ1c3lib3giJm5ic3A7IHRvIHNlZSB0aGUgcHJvY2VzcyxidXQgaXQgZmFpbGVk
IHdoZW4gSSBleGVjdXRlIHRoZSBjb21tYW5kLiZuYnNwO0ZvbGxvd2luZyZuYnNwO2lzIHRo
ZSBtZXNzYWdlIGNvbnNvbGUgb3V0cHV0IDo8L0RJVj4NCjxESVY+Jm5ic3A7PC9ESVY+DQo8
RElWPioqIChiaXRiYWtlOjI0NTQpOiBXQVJOSU5HICoqOiBDb21tYW5kIGxpbmUgYGRidXMt
bGF1bmNoIC0tYXV0b2xhdW5jaD02ODZjMGVjMTZkYTEyNWYxNTY4ZjVkOTkwMDAwMDAwYSAt
LWJpbmFyeS1zeW50YXggLS1jbG9zZS1zdGRlcnInIGV4aXRlZCB3aXRoIG5vbi16ZXJvIGV4
aXQgPC9ESVY+DQo8RElWPiZuYnNwOyBzdGF0dXMgMTogQXV0b2xhdW5jaCBlcnJvcjogWDEx
IGluaXRpYWxpemF0aW9uIGZhaWxlZC5cbjxCUj5TZWdtZW50YXRpb24gZmF1bHQgKGNvcmUg
ZHVtcGVkKTwvRElWPg0KPERJVj4mbmJzcDs8L0RJVj4NCjxESVY+Jm5ic3A7Jm5ic3A7IEkg
d2FudCB0byBrb253IGhvdyB0byBzb2x2ZSB0aGlzIHByb2JsZW0uSXMgdGhlcmUgYW55IGdv
b2Qgc3VnZ2VzdGlvbiB0byBoZWxwIG1lIGxlYXJuIHRoZSBkZXRhaWwgcHJvY2VzcyBvZiBi
dWlsZGluZzwvRElWPg0KPERJVj5idXN5Ym94ID88L0RJVj4NCjxESVY+Jm5ic3A7Jm5ic3A7
IFRoYW5rcyw8L0RJVj4NCjxESVY+Jm5ic3A7Jm5ic3A7Jm5ic3A7IFl1IExpdTwvRElWPg==

------=_NextPart_5028CC00_D489B890_310B23FB--
