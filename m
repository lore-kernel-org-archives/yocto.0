Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C107EE009F4; Thu, 10 May 2018 10:47:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2446EE009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 10:47:45 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id p9-v6so1271102pgc.9
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 10:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jdyFGwH6fBiHUDqOHfNvYXJYNYETukJurlmM7RwtzTk=;
	b=SI7ntg6tQZml6zV3WZtXw2oksWNIk0mqurDGKMo5rRcZqsI8nIhTBgzprP4PneP8OY
	MobYMmLCOuJNHtB0sqvWAicXISO7W1WfKwdWR1aAGFRRvOFag07QB/dod8OiFOLWeL76
	Zmpv5X9KcHftPhaHPGDDb6oSjZ70Y1jJmMTdOLAJ+M4o31j+kA4famHDzbemJB3aHSHa
	Tx/Fd8dkxApnbheGtqRpFnMN/0hpAabWrMF6RuWTKnQEaqK4ZPyruof44NwyAGFJcHFS
	AVIlSX868oO2bCq419Kkp2GxPsAaIfm5Q9ypIWItF+3C5tUarw7q5ezuOIEIpwhNUhV+
	bTSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jdyFGwH6fBiHUDqOHfNvYXJYNYETukJurlmM7RwtzTk=;
	b=ECTitdgw+v/JM0/uZw4O9o7LbpLPPniQFRq6aHkwAznMaJkspUnJHmMNn3nsn8eoUa
	ZRvb4/7M1VR6eZISYDRbV/0jtpt9YrrsYLZFdQ0qXq2T3I1a5fPP4Ug90RzkOvzuXbxL
	6i81lYvv3li0WxK6QTQEz7yXI6JbHeborcQlVc72+qZ2ClKOblJhzLtO7Ow6KtMUxc6B
	YKAzd059qUp9hVTca4ssSs0E2W6wLsuVTz4qkcQBtPcIIREmf2z5sa2mw/oPvHJFJWDQ
	6/85CjjafiYI0+df7ZxgR2/7GurTX13HOQiqiIGouinT44TOp14e6uP/oXg+yvzBkXts
	csqw==
X-Gm-Message-State: ALKqPwcWb2sieQPQHtZ6G0WbewB1ITGDyPwXttlQNgUBWU5HdvPtXlof
	S9RxalFYsMyMbSe5czHMaQLPlzIHdmWEPxT5h4I=
X-Google-Smtp-Source: AB8JxZo5EczFaXKQMB0yIAARdhlhEm34Xf0GiJ4OwNJXT7QA6x+kNIF2MPa0YDBaL/yUxfk2uXn9espTBKPOUxY42+g=
X-Received: by 2002:a62:3c10:: with SMTP id j16-v6mr2254571pfa.7.1525974465172;
	Thu, 10 May 2018 10:47:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.143.9 with HTTP; Thu, 10 May 2018 10:47:14 -0700 (PDT)
In-Reply-To: <MWHPR19MB1183A156B004661C9EA7B127C5990@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183A156B004661C9EA7B127C5990@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 May 2018 10:47:14 -0700
Message-ID: <CAMKF1spOnD3F9D0K6af2wHDXP1XuG0njtsRz+rv+S7nvM1_ThA@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can we keep toolchain while upgrade source code?
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
X-List-Received-Date: Thu, 10 May 2018 17:47:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 9, 2018 at 3:41 PM, Raymond Yeung <rksyeung@hotmail.com> wrote:
> Our project currently uses Krogoth 2.1.  It's a mid-2016 release.  I'm
> looking into logistic of upgrading to Rocko 2.4 (a late-2017 release).
>
> Is it possible to keep the toolchain in Krogoth 2.1 revisions, while
> migrating the sources to Rocko 2.4 revisions?  Has anyone done that?
>

I think this is a dangerous proposition, since rocko is integrated
with whatever toolchain
it has. You could probably still try if you were using external toolchain

> Upgrading toolchain seems to be a pain-point, as it affects packages (e.g.
> Python 2.7 vs. Python 3) that other legacy builds may also use.
>

toolchain doesn't have much to do with python2 vs python3
you might want to weigh in what is it that you are looking from upgrading
if its few packages you might want to see if backporting the needed to your
existing base is an option

> Thanks,
> Raymond
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

