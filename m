Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6876EE00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 07:30:38 -0700 (PDT)
Received: by oagh2 with SMTP id h2so9838137oag.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 07:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=tKUP3CrfS4zqfeZf+R8Ve4mdhuJtNMBXfnNlkBxnRoA=;
	b=XzljgWdthx0rvEjBI7RD+W1IxxPwfAK8Dbtb1RZVslkNbcefelwJgnftNc/UIdnzgb
	4ZxvwBkCd3YfDp1EeVupoJ3vr7Hi5oYflIy9f+jTKQVFw71SFbkB0ri8UHUKz7IsJ3v7
	tB9qK2ueBlnQafmZJDPv/Grj7Feyzm0/ot8nIbo0rQKh1pD9HhrbCAZdnXFnpIKWF7wj
	2t0uiaJ0rDKBDMQiZVt+ylW/cwQv5X81xUdohrtDdnlg0p25vANUEBfGMon6tOAzAA2D
	WhTplLwaymUwU8nceEiKj5jCUWaJcm0Tb5m+FLsSMC+y3wJFhHZLsVBtgi2vITwG5Uvu
	fSHg==
MIME-Version: 1.0
Received: by 10.60.22.104 with SMTP id c8mr1700714oef.2.1349274637640; Wed, 03
	Oct 2012 07:30:37 -0700 (PDT)
Received: by 10.76.153.198 with HTTP; Wed, 3 Oct 2012 07:30:37 -0700 (PDT)
In-Reply-To: <1889683.vhv9f2oRm3@helios>
References: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
	<1349249984.1469.2.camel@juli-workstation.net.jusst.de>
	<CAMKF1sr_-YjqDeaSY-T68tiFQbCKQeGG9Yu99MFcDKf1pZx-HA@mail.gmail.com>
	<1889683.vhv9f2oRm3@helios>
Date: Wed, 3 Oct 2012 10:30:37 -0400
Message-ID: <CAMAb8ZOf7eYBBiw7PWTj7KN7eXcQVz6hfCmutx5p8zWgByKrBg@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Can't fetch git SRC_URI via HTTP
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
X-List-Received-Date: Wed, 03 Oct 2012 14:30:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

> I think Paul posted a patch where bitbake will spit out a good error
> message about such usage

Oops, better have a look at:

  - http://bugzilla.yoctoproject.org/show_bug.cgi?id=3214

I just created this... :-%


On Wed, Oct 3, 2012 at 10:07 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Wednesday 03 October 2012 07:04:06 Khem Raj wrote:
>> On Wed, Oct 3, 2012 at 12:39 AM, Julian Scheel <julian@jusst.de> wrote:
>> > Am Dienstag, den 02.10.2012, 23:52 +0200 schrieb Martin Jansa:
>> >> On Tue, Oct 02, 2012 at 11:38:08PM +0200, Julian Scheel wrote:
>> >> > Am 02.10.2012 um 23:22 schrieb Martin Jansa <martin.jansa@gmail.com>:
>> >> > > On Tue, Oct 02, 2012 at 05:17:23PM -0400, Evade Flow wrote:
>> >> > >> I'm trying to build core-image-sato for my Pandaboard ES, following
>> >> > >> the
>> >> > >>
>> >> > >> instructions posted here:
>> >> > >>  - http://maniacbug.wordpress.com/2012/08/03/pandayocto/
>> >> > >>
>> >> > >> Thus, my OE build configuration looks like this:
>> >> > >>> OE Build Configuration:
>> >> > >>> BB_VERSION        = "1.15.2"
>> >> > >>> TARGET_ARCH       = "arm"
>> >> > >>> TARGET_OS         = "linux-gnueabi"
>> >> > >>> MACHINE           = "pandaboard"
>> >> > >>> DISTRO            = "poky"
>> >> > >>> DISTRO_VERSION    = "1.2.1"
>> >> > >>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>> >> > >>> TARGET_FPU        = "vfp-neon"
>> >> > >>> meta
>> >> > >>> meta-yocto        =
>> >> > >>> "denzil:65ffa7395055f7e012cb973f63f92380828eed0d"
>> >> > >>> meta-ti           =
>> >> > >>> "(nobranch):30fb40ebc13614a74c2e237927c60ac43e01d1bc"
>> >> > >>
>> >> > >> I have these lines in my .gitconfig:
>> >> > >>> [http]
>> >> > >>>
>> >> > >>>    proxy=http://user:passwd@usaprox.lightning.com:8080
>> >> > >>
>> >> > >> so I'd expect URLs like this one (from the meta-ti layer's
>> >> > >>
>> >> > >> linux-omap4_3.1.0.bb recipe) to work fine:
>> >> > >>> SRC_URI =
>> >> > >>> "http://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;pro
>> >> > >>> tocol=git;branch=ti-ubuntu-3.1-1282 \>> > >
>> >> > > This url seems wrong, it should start with git:// if you want to
>> >> > > clone
>> >> > > git repo.
>> >> > >
>> >> > > Because it starts with http:// normal fetch (like wget) was used so
>> >> > > it
>> >> > > downloaded probably some http code (see that kernel-ubuntu.git file)
>> >> > > instead of any relevant source.
>> >> >
>> >> > I ran into the same issue a few days ago. It seems yocto only supports
>> >> > git fetch through servers providing the repositories through the git
>> >> > protocol. A way to use git repositories which are provided through
>> >> > http or https would be quite a good thing to have.
>> >>
>> >> That's what protocol param does;
>> >>
>> >> Change that to
>> >> git://dev.omapzoom.org/pub/scm/integration/kernel-ubuntu.git;protocol=htt
>> >> p;branch=ti-ubuntu-3.1-1282 and you'll get git fetch over http protocol.
>> >
>> > Nice to know. Actually when I had this issue I tried it the other way
>> > round. Use a http url and set protocol to git...
>> > Is this noted somewhere in the documentation? I could not find it. I
>> > think it would be worth mentioning it in the yocto reference manual as
>> > this seems to be a quite common thing to struggle with.
>>
>> I think Paul posted a patch where bitbake will spit out a good error
>> message about such usage
>
> Indeed, in fact coincidentally I was just trying to find this thread in my
> cluttered inbox in order to reply to it mentioning that :)
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

