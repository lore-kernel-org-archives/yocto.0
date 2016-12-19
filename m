Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 716C4E00CD5; Mon, 19 Dec 2016 07:20:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C31ECE00B71
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 07:20:15 -0800 (PST)
Received: by mail-qk0-f177.google.com with SMTP id n21so12631863qka.3
	for <yocto@yoctoproject.org>; Mon, 19 Dec 2016 07:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hnFHvzpgUg9NaHbyX/mzJEYR5KRA2r6pmUqYMEXQrpk=;
	b=kX/073jG0M0zNps4KYgEWoIRKvfDaSWWkB23Am/ZQnD0meWkK6Ur8GL1VXYi02/dMd
	MC8f4qJRl1k9hZZjFhRAi2kxDpHL/R/8jYYwnq2MfHsI54DiD6aFn5yZutjoDc4r61Qq
	qbsLmO97aAQ2AuSzcDKXYZUMbYoOnvuRSbLPOIL4WK7UFS8Ml3lVu7OZKp6QqzMwiWuj
	eCDf0snUG43pX1/YyVcP9JfElkSa45itFVvusB5fTaT/n85mIWagCeH6AX7HLamLLbcU
	D6jrpLNp5ymq3lK/1BFA9GjzKk5gzq9OgA5xjCfxlLT5jDBH08DNBKO1Zg1uVUuyVwb5
	FTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hnFHvzpgUg9NaHbyX/mzJEYR5KRA2r6pmUqYMEXQrpk=;
	b=BM5aBMHBXbm/4ntGd8AqwqKKeqP1cnOL/Hhh2nNtwycrZv5Q/rRXUFgyNFR9Cwq0lx
	s/1VJl4nXlYycIhdKWM/uf+dYUlwisCl7QtKCgOGRPmi2+DdymIINOBlQJPyzgLNLmvh
	tYDVOmcLrgy7p+K8byANKBSuGqq6EMZ16TDpiZSPSc9Rgl2UcUJpFHBfsbIw7HcC5eFy
	uimSiP0HQbtejXLLkNtpB7eGX74b2T/YItSDSlDKn6gmmKXg1uSkegUux/HhySI8mBEu
	RFAyChqMKLcGxEQaKQ/ezAmBC7tNOGb8IvLqri1Uz2r8xcLyUpun8evr/GIGY8x6E6BY
	8opw==
X-Gm-Message-State: AIkVDXK+DITaFVP1YZGrU5VSTwmk48hai4TwgSieGk+fN1o9OSOutHl/t4Aa8sDlBYkCfk9lS8WRUmmuSxI5EA==
X-Received: by 10.55.77.134 with SMTP id a128mr930441qkb.157.1482160814716;
	Mon, 19 Dec 2016 07:20:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.54.136 with HTTP; Mon, 19 Dec 2016 07:20:14 -0800 (PST)
In-Reply-To: <CAHiDW_HKOb6=jNPjxVNDap0xESSM9=OCBSr4nW7D9nFQbVH4qw@mail.gmail.com>
References: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
	<20161218162554.2dab9f39@nuc.betafive.co.uk>
	<CA+n--H9pd1eY8DuY-OSCKxBNiLvAKMQYoDB2Mpo5ajGncvzd6g@mail.gmail.com>
	<CALw8SCXgz=5TrKE99u4MOhx=tuZvgaPx_4LjO70U_JFK=2GcJA@mail.gmail.com>
	<CALw8SCVifrWUQgObA+FBoNrAfO42wjVrTue+u_b5O5JZjrvuvA@mail.gmail.com>
	<CAHiDW_HKOb6=jNPjxVNDap0xESSM9=OCBSr4nW7D9nFQbVH4qw@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 19 Dec 2016 16:20:14 +0100
Message-ID: <CALw8SCVQaVueELOYE+WneVaaVoiJdgep=jhV8Pg=TsCF+gT_PA@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setting up autobuilder on local machine
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
X-List-Received-Date: Mon, 19 Dec 2016 15:20:16 -0000
Content-Type: text/plain; charset=UTF-8

2016-12-19 15:57 GMT+01:00 Jussi Kukkonen <jussi.kukkonen@intel.com>:
> On 19 December 2016 at 15:28, Mirza Krak <mirza.krak@gmail.com> wrote:
>>
>> > Thank you for your fast responses. Generating the htpasswd file my
>> > self did the trick. Now I can login. The full command was (as you
>> > suggested I used the one in autobuilder git repo under ./bin):
>> >
>> >     ./htpasswd -b -c <path to htpasswd file> <user name> <secret
>> > password>
>> >
>> > Forced a build of my configuration now and hoping for the best :).
>>
>> And it was not green all the way.
>>
>> I get an error that I do not get how to get around. The error message is:
>>
>> ERROR: Unable to parse
>>
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/conf/layer.conf:
>> [Errno 2] file
>> /home/mirzak/project/yocto-autobuilder/yocto-autobuilder-mender-rpi/yocto-worker/nightly-mender-rpi/build/meta-mender/conf/layer.conf
>> not found
>>
>> The error message I understand. But I do not understand why it adds
>> meta-mender to bblayers files. I did not tell it to do that, because
>> meta-mender contains layers that I want to include. Similar to
>> meta-openembedded (which is also added to bblayers).
>>
>
> I'm not an expert but your nightly-mender-rpi.conf contains this:
>     'layerdirs': ['meta-yocto', 'meta-raspberrypi',
> 'meta-mender/meta-mender-core', 'meta-mender/meta-mender-raspberrypi',
> 'oe-meta-go', 'meta-openembedded/meta-oe']

That is correct. I add following:

   meta-mender/meta-mender-raspberrypi
   meta-mender/meta-mender-core

And they are added to the bblayers.conf correctly.

But I do not add "meta-mender" which is present in my bblayers.conf
and is the cause of my error message. It seems to me like it is picked
up from the "repos" section and hence the "magic" :)

Best Regards
Mirza

