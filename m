Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD5CCE00D19; Mon,  4 Jul 2016 11:50:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB88E00D0F
	for <yocto@yoctoproject.org>; Mon,  4 Jul 2016 11:50:47 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id f30so157620569ioj.2
	for <yocto@yoctoproject.org>; Mon, 04 Jul 2016 11:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9Zsq1m5vGF9cOC8atcB2W+Hj5UA/9lrEPcKkKCGejso=;
	b=PE9YMB5qYH+mTsOxJIYgAToY78yhljKo1HBvGbOM/tMyMaezonD/EjyvbkLw0L8Zf+
	M3FwGpsyqI7CUfQxUsbN2CJu7t/mD7n58NoXZJ7UDKPBhz7bCX/j3bfLKO0c6pAlu/qd
	po7GYsD852f+BhAFJIvJbJZweTxkyU69rkLWgmvvk2Qucb3QjsmO586Zoxttp1nl4B6v
	N3NXctGrMoxCBp+zqRr8SDWohRUnfnUwv9ye7h7bHhRTiJDOBn94HrYncMp7KsKbAfJP
	GI2IdLYSuo9kPZYx5mwO3HtrtgO7zIrjODy9q3DRqjCcWxFVwHM5hS4zHCg0pR7psZfs
	8Bjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9Zsq1m5vGF9cOC8atcB2W+Hj5UA/9lrEPcKkKCGejso=;
	b=DCXMA2i6+EXUAU3jW+5jP/bLaxsq/G7xkLzxw7CwMskU+4HllMAgs6+gVMS1WUNz4Q
	pKoVWxHx0oWw97Xa2KCVJ8v1lZYoXjoEr907pyHiDDuAJFyq7KV71FEIAkdeV1rnMNoP
	xz8C9maiw6cLFKd2vcAV8aH0WJFDFGDA3HSkG3xp4drxg+hnY5T5ZenQRmaf3pgomSCf
	pQF/od2ZU4+tHpc01pceaYJvmsMJqUFTzOoOOpsoRUqff6jfRASxLWq+O+jtVRIKV38U
	oKZHHdb8/a1PyNURs3m4DmYbt4xbLMxuQQfm4KAnOjwObklCgnkunf1qU7IaNnXb+qZU
	S9Bw==
X-Gm-Message-State: ALyK8tLzNSc86BtltdoWiUD76G8NvH4jadiZEFm3JAzQQlE4vFlMFbgbFz3rLD+Rlj6Y0a9q7lJNYcTdwK6c3hZM
X-Received: by 10.107.138.201 with SMTP id c70mr9223917ioj.148.1467658247498; 
	Mon, 04 Jul 2016 11:50:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Mon, 4 Jul 2016 11:50:28 -0700 (PDT)
In-Reply-To: <20160704181034.GE7411@nyx.americas.hpqcorp.net>
References: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAF3SDA4+AzfPjKDgxisVjdT_Guvujr6KLvXRVRZuTNZyOwTGpg@mail.gmail.com>
	<CAJTo0LbhtsE_bMdiVWrVkZWkHTero5Z+TDn0iuPzGivSH8239Q@mail.gmail.com>
	<CAF3SDA5CF1ihp3W6Lx1WpLpyiJ0v4ed14Aa1vTLWFyiHmdkZFw@mail.gmail.com>
	<CY1PR0101MB15943BB45183B750D36E8B60D7260@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAJTo0LaQn3Yr0tp-eu92jSQ-UP=+qCopcKTXYOBcTa-4s7wnAQ@mail.gmail.com>
	<20160704181034.GE7411@nyx.americas.hpqcorp.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 4 Jul 2016 19:50:28 +0100
Message-ID: <CAJTo0LbrpVBaagVA2ZuRCq8=LAY00=_TB1+az-wd23wyyi5K2w@mail.gmail.com>
To: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Subject: Re: Shorter build time?
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
X-List-Received-Date: Mon, 04 Jul 2016 18:50:49 -0000
Content-Type: multipart/alternative; boundary=001a113e8e6a7e85120536d3d0b6

--001a113e8e6a7e85120536d3d0b6
Content-Type: text/plain; charset=UTF-8

On 4 July 2016 at 19:10, Marcelo E. Magallon <marcelo.magallon@hpe.com>
wrote:

> That is true, but I've seen cases where the start up time of Python (or
> the time it takes bitbake to start "doing work") is *perceptually* much
> larger than the work done by the recipe, or at least it looks like it
> represents a sigficant fraction of the total work. That's where PyPy
> might help.
>

Measuring that overhead should be fairly simple, and if it's true then
having a pool of workers would be a good optimisation.

Ross

--001a113e8e6a7e85120536d3d0b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 July 2016 at 19:10, Marcelo E. Magallon <span dir=3D"ltr">&lt;<a href=
=3D"mailto:marcelo.magallon@hpe.com" target=3D"_blank">marcelo.magallon@hpe=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":29=
t" class=3D"a3s aXjCH m155b71b971f7af76">That is true, but I&#39;ve seen ca=
ses where the start up time of Python (or<br>
the time it takes bitbake to start &quot;doing work&quot;) is *perceptually=
* much<br>
larger than the work done by the recipe, or at least it looks like it<br>
represents a sigficant fraction of the total work. That&#39;s where PyPy<br=
>
might help.<br></div></blockquote><div><br></div><div>Measuring that overhe=
ad should be fairly simple, and if it&#39;s true then having a pool of work=
ers would be a good optimisation.</div><div><br></div><div>Ross=C2=A0</div>=
</div><br></div></div>

--001a113e8e6a7e85120536d3d0b6--
