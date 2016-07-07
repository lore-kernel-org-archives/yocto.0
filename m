Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7322EE00E4F; Thu,  7 Jul 2016 08:29:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3AB3E00E4F
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2016 08:29:43 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id f89so10110568qtd.2
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2016 08:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UlKlttEYTQKOvUdZLmNMJB7Bm8KNVrY8sYnH965L6+s=;
	b=Gv+eHN8O1USE2fIpFZHGbFKeEGrVMaEyQJNBemonzrUxyEJHIgsi/77XSyMvvSafzj
	DeBl9N+KmHCsedHwZiZb757m4g11KiuVDcACyFNtpBqVLzeOU0LyXwOh04q1ScjHTe4u
	pWaeq5tXCthvdhxIwpzSWsk0k6Cqyc3F99mrMCfdAvFwaY8D02HHsDWisStBcgy5rJMu
	AOD6OXxHD5R162Ov4WkYihZMAXMsvfXBXZFYQBI0UHUJKEdP7MsH3WT5p9vDM1yXyPLz
	59r/5V251gkfJco0eC4o1uP5WZcU3ydK6XwQA5PiKgW3l3bymyXONX4Oxm+IXqbydVAu
	8C5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UlKlttEYTQKOvUdZLmNMJB7Bm8KNVrY8sYnH965L6+s=;
	b=UgscBFfPI+khIsoEdhqYxRBMc1vO+mMHFISVnYojfHKDw7wW6/ohGbSiZNjzxKyw8/
	YvcBzYIaKknlQyXtv5TqB59DnpV2Iaho+C2xdJyeDx9NH/4sJQ7O5bMTwYYtWgpJulwF
	BEfC/E3TYqbKytETw1jvYSC9Uo+Gcr9mONIm/caCmdDTqdJYm4sCsrh+oLek5lzXlnPI
	aXhjSrDAxQslmeQFHJ7wKnTxmOlnPhbIKvh1t97bHwZYcYpNkBUjmjRDxTpv4Ko1QEC7
	U1mJV8pBx5NZ4XZ/2EMcnTEj1kCSb7Ebv3BRQO+Nbd8KUrmfnRuI6OB8ZxnWlJ+0d60X
	F4PQ==
X-Gm-Message-State: ALyK8tLjO9vnMZ9WwRt4roBwblmTyivfsJQ+mBYeDR1I37KV2ZyWayQFTtwbhcMkWC1IVRR1UYnuCmbdDdQB5g==
X-Received: by 10.200.37.9 with SMTP id 9mr1148936qtm.31.1467905382975; Thu,
	07 Jul 2016 08:29:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Thu, 7 Jul 2016 08:29:13 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1607070341590.7238@localhost.localdomain>
References: <alpine.LFD.2.20.1607070341590.7238@localhost.localdomain>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Jul 2016 08:29:13 -0700
Message-ID: <CAMKF1sr2DsXjC9jdzi6WHOwYw6BJykEqfBUKCdnqiexEvEJ=CQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is meta-mono layer actively supported?
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
X-List-Received-Date: Thu, 07 Jul 2016 15:29:45 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 7, 2016 at 12:50 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   out of nowhere, a client of mine wants to port from WEC7 to linux
> using YP; they already have a working app written in C# .NET and want
> to drag it with them, obviously using mono.
>
>   i see the YP wiki page on running .NET apps here:
>
> https://wiki.yoctoproject.org/wiki/Building_and_running_embedded_Linux_.NET_applications_from_first_principles
>
> which looks like it has the info they need, given that i know
> absolutely *zero* about C#/.NET/mono, but i might as well learn
> something about it.
>
>   the history of that page suggests it's actively supported, can
> anyone confirm that it really does walk one through how to incorporate
> a .NET app in a YP image? given some time this weekend, i'll try to
> follow how to add and run a simple example. thanks.

its supported. Try to add the layer to your bblayers.conf and add
mono-helloworld to IMAGE_INSTALL to get a sample app.

>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

