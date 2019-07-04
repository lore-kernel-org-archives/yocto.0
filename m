Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4289DE00CD5; Thu,  4 Jul 2019 15:25:58 -0700 (PDT)
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
	*      [209.85.166.51 listed in list.dnswl.org]
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21DAFE00B3F
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 15:25:56 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id e5so10955291iok.4
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 15:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=ATka5FPZxOWz8LtPdvGy2AlHPFo0kkgciDCvjg+ACpY=;
	b=cQVoel8KUWzOq7GQ/rCKSPQTVjnJ0st46NtkFGPUNb+yvyusZa2zL3dRii87pECKR1
	czP5PUy2Vo6NSe5Ej+QqfHMkvPurg+PY4bG2JqCMuqBXxqgPw951H2OmXNsRitpruy6U
	dAheBvlW6HNj/RnawkF4oTUWCsL26XHpMW1TzGjYpazeIs+GdlQUIYdj9i4Zsh7Dj6V+
	lmrxXYNEyHqKpGZS/r5R4sNdK1DXN44CT2p+HAWJFVp778qrOoHpYiUbwda0932n8OS2
	3uH+MOyoNFfVcaJSfakdIaDStOQIfR3tO1m7xhNE0iO34nc8+kA7lgyVGc67lX4K8RLd
	QA5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=ATka5FPZxOWz8LtPdvGy2AlHPFo0kkgciDCvjg+ACpY=;
	b=KR/A7n57NfP3NNtsXZY+Ct34ZXWF/pCzg1E+x9qbnrKcbJ5odWJf82qEM4t9GY3hUr
	KP6WixaflpEt344MJWdkbLH0lOuuCSisFJHU5kGkPTL5AIYxRqqeFMbEvt0rlZzYQJ0S
	tnDQjpLDwb6Ep/x9eUuCaPadOemvmoRW1ecl6bfLD0Y70DEKi/51+NJj+TUkD2MUNBbf
	6WxWBLoFWz20DR2rgcTwHeyyCfx1D0B41HJ8JafNQkuV/Cr+RuWQYwfBEdXNFJt4eMJa
	vGA1LVhUjxOE2LXywOYkAtY0qmkiR689OcUFbH+c9MKxpUKJjJGWzcZa4uA/uZIYagVE
	NFGA==
X-Gm-Message-State: APjAAAVTH1zoRybdDXyeI7Jr0ta8LMM9+rBK5ghSLSMOpPIdz06pv6zW
	MjL7zz2qAyvSP7W30OE0eF0H0l2L9ob4wJPnd+NOzDsl
X-Google-Smtp-Source: APXvYqzMusIPsYIZxGXam980gbHu/WRLqjwxIzPPN/Wra21SEsthk/LmQpeGrP2zT0J7Io2ktt8yrYdqeW41/l8Vht8=
X-Received: by 2002:a6b:d809:: with SMTP id y9mr626598iob.301.1562279156348;
	Thu, 04 Jul 2019 15:25:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Thu, 4 Jul 2019 15:25:55 -0700 (PDT)
In-Reply-To: <CAA=hcWQVSkh5ZSxFyEJiYdthpoWmJhOxtx802VWGhYd8LpO8BQ@mail.gmail.com>
References: <CAA=hcWQVSkh5ZSxFyEJiYdthpoWmJhOxtx802VWGhYd8LpO8BQ@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 5 Jul 2019 08:25:55 +1000
Message-ID: <CAA=hcWTp0X1JNKo9uxGU6ApsNcEmGi7ranSEwKHDhz8+sTw=Lg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Failing to build initramfs ramdisk
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
X-List-Received-Date: Thu, 04 Jul 2019 22:25:58 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks, resolved.

Kind regards,

- jh

On 7/4/19, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I tried to build initramfs ramdisk on imx6, I added following
> statements in local.conf
>
> UBOOT_CONFIG = "emmc"
> INITRAMFS_IMAGE_BUNDLE = "1"
>
> The build failed at last stage of do_image_wic, the error is "No such
> file or directory u-boot.imx", what I could be missing?
>
> Thank you.
>
> - jh
>

