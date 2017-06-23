Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04988E00B9D; Fri, 23 Jun 2017 15:39:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 746CEE00B1B
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 15:39:18 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id y70so20098358vky.3
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 15:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2LPK9kclmBP9S1+YedtPPfOCR2eT0b5wAiGJcdVJ3oc=;
	b=Y4lux79Hp0AJP7jvjel02kG3PGSee0QEiEbobiboh1oWiZjfGW5utdG3PGq1t4o/wg
	O+UcA1xSBsM5LH3yEd0hJUdorWV03ws/UKXz0rbBVya1JDeqyPUbrA2LR+WWa22bv92p
	f39dnP6nxWs3qimQdjQXi3ZGQKIFExFSwT12vLesB4FeAQcQT3s2s8qjTCnQW7YW4Gf+
	D0eaJ4SX0l2793/aEuerw+swzg/XnKjFEP1OYDiRG3SMdlvUQPjnP0f5Q3CIye0rhrcp
	AqLNWv1h4EnDaTEaarQm6OYPBGkaH1sR53sVl+lulHa+dEw1IBdYelE+VgiThJZE6Wk6
	KTtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2LPK9kclmBP9S1+YedtPPfOCR2eT0b5wAiGJcdVJ3oc=;
	b=drKCHYXL5lDxUzZ8HfCxNlqLnIk65pYwhyN2ucZIJ9AJqS909l+QFxHqyBGC0tCMSx
	sWdvBIIMYWgG48QHdihIusR9hOOzZjpibNyY14LhXzOX29HqTMz3hMBaoMHvzHyiZ4iB
	DFFgUilsx7LifOX7jyErRA4Mn6bDxVNthK3Yus1uvZVhnFbr762fDd2zXLsgEWZtSsHh
	DLfCHlFrNw107pMIDuCrmzv/i3l9q63+zU4aWt2NPAmKoYvWEbhsWTTPxndVqAirgnSG
	vrP6nog+WqsnDBP6GKfUx5mgU6dbWW4bHdIw9wBXzVq7ce/1vq4we/IINt2dtq6gGKmf
	+qyg==
X-Gm-Message-State: AKS2vOyFGnYaUh65BGuNFhsOq8vdgS2XUZt2n2BILkuI7oux5lTX4Dt8
	kWG00cAiLDlRicb1wKeB0xlsY06w4m1HdKU=
X-Received: by 10.31.88.6 with SMTP id m6mr4014308vkb.0.1498257557184; Fri, 23
	Jun 2017 15:39:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.84.198 with HTTP; Fri, 23 Jun 2017 15:39:16 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 23 Jun 2017 18:39:16 -0400
Message-ID: <CAHUNapRZG_qxTXd7JLNwp7918Y_Vasr8nS60EatyjP2QGhbZ-A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Khem Raj <raj.khem@gmail.com>
Subject: using clang for one recipe
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
X-List-Received-Date: Fri, 23 Jun 2017 22:39:24 -0000
Content-Type: text/plain; charset="UTF-8"

I want to have one recipe build with clang instead of gcc (gcc is
being used for the rest of the image). I thought this was as simple as
adding the following line to the recipe:

    TOOLCHAIN = "clang"

Adding that line, and adding meta-clang to bblayers.conf, did get the
llvm/clang compiler built and installed to recipe-sysroot-native. But
the moment it starts to build the package, it fails immediately with:

    | fatal error: 'string' file not found
    | #include <string>
    |          ^~~~~~~~

Did I miss a step? That seems like a pretty basic thing that would be
needed for using a toolchain. If feels like I'm missing something;
like I need to add something else to my local.conf. Thoughts?
Suggestions?

I went looking for examples of recipes using clang and found
meta-openembedded/meta-oe/recipes-support/tbb.bb which includes:

    COMPILER ?= "gcc"
    COMPILER_toolchain-clang = "clang"

Odd. Why "COMPILER" and not "TOOLCHAIN" like meta-clang's README mentions?

Best regards,
    Trevor

