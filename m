Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36AD6E00944; Thu, 29 Mar 2018 12:30:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBCCFE008D3
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 12:29:59 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id j2so3907587pff.10
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 12:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zm2y+xkBTycG2LvPVFR4QhiXeihz4wewBalusj1W2u8=;
	b=Ei8WOolZlDwZDYN2nxa3OYwaZfLF6saP6YHirWoqQz2hUZEDtNhx2T7U3xq5ycisBj
	9Oo9keH+iVdDE9wjn+8TE2uuT23x7QTh12PC0AOsOXCkgFDbJqoRHMnZXYTDZ0ooIUnX
	9Vik/XpOgNOmHmA4FOGBD9KR1dwWZk/d/JC5Rmdx0aDKuKbivqx/plKK01IqSmvIozX3
	/gyLbUK6lOAPrbTCAJTmOk/GdD+VrYATtEuKPpjXG+JuJ6mU9GSZfkGiV+xC+JBN97vF
	kLphEF7PZ3xRNA6i5Lc7zN8Bk9vSFuiIEX7h0+bnQCcU7ZG0AYXWu8N4yRTJ77j4atAe
	cdKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zm2y+xkBTycG2LvPVFR4QhiXeihz4wewBalusj1W2u8=;
	b=OQYPvNEDyX5Us9emGmCkGFQt3PJ2384vQtcOQnTPbsInOabTmefKPE9ZNmDmhKv4oy
	C9uC9YqT2fgqws2T6irUGfrP2FsNl0PM7Po1s4Yzl/nxPqefK92WmtWni8SbiAff0aiK
	Ls9H1scY4wKirPYXRDnbD30eZdQPmWZtVcX65ehwos0fernJoIptgxTjMz+zG1I9ryol
	YcRmEbLVVtZk165CFwjGeWKWc+OnNoj8N0N6Os2smV69KchK/2FEfA3jYbViv6VPnOL1
	aL2W8T/XXOBjL3Ae6ZbsevoY8VjOGx2wKaODMGu9tQB7jXW1KoRkoAJMqTKr4DNfIug7
	sHyQ==
X-Gm-Message-State: AElRT7EK/J4LWOPBtduyee4ew9s3EP/RZZadidLo8H3m3QcYXRpahBCR
	jsDGxa4TO+0bDKUzwdETSAfmgdQO7HuNIxNgt5Q=
X-Google-Smtp-Source: AIpwx48RXUqtjJUMxOa+x0dsMcALlqKKrKZ/cdZl//DClffAhLfY3u4EJEph4JBbVfPmFlx6XctEuWtsV7r5n3X5MD8=
X-Received: by 10.101.97.15 with SMTP id z15mr6386416pgu.393.1522351798620;
	Thu, 29 Mar 2018 12:29:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.227.8 with HTTP; Thu, 29 Mar 2018 12:29:28 -0700 (PDT)
In-Reply-To: <CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 29 Mar 2018 12:29:28 -0700
Message-ID: <CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Thu, 29 Mar 2018 19:30:00 -0000
Content-Type: text/plain; charset="UTF-8"

64bit with mesa yes, for 32bit I usually test on wayland+Westeros+WPE

2018-03-29 12:26 GMT-07:00 Trevor Woerner <twoerner@gmail.com>:
> 64bit RPi or 32?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

