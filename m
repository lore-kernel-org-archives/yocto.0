Return-Path: <sandro.stiller@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFA4DE00E73; Mon, 19 Dec 2016 07:31:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f177.google.com (mail-wj0-f177.google.com
	[209.85.210.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26272E00E57
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 07:31:56 -0800 (PST)
Received: by mail-wj0-f177.google.com with SMTP id tk12so153482338wjb.3
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 07:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=XKiRUH12rh24zbgPgDvB/+C/7bZR6SpBMLosd08U8hw=;
	b=Qu+LfPmyZ9RH8367GELF6izbznIhuxYeoATp9po8QBXMCGuEzYZBOMjJ2PTKCNzdRW
	5bRpiT7XplvzlQd0rnq6I01VzarK+o4qWmGkjg74v/Jaj6SLCbATHrjyBEOuO09+cP5Z
	NOoPgGWqybaazMrsVxv1vjzDozdYUdJHs6Y0VpfCVIHncfouQupM0IvfQPspjYsqGsTF
	/p1+JOeSVzFqF1HR712oXNCIszCIT00Sj1muqFEw4hthsbBSkDCGq7XSB7tS5hXfNjGe
	GK8a4JpONJyB2qKxG6KLM5AeGbPpyGY4eQflbZztvgFiV6kCYSxjkTGXJbSVNsKSwrE6
	D6+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=XKiRUH12rh24zbgPgDvB/+C/7bZR6SpBMLosd08U8hw=;
	b=PjMkTDLg9oJJrDOg3EQofG2QE1I0qlLUtNDaFK4ctpPGq9JG7d02Rr5tFoZ55mOjhf
	Jx/3pUE6n2U7e4Q9sTx0Mp1MmJEHd8oLgmUaik8flmm6k+JMPd2bdtqLkIoVta+FYDJT
	EfTcAmE78thBBir2JKruxteE1PpQ7ATnw3edImzs++AY7hjg87YAHOUVh+8WGK3GHZ98
	Mpgu8DUYnmODbXSC+GdJycO9+uL+PX1XS0WeKqIvZPgfOx/cRh7gYvkmUMZZ15zuLDa4
	BDPLe62eQAm/Q1jg1iTtQycDy2qpsMPQfcIMetrxk+1IB6o10HJz5le5PtOjYRS0GFVs
	lhLA==
X-Gm-Message-State: AIkVDXJn0XLas3mOb3H+/EqA7Ekz3slsBwln9yLhucDkkslepbAf8WUM9HV+5lAol15Euw==
X-Received: by 10.194.86.165 with SMTP id q5mr13955085wjz.178.1482161515751;
	Mon, 19 Dec 2016 07:31:55 -0800 (PST)
Received: from [192.168.2.147] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.googlemail.com with ESMTPSA id
	l2sm21143364wji.7.2016.12.19.07.31.54 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Dec 2016 07:31:55 -0800 (PST)
To: yocto@yoctoproject.org
References: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
	<1481796330-13908-2-git-send-email-piotr.lewicki@elfin.de>
	<7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
From: Sandro Stiller <sandro.stiller@elfin.de>
Organization: ELFIN GmbH
Message-ID: <b5495259-7f35-f5f2-d5c7-9432ad0a3942@elfin.de>
Date: Mon, 19 Dec 2016 16:31:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-rpi: clean .config in before do_configure step
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
X-List-Received-Date: Mon, 19 Dec 2016 15:31:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



Am 16.12.2016 um 17:58 schrieb Khem Raj:
> 
>> On Dec 15, 2016, at 2:05 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
>>
>> Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
>>[...]
> 
> we should investigate the kernel tooling from OE-Core and use that IMO

You mean configuration fragments?
I don't like the special kernel cfg stuff for meta-raspberrypi and applied this patch to use the same system with all bsp layers:
https://lists.yoctoproject.org/pipermail/yocto/2015-October/027034.html


