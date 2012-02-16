Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CDCEE003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 07:43:16 -0800 (PST)
Received: by dadp13 with SMTP id p13so2590398dad.35
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 07:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=XyVrq5mpEwdvIzVOJoIkr4cEl4rxOFKfEwyVjfxcraY=;
	b=NOjggjWzA6BsOeQVq+zuop6J3hD0bCo9e1vUdM5UWrhnzM2nrY/9jsp1Kbto5uLPcv
	WAjWBjsk6IYVRRWNYlLYXcjyF7w9pCXDvsV/0kGtMadzy7jbDgnQHxAxCaJUvKnPHbp7
	IQ6sB14K+amFramdYKJO7Dq59eCA9P9coeqdQ=
MIME-Version: 1.0
Received: by 10.68.189.39 with SMTP id gf7mr9376451pbc.142.1329406995886; Thu,
	16 Feb 2012 07:43:15 -0800 (PST)
Received: by 10.68.33.170 with HTTP; Thu, 16 Feb 2012 07:43:15 -0800 (PST)
In-Reply-To: <1329378772.2747.24.camel@babel.joshhome>
References: <1329290581.3039.18.camel@babel.joshhome>
	<CAMKF1soCVQ9bKYdhMAHfkM-xcrqYrwMS-kUMR3g1-1fJro-__Q@mail.gmail.com>
	<1329321197.30001.6.camel@babel.joshhome>
	<CADzUK1+rXrSNS91NURP9=T_SoKm1a3xg4tmijoU134wUmQhnOg@mail.gmail.com>
	<1329368164.2747.9.camel@babel.joshhome>
	<1329378772.2747.24.camel@babel.joshhome>
Date: Thu, 16 Feb 2012 10:43:15 -0500
Message-ID: <CADzUK1+MjieJUsHcafSqGetUXiKVKs+4GdrqE4eRA8SJXjhJhg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RDEPENDS fails to find an existing package
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 16 Feb 2012 15:43:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Hello,
>
> On Thu, 2012-02-16 at 10:26 +0530, Joshua Immanuel wrote:
>> Can you please explain little bit more on what INSANE_SKIP_${PN} =
>> "dev-so" does. I don't find any documentation on it.
>
> I guess, it suppresses the warnings stating that an non-dev package
> contains symlink. This is the warning I got, when I packaged protobuf
> for yocto

In the e-mail I mentioned that if you are using M2 1.2 (means the
milestone 2 of version 1.2). 1,2 final will be released sometime in
the next few weeks/months.

Sometime between 1.1 and 1.2 M2 - the behavior has been changed where
the warning you described below has been changed to an error - thereby
- the said .so files are not actually included.

This does not apply if you are using 1.0 or 1.1 (not sure about 1.1
myself - I jumped from 1.0 to 1.2 M2)

Eventually - if/when you will be using a newer release of yocto - your
recipe will fail to work as expected - unless you have that insane
skip.


>
>> WARNING: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so:
>> protobuf path '/work/core2-poky-linux/protobuf-2.4.1-r1/packages-split/protobuf/usr/lib/libprotobuf.so'
>> WARNING: QA Issue: protobuf: /work/core2-poky-linux/protobuf-2.4.1-r1/packages-split/protobuf/usr/lib/libprotobuf.so
>> contains probably-redundant RPATH /usr/lib
>
> Adding the line INSANE_SKIP_${PN} = "dev-so" suppressed the above
> warnings.

This is correct.

