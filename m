Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3895CE00D89; Mon, 26 Sep 2016 00:48:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D39DFE00C17
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 00:48:38 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id v205so2038165vke.3
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2016 00:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MBKwJ2Zsn9fXJL4S35FxcgguWu0W4/Yasp++hcpmP5M=;
	b=ZhR+Ayv9ennLFNQ+C2WYaKX6I/pkS4ZN2PrAYaSiczd6esmpiXEHKWpfoMSRTUh7f0
	brAFnKm7kIyUzKjQY+KQz6bPsV/zT2t+S2Rehvu7w/kHBuXXb07jgxPs864VThZsJRiR
	iP6Rqu/wRJOetrYx0WvUuRcIJ37Rjxump8znW5KNOIqMyrn549SAAXgY1hGe6vjDjVXw
	Ms7XTBV22BoOuWwZcs9i86qrRUFzA5nEj7Bq404GBqP2QeW5U3xMqlqvYqUEUgBclbvq
	QWBh6rBpjNyEH6pOBXwHwvRUeCwp793/Ac/skgje3imERKhbi6Jf4QHEAi7b3AXDZnIm
	QvYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MBKwJ2Zsn9fXJL4S35FxcgguWu0W4/Yasp++hcpmP5M=;
	b=UzH61UygQOdXCbaoQbmBis9S1gyyOJgiFJCdKQoXirrL6NxiwTSFmkAz0QC5Mrwrw7
	DNJe9Xv05q1HHVLa1+tBMNF7839J+w11ylXHcr38+97oRrQl5gftN1WQzeDuu+zApSQl
	8LzX8Te3AuWmX3TqusGVR5QeLQKe9YDnqjPAvNQr04LgOBUyyS9zx9gtuPqq/PzZvEYs
	8h22wMAc44UtcPFyCEEnQEqPy6SgmuovJu905BdopChlW7WAqC7TIMDvPr9pyLEK5tVS
	VK62F2paggbn4nCjdtTYwz/1wS6m+te7vq9yrx7J2746ZkWbae8Ax2iTwgWPN2iU5qDo
	h/+A==
X-Gm-Message-State: AA6/9Rn2zOQ/q7H4IJWfd+xgMdIY8UjQDwGgJWtuCjWWDJKCmiCT8kxjFeV36q3gDYaw6DZrs6u49IuqNRq/WQ==
X-Received: by 10.31.180.195 with SMTP id d186mr7409065vkf.139.1474876118364; 
	Mon, 26 Sep 2016 00:48:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.80.33 with HTTP; Mon, 26 Sep 2016 00:48:07 -0700 (PDT)
In-Reply-To: <6bb7a3dc-56fd-7fed-07a7-15229d8a99ab@mlbassoc.com>
References: <6bb7a3dc-56fd-7fed-07a7-15229d8a99ab@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 26 Sep 2016 00:48:07 -0700
Message-ID: <CAMKF1sqJoOt3=OJVrjcCoh2S+Y3PQ3F0_CbL6GzEcbpbcX6MUQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Generic watchdog question
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
X-List-Received-Date: Mon, 26 Sep 2016 07:48:44 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 26, 2016 at 12:37 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> A little off-topic but driven by some recent changes in OE-core.
>
> My board has two watchdog devices - one on the SoC and the
> other is an external device.  With my latest kernel (4.1.15)
> I have these devices:
>
>   # ls -l /dev/watch*
>   crw------- 1 root root  10, 130 Jan  3  1970 /dev/watchdog
>   crw------- 1 root root 251,   0 Jan  3  1970 /dev/watchdog0
>   crw------- 1 root root 251,   1 Jan  3  1970 /dev/watchdog1
>
> I've only been able to get my watchdog to "feel happy" when I
> use /dev/watchdog1 as the device being watched over by the
> watchdog processes.  I'm just wondering what those other devices
> are - maybe /dev/watchdog is supposed to be a composite (although
> that doesn't seem to be the case)
>
> Can anyone explain how this is expected to work, especially in
> light of the recent changes to the watchdog recipes in OE-core?
>

could be that its a software warchdog what does

dmesg | grep -i watchdog

tell you.


> Thanks
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

