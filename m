Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8D9DE00CD4; Wed, 27 Sep 2017 21:52:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
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
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C64B0E00CA2
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 21:52:05 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id u136so594629pgc.0
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 21:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HyZOrl0YdQl0w+zp1yJZqWqWQoly5KOoYHgVoCJPdtg=;
	b=I46X4s8kFULPzOhs9hXTMBbRlctiWHxN4uHu6Ih0+VXpZWTztEuGXMq83SWma3K3L3
	IfCWW1zEkGp4uV24jrPHtQF4Au+9nrrraywuL0JeKLdzTuWCQ4/FMJmMydY/3Ly9CflV
	gj/yF4heSx2UrdN57gsHaEo7xNVg3oXe7KKZEB5bH49HyU1n+0roXWKCWqspCJiDjSoV
	/DDg9XbnlEkhE4hW5fjVeU8gL6coE+bmL+esMb+DqFvsEknzgHjeJASMG1yS/xNNjjpB
	KM2TztsYMYCJrk8oCRPJlLqFShXc36Z/+4Gh5kv0T6KPHBB68M8VN9t8AI1pKeUpwqaD
	Jscg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HyZOrl0YdQl0w+zp1yJZqWqWQoly5KOoYHgVoCJPdtg=;
	b=NhcC/HpsGLGW9hUIssii1/Q258lRPzr+nRN8xqvKPt+WaH8J0xR1+RRac3KDJSMarq
	UltvGl7NAYDsr1uNTpKcvff/hrE7fvx0Aoyhl0JHivPzj4COKBPI6MfB2Y7IXQWQtodK
	urjkErzWJYxYQnCFH2sO6wxxfF055EBaDgpD3aoLp+H/NXu9WvOBLNTgJw89gWI50zwa
	PjePgVPbDmHN2wRf5QvLCyS5QgSEbFDKql5jQGNGY+9t/9KYI9ZxJSqnXR1lCk/P+0Hb
	S0GSWI7vjEh0QEXC+45I33eNUp1XrUMVfNOkjpiOZFyQbG0cO6y875yfQGRJ77Z9CXW4
	9LkQ==
X-Gm-Message-State: AHPjjUjPBYj0EaiREVcfRvMZMPJ+QKqzclaRd6S9z3ybU99e027jWCXY
	07oSS2sI5OdN1CWQSU+6eLPJMQK9STRiVM2ivGE=
X-Google-Smtp-Source: AOwi7QAimDqc+Iy/Q+228+F5EHbjfEq1YmAHGQldeGtrrouItB63eAKo4Mq0Kf3vHUyu0wF85P0blY+gArtetvaNuLE=
X-Received: by 10.99.152.17 with SMTP id q17mr3128254pgd.287.1506574325085;
	Wed, 27 Sep 2017 21:52:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.149.73 with HTTP; Wed, 27 Sep 2017 21:51:34 -0700 (PDT)
In-Reply-To: <CAJTo0LYhvE-BQCgeb1zgmtcQPcd09Zm6Cau_n9cT+5yuztdE0Q@mail.gmail.com>
References: <CAGsrAHcGAo=L8Oy3aWRwUD8QL=iQ-Hw7bc21X8HX-sOGVL31RA@mail.gmail.com>
	<CAGsrAHfGk6tXhYBawVSjCJnd+2JUZaD+_J-z__wwHivdS2+VwQ@mail.gmail.com>
	<CAJTo0LYhvE-BQCgeb1zgmtcQPcd09Zm6Cau_n9cT+5yuztdE0Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Sep 2017 21:51:34 -0700
Message-ID: <CAMKF1soJWJaL+hkjiwc1YabimNgt9SHpABXnT7nBax1XQchFvQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: do_configure error
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
X-List-Received-Date: Thu, 28 Sep 2017 04:52:06 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 23, 2017 at 12:33 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 23 September 2017 at 06:56, mohammed aqdam <mohammedaqdam@gmail.com>
> wrote:
>>
>> i'm getting the following error...
>>
>> root@pcz-ee207837-2:/u/my_poky/poky-2/poky/build# bitbake -k
>> rpi-test-image
>
>   ^^^^
>
>>  configure: error: you should not run configure as root
>
> As it says, you're running as root.  I thought we bailed early if this
> happened but obviously not.  Don't build as root, build as a normal user.
>

this should be added to sanity check I think.

> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

