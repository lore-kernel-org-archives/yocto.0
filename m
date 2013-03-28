Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04EA7E014BD
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 14:34:20 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id d46so6615939wer.30
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2013 14:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=jTLcn/BsKvh8nPscYQQt4b2Jv8adoGJWDO/gLZVP1Xg=;
	b=nFdXRhjJa1uauQlam9Og4RNMV+sw0wdd8b8drzGZ1Rukn38yLMwetBwGMUUPEoLqkT
	NgL4fdF4N5d3OhTTCKHwBGIjVONMbaHJx7cErD5eXFcmhaz+ZPU1KeIzAqCayn7rK+vP
	sZ4k83afzCk87NiQzn6yAJT2IJ9uAAqQo+gWi1J72nmNq5l8yMzVdGx6jMjCuZg95eou
	/Sg6zzMO4uwOQL4YqkPEU2VvlGyAEf/748R4mIMuQrGfbMqgO+/lftxUlaP2JM1P3Ejs
	aWwvwiCzL8/Sb8SLEnx6KfLRnG55ft/ROvNuRZNOf+1T34TzcKVrgB5S4zRK/bIZ0GZs
	0NIg==
MIME-Version: 1.0
X-Received: by 10.194.21.233 with SMTP id y9mr144995wje.47.1364506459850; Thu,
	28 Mar 2013 14:34:19 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Thu, 28 Mar 2013 14:34:19 -0700 (PDT)
In-Reply-To: <CD7A35C5.26726%belen.barros.pena@intel.com>
References: <CD7A35C5.26726%belen.barros.pena@intel.com>
Date: Thu, 28 Mar 2013 17:34:19 -0400
Message-ID: <CAHUNapTPKxYi-hcm2xv4xhQ1GAmkYm9ZpaAZQYsPoh_K_G0=0Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 28 Mar 2013 21:34:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 28, 2013 at 2:00 PM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
> When we tried to define it properly, we realised that templates could be a
> few different things, and that we should find out which of them is the
> most useful. This email is my attempt to gather your thoughts on this
> templates business.
>
> I guess the key question to answer is: in your opinion, which parts of the
> configuration should be saved as part of a Hob template?

If someone handed me something and said "this is my embedded Linux
distribution's template" I would assume it would pertain to the "feel"
of this distribution and not, for example, to the list of packages,
machine, endianness, interfaces, or anything else processor-,
installation-, or board-specific.

Yocto creates distributions. So if Yocto/Hob has something called
"templates" then a sensible question to ask is "what is in a Debian
template?" or a Fedora template? or an openSUSE template? And how do
they compare to each other?

Each of these distributions (Debian, Fedora, openSUSE) can create
images for x86, x86_64, ARM, and other targets, therefore the choice
of hardware doesn't define a distribution's template. The person
installing Fedora on one machine can choose which packages to install
such that two people's installations could look entirely different
from each other (e.g. one person might choose XFCE and the other use
Gnome), therefore the list of packages doesn't define a distribution's
template. Each of these can be installed on devices that have or don't
have Ethernet ports, serial ports, various video output, and various
input devices, therefore the choice of hardware doesn't define a
distribution's template.

The assumption is that if someone is comfortable using Fedora on one
device/installation, they'll also be at home using Fedora on another.
Therefore there is something templatizable about Fedora that doesn't
rely on the specific hardware on which you're using it nor on which
packages are installed. What that is, though, I'm not 100% sure.

To be honest I am uncertain how one could have a "distribution
template". The above is just my musing on this subject if we had to
have something called a template :-)

Seeing how poky is very debian-like, most images created with Yocto
will feel like Debian more than anything else, won't they?

