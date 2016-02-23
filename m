Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3F70E00D1C; Tue, 23 Feb 2016 11:54:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3C40E00CCC
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 11:54:02 -0800 (PST)
Received: by mail-qk0-f172.google.com with SMTP id s5so72511349qkd.0
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 11:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wSCv8yMHgSp/95RwvLrrfl+F5KfuNiPWFtKFV45u9BU=;
	b=oghgs6ZeqFCd4iOT8dvaF9S0cIIwo09ztG1ztKv/FKQYbwHqueH3jeD8kz/FnbuG9q
	tv58M30UmV8Eme3TkHezSbCOS178ZYDUYdO1gJCVBCSM6zYmc5UKFaMfEii5AtYssw+w
	fBLdFyyx1mAv7Xfm1KA89pwA+j4KT1u7piDa3H/dFe+KfN6+lVwZBaerV5pp/n9jlhl3
	cm4Z8mxbnfOnPjgB3HsDR5KCOwzGppFNB7UXnyU8nv/CgFhKJ2fnAXIVuGwcRBPPDxiE
	DAQTxTG0ywyASwSMxLMVhoy6HbydUZS2bCoMQjhg49kHjHRssFpsLIk10Z6F/kexFspB
	cVcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=wSCv8yMHgSp/95RwvLrrfl+F5KfuNiPWFtKFV45u9BU=;
	b=bC7Tu+e6Em8mY+LILOHSGuj10OAwnnAT+7mIaivVLDIcVE70tBF84ChTox4uCauHXf
	jb2SA9v998OA2yMsfO7W/vlF503ezwgPRA7jKrE492gWQlqKpef9w5fxqWbNsPZmKKdF
	bgeEisYCrpqylyuSy5MPpaYMAeOJlrpdxpZag35R8VkNWKSApXY1mRBOT5HDCgCf2rfh
	JNECGb7+UFsmW2n+wVce8L3rBSxY5QTQzzg08lRU+VCVRTABhkLDtfIhD5UmbRw6np0E
	GqBpaK0JgejY+MWJXAqChxw7vRk4z2kUNOfTaqVvWHp17pAZrXeRhE9eNLFu/XLAxVEz
	TS2Q==
X-Gm-Message-State: AG10YOSKxWd8qYsJwGPtwpTuQ8bFbUaH85SlM9egrhHWl9jH0iQIojQ7Qoyt7OSO+NgVyFjHLUAambTgDaPZVQ==
X-Received: by 10.55.78.70 with SMTP id c67mr43511497qkb.37.1456257241732;
	Tue, 23 Feb 2016 11:54:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Tue, 23 Feb 2016 11:53:32 -0800 (PST)
In-Reply-To: <1456255515.10581.2.camel@sierrawireless.com>
References: <1456255515.10581.2.camel@sierrawireless.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 23 Feb 2016 14:53:32 -0500
Message-ID: <CAMKF1srU_Ewx1HzMHv+AQNhHeoy3b1L1bRvBaZ8556a8+7NLew@mail.gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Does CVE-2015-7547 affect eglibc?
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
X-List-Received-Date: Tue, 23 Feb 2016 19:54:07 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 2:25 PM, Darcy Watkins
<dwatkins@sierrawireless.com> wrote:
> Hi,
>
> CVE-2015-7547 glibc vulnerability has been published as affecting glibc
> since ver 2.9 (fixed in 2.23 and patched in 2.22 and 2.21).
>
> Anyone know if we need the same security fixes in eglibc?

yes you do. Eglibc was nothing but glibc+few fixes.

>
> --
>
> Regards,
>
> Darcy
>
> ---
>
> Darcy Watkins
> Staff Engineer, Firmware
> Sierra Wireless
> 13811 Wireless Way, Richmond, BC
> Canada, V6V 3A4
> [P1]
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

