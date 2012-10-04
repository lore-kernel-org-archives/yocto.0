Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EFC1E01471
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 13:22:39 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b45so884538eek.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 13:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=A0yO5jejh0RrpHBFUyim5BpuXpjERCelkMUYxetxBDc=;
	b=oq0sdD+5odL5aFK+C/N/lod44l4bUbGxo2r/9cBxGxuFhYr4Ib+jNhBTo4/8ACO/ti
	yEH2YKeasEoI6v2aLQdi7YoknMwSf0j5z7ZOgDMyyFZ+WColedgJA6z514vYKxqV4YR4
	1UYNtnTYx5/iDhUbKCJzihLMPZ6azFIAlRgC7UHwgeohjeto7DJRR5YhJL7uZrOiuvGB
	ze2YWhlfmayo15JgcPtilES3/sjcTZ20hZDFZ5Il2Bvq+FAJz+xGv6KRQr03Uk1/1jc8
	wTBIBGZue6dUTrB0QvC9mVRzyaxzFV3jXPPF+1w/g4O1d0DwVEOlJgJMZu8kFOnJfaJU
	v0Ag==
Received: by 10.14.211.3 with SMTP id v3mr9966372eeo.43.1349382158802; Thu, 04
	Oct 2012 13:22:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.173.69 with HTTP; Thu, 4 Oct 2012 13:22:08 -0700 (PDT)
In-Reply-To: <CA+gsK-qgQOEbBaoaqSkfOoX6zH14AcTspjFdEC2Y6QLURQEHEw@mail.gmail.com>
References: <CA+gsK-oEmJJHQo1BHYfr1CZS3KbjiG8piMV30EodDGOFrEpaLA@mail.gmail.com>
	<506CE7CF.6000500@linux.intel.com>
	<CA+gsK-r9-H853RFWkhSWORCC3i7zW+KT6Q6UquXa6Sph2--0aw@mail.gmail.com>
	<CAK18fxHT3qTTf_qMC7RiynTrPpJHVkkmw76PWV2qDKKFDi=2Qg@mail.gmail.com>
	<20121004082230.GB3005@jama.jama.net>
	<CA+gsK-qgQOEbBaoaqSkfOoX6zH14AcTspjFdEC2Y6QLURQEHEw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 4 Oct 2012 13:22:08 -0700
Message-ID: <CAMKF1srvz7NrDaVx3D1U-efD0QdcUYnN-i27pUM8kosVKdOQ-g@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [Poky] Baking core-image-minimal with Poky from Master fails with libffi dependency
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
X-List-Received-Date: Thu, 04 Oct 2012 20:22:40 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 4, 2012 at 12:09 PM, Rudolf Streif <rudolf.streif@linux.com> wrote:
> I eventually had to clean out the sstate-cache to make it work. Not a big
> deal and not probably not worth any further investigation. Thanks for
> helping.

hmmm clearing sstate generally should not be needed. I wonder if there
is something to fix here
but now you have blown up you cache :)

