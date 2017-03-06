Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 526F7E00ADB; Sun,  5 Mar 2017 21:06:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f178.google.com (mail-ua0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBD04E00ACD
	for <yocto@yoctoproject.org>; Sun,  5 Mar 2017 21:06:15 -0800 (PST)
Received: by mail-ua0-f178.google.com with SMTP id q7so120595906uaf.2
	for <yocto@yoctoproject.org>; Sun, 05 Mar 2017 21:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GphjMIzZlSVDxmzodUlaflF8y115G1Jf4EHT4CI7MMU=;
	b=oISpG1Sih+dGgOlvk33ClI+GAqsEyFKC57Vj8PD2Ju8xiO3JMqYHuhkeFi+UKJCXAn
	Ec/HOxkjXNrzAD8yzr4VYbT5khvNNyBHImMIdG+Inr9Eb3/znH6wDUyvqcyr3eWOcbA0
	mjpdQRIEzf/J14cz49+J2pAIjquXQUXDOO1anF59qnXOHIkPbZlQbuO8bfZKyydc7ffc
	EPB+gkhJ881U8YR7E59yo8aMfae5F7f4oc/A4F1VkZdno9CrL4l4ILqY8/rK7zDkgykc
	HUOlTTbARMMh7tlnndOaTipWuJ+RnUMl3RCy/+vLeWqzATMAgYFNUZLOGRedRX9yubjm
	oz0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GphjMIzZlSVDxmzodUlaflF8y115G1Jf4EHT4CI7MMU=;
	b=Y3nQ10iJ/Z0CFGwQ1DdRZBX6NaAIMtw5UncpTZ95AdXs8Ek1MPoKHU6vVQAZnG0Jks
	3FmlGTPq6c9dQNxNqq7KkzAi/4P4hCzA0GOvTLtcjPlehG/d8JBK9U77r51W7x5o2U86
	6OE++s1O5L5aRVGwuA/rq8zeqlK6hRAZva8AtMhHA6zZcezbByjN5ErwQ0RQDdilILcz
	MoMIbxI9i2Ej/nQhJF3F1iedsXQs4ByYsFoo0wOK1hF4g/zDDjWCMlGny7VUkf1WFmGq
	6oD9tb3mUd/OtexysmAkyBLzRz7k1YRtSxzENCBLJvyuA6pxn+gQNzLgqt46k7O+0S5M
	7tFQ==
X-Gm-Message-State: AMke39kZu9uzggRH2GiMytH+J4swq0jfGheH6Us8zh/ipkipqdt+t1TRB7og2BQ7VDxVMA6b71KrR/yHPv0M1A==
X-Received: by 10.159.53.105 with SMTP id o96mr5295174uao.113.1488776774730;
	Sun, 05 Mar 2017 21:06:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.43.65 with HTTP; Sun, 5 Mar 2017 21:06:14 -0800 (PST)
In-Reply-To: <20170227090747.GA1959@linux-uys3>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
	<CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
	<CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
	<CAJrj+DO24Y3Wwx-yoRcY0OrwoudO6y0-qppAi=4tDMm+bJzRgQ@mail.gmail.com>
	<CAHUNapQM6ABxtp+5xy_0YjHUiy8F6VqVCK_9hcQPcxQaWeQq3A@mail.gmail.com>
	<CAHUNapSvaH+a2=J09Nx6ff5Kt1LWxf4qtQs6B10YLG+CvOdV6w@mail.gmail.com>
	<CAJrj+DO3DfJmDzJAkUAVOf3ja8jvmuEH00+o+u64m=k5N537Wg@mail.gmail.com>
	<20170227090747.GA1959@linux-uys3>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 6 Mar 2017 00:06:14 -0500
Message-ID: <CAHUNapQFj7r1w8pGJHOremoau+kE__iY0P45wNbS-JNkvmw3CA@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
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
X-List-Received-Date: Mon, 06 Mar 2017 05:06:18 -0000
Content-Type: text/plain; charset=UTF-8

I can assume everyone can build/include u-boot successfully when using
unmodified repositories?

