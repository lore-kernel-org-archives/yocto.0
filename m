Return-Path: <jaap.dejong@nedap.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6773AE00A16; Wed, 29 Mar 2017 23:28:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D0E7E009A5
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 23:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nedap.com; i=@nedap.com; q=dns/txt; s=20161201;
	t=1490855305; x=1522391305;
	h=from:subject:to:message-id:date:mime-version;
	bh=oqYimosQ5e+vCXrfFlsngvOXsxIroAyUHvd0O0Q9gDg=;
	b=NwozZLV6rRV/KeGkdRxnpCuOdLd2iHgZdX9vXfEFVmDt/4JL81TqntzY
	qnP8IKPCmOjj6sNPKT1V77YRQSBYwbIMXvJXqrlNlgWkuWxDuqvB6ZBWA
	GxXm9qu8gFY/JU4UcZVeTW6mjOqMJwwQzwDNGa1hlr9+oiWnpbbU5BsIs U=;
Received: from nvc2354.nedap.local (HELO [10.2.16.82]) ([10.2.16.82])
	by smtp4.nedap.com with ESMTP; 30 Mar 2017 08:28:24 +0200
From: Jaap de Jong <jaap.dejong@nedap.com>
To: yocto@yoctoproject.org
Message-ID: <b3e55f14-217e-c6bf-fbe1-0acdae5299d7@nedap.com>
Date: Thu, 30 Mar 2017 08:28:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: [meta-oracle-java][PATCH 6/6] oracle-jse: Add sources package
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
X-List-Received-Date: Thu, 30 Mar 2017 06:28:25 -0000
X-Groupsio-MsgNum: 35314
Content-Type: multipart/mixed; boundary="------------335C6CACF4CB7F24E611FFB5"

--------------335C6CACF4CB7F24E611FFB5
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



--------------335C6CACF4CB7F24E611FFB5
Content-Type: text/plain; charset=UTF-8;
 name="0006-oracle-jse-Add-sources-package.patch.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="0006-oracle-jse-Add-sources-package.patch.txt"

RnJvbSBhY2Y4MWE3OGM4NzA4Yjc1YzY3NWU5Y2YwZDEzMzJjMTk4MGY2NGE0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBKYWFwIGRlIEpvbmcgPGphYXAuZGVqb25nQG5lZGFwLmNvbT4K
RGF0ZTogVHVlLCAyOCBNYXIgMjAxNyAxNDoyODoxOCArMDIwMApTdWJqZWN0OiBbUEFUQ0ggNi82
XSBvcmFjbGUtanNlOiBBZGQgc291cmNlcyBwYWNrYWdlCgotLS0KIHJlY2lwZXMtZGV2dG9vbHMv
b3JhY2xlLWphdmEvb3JhY2xlLWpzZS5pbmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvcmVjaXBlcy1kZXZ0b29s
cy9vcmFjbGUtamF2YS9vcmFjbGUtanNlLmluYyBiL3JlY2lwZXMtZGV2dG9vbHMvb3JhY2xlLWph
dmEvb3JhY2xlLWpzZS5pbmMKaW5kZXggMzc2ODVjZC4uMThlZjQxMSAxMDA2NDQKLS0tIGEvcmVj
aXBlcy1kZXZ0b29scy9vcmFjbGUtamF2YS9vcmFjbGUtanNlLmluYworKysgYi9yZWNpcGVzLWRl
dnRvb2xzL29yYWNsZS1qYXZhL29yYWNsZS1qc2UuaW5jCkBAIC0zMSw3ICszMSwxMCBAQCBJTlNB
TkVfU0tJUF8ke1BOfSA9ICIke0VSUk9SX1FBfSAke1dBUk5fUUF9IgogIyBJbmhpYml0IHdhcm5p
bmdzIGFib3V0IGZpbGVzIGJlaW5nIHN0cmlwcGVkLCB3ZSBjYW4ndCBkbyBhbnl0aGluZyBhYm91
dCBpdC4KIElOSElCSVRfUEFDS0FHRV9ERUJVR19TUExJVCA9ICIxIgogCi1GSUxFU18ke1BOfSA9
ICIvdXNyLyIKK1BBQ0tBR0VTID0gIiR7UE59LXNvdXJjZXMgJHtQTn0iCitGSUxFU18ke1BOfS1z
b3VyY2VzID0gIiR7SkRLX0hPTUV9L3NyYy56aXAiCitGSUxFU18ke1BOfSA9ICIke0pES19IT01F
fSIKKwogUlBST1ZJREVTXyR7UE59ID0gImphdmEyLXJ1bnRpbWUgamF2YTItdm0iCiBQUk9WSURF
UyArPSAidmlydHVhbC9qYXZhIgogCi0tIAoyLjcuNAoK

--------------335C6CACF4CB7F24E611FFB5--
