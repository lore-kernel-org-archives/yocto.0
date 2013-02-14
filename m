Return-Path: <twoerner@gmail.com>
Received: from mail-wg0-f48.google.com (mail-wg0-f48.google.com [74.125.82.48])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id A2A01E00515
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:44:44 -0800 (PST)
Received: by mail-wg0-f48.google.com with SMTP id 16so2057289wgi.15
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 09:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=fHCr0nsVBNvz05jLTpJnm8VzfchQVRgD0WbEuKDew4k=;
	b=WLQNJ4Jw5OxuDwH4sr6uXVjCl0QOeIPYapY8WLiTg/4uvu0pMq6ETnkuLOiXp7LISF
	JtOmhFgOz4kIJ+PvNs0Xp030yKcoMvC4uZIaxx33Wzg3p7G5xk7pcU7paGRNGzWE+K0G
	C1kdxvRjL50qvJb6GdHaiHuAUQjnTh4ZHBqAbjH72BXA0SVhcRHBM+Ur6YqJN1C3BDsJ
	whcWNyuoJPfHR6YxbiQxxoQFdrm39hpnLvLYKca5TfODltSHTvssBig1eYpP9JaXg6ds
	b9IDZfyWAFJ7MWpSJaxPc/hxO2uXfD56wByTJDq2tAoxSq5LgVZ/kH58dpU3un8eFpVF
	R9kA==
MIME-Version: 1.0
X-Received: by 10.194.60.5 with SMTP id d5mr30613587wjr.4.1360863882805; Thu,
	14 Feb 2013 09:44:42 -0800 (PST)
Received: by 10.194.36.228 with HTTP; Thu, 14 Feb 2013 09:44:42 -0800 (PST)
In-Reply-To: <1360857762.68234.YahooMailClassic@web140003.mail.bf1.yahoo.com>
References: <1360857762.68234.YahooMailClassic@web140003.mail.bf1.yahoo.com>
Date: Thu, 14 Feb 2013 12:44:42 -0500
Message-ID: <CAHUNapSu3oGwmy5DaJc4YBek4OBLOi+rbFEJ0L7fooKqDfXMRw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Andre Bella <scancool@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: select installation packages
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
X-List-Received-Date: Thu, 14 Feb 2013 17:44:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Feb 14, 2013 at 11:02 AM, Andre Bella <scancool@yahoo.com> wrote:
> is there a menuconfig on yocto where you can select the package you want to add before you build the image?

I would suggest giving hob a try:

<checkout the yocto project from git>
$ source poky/oe-init-build-env
$ bitbake -u hob

Bitbake will compile need to download and compile up a bunch of stuff
(just like menuconfig) but it'll take a bit longer. Eventually a UI
will come up from which you can start selecting things like your
machine, packages, etc.

