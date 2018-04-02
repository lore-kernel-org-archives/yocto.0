Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8C6FE00B01; Mon,  2 Apr 2018 15:09:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2941E00843
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 15:09:17 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id q84so19577836iod.10
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 15:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=dM5K0XW/dKwvJtJncdP+xAyLyYZhKEzf5P0xGZtzhdI=;
	b=EJUrOjycyRUqzxjI413SfRAzIEMdArxuh5UAyUerTvqN37qXsY824EaBX6gHNX4ak+
	XYRoUgzZ4l0C5Hp/mgqeRrd5ninOrO9t9ddCop3hpFjEo7/kI7XmcTr9zv7st4t4paZn
	ADs+JeF8Eza+lzhgi2DUac2DgSZ4OK+6yZ0WjM7ppokoWDjxMleA3uS+LxVlzpLxXSYn
	rrXN/1UE6Ru+4EbdBWSHQedZSS+LorsYgP5VvtYNc0iAgO3IgMApBmfU0mTawm8rIwnY
	IW/w+WYCgHTsQ+uCoYQVJ+x5ymo09bs0uBFaRRFpGeO4A7U4nBF/EOd5mnBr5akT5hba
	wm6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=dM5K0XW/dKwvJtJncdP+xAyLyYZhKEzf5P0xGZtzhdI=;
	b=jzNLP15dnlnuL2bcmzyDF84lSBxfvHbb6zEzwAhRWeEi9SU3mIAwi1KocjLO59nvBw
	TtLyPO2lJzpaiXWcPCJ9524ovtdf3G7Fx/Kh6+cRdwzAEHoN4hMKGjuC+HkkvcjuqbLk
	nzCywLwKogDzCKm5OdDKrp1rUatXH2pWzqryYVZLfRLoUtU3WKPReSRzZTzfTP4QDgsQ
	2otKuVSgtgzFhnFmWJfc4dbqJ3nYcDY0XCA+gTIJvnBXeVt0tXRmojZBQ//7jckApfwo
	yDPs0jEEUM4n/OECe9pwbwizjlw9qrWCyjUrYo+UApW1SG/bHxg683AhTEtr7Yuwy1o7
	c3ag==
X-Gm-Message-State: AElRT7FG/IPd9mRRHJyXZXYR3jxk0DYuVRvzDgIXVLtEyQGbi87tf1kf
	gQX5LCvbunblRwXtKGFBnETYUz0T
X-Google-Smtp-Source: AIpwx49NKtZwIf5mshA/qg4GgM43TppnKCR5mzjfzMoT4+bpidDIHV+cyF5oBEjCM4xAk/GPAOG4XA==
X-Received: by 10.107.152.213 with SMTP id a204mr10270664ioe.260.1522706957140;
	Mon, 02 Apr 2018 15:09:17 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	m142-v6sm3606185itg.2.2018.04.02.15.09.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Apr 2018 15:09:16 -0700 (PDT)
Date: Mon, 2 Apr 2018 18:09:13 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@gmail.com>
Message-ID: <20180402220913.GA29264@linux-uys3>
References: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
	<CALbNGRTBhbEZNPffkPMK1AqsvU-v055mSC=GVhgZzptDc=eb1Q@mail.gmail.com>
	<20180402211218.GA28631@linux-uys3>
	<CALbNGRRPXoM72Pudd13N2uWVLdXQJqhisibav9-w_xKf+p-ykQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRRPXoM72Pudd13N2uWVLdXQJqhisibav9-w_xKf+p-ykQ@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>, Daniel Stone <daniel@fooishbar.org>
Subject: Re: [Mesa-dev] VC4 not working for me with mesa 17.3.7 - was [meta-raspberrypi] VC4 not working for me with mesa 17.3.7
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
X-List-Received-Date: Mon, 02 Apr 2018 22:09:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon 2018-04-02 @ 11:46:39 PM, Andreas Müller wrote:
> > to my conf/local.conf has glmark2-es2 running, and chromium-x11 is running
> > accelerated out-of-the-box (i.e. I don't have to install the egl/gles
> > libraries it builds itself).
> Cool - have not seen it running without issues for very long time...

Yes, this is a very nice side effect of your digging into this apparently
un-related issue! :-)

In my own layers I had a .bbappend that was copying the chromium-built
egl/gles libraries to the target, but it doesn't look like this is needed
anymore. I posted complete information here (as part of an issue you had
originally opened):

	https://github.com/OSSystems/meta-browser/pull/82#issuecomment-353528110

> >
> > I'm re-building my rpi3-64 image to see if things are better there too under
> > vc4.
> You'll let me know I guess...

Absolutely! But, you know chromium... I'll need an hour or two... ;-)
(my image has chromium, glmark2, mesa-demos, directfb, directfb-examples, Qt,
and a bunch of Qt demos. sadly, the directfb examples always work, it's
everything else that's a coin-toss!! haha)

> > I guess the patch is to address some of the other things you were seeing?
> No - after enabling dri3 all I tested so far was perfectly fine. But
> maybe other graphic drivers are affected.

Now I'm confused: is the patch needed?

