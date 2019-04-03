Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56559E00C93; Wed,  3 Apr 2019 02:20:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com
	[209.85.128.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD8B9E00C46
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 02:20:05 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id 4so6572652wmf.1
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2019 02:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=OTKrYe8PfhWZizQ0m2QN2brrmG8tTXeVe5qw0xVxqGc=;
	b=bYGi5qwbTunD0y8Jny06XoFTZBT/FDj2dfsxkKku2tpZDggKRzTFy+q1k2QOvzZEuI
	PM0wEVoJWOSGY5ecI7lHz1laBIBEpLCt5gCMRUrouFGFmP2UQ2J7wsLsCmb8xaaf+l59
	A8wE34NcWIdhSBhIE5cXm/BYWNjckTZJBTyBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=OTKrYe8PfhWZizQ0m2QN2brrmG8tTXeVe5qw0xVxqGc=;
	b=kbasAedsTJMIcKbvV1eWKNp6EBy+HfgQG6TyDRavJ2tOJIAKsyNwtFjZTNddBRvwlp
	rAEGQFf5PQzrBSmWqFhNb4fkbidTQoCTxrEf216qwiMJNhWCtSb932ibb0rT2T208QE3
	qz9NnZtQai1jc5IdqjQV2aZcXsU+oCurQFxsPJ/XEHWu1VpIO8mir/GyZ8YK1PfWXw7g
	24anL+IZs8F2ILULutZUFDy54wmUS6KYmWVw6p7ptC4/UlT2MHdLk/ei5sXiU9ou1jlf
	XFHbVNtkycL4OCs1HoAPdJpbWXM4wL/kUUJweKk337o/b/VuyRXbvqBYSvVm9hx+P5xU
	fRLw==
X-Gm-Message-State: APjAAAW96jL7tweIxd2tWvvWr9nVsV1UtVAzTmZXZbvFoQFG+1Xy6qK2
	9s6QYTc1cT3sJWNMyCy3lL32xA==
X-Google-Smtp-Source: APXvYqwBzOlbwEGg9FrzjrL4i1Vgc9UGHbmbcr3k1zog/m2uqOxEVx8vs/smOaptD8gJH1jyuKiEHg==
X-Received: by 2002:a1c:e0c6:: with SMTP id x189mr1322604wmg.4.1554283203486; 
	Wed, 03 Apr 2019 02:20:03 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	l12sm20239539wrt.31.2019.04.03.02.20.02
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 03 Apr 2019 02:20:02 -0700 (PDT)
Message-ID: <8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, Poky Build User
	<pokybuild@ubuntu1604-ty-1.yocto.io>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>,  Yi Zhao <yi.zhao@windriver.com>
Date: Wed, 03 Apr 2019 10:20:01 +0100
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Cc: "akuster808@gmail.com" <akuster808@gmail.com>, "Chan, Aaron Chun
	Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Wed, 03 Apr 2019 09:20:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

This is good information and helps a lot, thanks! I had a question
below.

On Wed, 2019-04-03 at 08:06 +0000, Jain, Sangeeta wrote:
> Intel and WR YP QA is now working on QA execution for YP build 2.6.2
> RC3. We are planning to execute following tests for this cycle:
> 
> OEQA-Manual tests for following modules:
> 1.	SDK
> 2.	Eclipse-plugin
> 3.	Kernel
> 4.	Toaster
> 5.	Bitbake (oe-core)
> 6.	Build-appliance
> 7.	Crops
> 8.	Compliance-test
> 9.	Bsp-hw
> 10.	Bsp-qemu
> 
> Runtime auto test for following platforms:
> 
> 1.	MinnowTurbo 32bit
> 2.	MinnowTurbot 64 bit
> 3.	NUC 7
> 4.	NUC 6
> 5.	Edgerouter
> 6.	MPC8315e-rdb
> 7.	Beaglebone
> 8.	Qemuarm
> 9.	Qemuarm-64
> 10.	Qemuppc
> 11.	Qemumips
> 12.	Qemumips64

I'm wondering if there is any difference between items 8-12 here and
the runtime testing we run on the public autobuilder? Is there some
testing we're missing on the public autobuilder?

Cheers,

Richard



