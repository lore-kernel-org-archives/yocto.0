Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCBC7E003F8
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 05:42:32 -0700 (PDT)
Received: by mail-la0-f54.google.com with SMTP id ea20so467623lab.27
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 05:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ymTnEqTbG5l8iBi52KQv4vDU4IE4mSyJcRVtTAKHV/E=;
	b=JMlMyB/oq033JJPNuV7sY+3OLZWDPou/Ivc8UdGxC3i5BhHQmZ64KC/O2xQkJuJr3D
	W1v6Jd2K1rPq+5MiIynLG6+1c2bUtzpojuaX6sNEGA1oCy4DGD3M7egvPgBugTxM1TCV
	fdHFUOfEFyXDEzL9Pxp5zqruLe5iVCHuzklMphnmeba7MXPpFYL1hED3KApzjzGDCoGI
	0+cw42vqmP160KcveT+jwWoBr4ztT37Jl8yi8Ay+8si/8D7IBSsdIBpQ7ADW6MACF2T4
	thbaF/0WoYeT/61vhIDier4JmRg5QgTy6gfMNhEU+iMpSviibL1RCw4M/+xQFaZLhh37
	UYuA==
MIME-Version: 1.0
X-Received: by 10.152.9.102 with SMTP id y6mr31253600laa.17.1375274550487;
	Wed, 31 Jul 2013 05:42:30 -0700 (PDT)
Received: by 10.112.133.234 with HTTP; Wed, 31 Jul 2013 05:42:30 -0700 (PDT)
In-Reply-To: <51F8EDB2.4020001@gmail.com>
References: <51F8BAE8.3090805@gmail.com>
	<CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
	<51F8EDB2.4020001@gmail.com>
Date: Wed, 31 Jul 2013 08:42:30 -0400
Message-ID: <CADkTA4NbutoU4AXyfQ84VQNCUmYv1PZwTFhYDBX8ENbOhCL0Gw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Martin Ertsaas <martiert@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Wed, 31 Jul 2013 12:42:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jul 31, 2013 at 6:57 AM, Martin Ertsaas <martiert@gmail.com> wrote:
> On 07/31/13 10:57, Andrea Adami wrote:
>> On Wed, Jul 31, 2013 at 9:21 AM, Martin Ertsaas <martiert@gmail.com> wrote:
>>> Hi.
>>>
>>> I'm creating my own bsp layer for omap4 chips (Yes, I know of meta-ti,
>>> but I want to learn how to do this myself :)). I'm trying to use the
>>> linux-yocto 3.4 kernel,
>>> and have gotten it to work locally. I then made a
>>> linux-yocto_3.4.bbappend which contains the following:
>>>
>>> COMPATIBLE_MACHINE_pandaboard = "pandaboard"
>>>
>>> SRCREV_machine_pandaboard ?= "7eb5fbf903d9db90c3cf371b65e1f2a68d5676d7"
>>>
>>> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.4"
>
> The defconfig is found. I can see a defconfig in ${WORKDIR} with zero
> diff to my defconfig. It is, however, not copied from there into
> ${WORKDIR}/linux.

If you are looking in ${WORKDIR}/linux, you'll never see the defconfig. Even
in the base kernel class it is copied to the build directory, which is
linux-$MACHINE-build.

Even after the copy, it is pulled into a secondary set of
configuration steps that
allow configuration fragments to be processed and layered on top of
that baseline
configuration.

Are you determining that it isn't being used by the existence or non
existence of a
file, or are you seeing other issues with the resulting .config ?

Technically you don't even need a defconfig, you can just use a .cfg
with h/w options
for the board, but that's a different topic.

Cheers,

Bruce

>
> I changed it so it uses the colon though, and removed THISDIR as
> suggested by Paul, but didn't help. I still don't get the config copied
> in, and if I add the do_configure_prepend myself to do this, I get a
> message from the kernel building saying my folder is unclean.
>
> - Martin
>
>> Martin,
>>
>> the code in kernel.bbclass does already copy defonfig to .config, see
>> http://cgit.openembedded.org/openembedded-core/tree/meta/classes/kernel.bbclass#n216
>>
>> I think your problem is the deconfig is not found,  you miss a colon at the end.
>> Use something like
>>
>> FILESEXTRAPATHS_prepend :=
>> "${THISDIR}/${PN}-3.4:${THISDIR}/${PN}:${THISDIR}/files:"
>>
>> Cheers
>>
>> Andrea
>>
>>
>>> SRC_URI += "file://defconfig"
>>>
>>> do_configure_prepend() {
>>>         cp ${WORKDIR}/defconfig ${S}/.config
>>> }
>>>
>>> Problem I get is, without this configure_prepend, my defconfig is not
>>> copied into .config the kernel folder. With this however, I get a
>>> complaint from the kernel that the kernel directory is not clean and I
>>> have to run make mrproper.
>>>
>>> I would greatly appreciate any pointer/help/explanations as to what I
>>> have done wrong here, and how to fix it. Have been struggling for this
>>> for a while now, and have no idea what I have done wrong.
>>>
>>> Best regards
>>> Martin Ertsaas
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

