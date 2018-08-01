Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6D62E00848; Wed,  1 Aug 2018 16:11:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E282E00708
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 16:11:38 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id o11-v6so393807wmh.2
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 16:11:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Y3hrvfSVXgsqtpDqmTg3KRCeFBg9WNVdoz0vuDjnvCo=;
	b=oJW3fcx81/L8OFes4BpmX/TYTKqr58R9A3TRtncIxii61kdIMkx6J2wm/0oZ1uURYG
	JF1r0ulDThZ2N73TttbNiAqq4aUYWJzIjvfMRx7T37WWSeYR2zDCxYv+5DimAZOkb5Pt
	QMZumuDoBbG357Ll86a8RFCJnOLEwUZt+T8G+IJAbL5C6/vkLdxf5Yh7keEpGWj1alod
	OWSqKFEsANowe0Ou3Kqxe54xGlu/3YDI2LL50aY/Sytajya+TPDOpzurgOxvbwBqD6Pu
	4QSWC2l2FvTcJjkJa1BntTkaEcdfxADXC+3je20sevLJ1tbHdD77PzfrFsqr/Q076Rmw
	XfZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Y3hrvfSVXgsqtpDqmTg3KRCeFBg9WNVdoz0vuDjnvCo=;
	b=i5rACpkulWvjIdwSTCD7yjKdlqDAkwNzHsOShkHwvTPGiZ1B0rYvqZj3XQnoVxDK2W
	x1pGkL39/QJ2C7wo4MBFcai/N9Zv++teZkhQYY7hiZslyPDLGzB2WDT/VFwfkIXtoLnQ
	lbtG8ULAM15Y2jwRDQFnbtTuz5XYkU5rEIBrHS84tU7mMdUlVNj6x0w3MULRS9QqI3ww
	+iCjYYBUKGPHasTo24UNaY9tmXJqj+YakUy/wQ3YsTBiwv+dmeyMG2JYqJrlXPI31b+R
	bQOPqbi4p13DUmvVcx/6OSzVBrvOkAQ7qQ71/HbnBMj0QKpp/FJiKU2cD1bARnOweuHN
	iWtA==
X-Gm-Message-State: AOUpUlF3DJOXRl4o9bVhZUPFlF14ZmSkKHzt6/bYzPEIa2DL7rc3iJ5P
	Lab7+KOXPUiBnuRkjQ+gME4T67ctd++9ZcLqDurCyle+4g==
X-Google-Smtp-Source: AAOMgpeVFBF3amcH3wXrdwcITAzbhITUcD7ogbcSyewGGwKrtUKJdI4kuSRTdIUQ0L86RWSEk5A5mhL0Gkxcr/D5w1A=
X-Received: by 2002:a1c:3351:: with SMTP id z78-v6mr222626wmz.23.1533165097969;
	Wed, 01 Aug 2018 16:11:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:e719:0:0:0:0:0 with HTTP;
	Wed, 1 Aug 2018 16:11:37 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
Date: Thu, 2 Aug 2018 01:11:37 +0200
Message-ID: <CAJO0J4g=yJLtdncAAJxdCA5vTOPnz5ZOt3hc6Q4eHOh18tm4-w@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Cannot use any TEST_TARGET besides simpleremote or qemu
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
X-List-Received-Date: Wed, 01 Aug 2018 23:11:40 -0000
Content-Type: text/plain; charset="UTF-8"

Hello

I am trying to create my own test controller. After copy pasting and
adapting the skeleton from BeagleBoneTarget to
$MYLAYER/lib/oeqa/controllers I set the appropriate TEST_TARGET.

When I run the testimage task I always have errors like in [1]. The
actual keyword that is unexpected changes from invocation to
invocation. There was a similar error previously reported in this
mailing list but the presented solution was to actually stop using the
TEST_TARGET variable, which is not applicable.

I have tried setting TEST_TARGET to any of the proposed options in the
manual [2] and the same unhelping error shows. I know that some of
that these controller targets, are not appropriate for my target
(odroid [cortex-arm15]), but the errors seems to not be related to any
functionality or these boards.

I have analyzed and cannot really understand also how all the example
targets classes have a constructor which takes the d variable, while
the context.py call has some more variables including a dictionary,
kwargs, which does not actually have the d variable.

I am not interested in anything qemu in this case.


[1] Exception: TypeError: __init__() got an unexpected keyword
argument 'boottime'
[2] https://www.yoctoproject.org/docs/2.1/mega-manual/mega-manual.html#var-TEST_TARGET

Paulo Neves

