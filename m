Return-Path: <twoerner@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29CBDE01482
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 13:42:00 -0700 (PDT)
Received: by mail-qa0-f48.google.com with SMTP id cm16so627652qab.14
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 13:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=L3rvb5B2YmuErsVIjsKxHqXZcliMf1OKTryzAJ/B3WA=;
	b=EtbfndsyflxDznvCaA4y5ccHAkQAtHLworpzJd2DWnIzTmzNRLnA1pTFprkHAfwd8s
	Bsv+gK6L5WKGTlsHbeRC/KklBiXmEhRxnTZgVGiRgCJFw0hkMuGcHDxaziDQDmTVIIhZ
	OtsyE5iBHsAJjF46cLkzckBZ8ZybSgVZyhfDMT85JKatRN+E4Lvr0fYu9HHLCUtorS7m
	X+Ss4wsiooQlFqjZZTlSJNf11nocYNmZlFlvnuREKVzycnbHyEvbpgK8rkxLvhIkgqk6
	fjm2k46c8cEFEhSPfoGbT4GcfnbICSZ7F0WWQeiZFZMHxNBanvcUGm2l6c68Gs1QoxrK
	vgKw==
MIME-Version: 1.0
X-Received: by 10.229.138.209 with SMTP id b17mr3176408qcu.94.1371069719855;
	Wed, 12 Jun 2013 13:41:59 -0700 (PDT)
Received: by 10.224.7.199 with HTTP; Wed, 12 Jun 2013 13:41:59 -0700 (PDT)
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4013B910EC264@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC22E@pluto.melinkcorp.local>
	<CADkTA4PkMUc8rzBWewZWwygE=XcXLBAQwHFEXcUPZX6mqzmADA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE4013B910EC264@pluto.melinkcorp.local>
Date: Wed, 12 Jun 2013 16:41:59 -0400
Message-ID: <CAHUNapQeeSN2eD9jG4mmw8hXU1n_vip7gNJ1TPossrOeD==PRw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems fetching branch for linux-yocto-custom
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
X-List-Received-Date: Wed, 12 Jun 2013 20:42:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 12, 2013 at 3:37 PM, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> # Added KBRANCH spec
> KBRANCH = "linux-3.9-at91"
>> > # Override SRC_URI in a bbappend file to point at a different source
>> #
>> > tree if you do not want to build from Linus' tree.
>> > SRC_URI = "git://github.com/linux4sam/linux-at91.git;branch=linux-
>> 3.9-
>> at91;tag=dcdf169e24c0cb6d7dc69e0a09d2395934e95075;protocol=git;nochecko
>> ut=1"
>
> # Changed SRC_URI to following
> SRC_URI = "git://github.com/linux4sam/linux-at91.git;branch=${KBRANCH};protocol=git;nocheckout=1"

It looks like all you did was to define the string "linux-3.9-at91" in
its own variable, put that in your SRC_URI string, and remove the
"tag=..." field. Would your original recipe have worked if all you did
was remove the "tag=..." field?

Is KBRANCH being used somewhere else? Doesn't bitbake's "git" fetcher
already have a generic way of specifying a branch? Why would a kernel
recipe need to also define a branch variable? Do non-kernel recipes
also need to define some kind of branch variable too?

