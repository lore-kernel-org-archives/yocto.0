Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0569E00D59; Wed, 15 May 2019 20:52:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
	[209.85.208.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 695B6E008E3
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 20:52:36 -0700 (PDT)
Received: by mail-lj1-f170.google.com with SMTP id z5so1691058lji.10
	for <yocto@yoctoproject.org>; Wed, 15 May 2019 20:52:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=yigi72QkbOLTtXiDgEo87x4kzrlfSTNfa7Gc9ZMP4A0=;
	b=CEiRzD7SZuu3hHmzHGl4pSAemb0ljsG+8TfCSWThZxZ6/846zOfpUViwgjYEZW6u0g
	xPcmrQHC14L+7ShJTfbbG54OWFB2HtOSf5apKveNBLuHdanI28U8EqkI6iqvGlXr+gYg
	qTLzzAIAddSIjXBsqUpHfPlV5EdpiTvTjjzD/bAMEgMnnEFrtm2DNH1n7n4yX5SufcI8
	wvusl6Z1q8f/UIsUAAsk42Cf8EZ2cCbpWcfiofNYVmPwp4a86ogFrwQ7pVNINATLov+0
	TMOETM6RHszUY6li8BNoogTZD09GQvm7+uyhB8C7F6NpnfkdD6sHOmC2J8lHLSMTIryY
	yj6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=yigi72QkbOLTtXiDgEo87x4kzrlfSTNfa7Gc9ZMP4A0=;
	b=GcJkaTrsoqCFhQSxgAzcGaZ3bwM/C6fYSrV2/eXLcLSwLgSQ98Re/lNwzwIM8OMqAy
	Yl/ZFZ5L6qcdm5GL5cc/j4v4C9NmZiF3BxI1d5B1P3SYyroBq4nsaP3oex7szCkvoO1W
	55jTdmBFyqIuKhXbxx3lPDi7N4MD/PTq5AJGa0jn762JHBLj+MkTli7EdML8W3HCTPau
	iijpC2PEyvmpMPw73TSkjCBAMzy3BsQ/rh4s9v49Xi/QNSSCXfeSqFu+fH4T7TH5GpVc
	oJIxOOkdHE1Nc0o7BYfHbz4j8PY/zxqk18Rl7MrC2rEnFdpW5fT1mCNGO05XE1K80zNE
	1Ydg==
X-Gm-Message-State: APjAAAUblBz/2PHOzg9ZCnFWxrKEteWUoLFYFhF24j1X5PDZdZCJp473
	iHmyEJHjP4XqRVlJW7wYfaCEF8FMnDv4dYBCWBz1OcqI
X-Google-Smtp-Source: APXvYqx96vE02v90APl4DI94IO4q39XcYpL48dLEywF2yera6CkevC1WILKs8mtkc8imcDrCr6uAsYvjqBr2UGEnW/U=
X-Received: by 2002:a2e:6384:: with SMTP id s4mr22741046lje.63.1557978754667; 
	Wed, 15 May 2019 20:52:34 -0700 (PDT)
MIME-Version: 1.0
References: <CACfi_Z3ZAOH1MQ7QY0AHKVaNdsFV_uooYJF4xbB4nYuOS8fy7Q@mail.gmail.com>
In-Reply-To: <CACfi_Z3ZAOH1MQ7QY0AHKVaNdsFV_uooYJF4xbB4nYuOS8fy7Q@mail.gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Wed, 15 May 2019 23:52:23 -0400
Message-ID: <CACfi_Z1sxSdH_p3oAE1_Ntwz7UZpzkE0JpLv_mhRyVgVhxm4GQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Upgrading to Sumo triggered issue with python3 autopackaging - "ERROR: Nothing RPROVIDES 'python3-signal'"
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
X-List-Received-Date: Thu, 16 May 2019 03:52:37 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Upon further inspection, I found a previous commit that appears to
have a bit more information:

python: Restructure python packaging and replace it with autopackaging
(http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=8d94b9db221d1def42f091b991903faa2d1651ce)


The following text appears helpful:


How to add a new package:
 - If a user wants to add a new package all that has to be done is
   modify the python2-manifest.json file, and add the required file(s)
   to the FILES list, the script should handle all the rest.
   Real example:
   We want to add a web browser package, including the file webbrowser.py
   which at the moment is on python-misc.
   "webbrowser": {
       "files": ["${libdir}/python2.7/lib-dynload/webbrowser.py"],
       "rdepends": [],
       "summary": "Python Web Browser support"}

 Run bitbake python -c create_manifest and the resulting manifest
 should  be completed after a few seconds, showing something like:
   "webbrowser": {
      "files": ["${libdir}/python2.7/webbrowser.py"],
      "rdepends": ["core","fcntl","io","pickle","shell","subprocess"],
      "summary": "Python Web Browser support"}


So I add a section to my python3-manifest.json for the signal library
that I'm looking for:

    "signal": {
        "files": [
            "${libdir}/python3.5/lib-dynload/signal.py"
        ],
        "rdepends": [
        ],
        "summary": "Python signal library"
    }


I then re-run bitbake python -c create_manifest like the instructions
state however my python3-manifest.json is sadly unmodified and bitbake
still indicates that nothing rprovides 'python3-signal'

Any ideas would be greatly appreciated.

Thank you

Davis





On Wed, May 15, 2019 at 11:28 PM Davis Roman <davis.roman84@gmail.com> wrote:
>
> Hello,
>
> I upgraded to Sumo(2.5) and now bitbake is complaining that nothing
> rprovides python3-signal.
>
> ERROR: Nothing RPROVIDES 'python3-signal' (but
> /home/worker/building/sources/meta-bluetooth/recipes-bluetooth/bluetooth-app/bluetooth-app.bb
> RDEPENDS on or otherwise requires it)
>
> After some searching I found that this is related to the restructuring
> of python3 packaging in Sumo
> (http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=b6777878ff03c3e956386020a19d11c875c835ae)
>
> So according to the instructions in the above commit, I'm supposed to
> first create a manifest file using:
>
> $ bitbake python -c create_manifest
>
> and then the json file appears to get created:
>
> build/tmp/work/armv7ahf-neon-poky-linux-gnueabi/python3/3.5.5-r1.0/python3-manifest.json
>
> After a quick inspection of the created python3-manifest.json, I see
> that signal.py already appears on the list.
>
>     "core": {
>         "cached": [
>             ...
>             "${libdir}/python3.5/__pycache__/signal.*.pyc",
>             ...
>         ],
>         "files": [
>              ...
>             "${libdir}/python3.5/signal.py",
>              ...
>         ],
>         "rdepends": [],
>         "summary": "Python interpreter and core modules"
>     },
>
> Assuming that nothing else needs to be done, I then proceed to again
> bitbake my application but unfortunately the original error persists.
>
> What am I missing?
>
> Thank you,
>
> Davis Roman

