Return-Path: <sodovkar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23EE0E00566; Wed, 10 Sep 2014 04:25:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sodovkar[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D480E0049D
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 04:25:13 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id v6so4616358lbi.27
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 04:25:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=pHeyUzai/xJI/qp+6rjimqsyI66Fb2JVMijDWYPZh/c=;
	b=zrxNFf3gIHQA/aiV8fIC7Bc5R5YzqcH+lMCUEqYl03pffGNPsuTfB4veGQJ033qEmr
	rZVeyCSxVDDdFQuYSi/hvdI8U4ywQ8IU3m6j7VsiPdmV8cMeuzro8O0q71Jna9JDhlIC
	SM4aomI5yMrXo4hP4Pz1bgMfpYMmdeegc2oCafxJ9tuwV4/RfjF0uKqeoRE3+ZyM9C9q
	s6IrVBCZ3wOazrlp3sw8XnLjB9LBPmhaxjBcajjQR+DW6k3nPWxG8yqnBEIWH4vdABJy
	x+fSCZ7kTCf6+OIEKIpD250xGJz2bES5+9+YOOAoZqISW8avj1f5CId71BQ+3iOUYE18
	QQOw==
X-Received: by 10.152.21.98 with SMTP id u2mr15677048lae.80.1410348312972;
	Wed, 10 Sep 2014 04:25:12 -0700 (PDT)
Received: from ?IPv6:2a00:1028:86f0:2742:922b:34ff:fed2:fd27?
	(dynamic-2a00-1028-86f0-2742-922b-34ff-fed2-fd27.ipv6.broadband.iol.cz.
	[2a00:1028:86f0:2742:922b:34ff:fed2:fd27])
	by mx.google.com with ESMTPSA id n7sm5209442lag.47.2014.09.10.04.25.10
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Sep 2014 04:25:12 -0700 (PDT)
Message-ID: <54103464.7070807@gmail.com>
Date: Wed, 10 Sep 2014 13:22:12 +0200
From: Soda <sodovkar@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: python3.3 module encodings not found
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
X-List-Received-Date: Wed, 10 Sep 2014 11:25:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello developers,

I have recently switch to the poky-1.6.1, mainly because of python3.
First of all I must say that I see significant improvements in the new
yocto 1.6.1 (compare to the 1.5.1), so thanks to all contributors!

The python3 package is successfully compiled and installed on my target 
board (Atmel A5),
the problem I'm getting is the python3 cannot find the 'encodings' 
module, maybe because
there is none in the /usr/lib/python3.3/  copying one from python2 did 
not work - obviously.

This is the actual error I get:

  # python3
  Fatal Python error: Py_Initialize: Unable to get the locale encoding
  ImportError: No module named 'encodings'
  Aborted

More detailed error:

  # python3 -v
  import _frozen_importlib # frozen
  import imp # builtin
  import sys # builtin
  # installing zipimport hook
  import 'zipimport' # <class '_frozen_importlib.BuiltinImporter'>
  # installed zipimport hook
  Fatal Python error: Py_Initialize: Unable to get the locale encoding
  Traceback (most recent call last):
    File "<frozen importlib._bootstrap>", line 1565, in _find_and_load
    File "<frozen importlib._bootstrap>", line 1529, in 
_find_and_load_unlocked
  ImportError: No module named 'encodings'
  Aborted


Looking forward for any hints or solutions.

Mark

