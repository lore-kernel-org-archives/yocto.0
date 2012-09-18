Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B78D1E013EB
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 12:04:24 -0700 (PDT)
Received: by lboi15 with SMTP id i15so302033lbo.35
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 12:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=NvsteGGdAnAp1fCxphrs8fgCBG5/X7yuOrQVkQttnnY=;
	b=kLGCoR/XIypYRUKk7OUULOlih7s5EMWAY3hkqRmNZwUmU8jVoZwxtGmmzqsugT4Ll8
	Hj0hOAeUrFpP/HE1VAxk2kSvbGKNVRnGpzpAUYe3541/kpB1MfJRJPiCPROD0UWZPSfd
	tmFyaBynDIGg9tmSJc3iKF2s0QJjQxJZ9veROek81Dkg/DEDasWyXlLJAoicQuziyxcn
	1z2La1aXDQK9ow4zFI86ifbBhQOS3I87+M9CEaSRonxTVkuFaLqYcRsV3Gf3712ePKvO
	nmjvcVY+1Uxg0NzYuJTpPKz5D4G3jdnGtps0HiRzp8QBOWwH3lvx8eMpLdukJ7sVAmUR
	zl8g==
MIME-Version: 1.0
Received: by 10.152.122.9 with SMTP id lo9mr605640lab.41.1347995063252; Tue,
	18 Sep 2012 12:04:23 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Tue, 18 Sep 2012 12:04:23 -0700 (PDT)
In-Reply-To: <1347992629.1943.38.camel@omclinuxballt.devnet.ordermatic.net>
References: <1347992629.1943.38.camel@omclinuxballt.devnet.ordermatic.net>
Date: Tue, 18 Sep 2012 15:04:23 -0400
Message-ID: <CAHUNapR0dfujrEWTysBPcnsGNj0r=Lkp72NSTM5oArEbyYGV=g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Brian Lloyd <blloyd@familyhonor.net>
Cc: yocto@yoctoproject.org
Subject: Re: All incompassing documentation
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
X-List-Received-Date: Tue, 18 Sep 2012 19:04:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Sep 18, 2012 at 2:23 PM, Brian Lloyd <blloyd@familyhonor.net> wrote:
> Most of my hits for such an item
> discuss the packages I will need to install in my host distribution so I
> can use the yocto project (not surprised, the danger of a term as vague
> as packages).

In bitbake/yocto/OE/etc. the term "packages" is not vague and has a
very specific meaning: bitbake processes recipes to produce one or
more packages. Some of these packages are then assembled into an
image. Linux distributions also use the term "packages" to mean
(essentially) the same thing (except their packages are not assembled
through the use of bitbake). So I don't think "package" is a vague
term; an rpm, or a deb, or an ipk... these are all packages.

I do agree, however, that in the general, computer-user populace the
term "package" is bandied about indiscriminately, but that doesn't
mean we should have to use something else or come up with a new term
altogether.

