Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19E3BE00E37; Sun, 18 Dec 2016 19:34:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF2C3E00C80
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 19:33:57 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id p42so143174826ioo.1
	for <yocto@yoctoproject.org>; Sun, 18 Dec 2016 19:33:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qji/IzsCVkySxGDeCWjoD+W6GDM9f8+GtR2ERqmm2Hs=;
	b=KyhfoxA+27z5qB1g7e2nw/evRHizfLItd6bqw6hvOdDmpUizUTYAy+B4p68xlhdFGm
	OR46HqUilhxveG3NZzmaUbzIRLm03ubrJ5Ut/Br2K1x3gzG7j8LeAnG7lcfcLk/4fvWh
	f+dSPciec3Z9lOLhi2ZbkM6oeizZ58hTXTB/JXm1qUee6WSu4g18Lu4stoZlRU8Dds51
	6JUmYHJb0A9b1GbZcxhc2nWrB3Em5NDFaMK+mgAOZVKaJXhnBR9U8ciW1pCMhYwDoPvE
	jGUHzjOf7lJPi3gcz8aIv2S8CN8X6Zc6TF9PvWWb+43KGsvGi38QAPsaK7endhbJcyS1
	qmkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qji/IzsCVkySxGDeCWjoD+W6GDM9f8+GtR2ERqmm2Hs=;
	b=nNT5pOkXz3XFeUtnUC7zBRM6KJOtAuB/X/b7lp5pzM94fDBTVwV9YFmqDWW4ErOTNx
	3ojQ57sxotj3W2SevR+DaSOiOrJnsgIXhqOAlm5WYaqhwf31QrdeDRNRSq3lAal6OqvQ
	xGUfbwvpefngrWODFmUcVwAtY3IHOKadf5h8/zH1WZqr19nj4nR4SbLQrddmrfxbtjJi
	bsSru/7+RoPlvzM61/nMcgjIo/jqPCJjkX7VfqmbjVF+NGvib+EBKgLiLvVeQ1A+ORVq
	DjYl28F01vwcmMRiE49cRVqBu9/T/P4jZscX+o2n27kWYmbiDY1b1MEuqmJSwSEPtnis
	NQHA==
X-Gm-Message-State: AIkVDXJ0QPkJRX92CcC0FYA8C+Xpx1gSQyOrMbBbaQoSeF0AKjUWbr09J9fFemW2sCe3o2tOV7MCBu6JWfjblw==
X-Received: by 10.107.55.136 with SMTP id e130mr12725244ioa.76.1482118436688; 
	Sun, 18 Dec 2016 19:33:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.160.82 with HTTP; Sun, 18 Dec 2016 19:33:56 -0800 (PST)
In-Reply-To: <20161218162554.2dab9f39@nuc.betafive.co.uk>
References: <CALw8SCUt4XR+LYM7pGAC64gO+0y9k-HuJgdHqHz5DRxh1qgv=A@mail.gmail.com>
	<20161218162554.2dab9f39@nuc.betafive.co.uk>
From: Bill Randle <bill.randle@gmail.com>
Date: Sun, 18 Dec 2016 19:33:56 -0800
Message-ID: <CA+n--H9pd1eY8DuY-OSCKxBNiLvAKMQYoDB2Mpo5ajGncvzd6g@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
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
X-List-Received-Date: Mon, 19 Dec 2016 03:34:01 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 18, 2016 at 8:25 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On Sun, 18 Dec 2016 15:46:19 +0100
> Mirza Krak <mirza.krak@gmail.com> wrote:
>
>> Hi.
>>
>> I have been looking in to the possibility to utilize yocto autobuilder
>> for one of my own projects.
>>
>> But I am having some problems setting this up and hopefully someone
>> here can provide some pointers.
>>
>> I did the "quickstart part":
>>
>> git clone git://git.yoctoproject.org/yocto-autobuilder
>> cd yocto-autobuilder
>> . ./yocto-autobuilder-setup
>> yocto-start-autobuilder both
>>
>> Above succeeds without any issues. But now what? :)
>>
>> I went to https://localhost:8010. I tried to login using the
>> information that is in the .htpasswd file but that did not work. Where
>> are the credentials to login setup?
>
> You'll need to create the .htpasswd file yourself. I think the
> "htpasswd" tool can do this for you, I can't remember the exact
> commands I used to make mine though sorry.
>
>>
>> I also made an attempt to remove all un-wanted buildsets and now
>> buildset-config contains (all other directories are removed)
>>
>> nightly-mender-rpi.conf  yoctoAB.conf
>>
>> Above is parsed correctly on start-up but build is never triggered. I
>> probably removed to much :). Looking in to nigthly.conf it seem that
>> is the one that trigger all other nightly builds?
>>
>> My fork can be found at [1].
>>
>> [1]. https://github.com/mirzak/yocto-autobuilder-mender-rpi
>
> This looks good, you just need to setup the scheduler with something
> like this in nightly-mender-rpi.conf:
>
>     scheduler:
>     [{'nightly-build':{'type':'Nightly','hour':23,'minute':0}}]
>
> You should only need a separate nightly.conf when you want that to
> trigger multiple builds.
>
> I've recently setup an autobuilder for meta-raspberrypi which I'll be
> publishing once I've got the last bits of setup done. If you're still
> struggling to get the nightly triggering working let me know and I'll
> put up the configurations I've used as a git repository.

There is also additional helpful information on the Yocto Autobuilder
wiki page here:
https://wiki.yoctoproject.org/wiki/The_Yocto_Autobuilder. Some of the
information applies to the Yocto Project build cluster, but is still
applicable to local autobuilders. I followed the same instructions to
setup a local AB. Be sure to use the htpasswd command that's in the
autobuilder git tree (in one of the bin directories, as I recall),
rather than a native system one. The AB version defaults to the
shorter crypto scheme that buildbot requires.

    -Bill

