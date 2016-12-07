Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94D52E00828; Wed,  7 Dec 2016 12:14:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f172.google.com (mail-wj0-f172.google.com
	[209.85.210.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 537F5E006E3
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 12:14:52 -0800 (PST)
Received: by mail-wj0-f172.google.com with SMTP id xy5so371297326wjc.0
	for <yocto@yoctoproject.org>; Wed, 07 Dec 2016 12:14:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q93PjlpEJUGa4S+l6cS3m/YVQqjuscBEIsR61RuiL6A=;
	b=EfU8Y9ZEyrSBmQt0li3xk7YVY2BGeBYrOA21X2/uRF4jWDEDpP8+QjvMdu0jkA/84M
	wtvXTlM2ncS6NNdgeSJRxMkAUAVhg30/2/U99BNrgyebLCsBWBUZDb+wc58M1/p1xXlA
	r6DaEFFXntnrfsLoe2H5D6bsoikZc1v4+GXrFdenveQG8yPhkhbKmfoORmeK6Z8EvnzV
	8XhI8R3lpy/go/as68H5vxoRjVDE6aWaXK1652RrjBJpFDYaLFn1J8zkE3t8GohNzEPh
	KQch21e2TmfBxWXlN2Mw+VHxb8NxkOWgEnvM1fWMmmnprNN4fyhXKB4UtxJM59RqNtB1
	Xndw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q93PjlpEJUGa4S+l6cS3m/YVQqjuscBEIsR61RuiL6A=;
	b=CQFvq+N9v7ilxIgP36t1zaoEa/5lvZssPmnDwb5IK4fEkgIiMrntAqVxB8sSlaL4BU
	A99WZJ/UHSYngdey4fvtg5zLyU6cgr7bl1R3opQyJpYcvjNYsYi1JuFVv0ggghkp73bl
	Nxrw0gqxws+DFRvLrbmcANeCDOZ9DRRdQGYhQz/0j5S8Ik23ti92MED2kgH9SsCv5Mu3
	jpbHWuJgMhWXxOOnCElJUN2HIFQKbkd3ZZG6n6Sm7bn6mxvBSxHMnnGyIWTYuiTpyp1M
	edPeh1LoXUg7RqlBs+eXx/47LB7+N0+opV9gR4czZ6e0HptkttsbgzeXxRPFYQlz0bNO
	4K3w==
X-Gm-Message-State: AKaTC03wVUNNUGz5gfgHbgRGOFBHEHY6SU7CfN18+0TTpyTmRf3h3pEDKvJzhmY1S9CdavpEU/eCEQXFMk28Rw==
X-Received: by 10.195.30.165 with SMTP id kf5mr60140088wjd.41.1481141691990;
	Wed, 07 Dec 2016 12:14:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.162.33 with HTTP; Wed, 7 Dec 2016 12:14:51 -0800 (PST)
In-Reply-To: <1481116425.19291.8.camel@toganlabs.com>
References: <1481115648.19291.5.camel@toganlabs.com>
	<CAJTo0LbUhfsw1nqzf9YvNG7Rv=b8Cq=xvSFNgxx+ZegS6+yR-A@mail.gmail.com>
	<1481116425.19291.8.camel@toganlabs.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 7 Dec 2016 12:14:51 -0800
Message-ID: <CAJ86T=VkEXHPRWQZ_ehPTbBaBOu8zA2krTa9sQSh49jA0yc-WA@mail.gmail.com>
To: pidge@toganlabs.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Ignoring Fetch errors for optional source.
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
X-List-Received-Date: Wed, 07 Dec 2016 20:14:57 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 7, 2016 at 5:13 AM, Beth 'pidge' Flanagan
<pidge@toganlabs.com> wrote:
>
> Yeah, unfortunately, people don't neccessarily know they're special if you
> get my meaning.
>
> One way we've been trying this is like so:
>
>     try:
>         fetcher = bb.fetch2.Fetch(extra_uri, d)
>         fetcher.download()
>     except:
>         pass
>
> But this doesn't seem to be catching the fetch error.

Even if it did work, how is sstate etc going to handle the effective
SRC_URI not being known until after you've tried to fetch all the
sources?

Perhaps better to run a test for "specialness" and set an
"I_AM_SPECIAL" variable from (a wrapper for) oe-init-build-env.

> -b
>
>
> That might work, and also add determinism.
>
> Ross
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

