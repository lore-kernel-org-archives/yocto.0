Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0548CE00D25; Fri,  5 Apr 2019 16:45:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B0FE00994
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2019 16:44:57 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id 10so5533178lfr.8
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2019 16:44:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uINpP6Kv9zlTPxUDgYyssucduKslB2Gr0bWokOVmgqg=;
	b=pR1sPmQCYy+AOqE9HbQoZDvHJW6dUZlPmpFHk2CgcLjRC5vPT4aYjsktQqy/dbfhsv
	8Abwc+6MWifLB4tMMDT7ov7lGY45OGFLkTTN0acR7gl/LeqkupHBb9GbyXrL5CmEb//Q
	1dzrTqxwusPlEcb9Kvv8QhrTj4ZZEvyNqDAW7MmkB/8Za1d46c+iRSuXa6t0pb/Jr1tf
	ooiOP4KJbxGVIDK2nVlToQFwbJEF6TWq7SWWPmoQ4HXrAW0JnV9OLFAL093EtSZ7avkx
	XGmlYqTGjoNZdDHgWNu/BaCI43Ika4trZaPiiH6TbXKdqZm3lZ5db4RNMjSwxnluMHYD
	Mzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uINpP6Kv9zlTPxUDgYyssucduKslB2Gr0bWokOVmgqg=;
	b=Z3d2pe9GpFyQN0a7sVdB97ljdxig9o1Oa7JczhjrISq8Z9bmddLN925o7+1H7++a5Q
	rQ7LTCXmKspcbc9M2EHkH+CcoqVjY3NM7Tkef5oyByaXgcwpv+hxMFQLnhTVI3XHQ50p
	vVsSkJJkHYYmp7/BdkpRKHE7Vcjg/Mv/LS1MJCcrC3riel6LSH69+7HghVCABDxJA4EU
	CvTS3SV8AnDSpG9GThNtuQ49ZrrqpPjgVzmqI8CjCH5OeIaWIrB3rbjZ7jY2gWq1mGmE
	tBM1Dbbp8hoalcqWxEse0gBjUeBByKr7aVPegsxszb31Jkz7cZQ1daT1PPCc4M0VBjgB
	/T8g==
X-Gm-Message-State: APjAAAWdXNvf7C5DYz7onqyXAulEmf1DLEfQ3ljgl7n2AYuitL3eplUr
	VawlBAfi0QBRsbnX8er1anhEIfI5V16kxFqxfNM=
X-Google-Smtp-Source: APXvYqwFxhbRN+G1vkXnzptj2udkfVFQ0UHUONWIvwpiJVKruPbhCYuUq9sAhI10S4+LS0TICY8jEoIf8mVweZ0aEe8=
X-Received: by 2002:ac2:491e:: with SMTP id n30mr449997lfi.13.1554507896826;
	Fri, 05 Apr 2019 16:44:56 -0700 (PDT)
MIME-Version: 1.0
References: <cfd56541-43c4-5128-3d41-cddc356a3cb8@gmail.com>
	<CADkTA4MT3JctYMTFjLZXtJYgaxj6HG=G_nAAe+w0A-JRGXRFxw@mail.gmail.com>
In-Reply-To: <CADkTA4MT3JctYMTFjLZXtJYgaxj6HG=G_nAAe+w0A-JRGXRFxw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 5 Apr 2019 19:44:45 -0400
Message-ID: <CADkTA4OKO4NyNBCOZJ8QG5WoUXa_w8=GTvGFt54dQB04hq-ZXg@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Worries kernels supported
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
X-List-Received-Date: Fri, 05 Apr 2019 23:45:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 5, 2019 at 7:42 PM Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
> On Thu, Apr 4, 2019 at 5:28 PM akuster808 <akuster808@gmail.com> wrote:
> >
> > Hello,
> >
> > I noticed there are 3 kernels in Warrior. 4.18, 4.19 an 5.0. Do we
> > really need 4.18?
> > I see its the default version for poky-tiny. 4.18 is EOL but maintained
> > by Windriver.
>
> 4.18 needed to be around through M3 to backstop some layers and references
> that were being updated.
>
> I may delete it as part of M4, but really, since I kept it through M3, I may not
> churn it in M4.  I handle all the support load on the linux-yocto
> reference kernels,
> so it shouldn't cause any one harm one way or the other.
>
> I keep a very close eye on the versions, so nothing is around by chance or
> by mistake .. and best to just copy me on the email, since I can
> easily miss them
> in the noise.

... aaaaand you did copy me.  gmail sucks at showing me the headers
and I just got off 27 hours of planes,
so sorry about the noise.

I also meant to say, if someone wants to update poky-tiny to use 4.19
(it wouldn't be a huge effort, but
there's probably some config wrangling needed), I would definitely be
willing to remove 4.18 from master.
It will definitely be gone after the upcoming release.

Bruce

>
> Bruce
>
> >
> > regards,
> > Armin
> >
> >
> >
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

