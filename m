Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3D87E00D72; Sat, 28 Sep 2019 01:00:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [209.85.166.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
	[209.85.166.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51386E00DA8
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2019 01:00:14 -0700 (PDT)
Received: by mail-io1-f65.google.com with SMTP id h144so23320108iof.7
	for <yocto@yoctoproject.org>; Sat, 28 Sep 2019 01:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gPXmMNPlVGzS/ZVxlXdFKebUbNQ3Fjt11JHbbcbj1vQ=;
	b=FgSV/9jtD5Rh5oshs2Euj8ADBADQrZaZjlWE1JCdE+fEXdyh7NX65xi4tL73C4nz9F
	13TIfW1KMHhexeZ90GcTWwpFuy/zZv95eY6rcW5TCxURyjrK3hZsoFNYPtHNBuFqrdK+
	PU1xfien3xjcPwE26hi+Wv8It4GqNv9pPu22XPSK1deGZ1GYiV11gbHsT6AV8t/cSw6X
	/LMTSr3Oy4w5aNeZZ/9GA+6E+5+5/0Iuq0yos1vF002zvhVZqlduHl8i+i9HAsHM2iYk
	K4Uac0Jd2RSsGH2zrmvkGByqqqiVFZQbuA2ioyWRgqrTxiD8SEeRdI3FC3bOBLsiS3D1
	S1Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gPXmMNPlVGzS/ZVxlXdFKebUbNQ3Fjt11JHbbcbj1vQ=;
	b=syn32XVVw6NbXs0eRl2o/R/26eBCKFh/9J/gk8BxJJG2X9aUuZl54YgxuW1ICdpmAl
	rYoMuHQHkPm7dGYJM7OQ0yeyqL2USDSn59bKmzROnqzxV/XpaF/pLI45pBQ+JowS7Rf2
	NBsnGyGEMbPc/lEcCGY+x2mLkWxFoGZNwanMMgUakttbLt7MczKXjoUIpJEMW6Q2xQx5
	d/S0NJ5cTrnh5ED/Ztpp7ypK32RAH/5ZWaBDUKp5yMXdgFptmXiBGCaAT5DbzouXCRpl
	5aw7dNJMo5B5KXvrUhthz+7QM9odLc+dWSCi+/yW2laape2yAndSXrhAq3e1LoPpgJTg
	kPbw==
X-Gm-Message-State: APjAAAX/upeGUb5A/m28IheIPLEYUvMhuIo73K6MGuQArKt7MC13N/KJ
	HI00rtduz/odkF+E4x/gWytyW5AfpjtwQO8y1m/AFV7v
X-Google-Smtp-Source: APXvYqyWACEd9lUonDXjFybn8twjCjWOGMRiTpm7crLdQBXaEn+LVgLcJl7IPKMMDuN1crWXerNZxFRMD4jxwyllKdI=
X-Received: by 2002:a92:9e96:: with SMTP id s22mr9262012ilk.306.1569657613233; 
	Sat, 28 Sep 2019 01:00:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP; Sat, 28 Sep 2019 01:00:12
	-0700 (PDT)
In-Reply-To: <CAA=hcWSiQc3Qtss06ALR8KyYeyzSNYomcaoB5m7ZkH425U2EzA@mail.gmail.com>
References: <CAA=hcWSriyGnbRTGjj26ef86-h=ePNWiOxoWU9S=XrDe1y+gtA@mail.gmail.com>
	<b125be44-41fe-d1a0-374f-c005770734bb@3mdeb.com>
	<CAA=hcWRCqya18U9L8QxQj502n=ybDwC4CGpN0-kQBFPy52RMbA@mail.gmail.com>
	<CAA=hcWSiQc3Qtss06ALR8KyYeyzSNYomcaoB5m7ZkH425U2EzA@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Sat, 28 Sep 2019 18:00:12 +1000
Message-ID: <CAA=hcWSt1B23h31K75yNX9cE=fAG8_7oMAQNpPJbo=g-_JhBfg@mail.gmail.com>
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel module and drivers missing in final image
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
X-List-Received-Date: Sat, 28 Sep 2019 08:00:28 -0000
Content-Type: text/plain; charset="UTF-8"

On 9/28/19, JH <jupiter.hce@gmail.com> wrote:
> On 9/28/19, JH <jupiter.hce@gmail.com> wrote:
>> On 9/27/19, Maciej Pijanowski <maciej.pijanowski@3mdeb.com> wrote:
>>>
>>> On 27.09.2019 14:01, JH wrote:
>>>> Hi,
>>>>
>>>> I included emmy-w1-driver-sdiosdio in packagegroup.bb, but all drivers
>>>> and kernel modules in emmy-w1-driver-sdiosdio are missing in the
>>>> deploy image, any clues why, how to debug it, how to fix it?
>>> It is not clear to me what do you mean by including it in
>>> packagegroup.bb
>>> and what stuff are you installing into the image.
>>
>> The packagegroup.bb is the one defined in image FEATURE_PACKAGES, that
>> is usually all package in packagegroup.bb would be included in the
>> image.
>>
>>> If you wish to install all modules which were built, simply add
>>> kernel-modules to your image via IMAGE_INSTALL variable.
>>
>> I added IMAGE_INSTALL += " emmy-w1-driver-sdiosdio" to my image.bb,
>> but did not work unfortunately.
>>
>> Let me clarify it, I can see emmy-w1-driver-sdiosdio and all its
>> kernel modules are in my build directory, but just could not be added
>> to the image. How should I add package to the image?
>
> Tried to add IMAGE_INSTALL_append = " emmy-w1-driver-sdiosdio" in
> local.conf, did not work either :-(.

Sorry IMAGE_INSTALL_append += " emmy-w1-driver-sdiosdio" did not work either.

