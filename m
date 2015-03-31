Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CFCEE0092E; Tue, 31 Mar 2015 07:17:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (challinan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.176 listed in list.dnswl.org]
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89FBEE008D4
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 07:17:07 -0700 (PDT)
Received: by obvd1 with SMTP id d1so28662451obv.0
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 07:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=R8cKWyAT3pw7uqLB17kVUs9UHGpeK/c2gpQEKX0VViA=;
	b=Njz6BPY7HmzsOp7GefAoH7+hxWm8mEb3R7sOLqoRwpLluM5k7Je87BKFWY2R5Fd/lG
	8G7isa8hfK0zo+sadTtBctReYfI/DYjf9IPbIKBJf7o+po4qH7FiZXbLXwTJN46BwMMl
	hxh9DpwVN/zDwmPRdQTOVP60H0Uthoc8kgQQeRVKEJSupYV2Tz/y/HVL0HHRSgAO0x9k
	ZE4iOMxCI38Mimn0sdXCM0W1iucZkMcG6ACqxMstLcehw2fntSiQIGGW8PS3lE6hvRwH
	VSWoQjWPXAIpje4OZtUeeP28BNL+gl7AoFp8EsObZEM4hQD3pIwCjF1Ca+Q1RgYLT3rT
	lDVg==
MIME-Version: 1.0
X-Received: by 10.60.85.98 with SMTP id g2mr24817213oez.74.1427811412535; Tue,
	31 Mar 2015 07:16:52 -0700 (PDT)
Received: by 10.202.49.216 with HTTP; Tue, 31 Mar 2015 07:16:52 -0700 (PDT)
In-Reply-To: <5853673.bdLqT5fZko@peggleto-mobl.ger.corp.intel.com>
References: <1427748653-20274-1-git-send-email-challinan@gmail.com>
	<5519D366.4070506@gmail.com>
	<CAME0jBSLHmMdKa8UH-YDmUfA-JoLxBxQCA1PaajvJu0bqBbXLw@mail.gmail.com>
	<5853673.bdLqT5fZko@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 31 Mar 2015 10:16:52 -0400
Message-ID: <CAME0jBQ-t3bfcUDSmxBWg=ULcp=uWGn60zYM-mX_N07A4r=FpA@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Gracefully abort if rootfs.img gets to big
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
X-List-Received-Date: Tue, 31 Mar 2015 14:17:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Mar 31, 2015 at 9:17 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Chris,
>
> Great to see you at ELC!
>
> On Monday 30 March 2015 19:17:46 Chris Hallinan wrote:
>> Great catching up with you last week, and thanks for looking at my
>> patch.  I supposed it's a double edged sword.  If we make it a
>> variable, it can be set wrong and the build hang again.  OTOH, 128MB
>> is probably way more space than we really need to reserve, and I
>> supposed if someone were just banging up against the limit, they might
>> want to tweak it.  I'll defer to the collective judgement of the
>> group, and resubmit if that's the consensus.
>
> Is there any practical way we can measure the actual size of these files?

I gave this some thought after Armin's comment, and yes, maybe there
is a way to estimate the size available. I'll look further into it.

>
>> Oh, and silly me...I figured the mail list daemon would put the
>> [Yocto] tag on the patch. Since it seems to tag our posts, that is a
>> mystery to me.
>
> The mailing list always prepends the list name to the subject of posted
> messages.

That what I thought, too.  Wonder why it didn't prepend the list name
to this patch?


> A few other notes:
>
> 1) This patch should be sent to the openembedded-core@lists.openembedded.org
> mailing list rather than here.

Ah, wasn't sure about that, thanks!

>
> 2) The YP bugzilla reference should be of the format [YOCTO #7541] .
>
> 3) The shortlog (first line of the commit message / subject) should be prefixed
> with the area/file the patch is changing i.e. for this one it should be
> "bootimg.bbclass: gracefully abort if rootfs.img gets to big".

Thanks for the guidance. As you can see, I'm not experienced at
sending patches!  I'll investigate and re-send to oe-core@

Regards,

Chris

