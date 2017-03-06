Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5524E00566; Mon,  6 Mar 2017 09:20:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C6D0E0049D
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 09:20:54 -0800 (PST)
Received: by mail-pg0-f54.google.com with SMTP id 77so24188126pgc.1
	for <yocto@yoctoproject.org>; Mon, 06 Mar 2017 09:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+0aXmb5IfmRIwF1yFUEV+iOGP3V++1FtSXK4sAA+/4g=;
	b=j7yjZUFxz0QITQKRUxcGQXodvsGhCHjxhup3ArqFYh9L80jdb7L1vXd4z+lPhbRMYa
	ExtZTm/AWlpzFdnujhoGeJ3qTHDnHOamDulHunJWISom9TboczYmGfujNT1XL7Elnvgi
	yAuv424Ykoj5fbBw04Mpy4YsF/WK4RjaqimrQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+0aXmb5IfmRIwF1yFUEV+iOGP3V++1FtSXK4sAA+/4g=;
	b=GTmORTsebCTi4Gm7V4fCYjxjTAKYwiQhDUH9dtyd0q1kQ6cRKQ/VAZXHI0nzjhZF8z
	kEKuwGkK1JUsIIHQvWUpaDmODVpy31LzZf4yNPLhTkAbbGC5YvI8l2svGgPN9HlO5Quq
	1hQlAybYLO2iFbHENmMQDMGKQbjDWUKDHmr1M8YZB7lMulCYkpHWtqZdk6ejaf8I149U
	s0PLc5J58QC8WdWawX+/dF/jSbvFY3Y2HK8x5Q3lqmbZDAOKNymhSFXP1KMsHrOHxM6x
	8moV//3PoyQ3epdkFnwXaY1eXcae2BrswDeApwUlQ6b7HpW1Ine+Zv9ucyX1nF9TIgBw
	ioaQ==
X-Gm-Message-State: AMke39mSccYW0DLdttq2yGGyR3f2UQW7BWuqbw7Gu4KL3BTdUNy02SkIlYIDBSlr093pyBUUHUoHTn7Ka4ikJQ==
X-Received: by 10.84.233.194 with SMTP id m2mr28478822pln.126.1488820853915;
	Mon, 06 Mar 2017 09:20:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.177.198 with HTTP; Mon, 6 Mar 2017 09:20:33 -0800 (PST)
In-Reply-To: <0120add4-d828-8f90-1f31-b5ee5e28975b@mlbassoc.com>
References: <0120add4-d828-8f90-1f31-b5ee5e28975b@mlbassoc.com>
From: Matthew McClintock <msm-oss@mcclintock.net>
Date: Mon, 6 Mar 2017 11:20:33 -0600
Message-ID: <CAEsOVNd5PO8zcuOd8wub9yW0GG8qYN3Sp4GKHJJSOT_X4pCmHg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange error
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
X-List-Received-Date: Mon, 06 Mar 2017 17:20:56 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 6, 2017 at 6:15 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> ERROR: When reparsing
> /local/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb.do_install,
> the basehash value changed from 2b888d6b72e00c404fc7e17436e465eb to
> 0fd6c915488c10c37cdfd6a674354e65. The metadata is not deterministic and this
> needs to be fixed.
> ERROR: Taskhash mismatch 15202ef0ff19a8f7a485533510dab7e8 versus
> 81fae57019b1a17967258945560affc1 for
> /local/poky-cutting-edge/meta/recipes-core/sysvinit/sysvinit-inittab_2.88dsf.bb.do_install

Is there anything in this file that can cause the signature to change?
E.g. a variable expanding to a time, or parallel make option, or size,
etc.

-M

