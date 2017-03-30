Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C448E0097C; Wed, 29 Mar 2017 23:28:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C51BE00970
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 23:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490855294; x=1522391294;
	h=from:subject:to:message-id:date:mime-version;
	bh=CzQzp4CU5lsTwGqNNGTfQFE3eWJ0KiqKgMQjRMcw6JY=;
	b=wzw2v4SJt4e6h9lTpZ1zI6E8vekueMNiy2OFhZ7U0VCbe08Bc8GcFRTC
	jhr5Udf+zUsmQ1I/XLg56wwFkOsk2X3R7WYJq5rQ317RbM/jWgqjiQP/z
	MgmNLDAartWRJSM4PjMlycDKuW6eE88rV0ykeVyQlQ8nteV7YFtTtyGFH E=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 30 Mar 2017 08:28:13 +0200
From: Jaap de Jong <jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
Message-ID: <8413c9fd-f489-95d5-225f-dea7599dfd6b@nedap.com>
Date: Thu, 30 Mar 2017 08:28:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH 3/6] oracle-jse-ejre: Add recipe for arm softfloat jvm
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
X-List-Received-Date: Thu, 30 Mar 2017 06:28:16 -0000
X-Groupsio-MsgNum: 35310
Content-Type: multipart/mixed; boundary="------------2F9A9331D5A61C1A67D60BB7"

--------------2F9A9331D5A61C1A67D60BB7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



--------------2F9A9331D5A61C1A67D60BB7
Content-Type: text/plain; charset=UTF-8;
 name="0003-oracle-jse-ejre-Add-recipe-for-arm-softfloat-jvm.patch.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename*0="0003-oracle-jse-ejre-Add-recipe-for-arm-softfloat-jvm.patch.";
 filename*1="txt"

RnJvbSAxNTdlZmFjZTBhYTc3ODg4NTQ4NGZiZTRmYzlhNjM1ZjYzYjM3MWIyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKYWFwIGRlIEpvbmcgPGphYXAuZGVqb25nQG5lZGFwLmNvbT4K
RGF0ZTogVHVlLCAyOCBNYXIgMjAxNyAxNDoxNTo1NyArMDIwMApTdWJqZWN0OiBbUEFUQ0ggMy82
XSBvcmFjbGUtanNlLWVqcmU6IEFkZCByZWNpcGUgZm9yIGFybSBzb2Z0ZmxvYXQganZtCgotLS0K
IC4uLi9vcmFjbGUtanNlLWVqcmUtYXJtLXNmbHQtY2xpZW50LWhlYWRsZXNzLmluYyAgIHwgMTAg
KysrKysrKysrCiAuLi4vb3JhY2xlLWphdmEvb3JhY2xlLWpzZS1qcmVfMS44LjAuYmIgICAgICAg
ICAgICB8IDI0ICsrKysrKysrKysrKystLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5z
ZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgcmVjaXBlcy1k
ZXZ0b29scy9vcmFjbGUtamF2YS9vcmFjbGUtanNlLWVqcmUtYXJtLXNmbHQtY2xpZW50LWhlYWRs
ZXNzLmluYwoKZGlmZiAtLWdpdCBhL3JlY2lwZXMtZGV2dG9vbHMvb3JhY2xlLWphdmEvb3JhY2xl
LWpzZS1lanJlLWFybS1zZmx0LWNsaWVudC1oZWFkbGVzcy5pbmMgYi9yZWNpcGVzLWRldnRvb2xz
L29yYWNsZS1qYXZhL29yYWNsZS1qc2UtZWpyZS1hcm0tc2ZsdC1jbGllbnQtaGVhZGxlc3MuaW5j
Cm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLjMyMWFmZWUKLS0tIC9kZXYvbnVs
bAorKysgYi9yZWNpcGVzLWRldnRvb2xzL29yYWNsZS1qYXZhL29yYWNsZS1qc2UtZWpyZS1hcm0t
c2ZsdC1jbGllbnQtaGVhZGxlc3MuaW5jCkBAIC0wLDAgKzEsMTAgQEAKK1BWX1VQREFURSA9ICIx
MjEiCitCVUlMRF9OVU1CRVIgPSAiMTMiCitMSUNFTlNFX0RJUiA9ICJlamRrJHtQVn1fJHtQVl9V
UERBVEV9L2xpbnV4X2FybV9zZmx0L2pyZSIKKworcmVxdWlyZSBvcmFjbGUtanNlLWVqcmUuaW5j
CisKK1NSQ19VUkkgPSAiaHR0cDovL2Rvd25sb2FkLm9yYWNsZS5jb20vb3RuL2phdmEvZWpkay84
dSR7UFZfVVBEQVRFfS1iJHtCVUlMRF9OVU1CRVJ9L2U5ZTdlYTI0OGUyYzQ4MjZiOTJiM2YwNzVh
ODBlNDQxL2VqZGstOHUke1BWX1VQREFURX0tbGludXgtYXJtLXNmbHQudGFyLmd6IgorCitTUkNf
VVJJW21kNXN1bV0gPSAiMTEwNDFlN2VlZGQ4OTdkNzBjYWJlNTRmMjlkMTA1ODciCitTUkNfVVJJ
W3NoYTI1NnN1bV0gPSAiOWFkNzI4MzlkYmEwOWUzMzY5NTRjNzY1Mzc3OGEyNTE3ZTZkMGU1NmE5
NTI0ZjRjMTFmZjAwOGFkM2ViNDYzNyIKZGlmZiAtLWdpdCBhL3JlY2lwZXMtZGV2dG9vbHMvb3Jh
Y2xlLWphdmEvb3JhY2xlLWpzZS1qcmVfMS44LjAuYmIgYi9yZWNpcGVzLWRldnRvb2xzL29yYWNs
ZS1qYXZhL29yYWNsZS1qc2UtanJlXzEuOC4wLmJiCmluZGV4IDdjOGUzNTEuLmViZjAyNjUgMTAw
NjQ0Ci0tLSBhL3JlY2lwZXMtZGV2dG9vbHMvb3JhY2xlLWphdmEvb3JhY2xlLWpzZS1qcmVfMS44
LjAuYmIKKysrIGIvcmVjaXBlcy1kZXZ0b29scy9vcmFjbGUtamF2YS9vcmFjbGUtanNlLWpyZV8x
LjguMC5iYgpAQCAtMSwxNiArMSwyMCBAQAogIyBBdXRvbWF0aWNhbGx5IGNob29zZSBqYXZhIHBh
Y2thZ2UgYmFzZWQgb24gdGFyZ2V0IGFyY2hpdGVjdHVyZQogZGVmIGdldF9qYXZhX3BrZyhkKToK
LSAgICAgICBUQSA9IGQuZ2V0VmFyKCdUQVJHRVRfQVJDSCcsIFRydWUpCi0gICAgICAgaWYgVEEg
PT0gImFybSI6Ci0gICAgICAgICAgICAgICBqYXZhUGtnID0gIm9yYWNsZS1qc2UtZWpyZS1hcm0t
dmZwLWhmbHQtY2xpZW50LWhlYWRsZXNzIgotICAgICAgIGVsaWYgVEEgPT0gImk1ODYiOgotICAg
ICAgICAgICAgICAgamF2YVBrZyA9ICJvcmFjbGUtanNlLWpyZS1pNTg2IgotICAgICAgIGVsaWYg
VEEgPT0gIng4Nl82NCI6Ci0gICAgICAgICAgICAgICBqYXZhUGtnID0gIm9yYWNsZS1qc2UtanJl
LXg4Ni02NCIKLSAgICAgICBlbHNlOgotICAgICAgICAgICAgICAgcmFpc2UgYmIucGFyc2UuU2tp
cFBhY2thZ2UoIlRhcmdldCBhcmNoaXRlY3R1cmUgJyVzJyBpcyBub3Qgc3VwcG9ydGVkIGJ5IHRo
ZSBtZXRhLW9yYWNsZS1qYXZhIGxheWVyIiAlVEEpCisJVEEgPSBkLmdldFZhcignVEFSR0VUX0FS
Q0gnLCBUcnVlKQorCWlmIFRBID09ICJhcm0iOgorCQlGUFUgPSBkLmdldFZhcignVEFSR0VUX0ZQ
VScsIFRydWUpCisJCWlmIEZQVSA9PSAic29mdCI6CisJCQlqYXZhUGtnID0gIm9yYWNsZS1qc2Ut
ZWpyZS1hcm0tc2ZsdC1jbGllbnQtaGVhZGxlc3MiCisJCWVsc2U6CisJCQlqYXZhUGtnID0gIm9y
YWNsZS1qc2UtZWpyZS1hcm0tdmZwLWhmbHQtY2xpZW50LWhlYWRsZXNzIgorCWVsaWYgVEEgPT0g
Imk1ODYiOgorCQlqYXZhUGtnID0gIm9yYWNsZS1qc2UtanJlLWk1ODYiCisJZWxpZiBUQSA9PSAi
eDg2XzY0IjoKKwkJamF2YVBrZyA9ICJvcmFjbGUtanNlLWpyZS14ODYtNjQiCisJZWxzZToKKwkJ
cmFpc2UgYmIucGFyc2UuU2tpcFBhY2thZ2UoIlRhcmdldCBhcmNoaXRlY3R1cmUgJyVzJyBpcyBu
b3Qgc3VwcG9ydGVkIGJ5IHRoZSBtZXRhLW9yYWNsZS1qYXZhIGxheWVyIiAlVEEpCiAKLSAgICAg
ICByZXR1cm4gamF2YVBrZworCXJldHVybiBqYXZhUGtnCiAKIEpBVkFfUEtHID0gIiR7QGdldF9q
YXZhX3BrZyhkKX0iCiAKLS0gCjIuNy40Cgo=

--------------2F9A9331D5A61C1A67D60BB7--
