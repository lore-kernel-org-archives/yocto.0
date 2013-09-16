Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C721E0159E
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 11:40:48 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id w16so3116900vbb.22
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 11:40:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=lp45EWriKf4URxKAw6KyD6ekB1sNSeFX9bL7mysl7nc=;
	b=QBFIudfwE58NqJkRgPwtAlHnU3QDGphcUa8gkzjXfJmzH5fcdvR9kVY2MOYXWQItEO
	zOyA5fKdd2+rCdNnao9yF2ADM06RX0h7Vw1iMjYMZk3UkEIzkFR06+ISBxqK4iZPspUt
	6N6L3B2MmHlyZzGOmJVAtV5YL7rRO7xCQ5O1ucwkOawF6UHlyzMchJ0J7cH93ejVIB4c
	sBw6fFHAXm29/Hzac7em6Z6a4CzChvVFC33ABZ/GkpJPKV1jFodWSTC8+uYGUMGPZVqP
	OJSmqTTYI0R+Tk2YZOgqBHw+zmBrvuYHcGnZ4elwWU8VaRKB7Tnpyqas3f54XWY2elkS
	vY7g==
X-Gm-Message-State: ALoCoQmz/goUQjdc75SUe9EM54oPkFnHndYoaNDEpJssQR+T01ywEsK6gjT3PkpE6MR5Xb23pvhy
X-Received: by 10.58.133.66 with SMTP id pa2mr7730754veb.18.1379356847925;
	Mon, 16 Sep 2013 11:40:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 16 Sep 2013 11:40:27 -0700 (PDT)
In-Reply-To: <A713D66A57B545848DDD45415085C8D0@PAULD>
References: <A8F6DAF6C594463B96E491611B8DF873@PAULD>
	<CABcZAN=hjjwAG=J-a+9N9cVyG1h_wLaN=baEd0c1fpPwt1Y+Nw@mail.gmail.com>
	<A713D66A57B545848DDD45415085C8D0@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Sep 2013 19:40:27 +0100
Message-ID: <CAJTo0LbPx7Gvg8iSqkfesBr9JKZT3E7GovdxjDen5-UwrQfE+g@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: How to find the source of a variable value?
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
X-List-Received-Date: Mon, 16 Sep 2013 18:40:50 -0000
Content-Type: text/plain; charset=UTF-8

On 16 September 2013 19:34, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> This isn't working for me. The image I'm trying to build is
> core-image-gtk-directfb. The recipe is in meta/recipes-graphics/images. If
> I just type "bitbake -k core-image-gtk-directfb", I get two errors:
>
> ERROR: Nothing PROVIDES 'core-image-gtk-directfb'
> ERROR: core-image-gtk-directfb was skipped: FEATURE "x11" is in
> DISTRO_FEATURES, Please remove "x11" from DISTRO_FEATURES, use
> "gtk-directfb" instead of it
>
> I don't understand the "Nothing PROVIDES" error. Doesn't a recipe called
> x.bb PROVIDE x by default? The second error comes from the bit of Python
> in that recipe, which at least proves that it's reading that recipe.

The default DISTRO_FEATURES includes x11, so that's where it's coming
from.  If you're using oe-core/poky from git master, you can do
DISTRO_FEATURES_remove="x11" in your configuration, or else you'll
need to set DISTRO_FEATURES to the current value, minus x11.

The order of messages is a bit backwards there - nothing provides
core-image-gtk-directfb because the recipe caused itself to be
skipped.

To be honest I'm not sure why that recipe forces itself to be skipped
if x11 is present - it should work with x11 present - but if you're
not using X then it makes sense to remove it from DISTRO_FEATURES so
that you don't get unusable X dependences in your images.

Ross

