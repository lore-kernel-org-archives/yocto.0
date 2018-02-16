Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BB2CE00EC8; Fri, 16 Feb 2018 15:13:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62749E00E85
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 15:13:10 -0800 (PST)
Received: by mail-it0-f43.google.com with SMTP id l187so3651380ith.4
	for <yocto@yoctoproject.org>; Fri, 16 Feb 2018 15:13:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gvzSdEUkX1c6p2M959T2VmBhNEXpsIHSf92vgSDW0MQ=;
	b=YKoVYbvYHWH1B4ArvAkXIZzOAMpYnG+QN29jSwv14Jm7XrNTQeiHWfSbq8+1Nf0nSe
	T+8dlrGhApwA6dQ9UyU7TL8UeWAM7+2n6z73UTLKSN9BYuc3FuUNsLPtRXeIXrImhIhh
	0Y4CNetgt2WtSfEIprF4HfN24ufpMUETwBAa5dDJJwLvJf/w/mq6E3DyQZpWPw8J/Ibe
	d0bBoQIC/qUNCuTeV1ZZzWBdX1rkMspMV3OCL1aNYlrc/Y6TkWEWRjfgg44rFz5q1tIw
	tpzBvaMjonANcidYhRL/6Fc2IDPNseKUdVWRjTNnWSm0E3bScSeEe/LQhTRXXP3WNrGt
	McIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gvzSdEUkX1c6p2M959T2VmBhNEXpsIHSf92vgSDW0MQ=;
	b=p1ybSVBZp7rFTYlDywK27Tx8LfVYK4JaBHifbvqoHZFcoAfBHHPEJJt9mge18Z+ezi
	i1P23vEojb4wFs2kKV62RPY5JU2RWN7B52nEI91jNZiozyqnZgGe/YNfYC4NeXCQuc80
	hQVtCQGGJaVxNrKnqTot2SnOgdRSDG+uFHJ7h+tON38d0kFazpH6uwmu4viOvsp2kU9q
	rI5NHLGZUl7Mqwo7cuBWlgtVCbsRL7dPhyQ3SOY25Y6c23eh6CnZ3cuPtLoP4Dfj7fuI
	LQMWQPWXdPIJVWwk0nQws0h84SBut6szSsQIFRiUmy37Sj/x68MflGZLprLSsP150jQd
	0uHA==
X-Gm-Message-State: APf1xPAUa1ELmcVoYcb+re+KzlnCI6E/T4pH2fAHLbkUeE7KQvfNhbJr
	P5NGKohFjdb4vbazHhtKQ/X8slIr8ep93Tx4JknWaA==
X-Google-Smtp-Source: AH8x226CIVrVxGBsh26F6I2pa5JbybjiOidR52NhaaUF2yMyiqJMO/Pi1pTB/9sw9e94sayvcpGkLpa3lZWNBG6Cqm4=
X-Received: by 10.36.182.14 with SMTP id g14mr10402265itf.124.1518822790559;
	Fri, 16 Feb 2018 15:13:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.200 with HTTP; Fri, 16 Feb 2018 15:12:50 -0800 (PST)
In-Reply-To: <1518817283-31382-1-git-send-email-bkylerussell@gmail.com>
References: <1518817283-31382-1-git-send-email-bkylerussell@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Feb 2018 23:12:50 +0000
Message-ID: <CAJTo0La7R7AhY3xVwerW7X+sJTE2y-MRJOofvHqOt1xvOZpo=A@mail.gmail.com>
To: Kyle Russell <bkylerussell@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta][PATCH] ptest.bbclass: fix path for multilib
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
X-List-Received-Date: Fri, 16 Feb 2018 23:13:12 -0000
Content-Type: multipart/alternative; boundary="089e0820475ce8a88205655c7c7f"

--089e0820475ce8a88205655c7c7f
Content-Type: text/plain; charset="UTF-8"

On 16 February 2018 at 21:41, Kyle Russell <bkylerussell@gmail.com> wrote:

> ptest-runner always looks at /usr/lib, so make this arch independent.
>

I'd say the bug here is in ptest-runner.  I'd expect to be able to install
libfoo-ptest and lib32-libfoo-ptest in parallel.

Ross

--089e0820475ce8a88205655c7c7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 16 February 2018 at 21:41, Kyle Russell <span dir=3D"lt=
r">&lt;<a href=3D"mailto:bkylerussell@gmail.com" target=3D"_blank">bkylerus=
sell@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">ptest-runner always looks=
 at /usr/lib, so make this arch independent.<br></blockquote><div><br></div=
><div>I&#39;d say the bug here is in ptest-runner.=C2=A0 I&#39;d expect to =
be able to install libfoo-ptest and lib32-libfoo-ptest in parallel.</div><d=
iv><br></div><div>Ross=C2=A0</div></div></div></div>

--089e0820475ce8a88205655c7c7f--
