Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6D91E01081; Sun, 24 Jul 2016 00:34:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D855E00DDD
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 00:34:45 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id w38so82789379qtb.0
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 00:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MewEArCla+h7ssYGhpRVJAYLt3l00wOr2r8JchMJqys=;
	b=Hm3mRnnlnAaUCRAhsFDJXnCAnBsCxTHn5y6nupMoJyOafkRF6HPbcAKFDZ8U31SIhp
	kod377ZBtWx+Z6qscl8rh+AB+nH+ocCFq+D1S24kSGoAVjxfZG0L+8t4rBFGn/C13kmk
	XPfYJtc8QR4Vo+As+pVCN6lWZLkO5ZX0ow0AlgvnN0M204I93ewAEcxQm7aD45FI3wby
	SV9tegjzFFHfTeS20UqsdBcoYI5SYMdsU4L467uKiEE/GI/OBr3n/SNabStjJpIq3YBj
	Fsr37QuCLrgAHqsI9a0YlCcd8xyRxBjpnkEu8uYJG/ro15cYmtrwkaeByQm/4HPtcslL
	tvCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MewEArCla+h7ssYGhpRVJAYLt3l00wOr2r8JchMJqys=;
	b=Nx1KYRKa3OKlf6mCG01b9WrA2CXllrFpSFhs7r85QcAM2npA9zRKWmN+hYBpamiITD
	CI9gXtaS2GSC8thGn6iE/PnbbiVJ7NowqGpI3EL3F4p9qWtZ4QIcldijhlVsxlnbcQ7K
	yc19NoE52PaubyXrCt8cDwDSp8BwI0ctvaoeIvRsU00vTaE7PtguR7bmL3D64QocV3pG
	oilFc0qyA0JazBkHRCSh3EP23zHSrewV7ZzxSd77llzbFDFTFVezTQ4EVv5JQ0oWYW46
	4i8hxvFX27dK6MxCe0hsj1PPevAIQjefcRNmOmy4lHmyFwXMKIBrLmpq3AXEcvontMT0
	NjxA==
X-Gm-Message-State: AEkoousq5yLOf6XKOFB8lS5AwqPALi4Rd+bCzBwZKMFOljAOWvjIemIiHlzWN5av7cbdOqjdx4Nibnd6LHEofA==
X-Received: by 10.200.45.235 with SMTP id q40mr19838524qta.34.1469345684222;
	Sun, 24 Jul 2016 00:34:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.99 with HTTP; Sun, 24 Jul 2016 00:34:43 -0700 (PDT)
In-Reply-To: <CAGMdoF=Jhd=42QcmvLgtsMt+G5kkTg8urQhG-8TryOdG-5Kw3A@mail.gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
	<CAMKF1sqUWtfx46-sYuGo+s8ynR24JdA_EH92BZVH+3Gh_WM=NA@mail.gmail.com>
	<CAGMdoF=Jhd=42QcmvLgtsMt+G5kkTg8urQhG-8TryOdG-5Kw3A@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Sun, 24 Jul 2016 00:34:43 -0700
Message-ID: <CAGMdoF=HzcT+of5D09Yv49AB1OkbSzLZnf6mEF4wyQ_N=kYy3Q@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with DISTRO settings
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
X-List-Received-Date: Sun, 24 Jul 2016 07:34:49 -0000
Content-Type: text/plain; charset=UTF-8

Ah, I found it.  I had inadvertently deleted one line
(DISTRO="mydistro") from my layer's conf/layer.conf.

Am I doing this right though?  Do I need DISTRO="mydistro" in both
conf/layer.conf and conf/distro/mydistro.conf?  Removing it from
either doesn't work, but it seems redundant to put it in mydistro.conf
as well.


On Sun, Jul 24, 2016 at 12:04 AM, Edward Wingate <edwingate8@gmail.com> wrote:
> On Sat, Jul 23, 2016 at 11:05 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> Move these DISTRO settings above require conf/distro/poky.conf
>
> That didn't change anything.  And it had been working like that for a
> long time now.  Just a few days ago, it stopped taking effect and
> reverting back to poky.  I have not been able to figure out what
> caused it to stop working.
>
> Thanks for your reply nonetheless.

