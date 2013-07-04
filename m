Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B57E01409
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 19:48:37 -0700 (PDT)
Received: by mail-ee0-f42.google.com with SMTP id c4so469797eek.1
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 19:48:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=OsrM8gSLcW6hPUm/eJ/SHXr8wdKQq2IkL9+Y1FOpoeQ=;
	b=HXFMDNGbDe6UZXf6tyVScSV3sTkFsk5x7jeawvseC7Ge8pfcis7HHS+gsJTQbkYC9Q
	wqSkYilfxrNX89flxm1obfLEDmHCrX3Bj17ha1PHnCk3VOouZ0+YfXyCkT6/bMAyfbD/
	Ow7ZR/P9yIw5jRN4xPKm2VFsMnGEUz02dupZfg4sOyjoxR8MF+gaVqetRp2G0+tObIq6
	D9tT+3w7eVpMtv7X5eow0t4+//adNTpRWKBMpWo2WCMj4sCOljJCd4f9MYT4f1jrlNn5
	w6Yx02Jm8pNI5LVs9TgX45c+ZjSd/EvMgZ2wTTqkQ6Q4IQEi3OYh15c6wxBDcyH2jMI6
	4Zfw==
MIME-Version: 1.0
X-Received: by 10.14.53.75 with SMTP id f51mr4095629eec.30.1372906115823; Wed,
	03 Jul 2013 19:48:35 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Wed, 3 Jul 2013 19:48:35 -0700 (PDT)
In-Reply-To: <CAJTo0LZV0dUDb9XqyTuiwCGMUEyVFX1qX5=ngUp+zbxVYFV-hQ@mail.gmail.com>
References: <14A8E2D5-FF50-4903-A839-806D77B12FF8@keylevel.com>
	<76247853.lJbnn8TcbK@helios>
	<CANyK_8d7jphmfZq2Pz5hp=jJ_OZ_c5PU67angHeZY5PZ55BqLw@mail.gmail.com>
	<CAJTo0LZV0dUDb9XqyTuiwCGMUEyVFX1qX5=ngUp+zbxVYFV-hQ@mail.gmail.com>
Date: Wed, 3 Jul 2013 22:48:35 -0400
Message-ID: <CALmOhg=i9cLy9GG3wSA-ZCnfUrbG-NBDNjWc_MpubatNbKsXFQ@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQmpAdWZTnKwwV2p+NuV0Rssf53lEwQXhXkFUo7yNxjJNgKYlilC5GMWhaEufJeQDa3YU+lG
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Bitbake requires Python 2.7.3
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
X-List-Received-Date: Thu, 04 Jul 2013 02:48:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 28 June 2013 06:53, Burton, Ross <ross.burton@intel.com> wrote:
> On 28 June 2013 11:16, Paul Barker <paul@paulbarker.me.uk> wrote:
>> Just chiming in to say that sounds excellent. Will this contain a
>> known-working make as well for those with a broken make 3.82?
>
> What systems have a broken 3.82?  I'm aware that Debian Experimental
> has it, but stable/testing/unstable have a working 3.81.  Certain
> older versions of Suse also had a broken 3.82, but they've been fixed
> recently after I filed some bugs.  Is it just Fedora 16?


I'm using the latest released version of openSuSE (12.3), 64-bit, and
recent pulls from master have started complaining that my make-3.82 is
broken, so I had to manually downgrade to make-3.81.

As it turns out, this "make" downgrade also fixed a problem I was
having with my gumstix build (but I hadn't been seeing any other build
failures that are now fixed by this downgrade).

