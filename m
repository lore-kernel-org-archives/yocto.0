Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A09E6E01460
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 13:15:51 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so7322250vcb.35
	for <yocto@yoctoproject.org>; Mon, 03 Sep 2012 13:15:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YUCfnIWan+BBpC7RhGs0ic3jE4IpNndZSJ8/0nRJkOE=;
	b=PN2+gv6PJhGEGGCsX0yTtzhlgz1Ayz6zyi8kj7hUygi/Yq2XPCj0v7jjed9WcKF7QI
	c8MQRi1P+f0Z4GEj3gQ4HJsRTSGmf9zhfC2kWHdCDcCA4Ef0BNh7WiD7iGswg9SAQD6i
	DXJCAmLnPZwGu6kD07skhcy32oGXuBBNJg58iOeZXDFGSuZGmxLiDJtTZa8JLYDs9LEr
	H/hA2S6Dc3mVB8unDgIJMvDhrvYbD5NRp+tLKm7kWTGbIaEhVX0UYrQwGbm1gxk6h4XH
	HJgedXTTAYyLIEBrTbZtkNGnFESM9zkCvKUhdEwEApmI5g6KRSgHtJaH6dQFhDYv8c/i
	FGEQ==
MIME-Version: 1.0
Received: by 10.58.95.65 with SMTP id di1mr13638418veb.55.1346703336809; Mon,
	03 Sep 2012 13:15:36 -0700 (PDT)
Received: by 10.52.69.163 with HTTP; Mon, 3 Sep 2012 13:15:36 -0700 (PDT)
In-Reply-To: <50450DC6.20303@r-finger.com>
References: <50450DC6.20303@r-finger.com>
Date: Mon, 3 Sep 2012 16:15:36 -0400
Message-ID: <CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Cc: yocto@yoctoproject.org
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Mon, 03 Sep 2012 20:15:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Sep 3, 2012 at 4:06 PM, Tomas Frydrych
<tf+lists.yocto@r-finger.com> wrote:
>
> Hi,
>
> I am wondering why yocto includes a beagleboard.conf when it is unable
> to support much of the board's features, and there is a dedicated layer
> for TI stuff that defines the beagleboard machine properly.
>
> I actually have a fairly practical gripe here: it is currently not
> possible to include both meta-yocto and meta-ti, and have it use the
> correct beagleboard.conf from meta-ti! The meta-yocto layer prepends
> itself to the BBPATH while meta-ti appends itself, so regarless the
> layer arrangement, the (not-much-useful) yocto beagleboard.conf is
> always used, and everything is broken. The only way to work around this
> that I can think of is to provide yet another beagleboard.conf from a
> custom layer that also preppends itself to the BBPATH, which feels like
> three sides of a square route.

So we fix the configuration of the layers .. and meta-ti was supposed to
work properly with meta-yocto last I heard.

>
> So, is there a good reason not to get rid of yocto beagleboard.conf?

The meta-yocto layer beagleboard configuration is a hardware ARM reference, that
uses the linux-yocto kernel (policy and version) and is used for the
project QA on
hardware.

The meta-ti layer, which no one argues has more hardware functionality and
support, doesn't hit those other three elements.

The beagleboard in meta-yocto will be bumped shortly to match the 3.4 configs
and policy of the rest of the reference boards.

If I make the statement that we need a ARM hardware reference, that uses only
meta-yocto (linux-yocto + config + tools), the choices are limited.
Any board that
I select, is followed by an series of comments about how other layers,
other places,
other <something> has that board. So there's no right choice, including dropping
it completely, since the requirements that I've listed above are
equally not met by
any other layer configurations.

Cheers,

Bruce

>
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

