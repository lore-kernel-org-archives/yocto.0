Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EFC2E00A13; Sun, 18 May 2014 11:29:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f180.google.com (unknown [209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49C33E0082A
	for <yocto@yoctoproject.org>; Sun, 18 May 2014 11:29:16 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id tp5so1499481ieb.25
	for <yocto@yoctoproject.org>; Sun, 18 May 2014 11:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=+91C52SuJe0bGijDFNY5EaHbgH0YxMftbPtJP2ddmww=;
	b=vF5ejd2JCqgnNh5n22fr3bD7FY6U0cjF9enuhjcwKUSH643gya4S/oL/Tlw4nE7cLF
	NRXv/7Im1feIAE0nVCzrcbD6PNYs06R8wtuNRJ1kkMJMjzOecSiNz1/pbR8Tp9jZdrhj
	YE7uqFvBAY8gmQ8DPS2/WtsF7XOMaiP0aZfRS8yK49lESOYwJq4+AkqV4HJ7wtLbf//F
	fZIjfcwEIw4eGBXIDWKPBYVnIkMYqYtUDgrmSpzjHerdckNK3cdV2ADiHgKKWFZ9YitH
	CvayamgvuMYhw5zJHBeYUx5sorAzngofdz70tzLlL/2Ar9vpTKtzUGFo/PZu90rtTips
	SkAA==
X-Received: by 10.42.102.201 with SMTP id j9mr3628486ico.58.1400437755951;
	Sun, 18 May 2014 11:29:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Sun, 18 May 2014 11:28:55 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Sun, 18 May 2014 14:28:55 -0400
Message-ID: <CAAPegz3=+kmfS7DAY2MoFg0jxePeOSeay-4oFFVdB6b6x11xsw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [PATCH] Documentation improvements for gitsm:// fetcher
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
X-List-Received-Date: Sun, 18 May 2014 18:29:22 -0000
X-Groupsio-MsgNum: 19679
Content-Type: multipart/mixed; boundary=20cf3011e323f95c1304f9b0d2aa

--20cf3011e323f95c1304f9b0d2aa
Content-Type: text/plain; charset=UTF-8

Rough patch for documentation improvements now that I know how gitsm
should work and to help others that might be caught by switching from
git:// to gitsm:// URIs.

Chris

--20cf3011e323f95c1304f9b0d2aa
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-Documentation-improvements-for-gitsm-fetcher.patch"
Content-Disposition: attachment; 
	filename="0001-Documentation-improvements-for-gitsm-fetcher.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hvcofky00

RnJvbSA3OTcwOGQ1MjI2YzJjMDc3MWFlY2QxYjg3OTdjMjRlZTUzMDFiM2M2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDaHJpcyBNb3JnYW4gPGNobW9yZ2FuQGdtYWlsLmNvbT4KRGF0
ZTogU3VuLCAxOCBNYXkgMjAxNCAxNDoyNDoxMiAtMDQwMApTdWJqZWN0OiBbUEFUQ0hdIERvY3Vt
ZW50YXRpb24gaW1wcm92ZW1lbnRzIGZvciBnaXRzbTovLyBmZXRjaGVyCgotLS0KIC4uLi9iaXRi
YWtlLXVzZXItbWFudWFsL2JpdGJha2UtdXNlci1tYW51YWwtZmV0Y2hpbmcueG1sIHwgMTYgKysr
KysrKysrKysrKy0tLQogYml0YmFrZS9saWIvYmIvZmV0Y2gyL2dpdHNtLnB5ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAxMCArKysrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDIzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvYml0YmFrZS9kb2MvYml0YmFr
ZS11c2VyLW1hbnVhbC9iaXRiYWtlLXVzZXItbWFudWFsLWZldGNoaW5nLnhtbCBiL2JpdGJha2Uv
ZG9jL2JpdGJha2UtdXNlci1tYW51YWwvYml0YmFrZS11c2VyLW1hbnVhbC1mZXRjaGluZy54bWwK
aW5kZXggNWFhNTNkZS4uODU4MDU0ZiAxMDA2NDQKLS0tIGEvYml0YmFrZS9kb2MvYml0YmFrZS11
c2VyLW1hbnVhbC9iaXRiYWtlLXVzZXItbWFudWFsLWZldGNoaW5nLnhtbAorKysgYi9iaXRiYWtl
L2RvYy9iaXRiYWtlLXVzZXItbWFudWFsL2JpdGJha2UtdXNlci1tYW51YWwtZmV0Y2hpbmcueG1s
CkBAIC01NzAsNiArNTcwLDE5IEBACiAgICAgICAgICAgICA8L3BhcmE+CiAgICAgICAgIDwvc2Vj
dGlvbj4KIAorICAgICAgICA8c2VjdGlvbiBpZD0nZ2l0c20tZmV0Y2hlcic+CisgICAgICAgICAg
ICA8dGl0bGU+R0lUIFN1Ym1vZHVsZSBGZXRjaGVyICg8ZmlsZW5hbWU+Z2l0c206Ly88L2ZpbGVu
YW1lPik8L3RpdGxlPgorCisgICAgICAgICAgICA8cGFyYT4KKyAgICAgICAgICAgICAgICBUaGlz
IGZldGNoZXIgaW5oZXJpdHMgZnJvbSB0aGUgR2l0IGZldGNoZXIgYW5kIGV4dGVuZHMgaXRzCisg
ICAgICAgICAgICAgICAgYmVoYXZpb3IgYnkgZmV0Y2hpbmcgYSByZXBvc2l0b3JpZXMgc3VibW9k
dWxlcy4KKyAgICAgICAgICAgICAgICBVcmkgaXMgcGFzc2VkIHRvIHRoZSBHaXQgZmV0Y2hlciBz
byBzZWUgPGxpbmsgbGlua2VuZD0nZ2l0LWZldGNoZXInPgorICAgICAgICAgICAgICAgIHRoZSBn
aXQgZmV0Y2hlciBkb2N1bWVudGF0aW9uIGZvciBzeW50YXg8L2xpbms+LgorICAgICAgICAgICAg
ICAgIE5PVEU6IFlvdSBtdXN0IGNsZWFuIGEgcmVjaXBlIHdoZW4gc3dpdGNoaW5nIGJldHdlZW4g
J2dpdDovLycgYW5kCisgICAgICAgICAgICAgICAgJ2dpdHNtOi8vJyB1cmxzLgorICAgICAgICAg
ICAgPC9wYXJhPgorICAgICAgICA8L3NlY3Rpb24+CisKICAgICAgICAgPHNlY3Rpb24gaWQ9J290
aGVyLWZldGNoZXJzJz4KICAgICAgICAgICAgIDx0aXRsZT5PdGhlciBGZXRjaGVyczwvdGl0bGU+
CiAKQEAgLTU4Myw5ICs1OTYsNiBAQAogICAgICAgICAgICAgICAgICAgICAgICAgUGVyZm9yY2Ug
KDxmaWxlbmFtZT5wNDovLzwvZmlsZW5hbWU+KQogICAgICAgICAgICAgICAgICAgICAgICAgPC9w
YXJhPjwvbGlzdGl0ZW0+CiAgICAgICAgICAgICAgICAgICAgIDxsaXN0aXRlbT48cGFyYT4KLSAg
ICAgICAgICAgICAgICAgICAgICAgIEdpdCBTdWJtb2R1bGVzICg8ZmlsZW5hbWU+Z2l0c206Ly88
L2ZpbGVuYW1lPikKLSAgICAgICAgICAgICAgICAgICAgICAgIDwvcGFyYT48L2xpc3RpdGVtPgot
ICAgICAgICAgICAgICAgICAgICA8bGlzdGl0ZW0+PHBhcmE+CiAgICAgICAgICAgICAgICAgICAg
ICAgICBUcmVlcyB1c2luZyBHaXQgQW5uZXggKDxmaWxlbmFtZT5naXRhbm5leDovLzwvZmlsZW5h
bWU+KQogICAgICAgICAgICAgICAgICAgICAgICAgPC9wYXJhPjwvbGlzdGl0ZW0+CiAgICAgICAg
ICAgICAgICAgICAgIDxsaXN0aXRlbT48cGFyYT4KZGlmZiAtLWdpdCBhL2JpdGJha2UvbGliL2Ji
L2ZldGNoMi9naXRzbS5weSBiL2JpdGJha2UvbGliL2JiL2ZldGNoMi9naXRzbS5weQppbmRleCAx
YTc2MjE1Li5jMTI1Y2ZmIDEwMDY0NAotLS0gYS9iaXRiYWtlL2xpYi9iYi9mZXRjaDIvZ2l0c20u
cHkKKysrIGIvYml0YmFrZS9saWIvYmIvZmV0Y2gyL2dpdHNtLnB5CkBAIC0yLDYgKzIsMTYgQEAK
ICMgLSotIHRhYi13aWR0aDogNDsgYy1iYXNpYy1vZmZzZXQ6IDQ7IGluZGVudC10YWJzLW1vZGU6
IG5pbCAtKi0KICIiIgogQml0QmFrZSAnRmV0Y2gnIGdpdCBzdWJtb2R1bGVzIGltcGxlbWVudGF0
aW9uCisKK0luaGVyaXRzIGZyb20gYW5kIGV4dGVuZHMgdGhlIEdpdCBmZXRjaGVyIHRvIHJldHJp
ZXZlIHN1Ym1vZHVsZXMgb2YgYSBnaXQgcmVwb3NpdG9yeQorYWZ0ZXIgY2xvbmluZy4KKworU1JD
X1VSSSA9ICJnaXRzbTovLzxzZWUgR2l0IGZldGNoZXIgZm9yIHN5bnRheD4iCisKK1NlZSB0aGUg
R2l0IGZldGNoZXIsIGdpdDovLywgZm9yIHVzYWdlIGRvY3VtZW50YXRpb24uCisKK05PVEU6IFN3
aXRjaGluZyBhIFNSQ19VUkkgZnJvbSAiZ2l0Oi8vIiB0byAiZ2l0c206Ly8iIHJlcXVpcmVzIGEg
Y2xlYW4gb2YgeW91ciByZWNpcGUuCisKICIiIgogCiAjIENvcHlyaWdodCAoQykgMjAxMyBSaWNo
YXJkIFB1cmRpZQotLSAKMS45LjAKCg==

--20cf3011e323f95c1304f9b0d2aa--
