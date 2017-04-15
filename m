Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9181E008E1; Sat, 15 Apr 2017 16:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69567E00839
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 16:16:07 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id a140so8299894ita.0
	for <yocto@yoctoproject.org>; Sat, 15 Apr 2017 16:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=hWHzjO8ut9d40R7chmXwFRMm6s+UycddTFmNaT+VWBc=;
	b=VSpZM4WlcxvE1EiQjGaxR26VkYAZ947x8qF1CGQ8RmZIDNmsHswuA0u1XBqqrD5q9O
	P5bxgMgrHtwQquWUOKjXvSOFt0mEQ3CWlIY3eaqt77E5BlgBdjG191XlvoyMYJm30Eyr
	7hISSt1G64j6cGpJiUUlgzQ9ziQBrnSmWwqEsPbTV2aP2ua0RN9JkQ/ra7S6rk/1+MNT
	aFyoO7r0Btq3dcYC7LTuGEq7L9I6IifjMCzgQHlBXV9++SKLyFXiiZL6AzT+sy6idc8k
	AlyFv9LYvvie6OTtLzfmCTdtOdkBF/+8edOjVHb5ML7F6qofiTHXd5UKBKfQNKswITew
	iX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=hWHzjO8ut9d40R7chmXwFRMm6s+UycddTFmNaT+VWBc=;
	b=aAgoKLuLNBMzp8i7EiyFJ+PMr+zAb4sNiJbGzhGqyO3uP4rZrlja5DAjhVAfUCSM/y
	0w4x3dDgkUydTWwApTeVMGuKqm4LALdBMbZagf0oTXmkmDdAduiGekpoHQLlvJtR5wMI
	mq30qExg8lHAMHsMpB+yYxYfPDDVq0CtnkK59sKTwyxsJsXrJol0yhepSvdgGJNhuk7u
	iMo13A6y5Us9Dw/bPBY89ukpiDv/MYiw2HvLMEm3/19bt1tt3r4EwvyDCChNUNc0uOPM
	2aRGTg8mlqP1AvfnRccHXsGRu9u44qYJE8jyvtCOuj+vQQ3At/KiQm0MMTE+pNnjDubf
	Ddvg==
X-Gm-Message-State: AN3rC/4bzLTLYUoFJ1qvMAAAL1RKFFvmdd1WJRKKVNIi/ygxYSebcwDI
	/+FbpSKrUJol8A==
X-Received: by 10.36.10.129 with SMTP id 123mr4337201itw.80.1492298166584;
	Sat, 15 Apr 2017 16:16:06 -0700 (PDT)
Received: from linux-uys3 (69-165-142-50.dsl.teksavvy.com. [69.165.142.50])
	by smtp.gmail.com with ESMTPSA id
	a141sm1412721itc.28.2017.04.15.16.16.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 15 Apr 2017 16:16:05 -0700 (PDT)
Date: Sat, 15 Apr 2017 19:16:04 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@googlemail.com>
Message-ID: <20170415231603.GA20857@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Sat, 15 Apr 2017 23:16:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

w00T! \O/

Swapping out meta-raspberrypi for your meta-raspi-light works!!! I now have
accelerated glmark2-es2 ~40FPS :-D

Now I have to figure out why...

Also, chromium wouldn't build with meta-raspi2-light, but that's probably a
quick fix, GL/glx.h was missing.

Adding 'MACHINE_FEATURES_append = " vc4graphics"' to local.conf with
meta-raspberrypi caused a kernel Oops. The system continues to run, but
graphics/X doesn't work.

One thing I've noticed about both meta-raspberrypi and meta-raspi-light are
that in both cases (using vc4) the boot colour square (firmware?), processor
core count berries, and kernel splash screen are missing. But that's not too
important.

Thank you very much for your explanations, they really cleared up a lot of
stuff in my head. Already I'm 10x smarter on this stuff (which doesn't say
much about where I started!) ;-) It was probably a good thing I spent the last
couple days grinding away, your explanations were perfect for where I'm at.

Any idea how mesa and mesa-gl differ? That one's still an outlier for me; they
both come from the same source base!

On Sat 2017-04-15 @ 08:09:02 PM, Andreas Müller wrote:
> In the long run I would start a discussion:
> 
> * Mesa/VC4 is not a machine feature only available on 64Bit Pi3 only:
> It is common to all version of RaspberryPi. Using mesa should be a
> decision easily selected by a setting somewhere. The only reason 64Bit
> Pi3 gets VC4 by default is that userland is not working for 64Bit -
> see commit 9d418db5ed2962821987ac90c07c3a61e40c0814)
> * Why still use userland? Dropping it would make things MUCH easier:
> All the decisions based vc4graphics in MACHINE_FEATURES could be
> removed (that's what my fork does)

Agreed! Maybe a new thread? I'd want to do more experiments wrt 32 vs 64 and
vc4 vs userland before being able to contribute.

On a related topic, I wasn't able to get any graphics to work when I did a
raspberrypi3-64 build, which (presumably) already pulled in and configured the
build for vc4. I'll dig in a bit more on that topic to see if I can reduce it
to some succinct issue.

