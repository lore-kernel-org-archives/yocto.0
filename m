Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13049E00C9F; Thu, 13 Dec 2018 01:46:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06413E008C6
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 01:45:58 -0800 (PST)
Received: by mail-it1-f174.google.com with SMTP id g76so2763225itg.2
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2018 01:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=xk76Am5i7fmPQBGeG39vEmMXkIbdkphCR7gx3qa3g3Y=;
	b=u4l4WXbnZqPJ0i4wGFutK+qovkwD4HPXaUHal1QjdNZtM6lK6zaka6pTpVH1ztiMAk
	xqbIwwd7rBfYBYyJGb7RGt7Qa3qyVX+4QEnEi9bdZCtnBmOQdJE2hL9FglfMOt4ZgNoh
	TzcDg1Ry3dNne/CuZBUwMJmb8KjFWfF9zcvfQg4B9i0KCO1O8++GrIDJjglmnJRHy/X8
	Twao8gXO+aGmRW9MRFrHxyAgsGdjjb/pgUY/qdHkLaN/QQrGPvp+3WFDJY94unGhWWA0
	dKlbZtjfp6WrU+z51kZu/O+H+VJullCiDKLm12rLwxuE2QnVybABS6xdA2XBtgGNKGjF
	FTbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=xk76Am5i7fmPQBGeG39vEmMXkIbdkphCR7gx3qa3g3Y=;
	b=feeVDIOlF99wNP58CVtHPOt/U1mAdR59V1EGnHRPqnGb3RavYXf2HXruPb2LHSgnKZ
	U4s4fFYqZj+R/CicqR44qGyQNaUcGS2whDc7Ja7n8dIk4VlrVb167PSYzqBCjj2IV6tm
	mRVC0ffHPw8VHpT5YStpwURLIWgi0t0WA3XJwWYxtlCwE5O551cY+BLxNz3S/033JFLg
	eGN+QE77svEU0H/mo0qSpJbtKYrCeT2tsZK2BRVNIs8U6w/QiCzPz29yZKyjpXi+epty
	kfkRNxOibSKQJyUo1pYLdrjGWE7s6jJOTdPWmKM/4dXgAxvxOiVT1IBiuof+gYRBe16p
	/y7w==
X-Gm-Message-State: AA+aEWY1uF+iymESEyuxHLsOYeKxuyuArcX665LkWWFVYlqghaihkjvF
	Sz0pPsIbqkGk5+sVuQQcIyhNeu0Y4UUpkAshj6q0Z6P/
X-Google-Smtp-Source: AFSGD/XZ1zHONr3IYGWzuaxaVI2m/B2PKxofrzED56YWEuRw1RfxITUTy4GrSiIuzEogRnNfPfV+HxbG50NQ/i5V26M=
X-Received: by 2002:a24:c601:: with SMTP id j1mr9783432itg.130.1544694358502; 
	Thu, 13 Dec 2018 01:45:58 -0800 (PST)
MIME-Version: 1.0
References: <d855ef65-2a33-7361-b7b7-61ab42a40559@faresoftware.it>
In-Reply-To: <d855ef65-2a33-7361-b7b7-61ab42a40559@faresoftware.it>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Dec 2018 09:45:46 +0000
Message-ID: <CAJTo0LaoAqE=0qA27kJ=H9DLhPP0NKhrAUDBX=gOhdC8Y0KVhQ@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Relase or debug by PACKAGECONFIG or MY_APP_VAR?
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
X-List-Received-Date: Thu, 13 Dec 2018 09:46:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 13 Dec 2018 at 08:20, Mauro Ziliani <mauro@faresoftware.it> wrote:
> To compile the app in release mode I need set
>
> EXTRA_OECMAKE + = " -DCMAKE_BUILD_TYPE=Release "
>
>
> while in debug mode I need to set
>
> EXTRA_OECMAKE + = " -DCMAKE_BUILD_TYPE=Debug "
>
>
> I defined 2 image recipes: one for production (Release) and one for
> testing (Debug)
>
> my-system.bb
>
> my-system-debug.bb

It doesn't matter if you use PACKAGECONFIG or a custom variable, what
you want isn't possible.  An image can't control how a dependent
recipe builds.

What are the implications of changing CMAKE_BUILD_TYPE?  If it's just
whether debug symbols are present or not then this isn't a problem:
just enable the IMAGE_FEATURE dbg-pkgs for the debug image.

If it does actual code changes, then you'll have to toggle that either
in the app recipe itself, or globally.  Arguably the cmake class
should have a variable to control CMAKE_BUILD_TYPE so it's trivial to
override.

Ross

