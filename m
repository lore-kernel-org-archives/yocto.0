Return-Path: <einar@vading.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92819E00956; Tue, 12 Sep 2017 02:04:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3040EE008D2
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 02:04:24 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id q76so4260589pfq.2
	for <yocto@yoctoproject.org>; Tue, 12 Sep 2017 02:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vading.se; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=jDk1Aaa/7+h2moTHIGqD6vtG7ERp3HxHa2eDtw66v3k=;
	b=TtrXLp5WPIK6ii5xBLj5/Xw9lKKXDnLfeXOzbPTXN9xUmvPHliAziAUT86AJP4al6Z
	c1c5WFyXaZs/YGpLws3BXB/XSD9/ey0Hl4gJSGeLtDwy1ignNQCQYkxK5HXOMHegfxj3
	C7S8uhhVPMWYBBWf/EgpG8bAxDXVzBwM8rr9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=jDk1Aaa/7+h2moTHIGqD6vtG7ERp3HxHa2eDtw66v3k=;
	b=HVKxx4a7uWLNSv6uUAF8vCRGOTbGRLTTTd7WIEExJgFonoO5BjBly0J2tq++HtgGtS
	9EFOzm2hGC/6frfwjoKwjMP6oFggyIm8oG55h6eEWPmNo6xuaHmR1G7Syw56MBIJ4ULq
	p8y40WfTDZ0jbETKoJGi8cCOtNk5uOUuiB4yP/2J7L5wOy/RAef667bEqoszFBIrMDTc
	uL0etVvl6JLdaGW4uYwi9/v5TJ8sM3m3me9d+mIBDdiyk4OkKQnmrHTVb2NDecEt2FoZ
	MynE8wAWsLbhg/QtiFQFtBf+LZeZzXoV6X6iG2EZ4xbRKlO2clT6gcsyF8lxJszMVA6c
	9/Kw==
X-Gm-Message-State: AHPjjUhl7eJAtFU3Br9YEfFiDkCm53B9ureKRPf5tZgnrPIIdB18oqJ6
	YSxtBdyCYQtSskcGHx1JKdAvJ2SjgH+LUZU=
X-Google-Smtp-Source: ADKCNb5YeZ9qmsajznunX5omNdh+Y6vv0+25w4yG0obQNiSdBRYPwHv3+39jRYxJQpK9RxzK/yod84tyARJB0sElCFI=
X-Received: by 10.84.238.143 with SMTP id v15mr16892403plk.303.1505207063523; 
	Tue, 12 Sep 2017 02:04:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.170.14 with HTTP; Tue, 12 Sep 2017 02:04:23 -0700 (PDT)
X-Originating-IP: [195.60.68.156]
From: Einar Vading <einar@vading.se>
Date: Tue, 12 Sep 2017 11:04:23 +0200
Message-ID: <CAB6-VtJZkohv2d8-ePCLrgZHPDuUEn5f2CEgmEPy48Ts30EeqQ@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 14 Sep 2017 13:41:14 -0700
Subject: Best practices when for script recipes.
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
X-List-Received-Date: Tue, 12 Sep 2017 09:04:25 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I was just wondering if there is some best practice advice on how to
handle adding a single script from a recipe.

If I have one or a few shell scripts with their own recipe. Do I make
a git and use the git from the recipe or do I just add the scripts to
a files directory and install from there?

Are there any pros and cons to either?

Best regards,
Einar

