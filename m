Return-Path: <bill@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9551FE00A38; Thu, 14 Sep 2017 22:14:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C712E0091D
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 22:14:03 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id v36so5771037ioi.1
	for <yocto@yoctoproject.org>; Thu, 14 Sep 2017 22:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=from:content-transfer-encoding:subject:message-id:date:to
	:mime-version; bh=WXFZ5bD/9pwQm4OMalUL+4w1fUMwJjPGY2JpNFZ2/eY=;
	b=CFwipW3wqv3cL4q3CMkFnpxVlUKc/bzfhfmYSifA/3N39kS7XtRPGrLwGj34y8Frcj
	ZuEsdT2KRIgH/m09v/zJsBjSenf7dNnH2Y00JCcTl+y7ThXhbTLj7ypwL2E+rr3LnJRb
	buCbCZRiXlBJb9YOv/WEYF/YofITIG4WKPDHZxSdsTGDdmg8rpT+2hRfuuxVsUFfctyo
	6oWqOlIwTjTTgdenZk+UdknUaUlMDjgxCkrtCt947gt8PAaSaqBY3B7duSUtUfp68XWF
	BchiOonlo1Q+9FNu5ErPBQow0qW7dUIwjiVdW83E6Kt1OZzmZaOf9WbvBqhl39+Jo1H1
	/09w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:subject
	:message-id:date:to:mime-version;
	bh=WXFZ5bD/9pwQm4OMalUL+4w1fUMwJjPGY2JpNFZ2/eY=;
	b=UOnG2tOOiGwnSSn/fbWilqUEMzQHry0JNpMYyb2tMqgug1Mc2ELPndc2rnwgGcnsRe
	x2QKLqAeFt+E6zWkgemaeLPtb7+D2LaGXGVBBlgdTE4ZQ8c9V0lEhIrX/WlDrnqibl6a
	Et5Majc10MNlQHPtLbPRza70/rq5Sts7beQ5PorJGK0a98X5c9DZxrtSAxu5pSH0KwZW
	c/4X0oZ3uAbBnsmL4dw8rWbVIdmUM59FNXvN9i3UcK8DDGOP6vTvJzvmihHYOeGAZf54
	J5/IiL0GY5ohq5AvZpKZLQbzeEYY6VCyyQYfWeveE0Ng0UiWMhmk5X+O2h9XyL78ZnoT
	5PNg==
X-Gm-Message-State: AHPjjUgPGq6NSJlsBCa7otYQx+yxY0LXne9QLIlGXgQJ1HJa0889eAhk
	O6O6vwXspAEX6+5pH7mbBA==
X-Google-Smtp-Source: AOwi7QCNPex2VrJkjzh5bbyhX1VV7Okmfmnu214PvEPCJ6LCkDlE2Hbr5R/zo+25fWGOT/f+CcR5IQ==
X-Received: by 10.202.235.80 with SMTP id j77mr25276488oih.220.1505452442976; 
	Thu, 14 Sep 2017 22:14:02 -0700 (PDT)
Received: from [172.20.3.38] ([209.116.245.4])
	by smtp.gmail.com with ESMTPSA id j5sm65469oiy.43.2017.09.14.22.14.02
	for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 14 Sep 2017 22:14:02 -0700 (PDT)
From: Bill Jenkins <bill@korgrd.com>
Message-Id: <995935C6-A0F6-45AE-8526-D1AFE72B3932@korgrd.com>
Date: Thu, 14 Sep 2017 22:14:02 -0700
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [meta-raspberry-pi] needing newer or patched version of g++
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
X-List-Received-Date: Fri, 15 Sep 2017 05:14:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

After creating an SDK for a 32-bit Raspberry Pi3 target, I ran into the =
following compiler error when
compiling an application using the SDK:

internal compiler error: Max. number of generated reload insns per insn =
is achieved (90)

It turns out that a patch was submitted for g++ early last year for the =
above problem, but apparently that
patch is not in the 6.3.0 version within the SDK. When I try to specify =
a newer version,=20
(by using PREFERRED_VERSION_gcc-cross-${TARGET_ARCH}) bitbake reports =
that only 5.4.0 or 6.3.0=20
are available. Any suggestions on how to resolve this? (i.e. is there =
some way to use a newer g++ or to=20
apply the patch?)

Thanks,
Bill=

