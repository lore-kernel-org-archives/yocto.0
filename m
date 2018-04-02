Return-Path: <daniel@fooishbar.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11F3FE00C25; Mon,  2 Apr 2018 15:18:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A854E00843
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 15:18:28 -0700 (PDT)
Received: by mail-wm0-f52.google.com with SMTP id t67so8990813wmt.0
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 15:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=w8vD06iYET2vhA1NzbVGd30p2myjxfsz75jNitO8CA4=;
	b=mb5AycWK2e0Ztcd+o/VLvL0rAFFNPgiKcCNH2IbQ3CMDvfJiaz+/ILIeJEQYuenrSR
	au9e5qldW/mWj7jlwOdEWuJQ4XpfoCqdf7fatDRUxXRRnjTglK1iz78Xp2qZ9gng9ft8
	hZ2wjTxr/1/oZbOM36Jz02t7ebz3vBWTyV72UOv1YdwpGM+yW28hJlUBnAbrKG++6n5U
	acIQMK0aZ+dFJhVwXlDO5Oag9Q2tIt38JS1sYcDLKHNBnifRTDd6G854lgnGji0IPFV8
	BCEfNb3mNdnZLKZ9q+8ZB7y+pz/JofvCQDZtNMRnbzw9x1Lyme5qpixeP/7PmQvottvu
	x2Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=w8vD06iYET2vhA1NzbVGd30p2myjxfsz75jNitO8CA4=;
	b=OTFLC5yHF1uMo21iG86Wpx8egqpCRvGhBp0Jo5tmh9bDjeWXtq9Ak44fFYFcB1Xlal
	KjYf1VeHL9YTAgQUjO7ZxVirFKlfs0b3+10p5Pi5IDJwYPpx37rHT/CWadqrRzlhmPzs
	rYXukglQSKtjXWPFk+SWPELgS1xRqqdnyjJ0P934AENANGbVhA66ntgbtvXJ1uBKi9go
	lJMYugXyJE5ZCpmbnKRXmBUkjR9D9JSXvahFGa2L2wBjg1bbyxC/cOOkuGV/WsB91MFB
	frIkXaSfVrQkQYAF3igMT8N62u+8SLdoLjNCDQszQpNgJhphb3APEGug6HAd3ulqNClv
	Y26A==
X-Gm-Message-State: ALQs6tDwmMw3VQSjRzeDYFSwESMkbyxgVNt930CtHWBheJ3BpjcmgRcu
	8rm0NYuOmVZLmWnL+kzEkQVyD4CkZVrHg1iWJEputQ==
X-Google-Smtp-Source: AIpwx4+zgKlHJB1jixh3fMvN/OH4m9zcmKIjVilK4DKd6NRToyXAWOsJXjEm6FUSucSK5GZtVsCUhAKVrGLTxI2pebk=
X-Received: by 10.46.70.18 with SMTP id t18mr7073975lja.62.1522707507905; Mon,
	02 Apr 2018 15:18:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.46.82.210 with HTTP; Mon, 2 Apr 2018 15:18:27 -0700 (PDT)
In-Reply-To: <20180402220913.GA29264@linux-uys3>
References: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
	<CALbNGRTBhbEZNPffkPMK1AqsvU-v055mSC=GVhgZzptDc=eb1Q@mail.gmail.com>
	<20180402211218.GA28631@linux-uys3>
	<CALbNGRRPXoM72Pudd13N2uWVLdXQJqhisibav9-w_xKf+p-ykQ@mail.gmail.com>
	<20180402220913.GA29264@linux-uys3>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 2 Apr 2018 23:18:27 +0100
Message-ID: <CAPj87rNgeAqku5hjT22=vehJL=1SXiSgCnPZ4b86oXNt2P2WMA@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailman-Approved-At: Wed, 04 Apr 2018 09:50:27 -0700
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 02 Apr 2018 22:18:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

On 2 April 2018 at 23:09, Trevor Woerner <twoerner@gmail.com> wrote:
> On Mon 2018-04-02 @ 11:46:39 PM, Andreas M=C3=BCller wrote:
>> > to my conf/local.conf has glmark2-es2 running, and chromium-x11 is run=
ning
>> > accelerated out-of-the-box (i.e. I don't have to install the egl/gles
>> > libraries it builds itself).
>> Cool - have not seen it running without issues for very long time...
>
> Yes, this is a very nice side effect of your digging into this apparently
> un-related issue! :-)
>
> In my own layers I had a .bbappend that was copying the chromium-built
> egl/gles libraries to the target, but it doesn't look like this is needed
> anymore. I posted complete information here (as part of an issue you had
> originally opened):
>
>         https://github.com/OSSystems/meta-browser/pull/82#issuecomment-35=
3528110

Right, you shouldn't need that at all. It's unlikely to do any good.
If it does solve anything, we'd love to hear about what so we can try
to fix it, like with this one.

>> > I'm re-building my rpi3-64 image to see if things are better there too=
 under
>> > vc4.
>> You'll let me know I guess...
>
> Absolutely! But, you know chromium... I'll need an hour or two... ;-)
> (my image has chromium, glmark2, mesa-demos, directfb, directfb-examples,=
 Qt,
> and a bunch of Qt demos. sadly, the directfb examples always work, it's
> everything else that's a coin-toss!! haha)

Right, Weston/etc would've worked fine as well: this is solely broken
on X11 with DRI3 disabled.

>> > I guess the patch is to address some of the other things you were seei=
ng?
>> No - after enabling dri3 all I tested so far was perfectly fine. But
>> maybe other graphic drivers are affected.
>
> Now I'm confused: is the patch needed?

Yes and no. It only affects DRI2. Merging the patch fixes DRI2. Using
DRI3 avoids the problem altogether, and is better to be doing anyway.
If the recipes are going to continue to offer the option to disable
DRI3 and go DRI2-only with X11, then making sure that's fixed is
prudent. But the default should very definitely be DRI3.

Cheers,
Daniel

