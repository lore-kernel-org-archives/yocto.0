Return-Path: <jpuhlman@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92D3DE013A7
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 09:55:02 -0800 (PST)
Received: by yhfq46 with SMTP id q46so1251338yhf.35
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2012 09:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=IICSWKnZU49pSu6cNjzT5SL7rD8rfmp63SorYuHJF5o=;
	b=s0lg6mQS/8+61vJ+MArZNqOv5aGaJVsrw8vcAB+wdPJQMXjLZFOeBaC2JWP8ns59wa
	hWFK7KoY+GFnTN0/8E0AN8B1fD8VCwxEAoIbDHq8BPF/Yyiczo75u23pEwfwWahlBiOx
	Ngm1VLokjOVMBD0TCvvxf2EKPKzWReI6Z0WVqCGf2HUGzMqrOmek68LmZ+rJqmlLkwJd
	9Qk3hZ0DCpE7v5q+XzIQkkEdEaGE5e4D9JjXO/s+G7dPGc6YDig0s235rwzpnsoDFIEc
	ZP2jY2xOEcTTZIjef5sGN4sAnUPHzY6/AWBXYXDzKncEkljMYwkk1ytjsgN6IlZNz17g
	Bj3w==
Received: by 10.60.1.3 with SMTP id 3mr1363566oei.73.1331315701843;
	Fri, 09 Mar 2012 09:55:01 -0800 (PST)
Received: from [192.168.1.4] (c-76-20-107-156.hsd1.ca.comcast.net.
	[76.20.107.156])
	by mx.google.com with ESMTPS id w6sm8270719obo.9.2012.03.09.09.55.00
	(version=SSLv3 cipher=OTHER); Fri, 09 Mar 2012 09:55:01 -0800 (PST)
Message-ID: <4F5A43EB.9000704@gmail.com>
Date: Fri, 09 Mar 2012 09:54:51 -0800
From: Jeremy Puhlman <jpuhlman@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1203090547080.16743@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203090547080.16743@oneiric>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: contradictory explanations of IMAGE_INSTALL in yocto manuals
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
X-List-Received-Date: Fri, 09 Mar 2012 17:55:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 3/9/2012 2:51 AM, Robert P. J. Day wrote:
>   (i posted something regarding this on the oe-core list, but i wanted
> to post here as well with specific examples from the yocto manuals.)
>
>   from the yocto dev manual, section 4.3.1:
>
> "The other method for creating a custom image is to modify an existing
> image. For example, if a developer wants to add strace into the
> core-image-sato image, they can use the following recipe:
>
>      require core-image-sato.bb
>
>      IMAGE_INSTALL += "strace"
>
>   however, here's the discussion of IMAGE_INSTALL in the poky ref
> manual in the variables glossary:
>
> "Using IMAGE_INSTALL with the += operator from the /conf/local.conf
> file or from within an image recipe is not recommended as it can cause
> ordering issues."
>
> ... and that explanation goes on to recommend using
> IMAGE_INSTALL_append instead.  that inconsistency should be cleared
> up.
>

The issue here is your talking about two different use cases. Setting
IMAGE_INSTALL from a local.conf is a
different use case then setting the value in a image recipe that
includes another image recipe.

From the local.conf, just from a functional point of view generally will
not work well if you do IMAGE_INSTALL +=.

Some images(not neccisarily in oe-core) set IMAGE_INSTALL explictly
hard, which means you can add what ever you want in your
local.conf and it will get replaced with what is in the recipe. If the
recipe sets IMAGE_INSTALL soft, then what happens is when your
local.conf is read, the value should start out as not defined, so when
you += to the value you get what ever you set as the only value.
Later on when things like core-image attempt to set via =? it sees that
it is already set and should break the image since it doesn't add
what it thinks is the right stuff to make the image, just the stuff you
set in your local.conf.

If from the local.conf, you so IMAGE_INSTALL_append, what ever you set
will get added after all the processing of the various settings for the
image is
already complete.

In an image recipe, like the one you call out, all the image processing
of what should be added etc, is alreaqdy done, when the =+ is added, so
the result is what you would expect.

Different use cases generally have different suggested methods. However
this is more of a funcitonal discssion as I am not sure what the
community consensus
suggestions for setting things like IMAGE_INSTALL in local.conf is any more.


