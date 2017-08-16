Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20898E00CCB; Wed, 16 Aug 2017 06:55:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF8EAE00C45
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 06:55:00 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id s143so22947131ywg.1
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 06:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4Yg0SSWU95S4ivp+iX7i9Wkh/al47mzb23zvlKwnNYk=;
	b=SP88TLbWKPJ58smp+18S2wk85pUzwcD2QWQljsKfU8V3Kd6rYxZjHfLSwwj5ijxvs3
	IPPCDMj3y6mUG0yPVDpFRioR0vc3X1TWJFuwBDmRM78bOQfdD2stUsm5oYtgJUmIE9P5
	Pj1D/TuN6a98AsRGolBeEfc5F6tyTbwf16hNjiCPN2LkYbexV6X7UgD0p1o06F5PcKOi
	dxikD7OdD596BgJbXVVXfDnf5e64A8UWbEHI4dFGrdX908kXV7TAqMAut38G0aPcMyk9
	IpIXQ7hsoWvCcy50TdnxD1hE1kyyZsB9L7mUMaIqKzxMJ23vvWxyyxI1EqL68sXK4pkK
	F9hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4Yg0SSWU95S4ivp+iX7i9Wkh/al47mzb23zvlKwnNYk=;
	b=KmLpWk2T0XBor3GPXNkKVbnE7rrd29/0+2pyQA43WcmiP64Mt/oQGnXdTNvICrJEC4
	+x6cLsGj5TXFI+8FdRaWBw7xx/jSDecOBCGgFJg7SwdAclrNpuhLCO/QmGO+CCSSLr4k
	kokxYR4TVr1oaU/vYwS8CW/JevybmHn6l+mh9glTUvlxMPlNDzf8vGQN2RTuRda4ttaf
	8WHKTUCSAmAGHc437N9PLbmKJ51bcobnBvA8UH/Z7dSWfABCQBFmDUVxDTlC5iMJIgC/
	6ac6lCWNxQoSVLglEbtpuwI0+GyjfveLhtGMFG8Z7bART+iOfBLAMHuPAr+QkdW6nRNj
	ZLcg==
X-Gm-Message-State: AHYfb5jbK2r9AZNsAu1EPaIZV5JBT7hqcrjO1Hd9PaP6rLi8c+oTTijD
	5+tKVsYdfT+bxDnHr2pH+sTmuEdwuIsu
X-Received: by 10.129.97.84 with SMTP id v81mr1361416ywb.280.1502891699740;
	Wed, 16 Aug 2017 06:54:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.66.151 with HTTP; Wed, 16 Aug 2017 06:54:59 -0700 (PDT)
In-Reply-To: <DB6PR0502MB291749533AFB89E8DE29AC75E0880@DB6PR0502MB2917.eurprd05.prod.outlook.com>
References: <DB6PR0502MB291749533AFB89E8DE29AC75E0880@DB6PR0502MB2917.eurprd05.prod.outlook.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 16 Aug 2017 09:54:59 -0400
Message-ID: <CAHUNapQra7NqvGJFvb0jx0oApvZCFVXVe2LFO5JsxL6mzEDYCg@mail.gmail.com>
To: Never Read <dsjnews@hotmail.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Debugging Yocto Project build failures
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
X-List-Received-Date: Wed, 16 Aug 2017 13:55:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 10, 2017 at 8:36 AM, Never Read <dsjnews@hotmail.co.uk> wrote:
> Instead of running make to try and debug the problem (which takes ages to
> reach the point of error), is there a way to use do_compile to manually
> compile/build this one item?


Along with the log files, in the "temp" directory of each recipe's
work dir (e.g. tmp-glibc/work/cortex7hf-neon-vfpv4-oe-linux-gnueabi/i2c-tools/3.1.2-r0/temp)
are "run" scripts (i.e. run.do_compile) that are self-contained.

