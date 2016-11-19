Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21861E00C82; Sat, 19 Nov 2016 09:31:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53BE2E00D3D
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 09:31:54 -0800 (PST)
Received: by mail-ua0-f173.google.com with SMTP id 20so195785515uak.0
	for <yocto@yoctoproject.org>; Sat, 19 Nov 2016 09:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dBzsJNftV3TSSbw06VkU9nPzSXPHeNEST8ZL43ojhTM=;
	b=tsUBOx/XIslbUIdiQS8kWD00Rm2OUTEDG13U7woAoP48d4gYxlIdrEkLzKSFNk8RY8
	92lujrUCm9oj2psf7z8/klO8BfAj1ba1rgHoY8jQKqTptPNu9QHr0KJ4oH7Cgl+FJyzF
	eoj0oZvsxwQVor2vSqSh+Y6Y304RsaZd17W6Rn3xEeIyGgSRvlgWWLtNPN+9BH9NBUNg
	pGMytlj9PA6vUTJ5gXGDCqL+QVbFyR874JU+BoTC9VmoLKVfDeqkfx+Dz+xSgIoR+tmL
	3LwMsxHwAnTtmG3zcI0ErWhW+x0j2Y6JzaZPbsLd9HM6OHHiXIh3eCfykfnlFUHwzNM1
	Q6Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dBzsJNftV3TSSbw06VkU9nPzSXPHeNEST8ZL43ojhTM=;
	b=TV9vOjP7T1oPx2PZ9KSDrO9OD6Ky/jE3Zk0f7gqxqZZ1pGvJxFo0cRsGj8BQXXTxAj
	Syj5IgHlZwuq4MQa7gVHLq6MYd3vCS3LNUeYD57YvdYvtb38OjA/cntqffquyw2lhgdG
	Dyi5nDpZ+PxxjV5DmtG7Vw4udjVbIE/xBUn2ePsqmWf7Kx70FllTsAoxD9etArCo+HEm
	UpVrr1C0WOx43M+anDUtzp+iRxxxe8nnLPuzJ0bNlfzORyHwlkpnr7d1daAhinYcZ3ji
	dRzsA3BWnZygJ7VJIBP3Pa5aImFI8rSiOPBhH0AUZkBYE0J2D2hUSBeYb8Mmib5rJwpt
	pzoA==
X-Gm-Message-State: AKaTC004jjXlLOX7PB98zyVJ53oouKYzACtws/1NumdT4q8rGg16nZZfTEKRjUO9vQ3EGAMuUICsRbQm5lh3EA==
X-Received: by 10.176.84.8 with SMTP id n8mr3013515uaa.29.1479576713947; Sat,
	19 Nov 2016 09:31:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Sat, 19 Nov 2016 09:31:23 -0800 (PST)
In-Reply-To: <07541D77-C846-4448-BAB8-51604206B9AA@neuf.fr>
References: <20161118212042.GA26177@openSUSE-i7.site>
	<07541D77-C846-4448-BAB8-51604206B9AA@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 19 Nov 2016 09:31:23 -0800
Message-ID: <CAMKF1sp=Qk3bHqqhbbT3KGPSsQzCc4bjdGsO4SiJJZOke7+Y0w@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ***SPAM*** [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Sat, 19 Nov 2016 17:31:59 -0000
Content-Type: text/plain; charset=UTF-8

Thanks Herve,

Btw. can you fix your filters so it does not show SPAM in your replies ?
it breaks the thread chains.

On Sat, Nov 19, 2016 at 2:54 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> Hi,
>
> I'm in the process of pushing something that should hopefully do that - and more.
> I hope I can finish pushing it in the next few days.
>
> Cheers,
>
> Herve
>
>> On 19 nov. 2016, at 05:20, Trevor Woerner <twoerner@gmail.com> wrote:
>>
>> Hi,
>>
>> I was wondering if there were any plans to create a MACHINE=raspberrypi3 that
>> treats the raspi3 like the CortexA53 that it is instead of generating images
>> that are backwards compatible with the CortexA7 that is the raspi2?
>>
>> Best regards,
>>    Trevor
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

