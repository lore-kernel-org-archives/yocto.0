Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68AECE00503; Fri,  2 Dec 2016 09:29:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F198E0049D
	for <yocto@yoctoproject.org>; Fri,  2 Dec 2016 09:29:13 -0800 (PST)
Received: by mail-qt0-f180.google.com with SMTP id w33so257980315qtc.3
	for <yocto@yoctoproject.org>; Fri, 02 Dec 2016 09:29:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=QUXxxY1TpZPC+y5kwGAQp02Tr+0Cnw0UzgE/5mv50M8=;
	b=YZI1A8/u2GMhocpFRmXQbxfRiVyT9IZ+R71WZPmiNySSvl8HR4LyByw7iXBPI1U0AO
	RhFG7VLi5t/Lwf0t1Uazp6u6tkSGEgtqWIpoVjUPo463XuyU6PJj3+UZXk/JsTHEj2VP
	1Scl4SkXMXwVxFJ49h0Lr7I2hLaE22BcRynJwJQeX+GtlXzRNx4bAll5zB0nh7JAlDiA
	+WGYe2CBpg9RHGVR3p4BTh8P3Qt++y78rYSS8QLjIAxoW7Ex1G7MmIr+pCH/YqIXy5fG
	WZwgSTt5oWutsGOzdN7EkmZMAwag42VHrHBcFKVciptWo6AO/YW4xTf97V3GFfPP0GOb
	2ZOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=QUXxxY1TpZPC+y5kwGAQp02Tr+0Cnw0UzgE/5mv50M8=;
	b=Pptiuj69mng44AlcYGIw1WWr4lKrqtypl3WnxwqCeWMCg19Whpjf3GEmE8Fs3axYXn
	vGrk/IpsrxKncHgPAhDLJwKjZPIuTW5L8v29Hbbc8L/bOrutJFXPZbwakYrIvMN8ZxUH
	1NcMMj6duYX8MRaHqfXGUpvmrMui/algQ3f1jW3CRsJG044DvPJnr+sfO2fkX2DKoQVZ
	J+y2yT6PNWCmQBNwVvBdEzF9J43AgACCjveakG+E331oNecC7Wgf6svv1uAQQ3uNoFjg
	G+dHmeRqdHUFSzzed5JTzS+Z5fg5gVuXd0x4AxsnMwqPv6IOTsz2C39cLoCi294bGAzf
	o8bQ==
X-Gm-Message-State: AKaTC00xyyBVNDeWZ955K6JlGXSBju6wg2VZOj1+lfo5/IqOuT3cf2HpS7ncz8r/1P4MRlwhI1vCQ2R3IuYnGA==
X-Received: by 10.237.36.154 with SMTP id t26mr38285842qtc.188.1480699735145; 
	Fri, 02 Dec 2016 09:28:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.88.21 with HTTP; Fri, 2 Dec 2016 09:28:54 -0800 (PST)
In-Reply-To: <CAF3SDA4WnhTY+HXr5+BaCa=tuqAfgKjYuhiOTq1WN6f4pJmwRQ@mail.gmail.com>
References: <CAF3SDA62UsnFYvSNjvO60yukeVuWpqWw+TvOGQfmKGE4kfosEg@mail.gmail.com>
	<CAF3SDA47z8VNPgXpcC6AsceWkLmjmLbjt-2x_xyhzLXZqb5K8w@mail.gmail.com>
	<CAF3SDA4WnhTY+HXr5+BaCa=tuqAfgKjYuhiOTq1WN6f4pJmwRQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 2 Dec 2016 15:28:54 -0200
Message-ID: <CAF3SDA6m+dzLnFRxvtqiTHxkrcnDrvEwjWu9hDZWiUVNA8x_rg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Krogoth rpm-native download gives me 404, can anybody confirm?
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
X-List-Received-Date: Fri, 02 Dec 2016 17:29:17 -0000
Content-Type: text/plain; charset=UTF-8

I can't download rpm-5.4.15-0.20140824.src.rpm, I have to download it
from another mirror. :/

I'm behind a firewall/proxy, so it can be this. Anyway, I download the
package from another mirror, put on DL_DIR, clean and then it compiles
fine :)

Regards,

2016-12-02 14:52 GMT-02:00 Daniel. <danielhilst@gmail.com>:
> Shame on me, the real link was:
> http://rpm5.org/files/rpm/rpm-5.4/rpm-5.4.15-0.20140824.src.rpm
>
> Sorry
>
> 2016-12-02 14:51 GMT-02:00 Daniel. <danielhilst@gmail.com>:
>> Rectifying: http://www.rpm5.org/files/rpm/rpm-5.4/rpm-5.4.15-0.20140824.src.rpm;name=srpm;extract=rpm-5.4.15.tar.gz
>>
>> 2016-12-02 14:50 GMT-02:00 Daniel. <danielhilst@gmail.com>:
>>> Hi every
>>>
>>> I'm trying to build rpm-native and getting this error[1]
>>>
>>> Can anybody confirm if this link[2] is returning not found (404)?
>>>
>>> [1] https://gist.github.com/gkos/9a3596452bd00d6ebba5780e7987fd47
>>> [2] http://rpm5.org/files/rpm/rpm-5.4/rpm-5.4.15-0.20140824.src.rpm%3bname=srpm%3bextract=rpm-5.4.15.tar.gz
>>>
>>> Regards,
>>>
>>> --
>>> "Do or do not. There is no try"
>>>   Yoda Master
>>
>>
>>
>> --
>> "Do or do not. There is no try"
>>   Yoda Master
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master



-- 
"Do or do not. There is no try"
  Yoda Master

