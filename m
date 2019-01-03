Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14DB4E00C28; Thu,  3 Jan 2019 13:45:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE98DE00C10
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 13:45:35 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id r10so34897936wrs.10
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 13:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=9fANRyd9hWNsY3lD9AbH+jOrm26DETfq9/XxN2cxKRQ=;
	b=C4DVnfrmecZZuDjgf4YStODQHzLRryZMlrrfO2ZFMcKgKF9g0GHb0lpKRAgKl/07Xe
	TZXwvdPJrcse+yyoclNEh0Z0a1mkNA5QpqecIKEt9ugEheeb8SuqT+7HkLffRTNBQHZt
	+Q1AxsizPAZtyAEkVzY0kGfIgRJPwfjGf4go8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=9fANRyd9hWNsY3lD9AbH+jOrm26DETfq9/XxN2cxKRQ=;
	b=Kfi7WCrZZXhTT3DEEd+luRWRGvhUGXtTAYe+x97NaqFJZrlsFVn3OwlOzB4+Wi5Kux
	broTFConxnqJKVglfJIyc7pm23yOYWcnIbCxa21kgsjJzJgqBqexOFO/M6KO62AUFAZs
	xowqOamhri4EwKQ51tlAaZ2wS9qE6aT+wanJwWngEJGs6iDiP1o7xcO7o9DQL55gsfGY
	7ObBaAxNm6NhRnLpMRXwyn+wAxYISxsajIXzYpT0RpSPZtGBz7b4CafmsU35yxF6T27n
	UXPirh5hwNeGmeDtm7Z7JG++xIojjzm0jvxmPB/2oQ6WTqhtmbGB1KbW+77kQKgo/3u7
	HjHg==
X-Gm-Message-State: AJcUukdLS8qredR8m6Mp9q+CtzcxeQZbTMEqyFMh/9Nc4r6NoTUUY5OY
	tthn6aLR80hu+ih7XL61zhCVGg==
X-Google-Smtp-Source: ALg8bN5X01t9Dyudrk7krtMR11CbCmTaZx8bPLw/ABwQzzp/XYuWxm/06DapI3YFIhgQey3MAZFQmg==
X-Received: by 2002:a05:6000:10d1:: with SMTP id
	b17mr42250746wrx.306.1546551934907; 
	Thu, 03 Jan 2019 13:45:34 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	e18sm61770095wrv.88.2019.01.03.13.45.33
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 03 Jan 2019 13:45:33 -0800 (PST)
Message-ID: <6fc3263d9097d1af78c96df089bfe1ca3184efdc.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linaro.org>, 
	yocto@yoctoproject.org
Date: Thu, 03 Jan 2019 21:45:29 +0000
In-Reply-To: <20190103180218.6968-1-anibal.limon@linaro.org>
References: <20190103180218.6968-1-anibal.limon@linaro.org>
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Subject: Re: [PATCH][ptest-runner] ptest-runner: Add support timeout failure type to XML result file
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
X-List-Received-Date: Thu, 03 Jan 2019 21:45:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2019-01-03 at 12:02 -0600, Aníbal Limón wrote:
> The ptest-runner support logging results to stdout and to a XML file
> in stdout the ptest is mark as:
> 
> ...
> ERROR: Exit status is 1
> TIMEOUT: ptest-directory
> ...
> 
> Add the same support in XML file for example,
> 
> ...
> <testcase classname='ptest-directory' name='run-ptest'>
>   <failure type='exit_code' message='run-ptest exited with code:
> 1'></failure>
>   <failure type='timeout'/>
> </testcase>
> ...
> 
> [YOCTO #13088]
> 
> Signed-off-by: Aníbal Limón <anibal.limon@linaro.org>

Sounds good, thanks!

I have a feeling this will show up a few bugs but we should find and
fix the ones which are timing out...

I'd still be interested in the time each directory takes too if we can
get that as it would help us decide which tests to run.

Cheers,

Richard


