Return-Path: <linuxhippy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8B1EE00D20; Thu, 28 Mar 2019 17:55:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (linuxhippy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C14AE00D16
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 17:55:00 -0700 (PDT)
Received: by mail-pg1-f180.google.com with SMTP id y3so324960pgk.12
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 17:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=11Gqnu1nzeqaoxNrU0jyG9R19ekbrlNU08ISeEh1SqQ=;
	b=reU8k3MfPYAj/9zMpvr6FMIY0dWlUOV/wtT+yKst++0IrOF4ROSdzK+v5xkLDezvaG
	SfjRdCbdlfCU+kM7AAzFXs88UEwrmAMeoIWd6SBVPe0hQyPrqAHFkPS4BJZS/FZ6EpaZ
	fYl9so9Ma+U4+yxCn4CvEn5EiQn3NFy0FFYPvV4ooEyjmIchcrOzDQJq/q/LvZ+5cxC7
	PrI4oBlzajdAU1rCc1c3mCbNzqTeYTGYtNotJbc4M/L8Tt28htCwQTil53TrKrPDZF6n
	WrhkZgbSrN/SKrgC016mvf50zL6bWqi+prDlMro5AuWqDykZGmmvDSobuUhvKndmXifb
	2KNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=11Gqnu1nzeqaoxNrU0jyG9R19ekbrlNU08ISeEh1SqQ=;
	b=ZsX5ieys7Sttc8cxUtHOGoN6DJVKP93hc15NdqoJ5phgsncB3hmJEPzaZgfrQsAhpH
	yeOCvpikzAmoFys+DUhqw2pX2LqqDsqfbCGkGM3move4B026up8523eVofI66qlbD6ya
	pFBjKth55LaAxbAtfbU9F4D1LmWaRcp1ZaYKwef5Gl77867lBW/aqNOqC2fepKkA4DgZ
	GuFbPHtbBl3trLJ1qmTNXoKYrrMfqr0rW7r311oLcVoJ6rT9Jq0hDzc/lKV361fETITL
	nkFzqhxBnSkyv8/V6TmQjM+K1gbv8uv4FatWxO3AiJxAuAuD3smWN+tbjEoEY5t9CmxC
	OQGA==
X-Gm-Message-State: APjAAAXLj0G2NQv09NlBSBUc2zN/mV+xz5SsT1fZIbuZtw4aXCV3BBtf
	oS3hOmnsClyZvRLi/cMMJ2UIaKlzEvkbyU6QRyE=
X-Google-Smtp-Source: APXvYqy9mIo+wJON3lHP71L/DBo7WJGpeADtQmoxHCHpXB391jtGpdPKRsF47CuR128Jcu9BkT+Bq7+BF/1fJr5uwuU=
X-Received: by 2002:a62:874d:: with SMTP id i74mr17010863pfe.211.1553820899589;
	Thu, 28 Mar 2019 17:54:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAFvQSYSDbe5YEEvFG+sF8enGzG+AsGoms6TYe_DCv-snZiqRYw@mail.gmail.com>
	<CAJTo0LaromaqsWigi1skaoD5gRQp6JdPXg1WUBV=i8LRq2PHRQ@mail.gmail.com>
	<CAFvQSYTY4cFD9QbC6R3JHAqtc_7r9X_NAj8zb8mGA1iu_9A3EQ@mail.gmail.com>
	<CAJTo0LYgeMSNG1R3qmNbccNH12ObATgJP-A-L-BzZ0E6Hw+mPA@mail.gmail.com>
In-Reply-To: <CAJTo0LYgeMSNG1R3qmNbccNH12ObATgJP-A-L-BzZ0E6Hw+mPA@mail.gmail.com>
From: Clemens Eisserer <linuxhippy@gmail.com>
Date: Fri, 29 Mar 2019 01:54:47 +0100
Message-ID: <CAFvQSYRMG5VHoCbbZ6fHuRjT+Mae22XsERJCKgfNigX_eWu74w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>, yocto@yoctoproject.org
Subject: Re: pkg-config does not find "luajit" since upgrade to sumo
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
X-List-Received-Date: Fri, 29 Mar 2019 00:55:01 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Burton,

> Check what luajit is shipping and compare that to what the pkgconfig
> is looking for.  Calling pkgconfig directly in your recipe's devshell
> is useful for this.

Thanks for the hint regarding the devshell.

Indeed, pkgconfig can not find luajit in the devshell - the path
specified as PKG_CONFIG_PATH is:
build/tmp-angstrom-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/xpcompiler/0.1-r0/recipe-sysroot/usr/lib/pkgconfig
- however the folder pkgconfig does not even exist in there.

Inside work/armv7.../ there is also a luajit directory, and there I
was able to find the pc-file:
/2.0.5-r0/sysroot-destdir/usr/lib/pkgconfig/luajit.pc

So i wonder, are there some extra steps required to make the luajit
sysroot-destdir visible to luajit's recipe-sysroot?

Thanks & br, Clemens

