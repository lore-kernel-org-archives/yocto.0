Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47FA3E0095F; Thu, 20 Apr 2017 09:56:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCE7BE0083C
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 09:56:18 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id d79so11981132wmi.2
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 09:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=r3AL6/QBzQjPnXp+iQvhOI29sLLdEbLIbh3ts1XdxBs=;
	b=KpEsmO0ezw9LqmmuTe8c3zfzmxEn6dcg7u3tcQO3XBD38wi+uBZ3dGBX0+9kerpIK0
	ju52V79ciYHfCVNQwKYAUblEiYpQe7WDHpmR8zORYqF9rUDIvpN6bEy8h8XUZ16n0LUy
	7+xbG5Y6NGL764/Or5OAqC6hmHWUHL5fkKKMBnmz1QSLqXKVOGExIp9+8EQE37ABxmgT
	HHXXSIyH4jqZZJgPkFZIdTF5n5N5WvCRoNDf4dKiiMBOLdhDMoKPLX5aRyVKDBr6iSxA
	jpjs06m1DIBS25hVTlRdqK+KXKlqTgO+YTpr5eLbitN+TxIddfhF9NdYuktb6vZY4cWv
	Igcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=r3AL6/QBzQjPnXp+iQvhOI29sLLdEbLIbh3ts1XdxBs=;
	b=pw5+vEncRqF2DnrLnTSSgeJmNUZ9dw8dAih7gkcpUjndOgFvJyiq3x3Aj4U6tKKnSs
	AeJl1QzPvkwkUjonmvyB+CwnuxzEv1jA6TGx9+8QXlZB6cXktUACKhNKLwo2zeDiIrM6
	mXfLUe24SqL3bmNJjONwdNVK0gTy1Cz9R17eqjwr0sy5QUcQG5fxGWEihALkj/A+zwxI
	AqwakKZu1ZGGFlx9H5J5yDBDu/MnaPxCpA077SpfaA1SY+CRdEvAkNVPTnAlOo+488tV
	wH31LT/+4Vd3jQg6/NNWYf4FKuavGBe1toy9pt3Akrr2qiUQwdtlf8lhWQxC6G+PjjTZ
	eu8w==
X-Gm-Message-State: AN3rC/46DBlJQ5Ao1Dm/XIIalIhb2cAGVasn//lGMBQ5AbMVdzL4EJQJ
	QfWTSVwYUhmGZvgfGJu34rWKg72lkw==
X-Received: by 10.28.87.70 with SMTP id l67mr3981349wmb.37.1492707377561; Thu,
	20 Apr 2017 09:56:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Thu, 20 Apr 2017 09:55:46 -0700 (PDT)
In-Reply-To: <20170420071321.GA25443@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<005c01d2b988$0b2c9e50$2185daf0$@neuf.fr>
	<20170420071321.GA25443@linux-uys3>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Apr 2017 09:55:46 -0700
Message-ID: <CAMKF1so-rjEmDH54fw4+tv=uECXWu=yH52EecPs0EG6ab+8moQ@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
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
X-List-Received-Date: Thu, 20 Apr 2017 16:56:22 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 20, 2017 at 12:13 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Thu 2017-04-20 @ 05:41:44 AM, Herve Jourdain wrote:
>> Yes, VC4 indeed works for both 32bits and 64bits. It was first introduced  .
>> for 32bits, actually Regarding why still using userland: at this point in  .
>> time, we have accelerated HW codec (H.264, MPEG2, some audio) only if using.
>> userland If one doesn't need that, then VC4 is, in my opinion, the way to  .
>> go. Otherwise, userland still needs to be used                             .
>
> What decoder is needed to play youtube videos?
>
> Using Andreas' meta-raspi-light (which removes userland and only uses vc4)
> I've spent the last hour or so watching youtube videos from my raspberrypi3
> (32-bit build) in chromium, accelerated, with sound (both via the HDMI and the
> jack), both on the big monitor and the 7" waveshare touchscreen. Not to
> mention I can now run openGL and GLESx apps accelerated.
>

try to play 1080p video and you will see the difference. I use my pi3
as media center using kodi, I am waiting for vc4 driver to get
feature/performance parity with userland until then we have to keep
using it atleast for media centric usecases.

> I wasn't able to do that with userland. In fact, it was quite a struggle just
> to get it to build!
>
> Maybe I did something wrong with userland, but vc4 is successful, and
> certainly easier to work with.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

