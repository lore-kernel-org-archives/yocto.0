Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E009DE00B02; Mon,  8 May 2017 15:09:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 954FDE0080F
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 15:09:18 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id v135so8737855itv.0
	for <yocto@yoctoproject.org>; Mon, 08 May 2017 15:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rmMITRZei6Qq9XuVGZA2drexZF6xIhJRJpIbH1ad+1k=;
	b=GFxpgz3LsX4qymntcDG5AWLtgl5X+hcH8xxFleZAnSrcmfYz9iN+ZeRIxBXFREEDDA
	UALHQ8aglx9987nGHtxcxy1YXk3kRXrepehM90cfySrNsJ6wpQHAB8FlmuUJ/ilbiCd7
	IP2Ua6+GvRrOA6/0ZTuL0w1cwSx4R4/mCS2ZEeVjxcttuiBScuQ1OXiqEg/TgE+OQmr0
	fZiOG/DN7ql9ui+qt+dn+QGR0a7n7sVpusHzZLly0C6yw+ObecyzX8Y+cdCrsVxcdV1t
	yGjKa3sGbak0mQ20mdKLvzZ82Qg2DFo/nbMLkUWgoNw4OErCVHKy7gZZLFnXC03dscWL
	cLvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rmMITRZei6Qq9XuVGZA2drexZF6xIhJRJpIbH1ad+1k=;
	b=XE/nCK++f8Qgl8p2xqe0f7yTkBq3b8yoS0jeZNYgQFZ8kiJPnYxwXuU01IPka68c0A
	hPlmpNtuPx6UgWNzEPRmS9fn9SJ/PDRHOIsJoodSxbYvcEFwdbgc6WCP9eT1QXuAF3C2
	sEXJrZYm1Mz3Fbd8IuQZE/ZMVebhfFe7ilOo5Vl3ljLY6LZuKjgPPG2c6Qs1jgijC4XH
	GMdQ7utZKbB4+JBCQvTXNg2ZWoQplrVmoJeNWHsYDAyFJrEX9Ot4s3h3RFOUn9bYglN1
	yLgPRzQ9I7k+C6TDJvJ+wIbqrPbVsjTflsACIfLxPgzpEHEQflc1wgXshPPbBD0h84oR
	61+w==
X-Gm-Message-State: AN3rC/7rLEDrvshxThxJiQOUUGx311T0L27WdGOuTOwbhHPhcV8CcbJP
	Zidjg/8SZAtGUuX3auT4LeIDyjxgdw==
X-Received: by 10.36.66.67 with SMTP id i64mr22286438itb.22.1494281357740;
	Mon, 08 May 2017 15:09:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Mon, 8 May 2017 15:08:37 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <CAMKF1srwj+dQ-Mwf3L1g7C_osaKUazBezP-fmzknOWJVbOTh+A@mail.gmail.com>
References: <CAC+thW1Ehz4_s6pFYmNPPtfbtwoxVQXer-FR5YKEYgFP07KUPA@mail.gmail.com>
	<CAMKF1srwj+dQ-Mwf3L1g7C_osaKUazBezP-fmzknOWJVbOTh+A@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 8 May 2017 23:08:37 +0100
Message-ID: <CAK18fxGUoXYMkwAzAcXPWbEt1Rq7wPNrXAOwDiURe5KNbnSQ+g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] how to apply custom kernel configuration?
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
X-List-Received-Date: Mon, 08 May 2017 22:09:22 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, May 6, 2017 at 6:14 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Sat, May 6, 2017 at 9:45 AM, Andrea Galbusera <gizero@gmail.com> wrote:
>> Hi!
>>
>> I was wondering how to apply some extra kernel configuration from a custom
>> layer via a bbappend. I know that with meta-raspberrypi there exist some
>> variables you can define in local.conf that will drive how the kernel is
>> configured: but what about some very specific device driver nobody than me
>> is interest in? To me it seems it doesn't deserve a dedicated global oe
>> variable.
>>
>> Some investigation showed this topic already came up on the list from time
>> to time in the past (most recently in [1]). To me it looks like there is
>> some common desire to get rid of the current "magic" carried out by
>> linux-rpi.inc by moving the linux-raspberrypi recipes into the configuration
>> fragments style.
>>
>> In the short term, my question are: how do you guys manage to add your
>> custom kernel configurations? Do you rely on full blown static defconfigs?
>> Have you found any reliable way to do "differential" configurations with the
>> current state of metadata?
>>
>> In a longer term, I'd really like to help moving towards supporting
>> configuration fragments for linux-raspberrypi, but I suspect it'd be a too
>> much hard task for my current understanding of the whole kernel
>> configuration workflow. Do you know of anyone already working on this or
>> does anyone have a clear idea of what is needed to get the work done? Some
>> times ago I tried to resurrect [2], but with no luck, probably due to some
>> changes that happened in the linux-yocto files in the meanwhile.
>>
>> Comments from gurus are welcome! ;-)
>
> I have been hinting at using yocto kernel tooling. Idea is worth a pull request
> care sending one ?

I'm not using config fragments myself but I was under the impression
that we do support it.

--
Andrei Gherzan

