Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81CCBE00724; Wed,  5 Oct 2016 08:00:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CB33E00724
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 08:00:48 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id o19so178279009ito.1
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 08:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=sPZLkHyoBx8x/4CfqKRjGXV6U+DJZI40b/SEYryJYeg=;
	b=rYn9tkcZZZkDEE4lDtJmJDbGwsI7vYmNDL8gAYtTiAlDXXbnxkDFSOnbzUVHe1ltib
	+LIsptIh5Czzl4qweAcwlInALxg4Wiv0KbZ5QyVVPhsgd6Gr6GNRtV1eATRNvUh5pIEe
	Ku+XlBffi1wIWXqqE+jLS+cV1RiB9CJfbhr3hCsaPWTB/gwJBy1GRQzUXRRPurWTrkap
	P9cwV84Qi0jY90oorM5vl/3S6KRkojbkjq3s8iZaqEgboZ6k3g3rhgaLk9DOpXEdpgEQ
	U/7rugKc4E1Kp9/6VoaYO8NlsCmoEiRfLIgdIg2e1tlL1QtDg5SP07F1j/JNM838dL1E
	XwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=sPZLkHyoBx8x/4CfqKRjGXV6U+DJZI40b/SEYryJYeg=;
	b=B0twbXPqYqHQCxGAYFp81Tnl/Qm5Erx5CEUiiZKFJKPdOXm99YdLjJiUYocrsACoiR
	3uGZz1VJrBOZNu5kr0gh2xUmUDGuNsabnDSMGawD/SWQpJ+Y9rQpiW2OfoS6pAsTine8
	lKlsBckVzQJj+kEITKb8tOgAAk3BACQLOKfqRKmPDYyMqbw1JPEgm0M3StlGDDgLdus7
	ct0SvBJflFzheLC7NQbnXz27a8WU/SgDjd40/JQMuAAB61q03VtSjxEjiK50pGmwlDdi
	HYcBHWx1q1Gekb7Wx1Z9eRqY4so5RZAFCHL9FpCe40YFu69FxlOAUTJ/Rf8KILRw5b7X
	Pggw==
X-Gm-Message-State: AA6/9Rmr0xWCz2zPefYBq8/14zQn56ayC9V13ZzmbGt1pSLvh7ZgxxS0L9N7gZTS5yjmYQ==
X-Received: by 10.107.176.197 with SMTP id z188mr9945226ioe.133.1475679648157; 
	Wed, 05 Oct 2016 08:00:48 -0700 (PDT)
Received: from openSUSE-i7.site (107-179-141-56.cpe.teksavvy.com.
	[107.179.141.56]) by smtp.gmail.com with ESMTPSA id
	w143sm8394746itc.7.2016.10.05.08.00.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 05 Oct 2016 08:00:46 -0700 (PDT)
Date: Wed, 5 Oct 2016 11:00:44 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20161005150044.GA18711@openSUSE-i7.site>
References: <20160913020611.9265-1-net147@gmail.com>
	<20160916172859.GA27043@resin>
	<CAHUNapRt_6puKt9Pfj1Km-RHxJgqJ94XfYjKZUDkDHMRrDhCAQ@mail.gmail.com>
	<CANwerB1SA6=J2D+NKazpAScs5kymU4WJoADtc6ios=ywgwkk5Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwerB1SA6=J2D+NKazpAScs5kymU4WJoADtc6ios=ywgwkk5Q@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: remove redundant IMAGEDATESTAMP
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
X-List-Received-Date: Wed, 05 Oct 2016 15:00:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2016-10-05 @ 11:01:15 AM, Jonathan Liu wrote:
> See if the following helps:
> bitbake -c cleanall core-image-minimal && bitbake core-image-minimal

Odd. I had started this email to say that this wasn't working (since this is
exactly what I had tried a couple times over the last several days) and I find
I can't reproduce the issue.

I was able to reproduce the issue a couple times earlier today, but to write
this email I updates all repositories. There was no change (since yesterday)
to meta-raspberrypi but openembedded-core had updates, and some of those
updates required an update to bitbake. Now everything seems to work.

I'll keep an eye on it ;-)

Thanks and best regards,
	Trevor

