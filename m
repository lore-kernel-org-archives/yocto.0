Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F9A9E00347
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 07:33:48 -0700 (PDT)
Received: by eaab16 with SMTP id b16so888142eaa.35
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2012 07:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=jVPcKE3R814UCR/efgOOXSOP7uXz2pvlY5NMc7Z//XI=;
	b=zNDmEP+Z4nRZmJClB/pCRzsynFm6QWw69C/YEYKVAQ6UWgPkb9I3IwcZMYCZl29TEq
	JgJJzfkiBsCrmbzzDISxzw/XT5hYumbe+T/FDSvC5RvAa2jnVHKsvhhnrV/hv2riEOMo
	x7MNtxMqZ5RCZQBbhE0+iYuzl4nEqh6C9umcZMLmNxRe8rccB1CILa3px90nuWanBeXg
	JKyFiHZhYmxFufMJvaxmL2REpQT/XykuQm8AyvOGiCGJoBNAcES9qmXo6g4XCyeFm8Ul
	lmSvYxLQXQctGhWpGhC+B3UFqJPWnCWIg5Bl8im6ZCdOhhQxEFjoIxCjOmZNqApcI1S/
	Xrtw==
Received: by 10.14.53.4 with SMTP id f4mr3497599eec.93.1342103627209; Thu, 12
	Jul 2012 07:33:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Thu, 12 Jul 2012 07:33:17 -0700 (PDT)
In-Reply-To: <CA+Z6RkXTW-+_KNDZLQOgA7C6APW2EcRjQK3ZR_NBdERs1-pN8A@mail.gmail.com>
References: <CA+Z6RkUQy_rcRPe8OAKek+aNs-LG106C3aXfXTwS1_0ZbZB-kw@mail.gmail.com>
	<CAMKF1srSQB66-TmH_3Tt=ufFEVnN72=CY4u6QNodyHB79-AsYA@mail.gmail.com>
	<CA+Z6RkUFyCqtFWpqzUTN5_cR423L8OF=-cz+edGo=kKR0dW8pw@mail.gmail.com>
	<CAMKF1sr3XDQJOBRdAbSJZLGfJR8KuBsoU4zq4r22t2ptTgUWHA@mail.gmail.com>
	<CA+Z6RkXTW-+_KNDZLQOgA7C6APW2EcRjQK3ZR_NBdERs1-pN8A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 12 Jul 2012 07:33:17 -0700
Message-ID: <CAMKF1srz6miopeorH=6K+oR0kFUvCic+JaY9xd6ttB42OhK0uA@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Cc: yocto@yoctoproject.org, navani.srivastava@lnties.com
Subject: Re: Error while adding a new recipe
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
X-List-Received-Date: Thu, 12 Jul 2012 14:33:49 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 12, 2012 at 1:03 AM, Navani Srivastava
<navani.srivastava@gmail.com> wrote:
> Sorry, but it didn't worked for me..
> .bb file is something like-
>
> "PACKAGES = "colorado"
>
> SRC_URI = " file://colorado_gui_bk"
>
> do_install () {
> #
> # Create directories and install device independent scripts
> #
>          install -d ${D}/{homedir}/Test
>          install -d ${D}${homedir}/Test/Bin
> #       install -m 0755         ${WORKDIR}/colorado_gui_bk
> ${D}${homedir}/Test/Bin
>         cp ${WORKDIR}/colorado_gui_bk              ${D}${homedir}/Test/Bin
> }
> #FILES_${PN}-dbg += "\
> #  ${homedir}/Test/Bin/.debug/colorado_gui_bk \
> #"
>
> INHIBIT_PACKAGE_STRIP = "1"

add

INSANE_SKIP_${PN} = "arch"
as well

> "
> Please review if anything else need to be added..
>
>
>
> On Thu, Jul 12, 2012 at 1:08 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> On Wed, Jul 11, 2012 at 9:03 PM, Navani Srivastava
>> <navani.srivastava@gmail.com> wrote:
>> > Thanks for your reply..
>> > It is a pre-built-binary which I am trying to put in a specific path of
>> > rootfs.
>> > I didn't get what does it mean by "packaging it seperately"..
>>
>> is this the only file in this package ? you might add
>> INHIBIT_PACKAGE_STRIP = "1" to the recipe then
>> but be aware this will disable stripping the binaries and if you have
>> other legit binaries that this
>> recipe is generating then they wont be stripped as well.
>>
>> >
>> > On Wed, Jul 11, 2012 at 8:04 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> On Wed, Jul 11, 2012 at 5:28 AM, Navani Srivastava
>> >> <navani.srivastava@gmail.com> wrote:
>> >> > ERROR: QA Issue: Architecture did not match (40 to 3) on
>> >> >
>> >> >
>> >> > /work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/packages-split/colorado/home/Leica/Bin/colorado_gui_bk
>> >>
>> >> what is this file ?
>> >> is it some precompiled binary or some firmware blob ?
>> >> you need to package is separately and then may be skip stripping just
>> >> that one package
>> >
>> >
>
>

