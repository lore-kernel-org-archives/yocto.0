Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B129E00985; Wed, 29 Mar 2017 23:28:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A25E00839
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 23:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490855294; x=1522391294;
	h=from:subject:to:message-id:date:mime-version;
	bh=9sjQVEBYFdABd3OGF1aURw8GN4H/RSjcFV0PsBKqSzc=;
	b=QpN+lTftk7Tbar9W7L2Dwu+9ShMw+ahZD02mCXPal/Z8oRbixU9TdHR9
	ZiVatrz7TQK8w6emwB3C0ntk5GHPLqi36qym75yv9O0BpyWdxON1lKSrK
	7vJQPc1EFaMiYU9gTs88f0DFhUSk3qRJsH3iBTIS39qwCaueDCIc59M6D 4=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 30 Mar 2017 08:28:11 +0200
From: Jaap de Jong <jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
Message-ID: <98e3cae0-9d39-e146-9dad-af0c6c37ab55@nedap.com>
Date: Thu, 30 Mar 2017 08:28:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH 1/6] oracle-jse.inc: Fix unattended downloading source
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
X-Groupsio-MsgNum: 35309
Content-Type: multipart/mixed; boundary="------------A8D950E4D5FD1C1C56079BDF"

--------------A8D950E4D5FD1C1C56079BDF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



--------------A8D950E4D5FD1C1C56079BDF
Content-Type: text/plain; charset=UTF-8;
 name="0001-oracle-jse.inc-Fix-unattended-downloading-source.patch.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename*0="0001-oracle-jse.inc-Fix-unattended-downloading-source.patch.";
 filename*1="txt"

RnJvbSBkMjBjNjBjZTUxYTM5OTU0MTMyOWJkNTM2MGU1NDg5ZjUzN2Q2MzBiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKYWFwIGRlIEpvbmcgPGphYXAuZGVqb25nQG5lZGFwLmNvbT4K
RGF0ZTogVHVlLCAyOCBNYXIgMjAxNyAxNDowNzoxOSArMDIwMApTdWJqZWN0OiBbUEFUQ0ggMS82
XSBvcmFjbGUtanNlLmluYzogRml4IHVuYXR0ZW5kZWQgZG93bmxvYWRpbmcgc291cmNlCgotLS0K
IHJlY2lwZXMtZGV2dG9vbHMvb3JhY2xlLWphdmEvb3JhY2xlLWpzZS5pbmMgfCAyICstCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9y
ZWNpcGVzLWRldnRvb2xzL29yYWNsZS1qYXZhL29yYWNsZS1qc2UuaW5jIGIvcmVjaXBlcy1kZXZ0
b29scy9vcmFjbGUtamF2YS9vcmFjbGUtanNlLmluYwppbmRleCA4Y2IwOTUzLi40ODhiY2UyIDEw
MDY0NAotLS0gYS9yZWNpcGVzLWRldnRvb2xzL29yYWNsZS1qYXZhL29yYWNsZS1qc2UuaW5jCisr
KyBiL3JlY2lwZXMtZGV2dG9vbHMvb3JhY2xlLWphdmEvb3JhY2xlLWpzZS5pbmMKQEAgLTYsNyAr
Niw3IEBAIExJQ19GSUxFU19DSEtTVU0gPSAiXAogCWZpbGU6Ly8ke0pES19KUkV9JHtQVn1fJHtQ
Vl9VUERBVEV9L1RISVJEUEFSVFlMSUNFTlNFUkVBRE1FLnR4dDttZDU9NzQ1ZDZkYjVmYzU4YzYz
Zjc0Y2U2YTdkNGRiN2U2OTUgXAogCSIKIAotRkVUQ0hDTURfd2dldF9hcHBlbmQgPSAiIC0taGVh
ZGVyPUNvb2tpZTpvcmFjbGVsaWNlbnNlPWEgIgorRkVUQ0hDTURfd2dldF9hcHBlbmQgPSAiIC0t
bm8tY2hlY2stY2VydGlmaWNhdGUgLS1uby1jb29raWVzIC0taGVhZGVyICdDb29raWU6IG9yYWNs
ZWxpY2Vuc2U9YWNjZXB0LXNlY3VyZWJhY2t1cC1jb29raWUnICIKIAogUkRFUEVORFNfJHtQTn0g
Kz0gIiBsaWJhc291bmQgYXRrIGNhaXJvIGdkay1waXhidWYgbWVzYSBndGsrIGxpYnh0c3QgbGli
eGkiCiAjIGdldCB0aGUgamF2YSB1cGRhdGUgdmVyc2lvbiBpbiB0aGUgcmVzdWx0aW5nIHBhY2th
Z2UKLS0gCjIuNy40Cgo=

--------------A8D950E4D5FD1C1C56079BDF--
