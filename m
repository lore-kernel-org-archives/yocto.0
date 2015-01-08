Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A683E0090F; Thu,  8 Jan 2015 09:31:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D11E004D6
	for <yocto@yoctoproject.org>; Thu,  8 Jan 2015 09:31:54 -0800 (PST)
Received: by mail-la0-f47.google.com with SMTP id hz20so10426587lab.6
	for <yocto@yoctoproject.org>; Thu, 08 Jan 2015 09:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Z/XVceau8xQh2qHgR3zqC7RI21IPb4sD/q5/sWXdhnE=;
	b=f13yL7PKDDPB2+VzAA8Soz0pJLG7nQXJ9f167qok1y9xTvqbvLl8NEEtLFkvoDX6iL
	rSMBssAm+thTywqAiKM9Du267jeAS+m93joN+wBBaQnQ2Gy4UZxgylLX0o451oj/aUxY
	P2weOLOZjQimQXplMSxVssPEiKIpCG/mk8yvA5/525PsE0WfHwfDIWub+XL8nXf1Ter7
	cOv/jbqczdCSsupw4aWqVx9ql43UIvBmBO8ILwuMho7l3i90SgQJt4bdUkH7tIBSqzvS
	9SbMBlPrNVoZl9KThzTwia5PlVtH6YM9n4tudqyaXdacSrLuW4QssOj40EG1fg3F90+7
	GucA==
MIME-Version: 1.0
X-Received: by 10.152.6.132 with SMTP id b4mr15988727laa.59.1420738313681;
	Thu, 08 Jan 2015 09:31:53 -0800 (PST)
Received: by 10.112.48.41 with HTTP; Thu, 8 Jan 2015 09:31:53 -0800 (PST)
In-Reply-To: <DBD151E6-CA6E-4561-B77C-14911D9DE15F@gmail.com>
References: <1420622709.25779.60.camel@linuxfoundation.org>
	<1D92EEB7-710A-4923-9AB0-FEC6A3D884FB@gmail.com>
	<56832778.XUIYBB79do@peggleto-mobl5.ger.corp.intel.com>
	<A4B52F1A-F782-4EE0-B4E3-8E007AC38BCE@gmail.com>
	<CADkTA4MVZir6UMdfAoABSh5TgmiMLa3sQMKE3YRiWefQuQh7UA@mail.gmail.com>
	<DBD151E6-CA6E-4561-B77C-14911D9DE15F@gmail.com>
Date: Thu, 8 Jan 2015 12:31:53 -0500
Message-ID: <CADkTA4McMo2+zsbuKMnQgK+R2yVGB=unutK-Hq_XHsdiGYF6_w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, yocto <yocto@yoctoproject.org>
Subject: Re: [OE-core] Bug reporting and good bug reports
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
X-List-Received-Date: Thu, 08 Jan 2015 17:31:58 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 8, 2015 at 12:29 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Jan 8, 2015, at 8:59 AM, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>>
>> Assigning and scoping the actual work doesn't scale based on email threads
>> (as someone who has been thrashing to keep information straight, and reproduce
>> issues .. I feel this pain greatly).
>
> if you are a talking about corp development yes I agree for open source projects
> thats the nature of the beast.

I work with plenty of open source projects in my own time .. and if I
have an issue,
I open a bug if it requires a fix.

Probably a point of view thing.

We aren't saying that this is mandated .. just that anyone who can't be bothered
to log a bug (and steps to reproduce it) .. should set their
expectations for someone
to fix it accordingly :)

Bruce



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

