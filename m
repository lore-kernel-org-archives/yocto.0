Return-Path: <gizero@gmail.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B243E0154E
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 02:38:59 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id jy13so760693veb.19
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 02:38:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=t4gjkb2QcG6ihGt9XdAYAyS01ppKeYm9Oq28V9gGw3U=;
	b=gFtUI95tPp2KCd8DSciF4BOxU8Z/c2qIyTGmUgjw6irmmHwFTLzeYNqZ0l5Mu6jfV1
	6nWzm4Sv4Tolhkc6PFTCpPQaEPhAyEDhUfGxRgBpcUlxrQoJ1+cBH4clmkIHcthbpQ2z
	IgcNULG6jY4JdYyGbIMucAOFLwzFYpxUAQ5/2qCV8BZUTVMhXThwoHlWxHJSatEVEskF
	ylheo0mR0p5Xq6zqG7joGzt5fjXu/bqiO/CxGPByQJDgF8EINTFEcSvgaeSt0fFP9Qtp
	J+SxXuF+4iiLlPWanagDbos9Y61806F+fnouhpP0UpxLImxPdoHWhAQqs9D1IKj576Hw
	Mw5Q==
MIME-Version: 1.0
X-Received: by 10.58.73.202 with SMTP id n10mr11198519vev.7.1379065139026;
	Fri, 13 Sep 2013 02:38:59 -0700 (PDT)
Received: by 10.220.215.2 with HTTP; Fri, 13 Sep 2013 02:38:58 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1306040952080.21331@oneiric>
References: <alpine.DEB.2.02.1306040727200.4915@oneiric>
	<51ADD7C0.60707@communistcode.co.uk>
	<alpine.DEB.2.02.1306040814300.5416@oneiric>
	<51ADDCE1.9020400@communistcode.co.uk>
	<alpine.DEB.2.02.1306040952080.21331@oneiric>
Date: Fri, 13 Sep 2013 11:38:58 +0200
Message-ID: <CAC+thW22d3bfKEGDOn_wHGPk4=cmMAq7d4fvteZ+tzGu_5h+=Q@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: anyone building for the arrow sockit eval board?
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
X-List-Received-Date: Fri, 13 Sep 2013 09:39:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Robert,
Hi Jack,

On Tue, Jun 4, 2013 at 3:59 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Tue, 4 Jun 2013, Jack Mitchell wrote:
>
>> The interesting ones in there are meta-altera and meta-linaro; it
>> would also be interesting to see if anything else is modified or if
>> it is vanilla Yocto. I have a sinking feeling it may not be...
>> mainly due to the tightly coupled DT and socfpga implementation with
>> the Altera tools.
>>
>> Could you post the altera-init script; I would imagine that hides
>> the demons ;)
>
>   i've finished adding a couple more things to this page:
>
> http://www.crashcourse.ca/wiki/index.php/SoCKit_Yocto_bsx_build
>
> showing a successful build of an "altera-image-minimal" image, at
> least with respect to the artifacts that show up in the "images/"
> directory, so that's a good sign (although i haven't boot-tested that
> stuff yet).
>
>   i may spend some time perusing the contents of the meta-altera/
> directory to see how easy it would be to just extract that as a
> separate layer and use stock layers for everything else -- doesn't
> look like it would be hard as i would prefer to use the latest "git
> pull" content when possible.
>
> rday
>
> p.s. i know nothing about the issues involving the combination of the
> device tree and FPGA, but the build process did generate dtb files, so
> maybe it really is self-contained. feel free to follow along with that
> page and see if it all works for you as well.

Just started to poke around with Yocto trees from rocketboards in
these days and Yocto ml archives returned this thread. I'm still
waiting for the real hardware (Altera's EVB) to go hands-on. After
reading Robert's wiki page documenting his tests, I noticed that
poky-socfpga.git also include a dylan-altera branch. I guess this
should bring Altera's stuff to the next Yocto release. Did you try
building against this branch and do you have any boot tests report
also? I did try a build and it worked after applying a trivial fix to
a failing recipe (gatord).

This branch is not referenced yet by official documentation, but it
might be a better bet for starting new developments. I'm also a little
bit concerned by the approach of providing a full 'clone' of the yocto
instead of confining Altera specifics in a dedicated meta-altera layer
only. Did you get any new insight on the topic? Maybe Jack also can
provide new details after attending training days on the topic...

Very curious to road-test the socfpga with Yocto!

