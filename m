Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BF77E00B8F; Mon, 26 Jun 2017 00:18:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BA64E00B63
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 00:18:04 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id 191so5111612vko.1
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 00:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=TUxh5yZLiXNoaGYgVCCetGUbCJ+AzMJHpFDdOm8Jg+8=;
	b=rb/zDHOzX5wrXIOkVcoQCaVnSVs2VoRavcp/pIvFfZZ672WMJOmth6PJG6gnD/FPgy
	9J4DIhLlnB1X0CwXoEpsRoS9VKcHIfCgpCOEm4BC5JBpz03uW+FpCqgqeakeqqHH/Iun
	ynD2A/B4SavWRiA0dFLKnjLwix6PkHV8z7xGtWq+JFsnrve3l2zWHGrZu9jp9RaYRjuS
	EQvfTqC4cmJqUJ2hIcTOM5oZcoy0cOckzk3GtXs4RFshehphqJ6m63v8rySC5Sohhppi
	h2KT8iTNXMKmPneD7ctZLrLnQ1Wrz4O9LosTfH4hdosv1dlG/6j42EN7Ly6vtT76D8T3
	QrFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=TUxh5yZLiXNoaGYgVCCetGUbCJ+AzMJHpFDdOm8Jg+8=;
	b=HgmPMo1MINC6vQkHVy6hOxzOt8QXnh1hSF7ZjBbYWjWeWsHbwz5nbn4Yp6kY2HpPDk
	kn0hdH3OHJchfPOuOEdh9U0G3LpKk+3htuCCvVkmssHo/DmLUDZs3AD39C3gclZH7E0k
	p8IW5wn77QP7C7iXjhpRISlA4rcumrBDen3iwA6Hs79tOmJLTSW2Eu8QuXHK8pSMShvK
	bcBntdylxUOaJp7EArgjyOXnB+JN1f0PlBdUa0b3YEKhpO9FaTfQgmUD3iuC+twsoe8T
	Xg8/gU1MHghl6Tw4e2Uuon4MpyTKF2iamcQMNPCC2Tm6IurqIf4yZfRe9PNRQQQ+luBw
	aDxg==
X-Gm-Message-State: AKS2vOywvzNLniq3NpJjhrCsPzCqLotmTt+a0o2d/ZF1JM6BsL0HE05Q
	ELkmUJfgs1+lszocCP89ZkEwn1zSjg==
X-Received: by 10.31.132.13 with SMTP id g13mr8585940vkd.34.1498461484269;
	Mon, 26 Jun 2017 00:18:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.77.95 with HTTP; Mon, 26 Jun 2017 00:18:03 -0700 (PDT)
In-Reply-To: <CAHUNapRBFvJbsJxQfOSWKYd8qGikHRxO36rWD9iphqgzzdruLQ@mail.gmail.com>
References: <23EE2924AFA4488992A7D0127F20147A@PAULD>
	<CAHUNapRBFvJbsJxQfOSWKYd8qGikHRxO36rWD9iphqgzzdruLQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Mon, 26 Jun 2017 09:18:03 +0200
Message-ID: <CALbNGRQk4zkNqBpMUdDV4hkDQd-e9Vr1CnwR-5QsO7qzQpoQDg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Current state of linux-raspberrypi-rt?
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
X-List-Received-Date: Mon, 26 Jun 2017 07:18:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 26, 2017 at 7:19 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Sun, Jun 25, 2017 at 10:32 PM, Paul D. DeRocco
> <pderocco@ix.netcom.com> wrote:
>> Google turns up a lot of stuff about this, but the latest I found was a
>> thread from 1/5/17 that started with Trevor Woerner posting a 1MB patch,
>> and that ended with him posting a message saying that it didn't actually
>> work.
>
> I posted a v1, which worked great, and continues to work great.
>
> After posting the v1, lots of feedback was given. One of those pieces
> of feedback was that I shouldn't include the entire defconfig, but
> rather I should use some sort of "savedconfig" setting to generate the
> full config. I had never heard of this before. I asked for more
> clarification but received none. I went ahead with the v2 using this
> "savedconfig" technique. It *appeared* to work (which is why I
> submitted the update to the mailing list), but, after a lot of
> testing, I discovered that this "savedconfig" thing didn't work. The
> defconfig that was generated using this technique was useless and
> nobody could provide any reason why or advice how to fix it.
>
> So v2 didn't work, but v1 did and still does (we're using it internally).
>
> But everyone considered v1 to not be acceptable for inclusion for a
> number of reasons, so it never got merged. Besides, that work was for
> a 4.4 kernel, which is now considered "old".
>
>> Is there anything new on this? I'm trying to do some compute-intensive
>> audio on an RPi3, and it really needs a real-time kernel.
>
> Andreas M=C3=BCller has a meta-raspberrypi fork in which he has an -rt
> recipe for a 4.9 kernel:
> https://github.com/schnitzeltony/meta-raspi-light
Yes - I run music sequencer/synthesizer stuff on top of jack on
RPi2/3. So I use RT-kernel by default and am really happy with it.

Andreas

