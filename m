Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FAB1E0146C
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 08:08:35 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id c10so2040474wiw.8
	for <yocto@yoctoproject.org>; Thu, 18 Apr 2013 08:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=0xuc/fce9NND/2sHU+nT3sCFJ/VvZLHotR0bdxGpBzg=;
	b=XE1r2ZUQWFLwU9cBnTnx/jM/DvbFsNRIgQRva0V9BD2KZet80p46r8yL12JQGBN4kv
	o9uX5keDKvXtyHu9UlR+vFxmWlPx7qAJqqma2XNl4NPfwJOg6ree//6SG5CWyVDXZ3Gc
	nWX8bynZjQIXjuFANce2+7ulrMFQJtvQQlzo5K4dUXzCxY3SgLp5ZhawFhqY8Phc/97S
	0wc5SELjZ3npeoFhd5sCNrf+G+vyw5ZQH/3LUz8NLl1gCXdjQOHW2BAA/dkK+UKe/lqi
	T5EmNVaewB26ss4vUFOfUctbo1mYeWjrelNyxt5AUJVxkHWaaMm32ij+VUUdB79+DcYe
	DBsA==
MIME-Version: 1.0
X-Received: by 10.194.109.227 with SMTP id hv3mr19426276wjb.32.1366297713659; 
	Thu, 18 Apr 2013 08:08:33 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Thu, 18 Apr 2013 08:08:33 -0700 (PDT)
In-Reply-To: <516FC9B2.1090802@mlbassoc.com>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
	<2155264.hXQStR7GGJ@helios> <516EBBE7.8060201@mlbassoc.com>
	<CAHUNapRQdV5hM8rMrChYD4joa1N0eN9iok6+C4UU07AaJv04Zg@mail.gmail.com>
	<516FC9B2.1090802@mlbassoc.com>
Date: Thu, 18 Apr 2013 11:08:33 -0400
Message-ID: <CAHUNapRZ6eYVf8WaVoKTetCGdwVZBsyzsseR1xWhOxEeAzEMGw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Thu, 18 Apr 2013 15:08:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

Sorry if I'm asking a really stupid question, but if so, it means I'm
way off the mark :-)

On Thu, Apr 18, 2013 at 6:23 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> My point, which was totally unclear to me when using this line, was
> that with ':=' ${THISDIR} evaluates to the directory that contains
> the .bbappend file (what you want/need) whereas with '=' it evaluates
> to the directory containing the main .bb file.  Incredibly confusing
> if you miss it...

So it's (sort of like) a matter of timing?

By evaluating THISDIR now (though the use of ':='), we get the
directory we are in when this directive is encountered. Whereas with
'=' it will be evaluated sometime in the future when we are no longer
in THISDIR but rather in SOMEOTHERDIR?

