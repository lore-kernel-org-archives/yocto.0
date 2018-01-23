Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3145DE00DE5; Tue, 23 Jan 2018 15:03:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f196.google.com (mail-ot0-f196.google.com
	[74.125.82.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1E82E00D7B
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 15:03:40 -0800 (PST)
Received: by mail-ot0-f196.google.com with SMTP id x4so1969011otg.7
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 15:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=E/OZkFyd06gSS+kri6Ktr1qDmBGIY3MHRmZ4OE/ZoXE=;
	b=SUEOGFDKT9N4Vo8kXuOmznIfzuvKfKlh+TvZ6WdGEmsDNCt8Xyhgdo/7tIOUryaktS
	UPwSF0vqjUC2Ok3hFDd/aWp+Tua7LMQZxkzxV1hH9fT5mliZUpfax3Y5x6Jn7ToVY04S
	D9ZcRflvnH1xjYUzWavBMtugNAELA7CL9xeIT+kLzCPERu8TocYnor6Nm3xrUshvD5Xf
	mTaZICFjamV2M7tfVe+/JZOzF8jFwLXS/OWbdUeILkVsL3DC7NhcgoYPL+YqSfUZqFhv
	xn91M01A20xovdUHe7PTK2jHC9LGki3MdICxVet3Ggiz2tXN+CTlPgFGqzoGQg85yTO6
	aYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=E/OZkFyd06gSS+kri6Ktr1qDmBGIY3MHRmZ4OE/ZoXE=;
	b=cz4MWkHCc7I9+1Y2iXpn2SqmNYRfEl8r8b0AkPWbB3qdqdJZzDEQ3JuBf4FrTOxviL
	+pn24DsRjCaQOGIUyAOVWgBxk4gYsGZ3xDuLCNCoGn8ZxhxhdRwwMuP1Ys11N7W3IN7Z
	LtQcM/ir+3XHHFGmzbShp54zuctqcLcdxF8TKWgesBLHuB5e3SmuedEb8xYUVP9WubnC
	yw2fzA1xCXoEzG+B/Y4ipmgrHVKPF0EdQAU8jPk2K3wZ51rkwTtE9dkSu3jUbO+sDHGd
	kUyPJ0zrKfgCWTczV21XNUJXCgBqso5VA+IDgauSHh8gw7I5fgoblwf09NQeEF50AiCH
	hMpQ==
X-Gm-Message-State: AKwxytfdF49WLzRh90p16a7Kdl5dI+30Cmxhg+5vwu60S1gFeU0BjFWZ
	+JXQYVCbQbocylvzHLWxhvibLMgh
X-Google-Smtp-Source: AH8x2261qWy6bknRcAsKavSm9UasHOWfFCWzIvz3TGgYurQe6MA/egDB+1VkyhYWEomeR6YjEMwYbw==
X-Received: by 10.157.89.162 with SMTP id u34mr8832317oth.302.1516748619295;
	Tue, 23 Jan 2018 15:03:39 -0800 (PST)
Received: from [172.27.88.30] ([217.140.111.136])
	by smtp.gmail.com with ESMTPSA id
	125sm1632276oih.57.2018.01.23.15.03.38 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Jan 2018 15:03:38 -0800 (PST)
To: yocto@yoctoproject.org
References: <c6a26befa32d4285a034c49304494f61@PLEXTEK-EXCH1.plextek.lan>
	<377a1d56-4c93-90d1-c806-4f9436508a7f@nedap.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <a8cd4f7f-235b-c734-12ff-2cb586e82042@gmail.com>
Date: Tue, 23 Jan 2018 17:03:37 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <377a1d56-4c93-90d1-c806-4f9436508a7f@nedap.com>
Subject: Re: Halt problem
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
X-List-Received-Date: Tue, 23 Jan 2018 23:03:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 1/16/18 2:46 AM, Ryan Meulenkamp wrote:
> 
> Hi Alan,
> 
> On 01/16/2018 08:48 AM, Alan Levy wrote:
>> Shutdown is supposed to terminate all processes/threads so it's
>> probably not about the watchdog daemon. It sounds more like the
>> classic distro was disabling the hardware watchdog during shutdown and
>> your new distro doesn't do that. Try comparing the kernel watchdog
>> drivers in the two distros because that's the most likely culprit.
> 
> I tried that, but I think the hardware watchdog can only be enabled on
> the at91sam9m10. I'll compare the drivers anyway.

are you upgrading kernel as well as part of this ? if yes then which
version and see how it handles watchdog. Secondly, perhaps record the
shutdown sequence. that might give you more insights.

> 
> Thanks, and with kind regards,
> 
> Ryan Meulenkamp


