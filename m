Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6E7BE013A7
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 08:51:01 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id b12so630372wgh.30
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2013 08:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=gXVTklaD6e6QW81ukX0Mf5+O1eWGJ/rqTMGD0PISQ+U=;
	b=gkWFiK/HS0PwW48Y7u43tYArUaFHMxrsuI65Uturo8B/FLWLI9xWZCFvOTqpvzLz+z
	UJh3xki+i3slU++2x2PRRGFwLk3Fki7rguzmVeMs9ntDhy5l9pBhwMlTvo1mD3hLSi9I
	cOCqHX/A+1oQPbKVFAJVUwcLZ0hnt+KE22T5sXpNNmbfzNibqQBQrP2jfhllAImccfOc
	Y+d22DBP35yke2PzSa5WFP/W46geom6KTLEfbQH1qCEcHY+DTlVULo4RQNC1so+yODAQ
	0PYyitTB9dpEWzB2iiSPyQd5irkHeybuxbrjvxCDKnJ/Yh5YO5l3mgGmh+E7p1f2ngZK
	viVg==
MIME-Version: 1.0
X-Received: by 10.180.39.207 with SMTP id r15mr1655968wik.16.1364917858767;
	Tue, 02 Apr 2013 08:50:58 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Tue, 2 Apr 2013 08:50:58 -0700 (PDT)
In-Reply-To: <CD806A84.2688D%belen.barros.pena@intel.com>
References: <CAHUNapTPKxYi-hcm2xv4xhQ1GAmkYm9ZpaAZQYsPoh_K_G0=0Q@mail.gmail.com>
	<CD806A84.2688D%belen.barros.pena@intel.com>
Date: Tue, 2 Apr 2013 11:50:58 -0400
Message-ID: <CAHUNapSKNX826DbtikAAf2bQEQMjiQyikdXC3oF1yTCQ75gbiw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: templates in Hob 1.5
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
X-List-Received-Date: Tue, 02 Apr 2013 15:51:02 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 2, 2013 at 6:21 AM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
> But it seems to me there is
> more interesting stuff buried somewhere in your answer, so I hope it's ok
> if I dig a little deeper.

:-D

> I think I might have asked the wrong question. Let's forget about the word
> "template" for a moment, and ask something a bit different: of the stuff
> you select / configure when building an image with Hob, what would be
> useful to save for reuse? Once we determine that, we can discuss how it
> should be called ("template" could be the wrong word).

When I use Hob to click on things here and there, I'm usually just
playing around; just trying out some things. When I find some
combination of things that I like, my instinct would be to
compartmentalize that off into a layer: a particular grouping of
packages would either be a DISTRO or an image, building something for
a particular development board would be a BSP or a MACHINE (etc).

In other words I think the "layer" concept completely captures
whatever it is you're trying to capture with "templates".

:-D

If you're looking to integrate this functionality into Hob, maybe you
need to look at some way of creating layers? Perhaps a user could save
their package configuration as a DISTRO or in an image layer?

