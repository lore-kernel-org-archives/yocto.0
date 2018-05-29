Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A44BE00C5B; Tue, 29 May 2018 01:22:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f177.google.com (mail-ot0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6967E009AC
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 01:22:43 -0700 (PDT)
Received: by mail-ot0-f177.google.com with SMTP id n1-v6so15984950otf.7
	for <yocto@yoctoproject.org>; Tue, 29 May 2018 01:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=SydTAWv8EeYmYgPL8IZX76HtalpG1NDI+cKSdv2oyhY=;
	b=NY2XerOjYk5ulyCzqZcXvPLiEB0XVMkWzk34Xb/2+0NqtUjKiYWwE988coJTsQFsUR
	T+VABWZlet+7570j1ZzEcdL/QPO3nEIhgpshkeaqVEGvlblFth/gJr+wd8+qooupn8yG
	opvJtZTq3J4Sijr/8ZwkYxOkE3CXKQbw8rsvVh4HO65xWhqmkdjp+MSEID35uCFQ/elB
	eWuRuhDKUo2l6UJc2Q7ZHNgzMtG2ecjQG/Y620wTyLWSK1XlKQ/eoIc2nTFZKVfNckEg
	daYKqfmhnPN0luV9TBpC0zDm6tsPHyGHzlKhRov54yX1oDO8owwg+/mh/IbKkzulCF5t
	Uwqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SydTAWv8EeYmYgPL8IZX76HtalpG1NDI+cKSdv2oyhY=;
	b=Dwc1yMBwJ7fDloFgl/KZPRUExWddYGLp9PxghVHvnHJngUuQDv5uvThl6roZSnRnai
	XtX7VjlnGsFTKCmeTdOLrSsDBLPF6uCOW66mOmheNdAQ8pVX2dszcVEXDzyZZXQa8iOk
	1XytzJVeqLfyUkB7OFBjnQUtyigHdK2bSMzvCFJmgW+2CP5UVdd7vhaRSWbHuVN8ClNo
	i/gIvxjQ9vQNs8bvOWYbqMbNuGbJtAjKxp0GP4s259Is5pkg83EqEIYmpf9gcAI/1zpp
	Xk0bLD4PiXjQo44RwhUy8K24UUXqIkLMrqKpsZ/z1KaDXeNnU6/K0MKWFaJQXOZNI64W
	yEYg==
X-Gm-Message-State: ALKqPwflBaM2IgN88VlxIdm4xCLUFhy/HBHYUhH1e2p/u/xtKnASnwst
	IUnvnXTN0wMLtgIfC5QwvltJP+z8x0JqqCg4lUm8sJde
X-Google-Smtp-Source: ADUXVKLcNeYlpsdOfDKQox/Q3SBpoypxM0jKyaemkCqGjMYfOk33NFyvtqpcSm9WvBwDUBOlfvHH2MwonM6SjzQr3m0=
X-Received: by 2002:a9d:6002:: with SMTP id
	h2-v6mr11176175otj.295.1527582162236; 
	Tue, 29 May 2018 01:22:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:1a99:0:0:0:0:0 with HTTP; Tue, 29 May 2018 01:22:41
	-0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 29 May 2018 10:22:41 +0200
Message-ID: <CAOT_U5a0_QAXjYbd05fCDMUjJorQ43Ax66aN7grd_-OH3URKkA@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Debugging race conditions in image creation
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
X-List-Received-Date: Tue, 29 May 2018 08:22:44 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm building multiple images with the same invocation of the bitbake command.

When building them one by one, everything works ok.
However when they are both executed in the same time,
issues occur during do_image_sdimg.

The issue seems to be related to a missing bootloader file (they both
depend on the exact same bootloader):
    images/senic-hub/u-boot-sunxi-with-spl.bin.1

I'm guessing one image is trying to use the file while the other one
is deleting it or something, so probably some dependency related
issues in the recipes.

My questions is do you have suggestions on how to debug it?
Is there a global ordered list of executed tasks so I could see what
might be happening in parallel or before the issue happens?

Or can I explicitly set that a recipe shouldn't be parallelised?


Be Well,
Alan

