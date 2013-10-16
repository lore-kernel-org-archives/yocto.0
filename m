Return-Path: <marek.belisko@gmail.com>
Received: from mail-qc0-f175.google.com (mail-qc0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF248E01685
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 04:40:41 -0700 (PDT)
Received: by mail-qc0-f175.google.com with SMTP id v2so470732qcr.6
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 04:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Be/Sh30VJTXiudsRlCIx4+7G8VT5X3k9IV4G/1l9unA=;
	b=fWC2/cZfqXKGKwrIvayYvaXNREfHIv/owZMd6j/+VVjTn9txRkbnQmJTr4jL/OHsXE
	KenaW7pKG3SH6bc2O1O/eQfMqQ3UNJjSgSJoJePVbFY5IGbDZv3Cu/1HL2kcbqGZfhcM
	/4q6mkE+2qhUHCAKdnEBfAhC887M2m+fVMszY/YlDf+lPD7x/ZRxbJm95R0u6dn+ERnR
	D4t1W2r4ckQ9M5hb2iSFjZUwQ7CTmrGigRW2kCsgGjg1iakr8kMQ5F3o+QTWQEwQfLMT
	NyKTPIlhn5VBKSSDujGVqKqrejr118ndYZvEjybc4SFjN4rFKx2n1SA9ceYuO30sOAF7
	xqRA==
MIME-Version: 1.0
X-Received: by 10.224.37.198 with SMTP id y6mr3874300qad.104.1381923640771;
	Wed, 16 Oct 2013 04:40:40 -0700 (PDT)
Received: by 10.224.97.137 with HTTP; Wed, 16 Oct 2013 04:40:40 -0700 (PDT)
Date: Wed, 16 Oct 2013 13:40:40 +0200
Message-ID: <CAAfyv36V44O=Tx-yvp9uN=fiAiXMzx3qH+5b8afEA_J5r0Hxcg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: undefined symbol: dbm_nextkey when trying import anydbm
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
X-List-Received-Date: Wed, 16 Oct 2013 11:40:53 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I'm trying to run some python code on imx6 board but get following error:
    import tlslite
  File "/usr/lib/python2.7/site-packages/tlslite/__init__.py", line
27, in <module>
    from tlslite.api import *
  File "/usr/lib/python2.7/site-packages/tlslite/api.py", line 12, in <module>
    from .verifierdb import VerifierDB
  File "/usr/lib/python2.7/site-packages/tlslite/verifierdb.py", line
9, in <module>
    from .basedb import BaseDB
  File "/usr/lib/python2.7/site-packages/tlslite/basedb.py", line 13,
in <module>
    import dbm as anydbm
ImportError: /usr/lib/python2.7/lib-dynload/dbm.so: undefined symbol:
dbm_nextkey

I add manually tlslite recipe like:
--- /dev/null
+++ b/meta/recipes-devtools/python/python-tlslite_0.4.6.bb
@@ -0,0 +1,19 @@
+DESCRIPTION = "TLS Lite is a free python library that implements SSL
3.0 and TLS 1.0. TLS Lite supports non-traditional \
+authentication methods such as SRP, shared keys, and cryptoIDs, in
addition to X.509 certificates. TLS Lite is pure  \
+Python, however it can access OpenSSL or cryptlib for faster crypto
operations."
+SECTION = "devel/python"
+HOMEPAGE = "http://trevp.net/tlslite/"
+PRIORITY = "optional"
+LICENSE = "PD"
+SRCNAME = "tlslite"
+PR = "ml0"
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=124965e4b4f94b27c639fb4a25ff3ec4"
+
+SRC_URI = "https://pypi.python.org/packages/source/t/tlslite/tlslite-${PV}.tar.gz"
+S = "${WORKDIR}/${SRCNAME}-${PV}"
+
+SRC_URI[md5sum] = "2f92ebea557802969653f29c7faafbc2"
+SRC_URI[sha256sum] =
"5a707af9afbd27cf99c87697ce2f7e87752cf160f20384212bc2d1d42ea7dd08"
+
+inherit distutils

Any ideas what could cause undefined symbol (or something is missing in recipe)?

Thanks,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

