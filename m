Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33B25E00A1E; Mon,  2 Apr 2018 17:26:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E14BE00857
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 17:26:36 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id b5-v6so10191005itj.1
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 17:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=olgMW+q1cMXCjX7PQ+3GPjLwCPKGB2p704XHmrzAUUA=;
	b=LHRhLK0lEy/U0Z9P+bOqx4q6ELh+Yr9mmqHGKjJY0YcDMTIbC6mDL+k9EPDlaa60TX
	biMWa+o0wCfJO2C05U7W08/fKCHmzDsiBT6smm45IS6A0gxBb/3NDyUZyuRVr20pQiAA
	5RLEVmB+ip3+zt60VIcQ44CG8o1F5Yl31nRX3gHIrHsaq5Ka8vF6M06AsXenB4ru4MrO
	pWuhwplaePizmVMx0g6patHxteU7ZgVtL526Y6bSmwiijmec7ZrLKVjyxOOXwhYPi17M
	IFONn+blyZjJr5jyOlrBHeNPT7WLftG8D2bJLk/etMWig3MwT29M7pGTjbfECYP4srMW
	wLFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=olgMW+q1cMXCjX7PQ+3GPjLwCPKGB2p704XHmrzAUUA=;
	b=U11MR1R5jqY4uOCdPlhyHZ0VFnQg1xU6oUVxmWVWqYrewlRyaNjBe2txngCFVLxK6Q
	nEBfdMFp9zJ+XDbk29Hrx+mTgZrdj6Esw90LOHqM+i/k4LEAlAhcZroblwOr+k6fafLZ
	dktGG3hPUVRT0+vxuCtZeMP6QXWds/Mqjd+S6lK3SfCzADFAway6BV3zrXFB+ZzM3X2F
	WkpVUktYXA3p1tep/lJHVo5tCXZbn6BZtHF+ftXD2dpmOlQV/JtwCNmKOBsDj71kz4hy
	WBl0uP/KlphYalqEQxBGxCVAa7slJ2J/HCIqCeRGYzQ0EGzlBum5m7CyHEJbUFG2gRl/
	M0aA==
X-Gm-Message-State: ALQs6tB/Im6mayuFQD2PE14Uqn5ael2ANBZhSC+IJU1Z4KrnEIM90AKe
	+3JZJJpZmvGHKZLJzD0OoXI=
X-Google-Smtp-Source: AIpwx4+6++vaQkr8ADuhByrR5JtYDJUoh5y1f+Twrktgba8c8JgAFXrb4pLBWNTyfrOjZNjQYRO7sw==
X-Received: by 2002:a24:2b0b:: with SMTP id
	h11-v6mr3115880ita.68.1522715195769; 
	Mon, 02 Apr 2018 17:26:35 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	q126sm722694iof.68.2018.04.02.17.26.34
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Apr 2018 17:26:34 -0700 (PDT)
Date: Mon, 2 Apr 2018 20:26:32 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@gmail.com>
Message-ID: <20180403002632.GA13779@linux-uys3>
References: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
	<CALbNGRTBhbEZNPffkPMK1AqsvU-v055mSC=GVhgZzptDc=eb1Q@mail.gmail.com>
	<20180402211218.GA28631@linux-uys3>
	<CALbNGRRPXoM72Pudd13N2uWVLdXQJqhisibav9-w_xKf+p-ykQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRRPXoM72Pudd13N2uWVLdXQJqhisibav9-w_xKf+p-ykQ@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Mesa-dev] VC4 not working for me with mesa 17.3.7 - was [meta-raspberrypi] VC4 not working for me with mesa 17.3.7
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
X-List-Received-Date: Tue, 03 Apr 2018 00:26:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon 2018-04-02 @ 11:46:39 PM, Andreas Müller wrote:
> On Mon, Apr 2, 2018 at 11:12 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> > I'm re-building my rpi3-64 image to see if things are better there too under
> > vc4.
> You'll let me know I guess...

Everything's working :-) This is the first time I've seen graphics (x11)
working with rpi3-64.

mesa-demos, directfb-examples, chromium (accelerated!), qt5...

