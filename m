Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1289E00D83; Tue, 11 Jun 2019 03:38:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 219FDE00D6E
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 03:38:38 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id n5so9433158ioc.7
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 03:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=WpD3yD6wOeRO2jcX2w4u5eM/0Ql55VSPrO2N7zDalRs=;
	b=Nbt+SzrqTIhChrzsvignTMVIjp5Dqn3mvlb+WO1J9qTb5w+kIsqF9OLT42pwqSy2FP
	CDf+Xn3+d+uiWSorxvKk0g03Z83tW/e6mVAZt44RUKx1ZWMmewT4HxePLIC4oksrNWjw
	qhzM3cTMS2pRT+Ka6/TRAaXHrgrIt1Kl93qrK8WdBPW2/exSWRNwPhNxrc/0W32fQG7g
	4HV/IX8Man6T5T1e+Xnm6KnWpAJsbu63IfWuIbRcXXnAxOKxBpUyNjrRSyBoN1wEXgZb
	xion6wwOu87jvBJGOGWv5PQ+jWoJRA0zaWOoMZQ3njq2hNNmUVbHX8da4KRlOc3HyPVa
	SCGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WpD3yD6wOeRO2jcX2w4u5eM/0Ql55VSPrO2N7zDalRs=;
	b=JReHe4ggRBLNoSp7zl8KMtGzCRJzZq1G06wExzmqEiGJ5gLcBKhJ/B9/yXV4FsrIbv
	RwHnGOF5HPRYGuJzGXh0dLVRAI9pb3vq1xKmXoQCnqcynst4Fx6S8/0SYuDcNtJ6q1kZ
	5CTYur0ez/g211B8hUjUvRMwjvvIfFPe2zMseI2fwWUZiTJihH8Oj8e7XWs+eWcZAoRz
	z/w1Ie9XTfmwnhRzwRk0J5tCNKnygGdez68YLkMAxZuleZlyysg5phIE2RRmnTgWuG3y
	yJmOqedtzTQg1lqItaXzEXLpx6L4Dx1jT+TiTHVGNPPKDppsPZifTcfRWS3QVKKnEhxN
	37Zg==
X-Gm-Message-State: APjAAAWUcns3Rk+flvpIrGKQG0zUYhfVTd+qXNnkD+ppbKx0lXfQwZvY
	A7mYnZxK3ZSHB0Zk7vEYXegQBOBOgUjM8lJY4l7k25EJ
X-Google-Smtp-Source: APXvYqyBdaR/cjcTP4g5J8KW3BrlCB4xHfkzPNpSNBC8O4H3QtgeFniPwGRgQKTadm9lnvOrl1gyUlXXMwAp5ZWECGs=
X-Received: by 2002:a5e:db02:: with SMTP id q2mr23379481iop.306.1560249518381; 
	Tue, 11 Jun 2019 03:38:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:92cf:0:0:0:0:0 with HTTP; Tue, 11 Jun 2019 03:38:37
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 11 Jun 2019 20:38:37 +1000
Message-ID: <CAA=hcWRzPWecUL0-e2hhNYE2RzjbuL9=fCLqTyy7GRFD563yGQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Download git source not the latest
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
X-List-Received-Date: Tue, 11 Jun 2019 10:38:39 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I set up SRCREV = "${AUTOREV}" in the recipe of my application, but
too often it downloaded the old revision. How can I force the bitbake
to download the latest git source?

Thank you.

- jupiter

