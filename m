Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 797AAE00B74; Thu, 29 May 2014 05:47:15 -0700 (PDT)
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
	*      [209.85.213.169 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ig0-f169.google.com (unknown [209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FF5AE00B6A
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 05:47:13 -0700 (PDT)
Received: by mail-ig0-f169.google.com with SMTP id hl10so3472799igb.0
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 05:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=I9tpRRZk6PfSzmFofPPwmDnH6ID/kCpBLJRNJ2fobw4=;
	b=EcPRz07+1R1GTsm7jcGI4bgOIB0nl9mntmMJAcFwM0fpz4p33SFc/hjQgiBAGaLbRg
	PvyLSi4LncMzwf+koy464FF5qLlvwM9V9i8TcqLGoddufX4XyetTIT0BfLEFovadW1DC
	6AHTQ7b/gPwxCByBK0966nxc0ZEgpgIqV/NCvLI62chdLV+KPc+V6BLHo46JT+1soaIR
	5pESi12rJwRCMkzOfgFIWD2sEMW8YF48IiWU/thBlHCRcjMseqeUelNrngzZOMSPoiTJ
	DqcbA/0aLzDFAi1KXCucmJfjLtlJc/JBCYqM2Vhh8JVm+7HjMJRBQuqchiyrWm0Iuo4D
	X5FQ==
X-Received: by 10.42.91.73 with SMTP id o9mr6946631icm.69.1401367633167; Thu,
	29 May 2014 05:47:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Thu, 29 May 2014 05:46:53 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Thu, 29 May 2014 08:46:53 -0400
Message-ID: <CAAPegz2wnPiugMeJ=ARa6AqLD6J59JUhPbTY7SZ9_yfL2JbDdw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-oe][PATCH 1/2] dfu-util 0.7 recipe
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
X-List-Received-Date: Thu, 29 May 2014 12:47:15 -0000
X-Groupsio-MsgNum: 19840
Content-Type: multipart/mixed; boundary=90e6ba61501ef9abc404fa89530a

--90e6ba61501ef9abc404fa89530a
Content-Type: text/plain; charset=UTF-8

dfu-util 0.7 is the latest release of dfu-util

--90e6ba61501ef9abc404fa89530a
Content-Type: text/x-patch; charset=US-ASCII; name="0001-dfu-util-0.7-recipe.patch"
Content-Disposition: attachment; filename="0001-dfu-util-0.7-recipe.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hvs234cx0

RnJvbSAwYTg1ZDg4ZTkzZGUxNzA3YWE5YjdlZTQxMDY1ZDhjM2RiMGFjZDY2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDaHJpcyBNb3JnYW4gPGNobW9yZ2FuQGdtYWlsLmNvbT4KRGF0
ZTogVGh1LCAyOSBNYXkgMjAxNCAwODozNToyNSAtMDQwMApTdWJqZWN0OiBbUEFUQ0ggMS8yXSBk
ZnUtdXRpbCAwLjcgcmVjaXBlCgpkZnUtdXRpbCAwLjcgaXMgdGhlIGxhdGVzdCByZWxlYXNlIG9m
IGRmdS11dGlsCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBNb3JnYW4gPGNobW9yZ2FuQGdtYWlsLmNv
bT4KLS0tCiBtZXRhLW9lL3JlY2lwZXMtc3VwcG9ydC9kZnUtdXRpbC9kZnUtdXRpbF8wLjcuYmIg
fCA2ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUg
MTAwNjQ0IG1ldGEtb2UvcmVjaXBlcy1zdXBwb3J0L2RmdS11dGlsL2RmdS11dGlsXzAuNy5iYgoK
ZGlmZiAtLWdpdCBhL21ldGEtb2UvcmVjaXBlcy1zdXBwb3J0L2RmdS11dGlsL2RmdS11dGlsXzAu
Ny5iYiBiL21ldGEtb2UvcmVjaXBlcy1zdXBwb3J0L2RmdS11dGlsL2RmdS11dGlsXzAuNy5iYgpu
ZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi5jNGMwMzBkCi0tLSAvZGV2L251bGwK
KysrIGIvbWV0YS1vZS9yZWNpcGVzLXN1cHBvcnQvZGZ1LXV0aWwvZGZ1LXV0aWxfMC43LmJiCkBA
IC0wLDAgKzEsNiBAQAorcmVxdWlyZSBkZnUtdXRpbC5pbmMKKworREVQRU5EUyA9ICJsaWJ1c2Ix
IgorCitTUkNfVVJJW21kNXN1bV0gPSAiNTY4NDQwMjAxNzdkNGRiNGMxZWEyZTkyNmZlOWQ1ODgi
CitTUkNfVVJJW3NoYTI1NnN1bV0gPSAiZjUyYTJhNTQ4OWZiZjlmMzIwNGE2YWRhMDVlMGI0N2Vl
MzIyZTE5ZDgxYzcxMmUwYzU4YTMzMmQ4MGVjM2VhYiIKLS0gCjEuOS4wCgo=

--90e6ba61501ef9abc404fa89530a--
