Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C5A6E00AC8; Thu,  2 Aug 2018 07:53:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BCB5E00848
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2018 07:53:05 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id h15-v6so2430013wrs.7
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2018 07:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2/Jg+0k7vCj7JGd4HKDSX18sIgdRm44wvjT//j2vZVs=;
	b=Phknhr0CuTs9aFNNsW7i3W8wArNSiZtl8vXwR456pJ+g0TyC5XmqLkV77Bp7uzDweU
	aAaVnCjjtWIDn8WGgIYD679odhjTNSEmAw8OUGOUtUy05XZgsW3UdocKOF347LMub8Va
	XKvbuMHaEetKUkL3XHehKOxIj7740GFSEJLOoNZCObtVP0/48nZ1KOjEECXHTUswHO0u
	HWA3HIIGlahiZd0L8BYB6h5jJu5jYEq+5JLnWPsqzz1I8B9mrHYLT0urdsyNy0H8HPaH
	kltF7AHenyoWDAXxGRaN4RqgT/FFwjfe4c4vb02TEpHqKrWkCMeUn8r01zDnOFNZIVNe
	O0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2/Jg+0k7vCj7JGd4HKDSX18sIgdRm44wvjT//j2vZVs=;
	b=AfLAVfCdeayO5HlJQeg9a18L6XcxyaUmwbrZ7w+W6q5gEu0fbbsEoT201ErRQc+jjL
	BlZ4jqYvoDAIt4S2TDdsn2lZjcrJL9nSqB9qGHa/8rft4J1uhP2MwXAOSl8NMSN6pvaH
	F6ZnIBgCVSlvca2ZBqhM+HA4FDXd2jWNILebzM9KAkXpZsz1qdm0e/BDM3BX9+ZDQg28
	ngm+MFmMAmnOJhekVawWdgYj6cpM3It8x+lep9DMdfkliQLh15IzcOX+by+V0AIksZl6
	6EqAHwif7xDyaRJMqKI4FiihYpWLMf8KvlTYHiZvDEpIBwMHMutU2+ufBI3aINy7vNTH
	dKxw==
X-Gm-Message-State: AOUpUlErTZm2ziTV9dp6Gg7Edtuvzrh6KtRdev6qVovB4/jM+YYhfdLN
	wl0NZgeUW21Kv2uLxYp4HhMgq2aHnrD7sXcuUMbmVx1oGw==
X-Google-Smtp-Source: AAOMgpcBrSuORCYuUWDpl0f6qgbH1OFNlZMLN887CwudWE6REHVvNmkcKExRo+hJlmUdOHHrGFUW1gWk+xnZGiQgpf4=
X-Received: by 2002:a5d:5641:: with SMTP id
	j1-v6mr2318826wrw.209.1533221584985; 
	Thu, 02 Aug 2018 07:53:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:e719:0:0:0:0:0 with HTTP;
	Thu, 2 Aug 2018 07:53:03 -0700 (PDT)
In-Reply-To: <6111005.T3omFVPL6s@localhost.localdomain>
References: <CAJO0J4g=yJLtdncAAJxdCA5vTOPnz5ZOt3hc6Q4eHOh18tm4-w@mail.gmail.com>
	<6111005.T3omFVPL6s@localhost.localdomain>
From: Paulo Neves <ptsneves@gmail.com>
Date: Thu, 2 Aug 2018 16:53:03 +0200
Message-ID: <CAJO0J4gX-dqwwkSS9dRvoSFS1Zt-xtiWs7dtod++aZUo44-0kw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Cannot use any TEST_TARGET besides simpleremote or qemu
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
X-List-Received-Date: Thu, 02 Aug 2018 14:53:07 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Paul,

I find this functionality very useful for test benches of embedded
systems. Now that you said it was broken i started pruning code and
have 3 ways we can and save the current functionality:
1 In the testimage.bbclass, pass the td variable to
OERuntimeTestContextExecutor.getTarget(). Also greatly simplifying
argument passing.
2 In the testimage.bbclass add the td variable to the kwargs so that
controllers can access the datastore at __init__ time.
3 Have the user set a variable with a list of variables (!) that
should available in kwargs.

I will give it a try by simply passing td. This way we give all the
information that controllers might need to work. As td is retrieved by
the json file generated at the image creation time the external test
(bitbakeless) functionality should be unaffected.

Let me know if you have different opinions.

Paulo Neves

On Thu, Aug 2, 2018 at 10:35 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Paulo,
>
> On Thursday, 2 August 2018 12:11:37 AM BST Paulo Neves wrote:
>> I am trying to create my own test controller. After copy pasting and
>> adapting the skeleton from BeagleBoneTarget to
>> $MYLAYER/lib/oeqa/controllers I set the appropriate TEST_TARGET.
>>
>> When I run the testimage task I always have errors like in [1]. The
>> actual keyword that is unexpected changes from invocation to
>> invocation. There was a similar error previously reported in this
>> mailing list but the presented solution was to actually stop using the
>> TEST_TARGET variable, which is not applicable.
>>
>> I have tried setting TEST_TARGET to any of the proposed options in the
>> manual [2] and the same unhelping error shows. I know that some of
>> that these controller targets, are not appropriate for my target
>> (odroid [cortex-arm15]), but the errors seems to not be related to any
>> functionality or these boards.
>>
>> I have analyzed and cannot really understand also how all the example
>> targets classes have a constructor which takes the d variable, while
>> the context.py call has some more variables including a dictionary,
>> kwargs, which does not actually have the d variable.
>
> I discovered this as well:
>
>   https://bugzilla.yoctoproject.org/show_bug.cgi?id=12842
>
> This code got broken during the refactoring a while ago, and I think the
> person doing the work considered it to be legacy functionality and was going
> to remove it. Personally I'd like to see it stay and get fixed up, but the
> issue is having the time to fix it and maintain it - if you do by any chance
> then that would be great.
>
> At the moment I believe "simpleremote" does still work, it's just the actual
> classes that are broken, but I didn't give it extensive testing.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>
>

