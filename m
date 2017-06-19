Return-Path: <jaragunde@igalia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F5E6E009C2; Mon, 19 Jun 2017 07:59:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 2304 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Jun 2017 07:59:53 PDT
Received: from fanzine.igalia.com (fanzine.igalia.com [91.117.99.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA3AFE0048B
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 07:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; 
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject;
	bh=J/Rg20dWcY+zHM1oux+XEMw3tcaLRo4/dFCWZkTPLnw=; 
	b=eU+jxZl04FXd9toC4EONdUZz1tVW2xfgTXJt9eKKe/mAkUBXJlJM3cik28Ih3Fke5prcyKZX2i+D0OU43NfOPE7vY9DkYeHP9yBXg5Xl1BISxXDuoPIVqajweWBuf6DnHBLJdofx3JQFrtLcZkM0vtysRkkYh595mc+JiO5pEGd+WJphT3yxyBjtWA3qoz6TzSDVvT8CqLEoO0oLoYbPOVU3xpDpu2GNSw3sX8pG1dtC7YWHuWtsePsOiZuOsKsicq0PrvN18xz8QszK+aHmUaFnRYVeN4dABH2LzA+KTR8Vx5lE0HJC0lm2XWUjKTxxaT6DTGKlMfjRTf/2jJtMCA==;
Received: from static-121-195-24-46.ipcom.comunitel.net ([46.24.195.121]
	helo=[192.168.1.7]) by fanzine.igalia.com with esmtpsa 
	(Cipher TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim)
	id 1dMxYV-0003w4-Dm; Mon, 19 Jun 2017 16:21:27 +0200
To: Gunnar Andersson <gandersson@genivi.org>, yocto@yoctoproject.org,
	antonius.riko@gmail.com
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
	<1497809434.2788.77.camel@genivi.org>
From: =?UTF-8?Q?Jacobo_Aragunde_P=c3=a9rez?= <jaragunde@igalia.com>
Message-ID: <7ee7dd60-a45d-350d-b213-0917fe6e32cb@igalia.com>
Date: Mon, 19 Jun 2017 16:21:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <1497809434.2788.77.camel@genivi.org>
Subject: Re: Compiling meta-browser ==>chromium ? cleaning ?
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
X-List-Received-Date: Mon, 19 Jun 2017 14:59:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 18/06/17 20:10, Gunnar Andersson wrote:
> 
> Riko Ho <antonius.riko@gmail.com> wrote:
> 
>> Hello Everyone,
>>
>> I tried to compile chromium but never succeeded, took me already 12 
>> hours and stopped on 99%, I used bitbake for doing it,
> 
> Not sure what would cause it to just stop and it could have been some
> temporary glitch?   Maybe you want to provide some logs of your build if
> Martin's reference does not help.
> 

Just a heads-up, if it stopped at 99% it probably was in the linking
phase (you can check the logs under
tmp/work/$arch/chromium-wayland/$version/temp/log.do_compile to be
certain). This phase has a very high RAM demand, you could even need to
temporarily increase your swap space to go past that point.

Best,
-- 
Jacobo Aragunde
Software Engineer at Igalia

