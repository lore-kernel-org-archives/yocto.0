Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1278.1579556935042047201
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 13:48:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@agner.ch header.s=dkim header.b=Ttow7Sqg;
 spf=softfail (domain: agner.ch, ip: 140.211.169.56, mailfrom: stefan@agner.ch)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95D5BE015C2; Mon, 20 Jan 2020 13:48:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3654E01547
	for <yocto@yoctoproject.org>; Mon, 20 Jan 2020 13:48:52 -0800 (PST)
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 90C755C7F12;
	Mon, 20 Jan 2020 22:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1579556931;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sxTRZ3LFNzOyGSd/vJ6Vgy5tAFRViEZOXu+1mSN2Xks=;
	b=Ttow7SqgkU6CqJ4FYidaZAEy+JJm8e7TwHPg7kOSX+oSwZSzm2m8EBZsyicA2YpWYz97jc
	+FIk9zpwWf6Jnf45yM6LPq1mPuWdAqmUv8+mY3toGxKzT3Tx8lVfeogMABv757+ND+DhXT
	QA/Zql1K06Sd4gCAuZ6ocpjoT0vReGE=
MIME-Version: 1.0
Date: Mon, 20 Jan 2020 22:48:51 +0100
From: "Stefan Agner" <stefan@agner.ch>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org, ross.burton@intel.com, Stefan Agner
 <stefan.agner@toradex.com>
Subject: Re: [yocto] [psplash][PATCH 1/3] add recovered bar.png
In-Reply-To: <578197128dbbb082b8d842fa3e46ee394501b522.camel@linuxfoundation.org>
References: <20190225151619.2754-1-stefan@agner.ch>
 <56d5850f22c8b31a50a5b2839d1021f9@agner.ch>
 <578197128dbbb082b8d842fa3e46ee394501b522.camel@linuxfoundation.org>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <47271a9e22754a99399c62c83e3fdc6d@agner.ch>
X-Sender: stefan@agner.ch
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On 2020-01-20 17:14, Richard Purdie wrote:
> On Mon, 2020-01-20 at 14:31 +0100, Stefan Agner wrote:
>> Hi list, hi Ross,
>>
>> We still carry this downstream, any chance to get them still merged
>> in
>> psplash?
>>
>> If it is really considered unmaintained, then we probably should drop
>> the psplash recipe altogether?
> 
> I've just merged them, sorry about the delay.

No worries, thanks for looking at it!

I actually realized that we carry one more patch which adds systemd
support. Will send that patch as well.

--
Stefan
