Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0261E009B9; Wed, 29 Mar 2017 23:28:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [213.160.213.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp4.nedap.com (smtp4.nedap.com [213.160.213.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F842E009A0
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 23:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490855302; x=1522391302;
	h=from:subject:to:message-id:date:mime-version;
	bh=L8dxFy7lI5K9K6CiA5xgknjtPBIcUuvfubOQrz8mCLQ=;
	b=aG5ToR2CZF6STRhXWDx8TnMvNPY5wuXyh4eXWJQ/uArUQMkuKAOrJSeQ
	jCGCNRarYB5I+TWf9kJb3w0Jb/ZB5sm7P0iO2/EfkLcrl2IzOu55MyWlz
	NOGLwa5/Rz0Q8SVvNSdsFH20QgbLEDYx8gGavpK4XPdPryc+qosCnnRQ9 c=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 30 Mar 2017 08:28:22 +0200
From: Jaap de Jong <jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
Message-ID: <06457d72-9958-dbff-c9b1-09a1a5e134ba@nedap.com>
Date: Thu, 30 Mar 2017 08:28:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH 5/6] Use update-alternatives
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
X-List-Received-Date: Thu, 30 Mar 2017 06:28:23 -0000
X-Groupsio-MsgNum: 35313
Content-Type: multipart/mixed; boundary="------------1857C6B39E437E4A1EFE86FE"

--------------1857C6B39E437E4A1EFE86FE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



--------------1857C6B39E437E4A1EFE86FE
Content-Type: text/plain; charset=UTF-8;
 name="0005-Use-update-alternatives.patch.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="0005-Use-update-alternatives.patch.txt"

RnJvbSA3Y2ZlMmNhOTE3MzM1M2IyZWE3ZGQ4ZTNmYWJlYzllMjgzZGFmZjg1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKYWFwIGRlIEpvbmcgPGphYXAuZGVqb25nQG5lZGFwLmNvbT4K
RGF0ZTogVHVlLCAyOCBNYXIgMjAxNyAxNDoyNjo1MiArMDIwMApTdWJqZWN0OiBbUEFUQ0ggNS82
XSBVc2UgdXBkYXRlLWFsdGVybmF0aXZlcwoKLS0tCiByZWNpcGVzLWRldnRvb2xzL29yYWNsZS1q
YXZhL29yYWNsZS1qc2UtamRrLmluYyB8IDE0ICsrKysrKysrKysrKysrCiByZWNpcGVzLWRldnRv
b2xzL29yYWNsZS1qYXZhL29yYWNsZS1qc2UuaW5jICAgICB8IDEyICsrKysrKysrKystLQogMiBm
aWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL3JlY2lwZXMtZGV2dG9vbHMvb3JhY2xlLWphdmEvb3JhY2xlLWpzZS1qZGsuaW5jIGIvcmVj
aXBlcy1kZXZ0b29scy9vcmFjbGUtamF2YS9vcmFjbGUtanNlLWpkay5pbmMKaW5kZXggMjkxYTc1
ZC4uOWZkNzZlMSAxMDA2NDQKLS0tIGEvcmVjaXBlcy1kZXZ0b29scy9vcmFjbGUtamF2YS9vcmFj
bGUtanNlLWpkay5pbmMKKysrIGIvcmVjaXBlcy1kZXZ0b29scy9vcmFjbGUtamF2YS9vcmFjbGUt
anNlLWpkay5pbmMKQEAgLTI1LDMgKzI1LDE3IEBAIEJCQ0xBU1NFWFRFTkQgPSAibmF0aXZlIgog
CiBSUFJPVklERVNfJHtQTn0gKz0gImphdmEyLWRldmVsb3BtZW50IgogUFJPVklERVMgKz0gInZp
cnR1YWwvamF2YWMgdmlydHVhbC9qYXZhLWluaXRpYWwiCisKK3BrZ19wb3N0aW5zdF8ke1BOfSAo
KSB7CisJdXBkYXRlLWFsdGVybmF0aXZlcyAtLWluc3RhbGwgJHtiaW5kaXJ9L2phciAgIGphciAg
ICR7SkRLX0hPTUV9L2Jpbi9qYXIgMTAwCisJdXBkYXRlLWFsdGVybmF0aXZlcyAtLWluc3RhbGwg
JHtiaW5kaXJ9L2phdmEgIGphdmEgICR7SkRLX0hPTUV9L2pyZS9iaW4vamF2YSAxMDAKKwl1cGRh
dGUtYWx0ZXJuYXRpdmVzIC0taW5zdGFsbCAke2JpbmRpcn0vamF2YWMgamF2YWMgJHtKREtfSE9N
RX0vanJlL2Jpbi9qYXZhYyAxMDAKKwl1cGRhdGUtYWx0ZXJuYXRpdmVzIC0taW5zdGFsbCAke2Jp
bmRpcn0vamF2YWggamF2YWggJHtKREtfSE9NRX0vYmluL2phdmFoIDEwMAorfQorCitwa2dfcHJl
cm1fJHtQTn0gKCkgeworCXVwZGF0ZS1hbHRlcm5hdGl2ZXMgLS1yZW1vdmUgamFyICAgJHtKREtf
SE9NRX0vanJlL2Jpbi9qYXIKKwl1cGRhdGUtYWx0ZXJuYXRpdmVzIC0tcmVtb3ZlIGphdmEgICR7
SkRLX0hPTUV9L2pyZS9iaW4vamF2YQorCXVwZGF0ZS1hbHRlcm5hdGl2ZXMgLS1yZW1vdmUgamF2
YWMgJHtKREtfSE9NRX0vanJlL2Jpbi9qYXZhYworCXVwZGF0ZS1hbHRlcm5hdGl2ZXMgLS1yZW1v
dmUgamF2YWggJHtKREtfSE9NRX0vanJlL2Jpbi9qYXZhaAorfQpkaWZmIC0tZ2l0IGEvcmVjaXBl
cy1kZXZ0b29scy9vcmFjbGUtamF2YS9vcmFjbGUtanNlLmluYyBiL3JlY2lwZXMtZGV2dG9vbHMv
b3JhY2xlLWphdmEvb3JhY2xlLWpzZS5pbmMKaW5kZXggN2U1MDhiZi4uMzc2ODVjZCAxMDA2NDQK
LS0tIGEvcmVjaXBlcy1kZXZ0b29scy9vcmFjbGUtamF2YS9vcmFjbGUtanNlLmluYworKysgYi9y
ZWNpcGVzLWRldnRvb2xzL29yYWNsZS1qYXZhL29yYWNsZS1qc2UuaW5jCkBAIC0yMSw4ICsyMSw2
IEBAIEpES19IT01FID0gIiR7bGliZGlyX2p2bX0vJHtKREtfRElSfSIKIGRvX2luc3RhbGwgKCkg
ewogCWluc3RhbGwgLWQgLW0gMDc1NQkJCSR7RH0ke2xpYmRpcl9qdm19CiAJY3AgLWEgJHtTfS8k
e0pES19KUkV9JHtQVn1fJHtQVl9VUERBVEV9CSR7RH0ke0pES19IT01FfQotCWluc3RhbGwgLWQg
LW0gMDc1NQkJCSR7RH0ke2JpbmRpcn0KLQlsbiAtc2YgJHtKREtfSE9NRX0vYmluL2phdmEJCSR7
RH0ke2JpbmRpcn0vamF2YQogfQogCiAjIEFsbCB0aGUgZmlsZXMgYXJlIHByb3ZpZGVkIGluIGEg
YmluYXJheSBwYWNrYWdlLCBhbmQga2VlcGluZyBhbGwgdGhlCkBAIC0zNiwzICszNCwxMyBAQCBJ
TkhJQklUX1BBQ0tBR0VfREVCVUdfU1BMSVQgPSAiMSIKIEZJTEVTXyR7UE59ID0gIi91c3IvIgog
UlBST1ZJREVTXyR7UE59ID0gImphdmEyLXJ1bnRpbWUgamF2YTItdm0iCiBQUk9WSURFUyArPSAi
dmlydHVhbC9qYXZhIgorCitpbmhlcml0IHVwZGF0ZS1hbHRlcm5hdGl2ZXMKKworcGtnX3Bvc3Rp
bnN0XyR7UE59ICgpIHsKKwl1cGRhdGUtYWx0ZXJuYXRpdmVzIC0taW5zdGFsbCAke2JpbmRpcn0v
amF2YSBqYXZhICR7SkRLX0hPTUV9L2pyZS9iaW4vamF2YSA3NQorfQorCitwa2dfcHJlcm1fJHtQ
Tn0gKCkgeworCXVwZGF0ZS1hbHRlcm5hdGl2ZXMgLS1yZW1vdmUgamF2YSAke0pES19IT01FfS9q
cmUvYmluL2phdmEKK30KLS0gCjIuNy40Cgo=

--------------1857C6B39E437E4A1EFE86FE--
