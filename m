Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8600BE00A80; Wed, 29 Mar 2017 23:28:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD043E009A0
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 23:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490855300; x=1522391300;
	h=from:subject:to:message-id:date:mime-version;
	bh=GIi6DDbUghJ7OhLK/CUY8UEwztanpkehkY32RV4mzig=;
	b=gzjLpZ+UIUaWGN2pmiKdrZaO15TGvFDc/4lMomB2lIZ8nGYYJ/F5xRvq
	fR6y9JMK38mGVaoRYaFT8uBctOYvTjPXkUnr25+EA5MzFSywjpE575K7l
	jb68HN4+Ph+MPKRtGOBseKCSS5YluMOm/Znn67FDaXdodmQCvpZYfhd/o c=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 30 Mar 2017 08:28:19 +0200
From: Jaap de Jong <jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
Message-ID: <b507bb20-d02d-b64e-506e-3216ec519e15@nedap.com>
Date: Thu, 30 Mar 2017 08:28:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH 4/6] Use 'standarized' install path
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
X-List-Received-Date: Thu, 30 Mar 2017 06:28:21 -0000
X-Groupsio-MsgNum: 35312
Content-Type: multipart/mixed; boundary="------------A9E8F1410B8DA5CA1420817A"

--------------A9E8F1410B8DA5CA1420817A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



--------------A9E8F1410B8DA5CA1420817A
Content-Type: text/plain; charset=UTF-8;
 name="0004-Use-standarized-install-path.patch.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="0004-Use-standarized-install-path.patch.txt"

RnJvbSBiYTJmZWQ4MGIxNTc3NDQyZTFlNDZkMTJhOWFmYWU0NTIyMDdkMGNmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKYWFwIGRlIEpvbmcgPGphYXAuZGVqb25nQG5lZGFwLmNvbT4K
RGF0ZTogVHVlLCAyOCBNYXIgMjAxNyAxNDoyMzoxMyArMDIwMApTdWJqZWN0OiBbUEFUQ0ggNC82
XSBVc2UgJ3N0YW5kYXJpemVkJyBpbnN0YWxsIHBhdGgKCi0tLQogcmVjaXBlcy1kZXZ0b29scy9v
cmFjbGUtamF2YS9vcmFjbGUtanNlLWpkay5pbmMgfCAxNSArKysrKystLS0tLS0tLS0KIHJlY2lw
ZXMtZGV2dG9vbHMvb3JhY2xlLWphdmEvb3JhY2xlLWpzZS5pbmMgICAgIHwgMTIgKysrKysrKyst
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL3JlY2lwZXMtZGV2dG9vbHMvb3JhY2xlLWphdmEvb3JhY2xlLWpzZS1qZGsu
aW5jIGIvcmVjaXBlcy1kZXZ0b29scy9vcmFjbGUtamF2YS9vcmFjbGUtanNlLWpkay5pbmMKaW5k
ZXggNmYxMzEyNS4uMjkxYTc1ZCAxMDA2NDQKLS0tIGEvcmVjaXBlcy1kZXZ0b29scy9vcmFjbGUt
amF2YS9vcmFjbGUtanNlLWpkay5pbmMKKysrIGIvcmVjaXBlcy1kZXZ0b29scy9vcmFjbGUtamF2
YS9vcmFjbGUtanNlLWpkay5pbmMKQEAgLTEyLDE2ICsxMiwxMyBAQCBKREtfSlJFID0gImpkayIK
IHJlcXVpcmUgb3JhY2xlLWpzZS5pbmMKIAogZG9faW5zdGFsbF9jbGFzcy1uYXRpdmUoKSB7Ci0g
ICAgaW5zdGFsbCAtZCAtbSAwNzU1ICR7RH0ke2xpYmRpcn0KLSAgICBpbnN0YWxsIC1kIC1tIDA3
NTUgJHtEfSR7YmluZGlyfQotICAgIGNwIC1hICR7U30vJHtKREtfSlJFfSR7UFZ9XyR7UFZfVVBE
QVRFfSAke0R9JHtsaWJkaXJ9LwotICAgIGZvciBwcm9nIGluIGphdmEgamF2YWM7IGRvCi0JKCBj
ZCAke0R9JHtiaW5kaXJ9ICYmIGxuIC1zZiAke2xpYmRpcn0vJHtKREtfSlJFfSR7UFZ9XyR7UFZf
VVBEQVRFfS9iaW4vJHByb2cgKQotICAgIGRvbmUKKwlpbnN0YWxsIC1kIC1tIDA3NTUJCQkke0R9
JHtsaWJkaXJfanZtfQorCWNwIC1hICR7U30vJHtKREtfSlJFfSR7UFZ9XyR7UFZfVVBEQVRFfQkk
e0R9JHtKREtfSE9NRX0KIAotICAgICggY2QgJHtEfSR7bGliZGlyfS8ke0pES19KUkV9JHtQVn1f
JHtQVl9VUERBVEV9L2JpbiA7IFwKLSAgICAgIGxuIC1zZiBqYXZhaCBnamF2YWggOyBcCi0gICAg
ICBsbiAtc2YgamFyIGZhc3RqYXIgKQorCWxuIC1zZiAke0pES19IT01FfS9iaW4vamF2YQkJJHtE
fSR7YmluZGlyfQorCWxuIC1zZiAke0pES19IT01FfS9iaW4vamF2YWMJCSR7RH0ke2JpbmRpcn0K
KwlsbiAtc2YgamF2YWgJCQkJJHtEfSR7SkRLX0hPTUV9L2Jpbi9namF2YWgKKwlsbiAtc2YgamFy
CQkJCSR7RH0ke0pES19IT01FfS9iaW4vZmFzdGphcgogfQogCiBCQkNMQVNTRVhURU5EID0gIm5h
dGl2ZSIKZGlmZiAtLWdpdCBhL3JlY2lwZXMtZGV2dG9vbHMvb3JhY2xlLWphdmEvb3JhY2xlLWpz
ZS5pbmMgYi9yZWNpcGVzLWRldnRvb2xzL29yYWNsZS1qYXZhL29yYWNsZS1qc2UuaW5jCmluZGV4
IGEzNzAxYTIuLjdlNTA4YmYgMTAwNjQ0Ci0tLSBhL3JlY2lwZXMtZGV2dG9vbHMvb3JhY2xlLWph
dmEvb3JhY2xlLWpzZS5pbmMKKysrIGIvcmVjaXBlcy1kZXZ0b29scy9vcmFjbGUtamF2YS9vcmFj
bGUtanNlLmluYwpAQCAtMTQsMTEgKzE0LDE1IEBAIFJERVBFTkRTXyR7UE59ICs9ICIgbGliYXNv
dW5kIGF0ayBjYWlybyBnZGstcGl4YnVmIG1lc2EgZ3RrKyBsaWJ4dHN0IGxpYnhpIgogUFIgPS4g
InUke1BWX1VQREFURX0iCiBTID0gIiR7V09SS0RJUn0iCiAKK2xpYmRpcl9qdm0gPz0gIiR7bGli
ZGlyfS9qdm0iCitKREtfRElSID0gImphdmEtOC1vcmFjbGUiCitKREtfSE9NRSA9ICIke2xpYmRp
cl9qdm19LyR7SkRLX0RJUn0iCisKIGRvX2luc3RhbGwgKCkgewotCWluc3RhbGwgLWQgLW0gMDc1
NQkJCQkJJHtEfSR7ZGF0YWRpcn0vJHtKREtfSlJFfSR7UFZ9XyR7UFZfVVBEQVRFfQotCWNwIC1h
ICR7U30vJHtKREtfSlJFfSR7UFZ9XyR7UFZfVVBEQVRFfQkJCSR7RH0ke2RhdGFkaXJ9LwotCWlu
c3RhbGwgLWQgLW0gMDc1NQkJCQkJJHtEfSR7YmluZGlyfQotCWxuIC1zZiAke2RhdGFkaXJ9LyR7
SkRLX0pSRX0ke1BWfV8ke1BWX1VQREFURX0vYmluL2phdmEgJHtEfSR7YmluZGlyfS9qYXZhCisJ
aW5zdGFsbCAtZCAtbSAwNzU1CQkJJHtEfSR7bGliZGlyX2p2bX0KKwljcCAtYSAke1N9LyR7SkRL
X0pSRX0ke1BWfV8ke1BWX1VQREFURX0JJHtEfSR7SkRLX0hPTUV9CisJaW5zdGFsbCAtZCAtbSAw
NzU1CQkJJHtEfSR7YmluZGlyfQorCWxuIC1zZiAke0pES19IT01FfS9iaW4vamF2YQkJJHtEfSR7
YmluZGlyfS9qYXZhCiB9CiAKICMgQWxsIHRoZSBmaWxlcyBhcmUgcHJvdmlkZWQgaW4gYSBiaW5h
cmF5IHBhY2thZ2UsIGFuZCBrZWVwaW5nIGFsbCB0aGUKLS0gCjIuNy40Cgo=

--------------A9E8F1410B8DA5CA1420817A--
