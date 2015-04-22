Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 080D1E00954; Wed, 22 Apr 2015 03:58:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0DBFE003A8
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 03:58:17 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so269711168pac.1
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 03:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=9TGFxbpYkqvYN1w+2AnyB9FY4fF62+ihhDOjNcsbFbg=;
	b=Q2OFCg6C+4Yq3RQFbsDsyN3lzGPMzbjEjzcnc6XqVrM4Qoh3iIlFWMLA69TmMOX2mU
	E1p7y/B/kS4ymi2ejq0wlyQmbGTK86+I9fq6GfNGm4OdYDiHpvdlhgME5SAaXSsB5HdU
	BdszBnIWQzHLw3u/EjHQU5NLeVFlqsXMPKhNF22sbAiR2J0uE8i2AR/VB6YGp7KQAMIL
	TxvqbVdYq9838IG1OLiV5qNf7jJ+PyZgXGJ6us2q6sBl1dEhDrZDyTE6FEgSO+BH74Tv
	NFF94LzvuteB6RwcV7u86OeyhhkLpQ15xYqK21RyU2FLhwsam0ifJMLCj5uttY+5wHRs
	l/nQ==
X-Received: by 10.70.44.100 with SMTP id d4mr45963316pdm.36.1429700297317;
	Wed, 22 Apr 2015 03:58:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.70.114.166 with HTTP; Wed, 22 Apr 2015 03:57:56 -0700 (PDT)
In-Reply-To: <E6ED90C4-6C3F-4D28-8F62-69B4E1637BE7@gmail.com>
References: <CAAPegz2tNVr3PdWjs_KWb4p9V2Kdq+42LCtYpT3njU3C7Y57=A@mail.gmail.com>
	<E6ED90C4-6C3F-4D28-8F62-69B4E1637BE7@gmail.com>
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 22 Apr 2015 06:57:56 -0400
Message-ID: <CAAPegz171hRLb+cQo6L70U2S6x_cVOVEc9aPCBPJk5KWvDs+Fg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: extrausers working from image file .bb but not from .bbappend
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
X-List-Received-Date: Wed, 22 Apr 2015 10:58:21 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 21, 2015 at 9:54 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Hi Chris
>
>> On Apr 21, 2015, at 6:27 PM, Chris Morgan <chmorgan@gmail.com> wrote:
>>
>> Hello.
>>
>> Based on http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-extrausers
>> and the .bbclass file I've added this to a .bbappend,
>> pulseaudio_%.bbappend actually so root user can use pactl when
>> pulseaudio is running in system mode:
>>
>> inherit extrausers
>> EXTRA_USERS_PARAMS = "\
>>        usermod -a -G audio root \
>> "
>>
>>
>> From the .bbappend this isn't working. If instead I add it to our
>> custom image file recipe (image-blah.bb) it does work.
>
> its a image level config so thats right behavior.
>
>>
>> I'm not sure how to debug or why it isn't working from the .bbappend. Thoughts?
>>
>>
>>
>> Also, the documentation in the .bbclass seems out of date but wanted to confirm:
>>
>> http://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/extrausers.bbclass
>>
>> shows:
>>
>> Below is an example showing how to use this functionality.
>> # INHERIT += "extrausers"
>> # EXTRA_USERS_PARAMS = "\
>> # useradd -p '' tester; \
>> # groupadd developers; \
>> # userdel nobody; \
>> # groupdel -g video; \
>> # groupmod -g 1020 developers; \
>> # usermod -s /bin/sh tester; \
>> # "
>>
>> This INHERIT vs. inherit seems like it could be something that changed
>> in bitbake in the past but was left over in the .bbclass.
>
> its correct because its assuming you are adding it to config metadata and not recipe metadata
> may be location is not right. Send a patch
>

Hmm. Not sure I see anything incorrect at this point, given that I was
using it incorrectly...

