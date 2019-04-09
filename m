Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE37DE00B5F; Tue,  9 Apr 2019 03:17:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C05E9E00AA9
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 03:17:00 -0700 (PDT)
Received: by mail-it1-f178.google.com with SMTP id y204so3970014itf.3
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 03:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MaUkkJyN0FufyOZwTuR2fxw9GtTWL0198S/2QZCN0SM=;
	b=sXZsmtMLL0+e3K+ZASs5odzf5vpk69cWLfoAM/uLNgNZsLko0/31MkZd5Y+n8zx5/R
	GZ5RlfPG4QvSFV/G0P4CyLJ9wyEdBV6fQ1i8FmevdCStndRzUbLuX8h/5a5URbKqxROe
	zfSxInRwNzWPJdC1BBjVsLuXZWjqq021XPq8N5gaZhavDROmA2xS6o6/VzHgpe25CnED
	tS2jUFHyDOp0n6uHKoBJKLA0IM1/MosugnDe1KU25erPOFGFmjhSKYjIdjIMMXFOWR4K
	Ysn+bzteT6bjSs/1EqsNh0kJX2FSUdlOU8xYT3MhAcqg9LWeTjKf3MqwxnSH1esaAiZk
	6u3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MaUkkJyN0FufyOZwTuR2fxw9GtTWL0198S/2QZCN0SM=;
	b=M+ZgzfZn2xflncFgTTcIwHUZjs2Q+hNa2qs69DdPrTsH1oXb+kbdSvclhL/Y+TvZ6G
	H/uKSPBUJTBgoEVdVIwPazqPazWvtQlzw6UL4B8X8ByqIcrRySv0Vk+5c8/c4eoH0jxY
	ZH3S7Hy2ybnBbdPtzDHDYk3QYSsqDgzig3zPq2dTIJjGl3gIqObuLzx7C68pQEysCTlY
	GlOZ3ZD6aeFRuiiq8I/yx5CoxS/zdn3PDyK724PjpDwKrnqpC8uaLG3eU+4OPuHs5bMk
	i5rqhijewd50ZloJGKwubE97pql8nSs00rKZc6KcMc3CIbaeEegoN89ztoIBge1qfUPs
	EJ+Q==
X-Gm-Message-State: APjAAAWWIkVhitwYCf1+tLuXCq7eOvrdl/3sU/bxQu6lT/W+6wg3KstR
	xINDfrfOihTifnEq+OdtbkqhE/0J3RDAfGUcorPkIIYI
X-Google-Smtp-Source: APXvYqxTtoNSZgGVIKSkluWnOCkNww3ELVFAaPBjd0OcDMLpbTfWXSGXLfG67nFTa6X9uuFGyMBcL5sig6TLD3PabqQ=
X-Received: by 2002:a24:d643:: with SMTP id o64mr23900714itg.148.1554805020474;
	Tue, 09 Apr 2019 03:17:00 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.1904081613420.23184@localhost.localdomain>
	<CAJTo0LYVR2L137Gt5s0-6HUcTKhx=KKwi=Lz_Fgx5nExf5bzQA@mail.gmail.com>
	<alpine.LFD.2.21.1904090613060.7419@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.1904090613060.7419@localhost.localdomain>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Apr 2019 11:16:49 +0100
Message-ID: <CAJTo0LYB0ckHOoXG59NPDY-dkXc7Qf1XUcpjkjXgfw_BqduVxg@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: m4-mative: "Please port gnulib fseeko.c to your platform!"
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
X-List-Received-Date: Tue, 09 Apr 2019 10:17:02 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 9 Apr 2019 at 11:14, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   so, to confirm what i thought, this is a bug in gnulib which
> suggests i should dig through the build configuration to see where i
> can, say, set a PREFERRED_VERSION of a newer version of gnulib that
> no longer has tat bug? or, barring that, just add the appropriate
> local patch on my end.

No, gnulib is a copy/paste library.  The bug was fixed in gnulib, and
new releases of m4 are fixed, but you'll need to cherry-pick the fix
from oe-core master (we apply the patch to our m4 recipe) back to
whatever stable branch you're using.

Ross

