Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36530E00CAB; Fri, 24 May 2019 09:34:22 -0700 (PDT)
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
	*      [209.85.208.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
	[209.85.208.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B92AE00A96
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 09:34:21 -0700 (PDT)
Received: by mail-lj1-f193.google.com with SMTP id a10so9215836ljf.6
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 09:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CEmf05bVu53rIBRIbo2rEQ9DvhBihGpYdzKJyC4qhaE=;
	b=BnbvWUr9WSK0L5/dj47BZxwGRQxAGOWiK1739FFh7kPNb0b39sOlHLiGf/Kh6qSZ0n
	pxNOMOr3A0+HoGefDOQ8NeGSdHKnND8RtimFBnedBjR0MMYgyUtV3WMlqPncg4T8402O
	a1L2fqZsq+EzKqmPLFcvEy6DMTLV8W8ZlwWfwIFboZUQYQF3g1z6VymHdXlZQjOcHJrY
	4kbMngmdIPO9e518zMJveY1rAzqPjwLzkMEGSnw5z3X4r8t1zqETEHvJr3r0Guzvpyze
	c5Xd81Q6J4bPTgShv2hFjQOFmgpJ1AKY8+6U12fkEw2kOcqzvbYInq4Fw0bf1Y1kTtY+
	MdnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CEmf05bVu53rIBRIbo2rEQ9DvhBihGpYdzKJyC4qhaE=;
	b=jaGzHrAVhaBvmjcWrdPhllQqNNQVj9fo9yVzWr0S43y3RTQK+aNUtyQim8NpZuv7zN
	+z+Xr0FClL6JG5bspF1B405ujHfEZLgaF+3RsFgzNIeBt4YDhMmrcAp6JCw1tuVBwfcO
	2ZbuXb4hXVNApYdmhvXQzxRnu6CwqvwkvJ/Dce9uOMlguHT/0Sl8UxSIYqupgqFEzw8v
	wXEAnn2ExxisKsdgecGyQaAgGFucAlJW3ijLb24+RJrQ6XoqNQ7b4Ss+8804No/wCXeR
	5GYZ1KcerZs2CRWmJ5ptQcVRbz9ZGcJuZCgt6t9WN9Na48ObyTs17tpcNwpXwuDe5VQ0
	VwoQ==
X-Gm-Message-State: APjAAAXZRtyB/isGqrIiykHpaPAXrvQhmeDQVR/amaMNExeO02pH9KYd
	jLpspDypuZwc2YGYl05SbnFKbUIuuR1SAr3IgqmeMltUW64=
X-Google-Smtp-Source: APXvYqwG+kl+2NSJyQEA0JMK2kkqqJJCb7uaJhHUowAJSWVBlVtl4UC6v+xftbWFv72JBk/3aptaJ+Qw9wqzviBGK3E=
X-Received: by 2002:a2e:a294:: with SMTP id k20mr16283991lja.118.1558715660329;
	Fri, 24 May 2019 09:34:20 -0700 (PDT)
MIME-Version: 1.0
References: <f2e8f3d5-1d34-392d-d489-d17fd5604e21@faresoftware.it>
In-Reply-To: <f2e8f3d5-1d34-392d-d489-d17fd5604e21@faresoftware.it>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 24 May 2019 12:34:09 -0400
Message-ID: <CADkTA4O1yv8DtRkPi+BbyAXc42tV+XKP32T4g+NNxL1KdQzTqQ@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Investigate virtual/kernel assignment
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
X-List-Received-Date: Fri, 24 May 2019 16:34:22 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 24, 2019 at 12:27 PM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> How can I ask to bitbake which is the actual value of virtual/kernel?
>


Here's one way:

bitbake -e virtual/kernel | grep PREFERRED_PROVIDER_virtual\/kernel
# $PREFERRED_PROVIDER_virtual/kernel [2 operations]
PREFERRED_PROVIDER_virtual/kernel="linux-yocto"

Bruce
>
>
> Thanks all
>
> MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

