Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB677E00C09; Fri, 19 Jul 2019 02:40:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11921E00A96
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 02:40:19 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id v15so33934551eds.9
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 02:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=X/BC/2VsXG92rbeWn0RM+phAadF2/99WQ+KZTo0sWRE=;
	b=qPIUKJzvrR/PErPJ1FfZF4kERMf6wkhF1C2CapvnftkITPQhPx4EO2x0FwAreXNhWp
	kVKnQfG+XqHnTj6cHLx7r+79OKwhWaMAZzrctH0jFEb2wyCdvGWY1MfidNEZyUUyuf6V
	XoysWot3iKFqd9OHROCAN16HlLJVJUpcp5YPdiRizfCV5Ly1E41gxBB0Wc5Wsu5YFZNm
	Ln+3/+fB+Q16KjxO2QCAItvaoYIZo1s1eCzx45zwYT6wi9X+1xq7PHPJt/bgmgmjD1z1
	sbWhrsbQPL3JdqfRk4UziWQ0mxd7o4Sax3BkqsyHJX7V+iBcoLb6ouNYbqGEqpvRmmFc
	X9nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=X/BC/2VsXG92rbeWn0RM+phAadF2/99WQ+KZTo0sWRE=;
	b=SQ50aOkyjbtmJmIbmAAB0yRHITAk/itnyCJfWc9szzjnX5gedbRc1vrab2WecpEql8
	mrSS4YoNe9d/eDd28GZKHrz0dqyA09ni9shLhiO1ZRXpWO2liX9ctVbqCMgQVgBzvq5w
	nU5apmvZAAnRdO4XFnKZX3yLoWqjKecdG/lfZY53b+nZ02DBZ9KRtiiuNcLORUSc/gFX
	lry4c4Cx+K8MkKcRP/uwaqh4qFqLaG46z3z+uHkfj37wiuCtqX6oK5ZQy5OJ3zGGcHBR
	QpZS/eFlm7NCnps7fE2HbsbEpPiIRK9JUEFYaj83xv24vGVU0tR6ZkoQ61U8650EGDxP
	4sYg==
X-Gm-Message-State: APjAAAXcrFX+tnBtbDluUordTqduOEZFDQ4WeE5yxFRe9J1VpHJkVb1F
	cuf6W3vjErswDjlkQFfgNbEhxVHRsvmwEs18ae5CbmyEp2v/cQ==
X-Google-Smtp-Source: APXvYqzZgMrETHf2MC+Vvo+0shInuoScg2wUaQtpASC3SYkaLeEOlZagHl9gA6GtzD97NsptvDmyGtIsNLUoUxW1XCU=
X-Received: by 2002:a17:906:4e92:: with SMTP id
	v18mr41217181eju.57.1563529218860; 
	Fri, 19 Jul 2019 02:40:18 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 19 Jul 2019 11:40:07 +0200
Message-ID: <CAAfyv37tL6DFDniirU7MYgfoQAuYCN2MZwrjzQaE2hjYDg_cdg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: meta-openstack: bundler fails to build
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
X-List-Received-Date: Fri, 19 Jul 2019 09:40:21 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to build bundler ruby tool from meta-openstack (thud
branch) but it fails with following:

ERROR: bundler-1.6.2-r0 do_compile: Function failed: do_compile (log
file is located at
/home/builder/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/bundler/1.6.2-r0/temp/log.do_compile.2232)
ERROR: Logfile of failure stored in:
/home/builder/build/tmp/work/cortexa8hf-neon-poky-linux-gnueabi/bundler/1.6.2-r0/temp/log.do_compile.2232
Log data follows:
| DEBUG: Executing shell function do_compile
| ERROR:  Loading command: build (LoadError)
| cannot load such file -- zlib
| ERROR:  While executing gem ... (NoMethodError)
|     undefined method `invoke_with_build_args' for nil:NilClass
| WARNING: exit code 1 from a shell command.

Any ideas what should be checked (I'm not familiar with ruby at all).
I plan to also bump bundler to 2.0 version so can share then results
and recipe. Thanks.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

