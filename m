Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C689E00D7F; Sun, 24 Jul 2016 22:13:19 -0700 (PDT)
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
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD630E00D6E
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 22:13:15 -0700 (PDT)
Received: by mail-qk0-f178.google.com with SMTP id s63so146906565qkb.2
	for <yocto@yoctoproject.org>; Sun, 24 Jul 2016 22:13:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=84fOJWPwmDMwg3aZjIAQ74mEv4ikm0OLAnFrCqGzSCA=;
	b=Wv5S+P9iycCstPJRkRU1jLFkV1Kn+nucWxfwsSDzjbSPY0OvtDaUKkYGHuNOtb3mAf
	YWykGIU5++sUwCSJwZZ1fyQw+G0Wwi7qw9xXSJ0Lv5o/pvSrG/H/8aBSp5JRw/6+OsLD
	kSLoOEOBvEnZJntbSBvPEpj59vq+NwzKKtH1caJN67pXhzdInRx4HuYrs0tW8mAzxFJz
	+OdxTe2pal/UN17R55OsJyO1bavFQ5ELRdg9j8vwH9lN2IzMBi1rKaT134Md/RZAu7Bn
	q2301ZcbvGwe49tHBROpOnHlZXE2oOM5Lt2V9/ldlXzIZHn5ji5LtuoaYMNnAUaH8Oja
	xqpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=84fOJWPwmDMwg3aZjIAQ74mEv4ikm0OLAnFrCqGzSCA=;
	b=IErX3g4wZ47p0NZJNz8+gFYnqk1GIAZb3jWQsh2aKu58M0Le9OqFnx9JHgkXv264Lb
	7ht4/5Jur17R65VbeSdwtalPVvgpBmCzGmwy5RVWzd3aAipj9wqoMpcajvHN2KUsoiVm
	0pJUXXmw3JZXBOJuGc3X5mfCb/d5i0MNRPEwSbooYTAEZTP1QjYBXQbIrLdAoky7i82w
	UQyRxfvnepYeKFBqI1wuMTr1/rgdl+lmw/oyvl5gE6srM+SXpQ93RphlznMvbvGwvU2E
	cyr+37xPOa7SJ7A26k0z5Ez5YCTUFm18rSuAJBXgDUxtL8sHyUOekl1MJnav9xp0JksX
	l2lA==
X-Gm-Message-State: AEkoousOrgaeg8kz3U5nFomoI8jB51H7Oc/NpXaHR925+C5A8RoE5Aj9kKb9MK37uUmfwus6dz0AgS9QE688Lw==
X-Received: by 10.55.207.81 with SMTP id e78mr19314984qkj.75.1469423594675;
	Sun, 24 Jul 2016 22:13:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.56.99 with HTTP; Sun, 24 Jul 2016 22:13:14 -0700 (PDT)
In-Reply-To: <CAMKF1srfGGE29S1qNYDmg+OqGWVgUSbuz5ODu0Rw+q2uYr+34g@mail.gmail.com>
References: <CAGMdoFkMe=gbzKMsS-WPF5ORJ8uV8S+XCuR+bHNT-reC63Er7w@mail.gmail.com>
	<CAMKF1sqUWtfx46-sYuGo+s8ynR24JdA_EH92BZVH+3Gh_WM=NA@mail.gmail.com>
	<CAGMdoF=Jhd=42QcmvLgtsMt+G5kkTg8urQhG-8TryOdG-5Kw3A@mail.gmail.com>
	<CAGMdoF=HzcT+of5D09Yv49AB1OkbSzLZnf6mEF4wyQ_N=kYy3Q@mail.gmail.com>
	<CAMKF1srfGGE29S1qNYDmg+OqGWVgUSbuz5ODu0Rw+q2uYr+34g@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Sun, 24 Jul 2016 22:13:14 -0700
Message-ID: <CAGMdoFmv_bWWtNB1QMz+G24Ezd_Y1bdx15sR_9qkHX5GK_yVCA@mail.gmail.com>
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
X-List-Received-Date: Mon, 25 Jul 2016 05:13:19 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jul 24, 2016 at 7:38 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Sun, Jul 24, 2016 at 12:34 AM, Edward Wingate <edwingate8@gmail.com> wrote:
>> Ah, I found it.  I had inadvertently deleted one line
>> (DISTRO="mydistro") from my layer's conf/layer.conf.
>>
>> Am I doing this right though?  Do I need DISTRO="mydistro" in both
>> conf/layer.conf and conf/distro/mydistro.conf?
>
> Just conf/distro/mydistro.conf is needed.

Well, it didn't work if it is only in conf/distro/mydistro.conf.  I
had to have it in conf/layer.conf as well.

>>  Removing it from
>> either doesn't work, but it seems redundant to put it in mydistro.conf
>> as well.
>
> did you make any other changes ?

Not that I know of.  It stopped working when it was mistakenly removed
from conf/layer.conf.  Started working again when I put it back in.
And just to test it, I removed it from conf/distro/mydistro.conf and
that also didn't work.  I have to have it in both places.

