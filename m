Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA5CE00347
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 09:29:31 -0700 (PDT)
Received: by lboi15 with SMTP id i15so8302863lbo.35
	for <yocto@yoctoproject.org>; Mon, 24 Sep 2012 09:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ks1QiKUb2GnyRtwKgXYkS6NwAZc48d9FbJF1SEaWCi0=;
	b=f4Rp0BYRg7d2c4GUyzWkUvyN04XazXIuyUG61fQn6hCjmb3nQ7oF5FzbHAuQxxP8Fn
	ArHx8Jk2+TNtxv2YTaRug4T11kisZEAp0RDmJQGKnzdPue7yTf0a88mP1gJpSAfppMxW
	lYZDcWCxdDBFai9rBcIfL2om9xQKGSAmgzUnIv2/40789FezdOU2+4v8jhptvDacdK8h
	N9A7R5h0XjOXnL0SUcq7MD1ttDZJsD7qTh+sFoXh9lv1xrlWbrM0s5PHRm5MS1u4fjwW
	UtG8l8vMnAd95HpGzbXsWooRSprSTBJm8DyueI6zdqPxmnpBmliC0fAG1aLQwuQ4G6ql
	8uaw==
MIME-Version: 1.0
Received: by 10.112.103.71 with SMTP id fu7mr4335492lbb.21.1348504147532; Mon,
	24 Sep 2012 09:29:07 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Mon, 24 Sep 2012 09:29:07 -0700 (PDT)
In-Reply-To: <1716058.TZM8ukYCTx@helios>
References: <1716058.TZM8ukYCTx@helios>
Date: Mon, 24 Sep 2012 12:29:07 -0400
Message-ID: <CAHUNapTDaEJUi9vZ7rLqG_E3Oyoam9w1nSkKTwfLQepFzUWbgw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Supported host distro updates
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
X-List-Received-Date: Mon, 24 Sep 2012 16:29:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Sep 24, 2012 at 7:10 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>             openSUSE 11.4 \n \
>             openSUSE 12.1 \n \

openSUSE 12.2 was released on September 5th. I have been using it
since around then and haven't found any issues. Is there some defacto
test I can run to definitively say 12.2 works fine with Yocto?

