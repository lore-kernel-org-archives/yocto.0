Return-Path: <autif.mlist@gmail.com>
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F10D4E006CC
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 09:10:09 -0800 (PST)
Received: by mail-la0-f44.google.com with SMTP id d3so12655070lah.31
	for <yocto@yoctoproject.org>; Thu, 27 Dec 2012 09:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=oni+kmXKTPLBm+gp1LcGyZyFFGLd68ddotKoJGKoOow=;
	b=XeU2u7id7VovQ1upH5kSGE+ZRug2YbD4wVUaEx3Qtnxk3/pbaerys6RG4mpuxZjB+b
	nFozb8dCYe21cZUS3jj9yRbMhwN7LA4CCI87c8JV3Q8W7WBeX8c72Wdxm6dCoFC+gfUN
	minVW8oE2W2fkwGNoLLXoTLXW5/YDexmbVUV9kQBNzhfYsMtpcvLuQzkdx8QtO/zPLv5
	J5NUw27m4lJ8sfRnoScDeW5fogotam17p5ZTNXwi/njr0iwZol8cmY6Wy8jMvcDC4BPz
	KypIGw7QYTNSNw68gzWVfOEkSUBVWZu7GGh8wKswixKH3BM4VK4J6RrYAA82ZM7UHnD0
	T5uw==
MIME-Version: 1.0
Received: by 10.152.46.161 with SMTP id w1mr28979632lam.27.1356628208287; Thu,
	27 Dec 2012 09:10:08 -0800 (PST)
Received: by 10.112.61.74 with HTTP; Thu, 27 Dec 2012 09:10:08 -0800 (PST)
In-Reply-To: <50DB2E67.4090602@dynamicdevices.co.uk>
References: <50DB2E67.4090602@dynamicdevices.co.uk>
Date: Thu, 27 Dec 2012 12:10:08 -0500
Message-ID: <CADzUK1+kiKx_=ZHKL2WXskDv+rrg5SSLFtHQoLAOaPb0s4Z0Gg@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mono] Support for Visual Studio debugging on Yocto/OE targets (e.g. RPi)
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
X-List-Received-Date: Thu, 27 Dec 2012 17:10:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Dec 26, 2012 at 12:05 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
> Hi all, Autif,
>
> I've been working to support .NET development on Linux
> over the past few days.
>
> There is a Visual Studio plugin, MonoTools for Visual Studio
> which provides support for local and remote debugging of
> .NET applications with Mono.
>
> This requires a remote stub to be running on the target
> platform, monotools-server.
>
> I've created a recipe to build monotools-server, which in
> turn required me to pull in Openembedded Legacy recipes
> for mono-xsp and gtk-sharp.
>
> As it stands I'm now able to build an X enabled image for
> the Raspberry Pi and remote-debug some simple Windows
> Forms .NET applications within the Visual Studio IDE.
>
> Recipes are hosted here in 'recipes-mono'
>
> git@git.assembla.com:ciseco-eve.meta-eve.git
>
> If there is interest in migrating these recipes into meta-mono
> and  somebody will review them then I'll be pleased to make
> whatever changes are needed to comply with relevant
> Yocto policies.

Absolutely!

I am about to embark on a vacation returning to work on Jan 7.

More then - Unfortunately, I will not have time to look at this today
or until Jan 7.

Working hard - then playing hard :-)

I will dig into then when I return.

(Side note - we gave up on GTK# recipe and decided that Windows forms
are 'good enough' for us. This makes me glad :-)

>
> Best Regards, (& Happy Holidays)
>
> Alex
>
>

