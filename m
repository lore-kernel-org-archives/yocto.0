Return-Path: <jefro.net@gmail.com>
Received: from mail-yw0-f53.google.com (mail-yw0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 770BDE01304
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 09:42:30 -0700 (PDT)
Received: by yhp26 with SMTP id 26so1498223yhp.12
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 09:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=HQnnB9xHidA819Yo1u0Ob1Nvf4v6Ee94xHOgjo+tAPA=;
	b=wY5lo+t12KURcxMr2WO1sxncLoQZDlrvsn8CBdjO+ouIxrF1nOySlgGeP7fsjTU57N
	8XJGqOn5Zmbxjs+ya0i+2KDF2TVGW7WN9YdGknDYi5bVm71FJyT7iKixEdikTimd41td
	G7F+7GJmr1FtknCDbMbCM8HLS4DhnBxdA/0RGbLB6aPkuToYrOVe7BZ/tO0JeCglW6Mk
	aAai/jcZDxnBQ/nnRxv1WUg2PfEWE/gsjzjgtDvF7GkFPbdbA9RxwxMlDH9MKWtElDis
	9REyOWZtLdDBTGZQqfR7oDZjlBBZncfnmsvmteyWMOflTPc/RoAx5qWKVXmZhzjHCJdq
	wvRg==
MIME-Version: 1.0
Received: by 10.42.135.199 with SMTP id q7mr12305810ict.16.1340815349787; Wed,
	27 Jun 2012 09:42:29 -0700 (PDT)
Sender: jefro.net@gmail.com
Received: by 10.64.90.98 with HTTP; Wed, 27 Jun 2012 09:42:29 -0700 (PDT)
In-Reply-To: <8AEAB326-0A04-4916-80FE-556EEFDBA8DD@dominion.thruhere.net>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<8AEAB326-0A04-4916-80FE-556EEFDBA8DD@dominion.thruhere.net>
Date: Wed, 27 Jun 2012 09:42:29 -0700
X-Google-Sender-Auth: SGqxEnrnzrkljw41r9uZSmG_MmA
Message-ID: <CA+YB3rZLeqU6JQocHwoPWAyuQ1BkH84=jYhQ2ymzWFmcr-WXhA@mail.gmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
To: Koen Kooi <koen@dominion.thruhere.net>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 27 Jun 2012 16:42:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all - looks like it has been a busy morning while I wasn't looking!

I was the last one to touch the FAQ on the wiki, and I can attest that
its goal is not to be an end-all be-all technical FAQ, of the how-do-I
variety or any other. It should have more correct language in it, to
which I will attend directly.

We DO have an interactive technical FAQ planned along with a full
upgrade on the website sometime in August. Meanwhile, we can certainly
use that FAQ for some actual questions that come up frequently, like
adding a package. I can add that immediately, and will point toward
Robert's FAQ page as well.

Koen quoth:
> =A0 =A0 =A0 =A0 'Do you mean "yocto" or do you mean "poky"?'.
>
> The reaction to that can go a few ways and the follow up actions I recomm=
end:
>
> 1) People don't get the question and/or don't know the difference between=
 'yocto' and 'poky'. Pretend you have a nosebleed and walk away, fast
> 2) People say "Right, I meant the buildsystem, not the umbrella project" =
or "No, I really meant 'yocto' as the umbrella project". Continue the conve=
rsation.
> 3) People say "Koen put you up to this, didn't he?". You're most likely t=
alking to Dave or Saul, buy them lunch :)

ROFL

--=20
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

