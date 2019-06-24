Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10F3EE00CBA; Mon, 24 Jun 2019 10:40:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D3DFE00C78
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 10:40:53 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id k8so876206iot.1
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 10:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=A7upKmj5DahkW60g6NgtElEm9lVto4RdYrqFLukxJzc=;
	b=GT1H6Yb1PsNJD8wjQHAQCXO1HSJAj9sX0UmijqYsGZGg79JG/F0fhmt6OKuEgRsYg5
	QJQNiubKmvQxYByZ0L1xpQUJ4A8bHTynq6dnvHe6RcqBI8DqshPa1fO2UlXQkrW4wS31
	zkP0KbyIaR7ZyXcYL3+iPlEwhWPvNJZV9ol96poFNNOLds1HeK/d5QwlA3BtpinQtgvx
	hYgVHHVPUaoS89zEyiKTwGvQbTbS4aTlgwJ7vFe1hoiiO+L8aBWbXTGp2wmuT3eTwIlc
	B7kUC9L3B/XONPleT0xa4V+4g067q7ZTSUSnJzSqdQnw5suZ/HD5Rj3iChtZgNtuuktW
	ThPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=A7upKmj5DahkW60g6NgtElEm9lVto4RdYrqFLukxJzc=;
	b=cg6eBVqLfFdQvGBOxgWPHba5R+W+/438rS0bjEP/Sfd+TPqE0WYwg+RO3fNmmBAd1Z
	S64yv2rHMsJ8wYVzr33THEIUCRfA9Jw2OvzrD0NIIQcE6KylFYWulX7MQmz3BlfHpLvf
	iuPoMOlyMbWJMt7bXvnAqKwT/6aTqMAD2nx+n6YgFWpmCAN+FiJLpyWnfy1SbBzrand7
	J3AItNwLi1L5ovxXM7vll1wL1v9zGRm/lu/pxjKl6vxOlXL61LP1TGYsQ2JbAwKGsuW3
	hkYFcJk64/2O6o1Oc7fi3HoyRRvmIIVyY/FwL9GlOZxEiSPqWaW4JYZfzNPZh2jG7kgg
	DGVg==
X-Gm-Message-State: APjAAAWC6bvCo4XfBvHyfOloiBp1UDuPynLKBh6AFKVdR62i1imdWmqz
	WmJo4BD+Bm1o3a6baHpb1DNqGD9qglQgwXsouTViiEn5
X-Google-Smtp-Source: APXvYqyKfLpW5yPZx/juxB3zhamk7VCUtVA4Nfe/SbqNxIiKQj6YBiZ6ozT0+T0B6AN+C00yw06Y4eZ4fdVwtfV4XWg=
X-Received: by 2002:a02:3093:: with SMTP id
	q141mr26517879jaq.128.1561398053484; 
	Mon, 24 Jun 2019 10:40:53 -0700 (PDT)
MIME-Version: 1.0
References: <a0336aa1-3a09-3b10-8c0b-d0233933f14d@faresoftware.it>
In-Reply-To: <a0336aa1-3a09-3b10-8c0b-d0233933f14d@faresoftware.it>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Jun 2019 18:40:42 +0100
Message-ID: <CAJTo0Lba0Osk-q=WU1TwiWCMC4rEZ6wut2xnPgbpwiWCiVdxvg@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Remove include /usr/include/SDL2
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
X-List-Received-Date: Mon, 24 Jun 2019 17:40:55 -0000
Content-Type: text/plain; charset="UTF-8"

The problem is that kivy is ignoring all of the attempts at telling it
to build in a sysroot and *still* looking in /usr.  This is a clear
cut bug in the kivy build system, so you'll have to look at that and
see how to fix it.

Ross

On Mon, 24 Jun 2019 at 18:32, Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> I'm trying to compile kivy inside yocto for a 586 board.
>
> The compilation fails because the i586-cc uses /usr/include and
> /usr/local/include paths as INCLUDEDIR (togheter with others paths)
>
>
> How can avoid this?
>
>
> I need /usr/include o /usr/local/include for other apps, but I don't
> like the /usr/include is involved in yocto
>
>
> MZ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

