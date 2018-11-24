Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86EAFE00C1C; Sat, 24 Nov 2018 13:39:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDA05E00566
	for <yocto@yoctoproject.org>; Sat, 24 Nov 2018 13:39:35 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id t3so15281913wrr.3
	for <yocto@yoctoproject.org>; Sat, 24 Nov 2018 13:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=6Kk4kn9rqOEEJ1rEjty9G9b2BE+AjxaG8enbhjXW8fc=;
	b=QcpSrWaj5WKb2/j78hhDybaX+3EZpml2g8QT36hAS22CKoVzHppC6xQGZTJr9ta+wL
	Pj+s+RSRYD0CosuVjOGIDD3PV3u9qNxQD0PUgtpUVPGw0X6GmC+dqw5kgDqaL2atGhLu
	er7lPHTtkyz5YW13ZV2YSvw5ZczGhG7o6F+MI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=6Kk4kn9rqOEEJ1rEjty9G9b2BE+AjxaG8enbhjXW8fc=;
	b=t8QzQn/CknvYsS3JdwQef8sfKRovMToRw7RgxqHy24zQgWlg9eIWO3NRHV3ueQmBww
	CMzTDHOnAJFGV980Sj+pBZSdOUKiM4iUVCi4K73RkpSxeKLt4jaGRbZbY8LuplAggBt6
	jT53SZF286mK/UmFnga0FCEL1jyLHkv3GyXKK1PwtbGNnkQjhkXfe2AxYw93HOqy8iEM
	zIXS8cFF6ZOwZi3xGpK/8gJgTkxmr7IiBtGxewsBY5XLcuG7l5zcgt3mUUO1K59oCo8t
	tmBGjMeAWzdAWoabIkhKR0Fp0RwJzNrCoTQ71QC/mJeXzaoXaZOW8L0BYvZXImCbyUa6
	vXPw==
X-Gm-Message-State: AA+aEWZ/QBkUqCIrECVQa0UbksFJ6D0Yfc8R04ucCTPusEoU81CfRgUj
	zABeoH4c8FUtdj6Um1AxfA2H/sO6czk=
X-Google-Smtp-Source: AFSGD/WQEK0BO0YUFL4GkfKoo7kDMkjMyPIjBtAn13omT/PHbxRRBcYxOMvqs8o4XI1OzCHXk4h//Q==
X-Received: by 2002:adf:92e5:: with SMTP id
	92-v6mr18061121wrn.124.1543095575007; 
	Sat, 24 Nov 2018 13:39:35 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	l24sm8362101wme.32.2018.11.24.13.39.33
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 24 Nov 2018 13:39:34 -0800 (PST)
Message-ID: <9e102d5de10840992d5fe843332a87a27a7b06eb.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: akuster <akuster@mvista.com>, openembedded-core
	<openembedded-core@lists.openembedded.org>, Yocto discussion list
	<yocto@yoctoproject.org>
Date: Sat, 24 Nov 2018 21:39:32 +0000
In-Reply-To: <630ef788-ccac-7ff5-edbb-6695ed621276@mvista.com>
References: <b96afa3704ab3844fb69bfd7218fc381c368403c.camel@linuxfoundation.org>
	<630ef788-ccac-7ff5-edbb-6695ed621276@mvista.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Cc: Armin Kuster <akuster808@gmail.com>
Subject: Re: Autobuilder changes
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
X-List-Received-Date: Sat, 24 Nov 2018 21:39:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2018-11-24 at 07:40 -0700, akuster wrote:
> On 11/23/18 10:02 AM, Richard Purdie wrote:
> > We now run "a-quick" on master at 1am every day which will make
> 
> What Time zone for 1am?

I'm not 100% sure but I think its UTC.

> > Building older releases is now broken until I sort out the
> > corresponding helper changes for those branches but one thing at a
> > time!
> 
> Does that include Thud ? I expect sumo and below to be problems.
> 
> Do the changes need to roll from newest to oldest  or are they
> independent? I was hoping to get Sumo tested using the original QA
> process to buy us time to get the automation working on it. Does this
> changes that ?

Good news is I've fixed the older releases now and run test builds to
check things. There were a couple of fixes needed but I've sorted those
and done a test artefact deployment too. This just updates everything
to use the new builder names.

The QA process is unchanged. If a given build generates a test report,
whichever release it is, it will be collected up but if not that is
also fine. This means we can opt in to the new code if/as/when we
backport anything. So we're good for sumo.

We do need to sort these gpg issues across various stable releases
though and probably tweak master too.

There were some test results ordering changes I'd be tempted to
backport just as they make reading the build logs so much easier...

Cheers,

Richard




