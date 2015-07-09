Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAC01E00A49; Thu,  9 Jul 2015 14:29:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
Received: from mail-yk0-f173.google.com (mail-yk0-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B7AFE009D9
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 14:29:23 -0700 (PDT)
Received: by ykcp133 with SMTP id p133so60631740ykc.1
	for <yocto@yoctoproject.org>; Thu, 09 Jul 2015 14:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=vBLbBgDO7GKduX1XMogdqJHEREmWmcbEphkHc28V9l8=;
	b=qfD+XE2ldihNq46L2llhF8G7DK8BghIWiymsp5i1zoXw6EPplt5n+H3fp5U852v4Xy
	qI9m1m07IdofbXmprcRZxFf0nQKx7AgPM5COluuk8Belu8msxnz9uFmls0HiG+BAgl/s
	x99l4XZQvgHWCNPppY85SDVhBVV4uqxr1uGoPgASzvGSHnFnEGJhrJj2qzhvnE07sah4
	LVDPBJftP7kKWIhr09fXS0MEP0tyxCwr3C9i17bFenhmimL0oXY7eceMNUT/JE/lgmk6
	C5eHb/CVyuC5cRyzXlAmCL+l4DELpHE+TiEnET3/yQoznOaQpUDpcjvQ0/Fz0UbYHj8Q
	MKxA==
MIME-Version: 1.0
X-Received: by 10.13.217.151 with SMTP id b145mr19545234ywe.173.1436477363180; 
	Thu, 09 Jul 2015 14:29:23 -0700 (PDT)
Received: by 10.37.215.148 with HTTP; Thu, 9 Jul 2015 14:29:23 -0700 (PDT)
Date: Thu, 9 Jul 2015 14:29:23 -0700
Message-ID: <CAKV_0ei93Lz4dga9vy77pQxFOZeuj_C01XoBQ63OKnjX9OyF2Q@mail.gmail.com>
From: Brian Avery <avery.brian@gmail.com>
To: yocto@yoctoproject.org
Subject: [layerindex-web]
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
X-List-Received-Date: Thu, 09 Jul 2015 21:29:28 -0000
Content-Type: text/plain; charset=UTF-8

For the update script you also need python-git. Since we are already
using a virtenv, why not add it to requirements :).

yolk lists the following as being available so I fairly arbitrarily
picked 0.3.7 on the assumption it was the "best" of the 0.3 line...

GitPython 1.0.1
GitPython 1.0.0
GitPython 0.3.7
GitPython 0.3.6


-bavery

diff --git a/requirements.txt b/requirements.txt
index b88ab2b..ea52994 100644
--- a/requirements.txt
+++ b/requirements.txt
@@ -17,3 +17,4 @@ python-nvd3==0.12.2
 regex==2014.06.28
 six==1.7.3
 wsgiref==0.1.2
+gitpython==0.3.7

