Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2A15E009B8; Thu,  6 Aug 2015 06:42:59 -0700 (PDT)
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
	*      [209.85.160.172 listed in list.dnswl.org]
Received: from mail-yk0-f172.google.com (mail-yk0-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31CD1E00867
	for <yocto@yoctoproject.org>; Thu,  6 Aug 2015 06:42:54 -0700 (PDT)
Received: by ykeo23 with SMTP id o23so62170265yke.3
	for <yocto@yoctoproject.org>; Thu, 06 Aug 2015 06:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YjPnX+2KAITbdUCvqIZrDmFYY9ThvOTcAPDCsohbtak=;
	b=IoQdkMSrQhn1YGvBjF9PJUYoytEStc6u6qUK1iFozsnhNjdzgFODfFRR+oDKo+78+g
	RI6hY0IZuMu7CwRSm2HIlu3b+PcH75zf5CyogXykIg/T+FxcRbl4hhZ/jnBZOziG8N3F
	JX3RVwVQue2n8pGKtsfk+SsZgpQNIxn2j6GpiSGUV+PZ3jk3tae2bHD7rOfZiLwYvBy/
	N68clmAyCiODsjJ5AK6bcZAQ1h1toF21BMT8npLfmFKOJYqUHNak+4wcXwUb5ItWH6ya
	se08IjltVFI1CG5P8NHOKy1x+82zMAthjdHPRYXVsWeGkhQIlPPn59MJhfa0TjoiZIU+
	wjfg==
MIME-Version: 1.0
X-Received: by 10.170.77.5 with SMTP id t5mr1634142ykt.58.1438868574334; Thu,
	06 Aug 2015 06:42:54 -0700 (PDT)
Received: by 10.13.226.203 with HTTP; Thu, 6 Aug 2015 06:42:54 -0700 (PDT)
In-Reply-To: <6A20517C7F5548459920A3A2C95FABA8770A25@POCITMSEXMB03.LntUniverse.com>
References: <6A20517C7F5548459920A3A2C95FABA8770A25@POCITMSEXMB03.LntUniverse.com>
Date: Thu, 6 Aug 2015 09:42:54 -0400
Message-ID: <CADkTA4OO+1PjPAk0Xu7ubawR9ChwSRBnEiR3JBppf0b=8UpBpA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Amit Kumar <Amit.Kumar@lnttechservices.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemux86 and generic86
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
X-List-Received-Date: Thu, 06 Aug 2015 13:42:59 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Aug 5, 2015 at 1:44 AM, Amit Kumar
<Amit.Kumar@lnttechservices.com> wrote:
> Hi,
>
>
>
> I have a basic doubts on qemux86 build application image is not working on
> generic86 target.
>
> Suppose I have a application which I would like to test on target board, but
> the target board is not yet ready. If I will want to test that application I
> will use the qemu  to test.
>
> But if I build the application for qemu, it does not work for actual target
> board.
>
> Could you please let me know the details reason. If I want to do like that
> what I should have to do.
>

Are you concerned about the kernel, or userspace ? You say 'application', but
I wanted to be sure.

Assuming that your application is generic, and isn't using any machine specific
ops, then it will work fine on qemu and on a h/w target.

That being said, applications are typically rebuilt o be included in a different
image when switching between qemu and the h/w .. so they'l be rebuild and
relinked anyway.

Bruce

>
>
>
>
> Thanks & Regards
>
> Amit
>
> L&T Technology Services Ltd
>
> www.LntTechservices.com
>
> This Email may contain confidential or privileged information for the
> intended recipient (s). If you are not the intended recipient, please do not
> use or disseminate the information, notify the sender and delete it from
> your system.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

