Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2503EE00DC9; Tue,  5 Jul 2016 08:28:38 -0700 (PDT)
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
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FA32E00D8F
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 08:28:36 -0700 (PDT)
Received: by mail-qk0-f177.google.com with SMTP id u68so14917250qkc.3
	for <yocto@yoctoproject.org>; Tue, 05 Jul 2016 08:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Q74MTBfQCOMQyilv7e5qRbnM/gEwJ/K2vuX9bGsur0Y=;
	b=npnR3mwQVDbKEA9eYQKoO8bU6dtpBxa6D2lApQW7qcr5+7SMDU7/KkDu43bBUbSS2H
	a2A6OaPFwVmL8c5Q/DJ9MZlkjetWuxUdZaoDIRjMw6ovKg3LQhEf998dLgAUBf2crZVO
	y4Cx65w35hdBM7O8nHQ5hgx8QBGjdQ0v3xtDmQoHJ06CIdT9OHGAKBU7kSTZyQv66F2A
	FlpCUpvnmA2pAwLxAd4JhFhA5xHyb/klowuhhMHqDScp1Q0hVSwXe076j+JZ8cb6kFIV
	W8akQa85TdQZqsL5pf93YL6hH7YmOuVkK+8B/iD84xxnQILoI+e3MHOklDlem/wJDeNz
	pj6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Q74MTBfQCOMQyilv7e5qRbnM/gEwJ/K2vuX9bGsur0Y=;
	b=AHcuDLfnyzmnHI3F+DzZpFgJmzHYvULnZYmlytIVb65W8HcfxSJeKZuIlb+sXIFYED
	JyHf170tSXhXu9Xf+9G11e6NQBLZ1YUKdFx1PRFKB06iGBujQrSQDXscH8XY0QpF7Ujm
	7b0eB7fixWxlF2RTX983VJNN/ftuQgiaB+oC79GZqhu4uWF0ZZtAWOCZeRqooejPVOJx
	FDWFRgg/TV0s3KS62ZvXjZyRUM8yhMnQ2m60LfGJoKs+JPVr1FcZnc0HycLALPrt6xL+
	SdFgFCvDMWpm2DPrblq3ky+MIwi1pSQLSWAtPRt42XfndwZfzf3QEvDVO8FrJEO96dVP
	SfDg==
X-Gm-Message-State: ALyK8tKj7xfeu3FydifRNGUDSO47CGTfebOTxclIT94Ubx5NqgrKJ31ukZKfCqapHNRlbcZiLe3vtoCd6c463w==
X-Received: by 10.55.122.69 with SMTP id v66mr24329505qkc.26.1467732515782;
	Tue, 05 Jul 2016 08:28:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Tue, 5 Jul 2016 08:28:06 -0700 (PDT)
In-Reply-To: <CAF3SDA4WWewyr1gxmKMcw=oz8SQFPDD9cuQNuxz98tNgW0cu3g@mail.gmail.com>
References: <cebe898af3ab435595255b7915ba3e38@XCH-ALN-006.cisco.com>
	<CAJTo0LZq6EOSZuD7KFd4EP1TMkoST4MTSCyejs3cgjgE1vj7_Q@mail.gmail.com>
	<dd76bbae443f4c82a36406a58e07e665@XCH-ALN-006.cisco.com>
	<CAJTo0Lad+=DQvdw0v8NdWzsezK747AEL6s7kR6Bz2m5eQH7J=w@mail.gmail.com>
	<CAF3SDA4WWewyr1gxmKMcw=oz8SQFPDD9cuQNuxz98tNgW0cu3g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Jul 2016 08:28:06 -0700
Message-ID: <CAMKF1soChkg7nB4Jkq2q1DR2bOAzLc+4u-=eUwM7S=Sz0G1OXg@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto build cross toolchain issue
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
X-List-Received-Date: Tue, 05 Jul 2016 15:28:38 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 5, 2016 at 6:10 AM, Daniel. <danielhilst@gmail.com> wrote:
> I faced problems with symbols being droped if -l option is passed
> after -Wl,--as-needed. To circumvent this I changed my Makefiles to
> add link options prior $(LDFLAGS) expansion.

as Ross said, you managed to avoid the effects of as-needed. As-needed
is good optimization for embedded systems
gentoo has a good article on it if you are interested to learn more on it

https://wiki.gentoo.org/wiki/Project:Quality_Assurance/As-needed


>
> Cheers
>
> 2016-07-05 7:16 GMT-03:00 Burton, Ross <ross.burton@intel.com>:
>>
>> On 5 July 2016 at 11:06, Chandra Mishra (chanmish) <chanmish@cisco.com>
>> wrote:
>>>
>>> Thanks Ross for your suggestion. It worked for me. But in the past it
>>> worked for me with old sequence but different gcc cross toolchain, so not
>>> thinking of changing the order.
>>
>>
>> Newer toolchain may have different inter-dependencies, so exposing link
>> order problems that were hidden before.
>>
>> Ross
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

