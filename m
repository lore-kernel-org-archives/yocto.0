Return-Path: <pauldotknopf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDEA7E00D75; Thu,  7 Dec 2017 12:22:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pauldotknopf[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B87BE00D71
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 12:22:03 -0800 (PST)
Received: by mail-it0-f51.google.com with SMTP id f190so17270723ita.5
	for <yocto@yoctoproject.org>; Thu, 07 Dec 2017 12:22:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/gv/tRg0LpOfjkhWO6QvKyjqlNXH8Jg0m/35tTnd/qg=;
	b=UE4oJEtOn/N3/nDe+/v/x2AhyDHu2Jg5Pdt5bOPHlY6EIG1RbCFwFljcG3pFEJwR/s
	SA14fB70vEUx4XNLLHa5ogA0AYHFmqcgofUtqp1Mrr8/wI0/zMt1/L/jNd3JUiy54zZM
	13U8zFgh8+6wKe/DYKY5uZA74zuOZofA1KkvypAoSx9Vn/wZacZvUubrRom/N3COGfbM
	RpVq9cpiUFAFKicr9IlzUsUh7ODOJaGgnlf3Gl3vSjOp0fvweDJBaRPz5lHtGTU8LOpu
	J7b3bvzgPHeJmONtl/txaIYTWm7cRvR5XsdgN820te6NyMAzIfsKD5koNqzEbaI/iYzm
	7Lvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/gv/tRg0LpOfjkhWO6QvKyjqlNXH8Jg0m/35tTnd/qg=;
	b=nJqHAVx/EnKetyyBHPuxy6rBuL47Y/VfcUnl9B2jP2DXUZQnEXZTnBYptVSMkQN2un
	W1AxInokSaGOJek7en5iHY5OJtD9qjDYocNpRwUuk4Me0g5t+ODNCux5Ew7hYciqAQSx
	F0vj5uLzrUW4ZVSXavjA9tdVH6o02njEbIysw9NHwdA3a0hPwGwttwEH+z7WUmdsSu8T
	cpjzcyMxXAV83Lo8MDTK5CeuKEsj085DlCEsJmmaqnAztIy8KeEgHm5iVJ4aKS8b5qz4
	oGebSx2YMQGL+smcLl5mMeVNn17qyUVf27QDM4wep0xF8ezg8GR3349+C/D4sKazW87d
	ERIw==
X-Gm-Message-State: AKGB3mKH/CKbZB5UOZBZx/XeKT9L8hE9sx8u5YMQ2pS4pkExmDhJ2Ir0
	TxmBcoY0C/jU2BbC1mqSaG4oPmZf//WU+gDWPOM=
X-Google-Smtp-Source: AGs4zMazT8J3N644XtwgnZT2JgA+uPbLMffx3sWTE9cxaQjhQxCS6g2Svp4axGHoZLjyFPgeKjIEyZbGeXSUQG6gUEM=
X-Received: by 10.107.190.1 with SMTP id o1mr5274037iof.274.1512678123442;
	Thu, 07 Dec 2017 12:22:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.132.96 with HTTP; Thu, 7 Dec 2017 12:22:02 -0800 (PST)
In-Reply-To: <95676e99-422b-8ab4-131f-de9878d3b3e8@linux.intel.com>
References: <CAKmWj-1fwjsLE9SU05JBO0Q3BHXqRHdOYfN759=0D-OtYYXJrA@mail.gmail.com>
	<CAKmWj-0_JS5WTDC+ih2oW9_MPTnZJZurHj0cRy4N1jXcH5vSPg@mail.gmail.com>
	<95676e99-422b-8ab4-131f-de9878d3b3e8@linux.intel.com>
From: Paul Knopf <pauldotknopf@gmail.com>
Date: Thu, 7 Dec 2017 15:22:02 -0500
Message-ID: <CAKmWj-1PzW29FUnWTeuJh6=hRghQ-7vi+PKst5K1cL4Tg1LQyw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preventing a variable from being cached
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
X-List-Received-Date: Thu, 07 Dec 2017 20:22:04 -0000
Content-Type: multipart/alternative; boundary="001a114f0292351555055fc5d2f8"

--001a114f0292351555055fc5d2f8
Content-Type: text/plain; charset="UTF-8"

I have all my meta-layers and build conf files checked into a single
repository (submodules for layers). I want a recipe to look at the git
repository, and place a file in the build. I'd like this repository to read
the HEAD, and decide if it needs to be rebuilt (to put new file in image)
based off of HEAD/branch location.

On Thu, Dec 7, 2017 at 11:15 AM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 12/07/2017 05:47 PM, Paul Knopf wrote:
>
>> I take it that this is not possible?
>>
>
> A recipe will rebuild if you change SRCREV or SRC_URI in it. What are you
> trying to do?
>
> Alex
>

--001a114f0292351555055fc5d2f8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have all my meta-layers and build conf files checked int=
o a single repository (submodules for layers). I want a recipe to look at t=
he git repository, and place a file in the build. I&#39;d like this reposit=
ory to read the HEAD, and decide if it needs to be rebuilt (to put new file=
 in image) based off of HEAD/branch location.</div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On Thu, Dec 7, 2017 at 11:15 AM, Alexande=
r Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.kanavin@linux.i=
ntel.com" target=3D"_blank">alexander.kanavin@linux.intel.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 12/07/2017 0=
5:47 PM, Paul Knopf wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I take it that this is not possible?<br>
</blockquote>
<br></span>
A recipe will rebuild if you change SRCREV or SRC_URI in it. What are you t=
rying to do?<br>
<br>
Alex<br>
</blockquote></div><br></div>

--001a114f0292351555055fc5d2f8--
