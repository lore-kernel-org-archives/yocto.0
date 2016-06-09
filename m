Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D094E00D54; Thu,  9 Jun 2016 08:58:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EE1AE00D23
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 08:58:04 -0700 (PDT)
Received: by mail-qk0-f177.google.com with SMTP id i187so23068988qkd.3
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 08:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=4VX7BjOg2uGmeXe05EcuYvmpPiIsrQ+kvN+jKBydsng=;
	b=BL/sVlvxS/tU4qnKx9DVBtqnP+9nZ1jyj7HyNtQ7bL2YefNRy5ivwjzHQO/pQHynQe
	FBnEV6O0e1UkpAfH53XeiL+EUR3Mz445T/irBrxqHP8dyNxGoaqbXvIn5TfUpltMll2O
	dHtqfEYJBcnqgdZR3KHwGAhbZNevDDm9hKbssIcr728NTdl8tPKXPkLDGarb33WxFCdc
	gF9JQPrk52vr3GY7AMwWv3wuSjzekJ8+1DqGH4gRbaIUqANTf4R7Aq/4O2+ZOy51o/IM
	x7sQ9YiYooOk/BV8jneAJF7SXU9XAJHe10X1TC2dFiwmxqa73gFEDUmQLPqbZBzBDnWO
	5qJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4VX7BjOg2uGmeXe05EcuYvmpPiIsrQ+kvN+jKBydsng=;
	b=CnYNLjD/HkxAE2lwlC9QPB8p68VX4WsXMxhqElUXEKI9YnuUKCAr932MvLErvW5oey
	bgl8/QgQtruRgdkG6SdYk8yX9/OExkFt2TF80dO8rkk/IHTv6aj8Mjqg0cFNonDFDLgM
	CafK5QCBhKtKrhRmrZObtrPiJXF88JY7PI2PElfuNoWr71JwTIkDqQUNGngYW0o1mvfO
	ORP7Yu/yCH2yM2qiCiJzX5R2u5Xd+W8PzNkQoOLho+lslPUItDVw0cqYp3ma4D9QyIiZ
	mUei7PSEI/b/30gi47iUyjM/yahpIiDb7GWfgwNINXooYhUge39IJf8yLoMp56pU+Dww
	ZpKA==
X-Gm-Message-State: ALyK8tLRlGPpGJYdkHzq7kYUfVCzyC42bGFDAe3qmDN2/syrnaHqpDPytAJlOlL4QtxDDq5krKfsQCn6y56MAQ==
X-Received: by 10.55.207.74 with SMTP id e71mr10864479qkj.64.1465487884261;
	Thu, 09 Jun 2016 08:58:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.35 with HTTP; Thu, 9 Jun 2016 08:58:03 -0700 (PDT)
From: Edward Wingate <edwingate8@gmail.com>
Date: Thu, 9 Jun 2016 08:58:03 -0700
Message-ID: <CAGMdoFnEYZ_qPL4=zem10xHfogbcVRB+Zo9yZdWium0OwvXYsw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Python module from git repo recipe
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
X-List-Received-Date: Thu, 09 Jun 2016 15:58:07 -0000
Content-Type: text/plain; charset=UTF-8

Does anyone have an example of a recipe that installs a python module
from a git repo?  There is a python module that is not regularly
updated on PyPI, but its git repo is up to date.  All the examples of
python module recipes I can find uses PyPI:
http://git.openembedded.org/meta-openembedded/tree/meta-python/recipes-devtools/python

Thanks for your help.

