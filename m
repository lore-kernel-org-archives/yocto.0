Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3BCBE0074B; Tue, 13 Sep 2016 15:43:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.180 listed in list.dnswl.org]
Received: from mail-yw0-f180.google.com (mail-yw0-f180.google.com
	[209.85.161.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DF9CE006D2
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 15:43:07 -0700 (PDT)
Received: by mail-yw0-f180.google.com with SMTP id i129so46228061ywb.0
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 15:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+rAXlk6oZPOyEnFDSrY0EtCw4Fku7owwWjNYiZtRd1o=;
	b=qewxA6W7fKTdY+9DcrDPtBzfkVWIG+HfkZtcPKrjoZ7n3sO3JLDD8m+G3yxsQa++LJ
	PJ8ZoUh0ocqKcEV+AM7abaiXC5Ua003npcNIuoxHRZ+gRf6M3r32KhXYVhkE3Q1NYQHA
	+WFd6Jdgl3Cg/JWCHWUzPL2mioR5hhb8f5y5nx0SKg6w2aNPh/ayG8bJoBnK8W1bolV3
	BNNRM9qK+9+ui4gre6/lqWyV+uix8Hj/KglR9obbOulE8VRTQWS2/HbZt0dbfBvXxVTr
	hZb+GCOSrPdXW8wUzDPUXk4BdTBZL71n1pMXDN8LF07hcFjWTjkvA6jejXarqcx88wmr
	qkEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+rAXlk6oZPOyEnFDSrY0EtCw4Fku7owwWjNYiZtRd1o=;
	b=hW/4XaVrv+x+hkV59ZateERSjGaAyLQ1PogC0JPzX9nQlhj2JHABL6HSxEZqYdOe15
	QMBP//hnf72cvqhdYFlgBhJQ4gk5eYJzDEYH7ZUF/OsSwlBwgJLSnNteh5CwThkqCtco
	tHeOpXqmuaBHcUmoXm8LPuoldMXvj1VeVp3nx1abfCyoQBkuy2a4hVgeF+kcdatKhq3M
	xT4Ny4IqtP9w9bjLfjan3ZNTQ16kXYucPU14w3oX+vm3PSvMF6wY2sOlnuVr0LNkcU8C
	o0e6kdf/Sgpf6CDsM6d2TQXyvv55Iloet3DkeNE8n0KDb8Cby1wVtAGaIhlkUMWvXnQ7
	TlmA==
X-Gm-Message-State: AE9vXwNZOGCzINXcZXSfC3PgDvBe1CAN5M8wuJjGyh4LzJCs4+Dqswx2cim2YkhySkaYcQUJQe1fGf5rFd1n7Q==
X-Received: by 10.13.246.199 with SMTP id g190mr3295181ywf.124.1473806587001; 
	Tue, 13 Sep 2016 15:43:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.35.72 with HTTP; Tue, 13 Sep 2016 15:43:06 -0700 (PDT)
In-Reply-To: <CALRMKQqa3W_7RudOO4RvT13UV+EZiiWRgDLtSw1GYS1+mF_MyA@mail.gmail.com>
References: <CALRMKQqDgV5U_3=i_oQQ+2SzQTGhE3d1szfsomKH0rNp5++Uxg@mail.gmail.com>
	<09ebab78-b480-edb6-7691-2d60ecb1ed91@reliableembeddedsystems.com>
	<CALRMKQqa3W_7RudOO4RvT13UV+EZiiWRgDLtSw1GYS1+mF_MyA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Tue, 13 Sep 2016 19:43:06 -0300
Message-ID: <CAF3SDA5a_dq16Y1+CH+Z3V81M7UQyiRJG2VAZ=m5USAwM+h8iQ@mail.gmail.com>
To: Ronald Oakes <ronaldo@brc2.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Out-of-Tree Modules and __stack_chk_fail()
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
X-List-Received-Date: Tue, 13 Sep 2016 22:43:11 -0000
Content-Type: text/plain; charset=UTF-8

Ronald,

Was the kernel compiled with -fstack-protector?

Try running this on target:
cat /proc/kallsyms | grep __stack_chk_fail
Does it output the symbol address?

Take a look here: http://lxr.free-electrons.com/source/kernel/panic.c#L558

Best regards

2016-09-13 19:14 GMT-03:00 Ronald Oakes <ronaldo@brc2.com>:
> That resolved my problem.  (And while I was at it, I found that I had
> failed to create a new .bbappend file to pull my custom kernel config
> file in when I had to change to an older kernel version due to kernel
> versions supported by the vendor - so I had none of my other kernel
> configurations either).
>
> Ron Oakes.
>
> On Tue, Sep 13, 2016 at 1:29 PM, robert.berger@gmane
> <gmane@reliableembeddedsystems.com> wrote:
>> Hi,
>>
>> On 2016-09-13 21:55, Ronald Oakes wrote:
>>>
>>>
>>> Any ideas how to proceed?
>>
>>
>> 1) Can you try to use it from an in-tree kernel module? (modify the
>> attachment)
>>
>> 2) Can you grep in your kernel config for
>>
>> CONFIG_CC_STACKPROTECTOR and friends?
>>
>> Regards,
>>
>> Robert
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

