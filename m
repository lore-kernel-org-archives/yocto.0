Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B287EE00AE4; Tue,  1 Dec 2015 12:17:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3736EE00ADD
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 12:17:06 -0800 (PST)
Received: by ykdr82 with SMTP id r82so21585530ykd.3
	for <yocto@yoctoproject.org>; Tue, 01 Dec 2015 12:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=X65v8+2rYgni7dWfYHnBQ0UmiVdOG2u5sH2zXmtPmDI=;
	b=nTHca0Q/N/XHuErVmdOi3yiSwGdHuYXFm1cUxoPBO8COlhNpac7MvTrCZ9r04B9PUy
	SFJ7l6F+UgQuhQrJLZBq0vzCxEa1+6A1TikFqeKx9UMBopZbHey6k97P4lLzixm/guQJ
	rS4IRN/K3cEWCpjvsFt8WEFjR1EwG8GjfQ6FBI8OOCQwROzz+dWYEORH8YPS5UzkG5/M
	WKXLF3lICPdkzVH6xjJGFqDvvEj2J+Lz2EXGsOONsBGd+vXfQw4pS+y7Ushqccj37wGZ
	S0aMmad14ZiZdPuTqRWi16m5iAF91HiTNm9Z9/PwqtgaePG0TSlMWENsd6u17A+ES8BA
	aL4g==
MIME-Version: 1.0
X-Received: by 10.13.226.10 with SMTP id l10mr21233754ywe.164.1449001026394;
	Tue, 01 Dec 2015 12:17:06 -0800 (PST)
Received: by 10.129.155.208 with HTTP; Tue, 1 Dec 2015 12:17:06 -0800 (PST)
In-Reply-To: <3028076.Z7uCxAujOy@peggleto-mobl.ger.corp.intel.com>
References: <CAF3SDA531vpWpfiSuKSr8FhbdMdt=1ma8LMhG55_uTia=E7q2A@mail.gmail.com>
	<5388513.PZBop6V2aC@peggleto-mobl.ger.corp.intel.com>
	<CAF3SDA4uLxYPJHxkYkAG3NGULuLfDiyHHEwh1480bAfQuATsOg@mail.gmail.com>
	<3028076.Z7uCxAujOy@peggleto-mobl.ger.corp.intel.com>
Date: Tue, 1 Dec 2015 18:17:06 -0200
Message-ID: <CAF3SDA64sK0O4x5YpBY4eUg6pVoycusVk=y5riK8_ozKmh4OUA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Saul Wold <saul.wold@intel.com>
Subject: Re: One kernel tree, two BSP layers, two defconfigs. How to pickup the right one based on MACHINE value?
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
X-List-Received-Date: Tue, 01 Dec 2015 20:17:10 -0000
Content-Type: text/plain; charset=UTF-8

I'll use that so, thank you very much Paul for the tip! :)

Regards,
-

2015-12-01 17:59 GMT-02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:
> Yes that's been possible for quite a long time now (possibly going back to OE-
> classic).
>
> Cheers,
> Paul
>
> On Tue, 01 Dec 2015 17:48:26 Daniel. wrote:
>> Hmmm that seems to fit as a glove to me, is that possible on Daisy?
>>
>> Regards,
>> - dhs
>>
>> 2015-12-01 17:30 GMT-02:00 Paul Eggleton <paul.eggleton@linux.intel.com>:
>> > On Tue, 01 Dec 2015 11:27:19 Daniel. wrote:
>> >> Hi Saul, thanks for your reply
>> >>
>> >> 2015-11-30 21:29 GMT-02:00 Saul Wold <saul.wold@intel.com>:
>> >> > On Mon, 2015-11-30 at 17:25 -0200, Daniel. wrote:
>> >> >> Hi,
>> >> >>
>> >> >> I have one kernel tree where I keep all my modules in-tree. Inside
>> >> >> kernel I have two FOO_defconfig and BAR_defconfig which are
>> >> >> configurations for FOO-board and BAR-board. On Yocto I have
>> >> >> core-layer, FOO-bsp layer and BAR-bsp layer. At core-layer I have
>> >> >> linux-custom.bb file which has the URI for kernel tree with a dummy
>> >> >> defconfig. At FOO-bsp and BAR-bsp a have a .bbappend that adds a
>> >> >> folder with the right defconfig for each board.
>> >> >>
>> >> >> My doubt is: I have two .bbappends, on two distinct layers being
>> >> >> applied at same time? Both layers are pointed at
>> >> >> build/conf/bblayers.conf.
>> >> >
>> >> > So you are including both your BSP Layers in the bblayers, that will
>> >> > probably cause problems based on your description above.
>> >> >
>> >> > Another option is to look at using overrides and have 1 layer that
>> >> > supports both boards if they are similar and share other items.
>> >> >
>> >> >> How can I have sure to pick up the right defconfig at build time?
>> >> >>
>> >> >> I've tried to delete core-layer and have two kernel recipes with
>> >> >> distinct names, but Yocto complains about two recipes being selected
>> >> >> at same time for build (because of virtual/kernel feature or
>> >> >> something
>> >> >> alike). So I want to keep one kernel recipe and select the right
>> >> >> defconfig based on MACHINE value.
>> >> >
>> >> > You can use PREFERRED_PROVIDER_virtual/kernel to have multiple
>> >> > alternate kernel present and set it in your <machine>.conf to select
>> >> > the kernel you want.
>> >> >
>> >> > If your kernel recipe does not inherit kernel.bbclass you will need to
>> >> > set PROVIDES
>> >> >
>> >> > You should also be sure to set COMPATIBLE_MACHINE for each machine
>> >> >
>> >> >> Both defconfig are present on arch/arm/configs. Can I overwrite
>> >> >> do_config()? Is that safe? About the .bbappends: Should be two
>> >> >> .bbappends on same .bb file be avoided?
>> >> >
>> >> > You can use a do_config_prepend() to deal with moving the correct
>> >> > defconfig.
>> >>
>> >> Yeah I'm doing that. As you suggested I removed the .bbappend files and
>> >> have one recipe that support both machines, the config prepend looks
>> >> like this:
>> >>
>> >> do_configure_prepend() {
>> >>
>> >>     case "${MACHINE}" in
>> >>
>> >>         enlace-imx6)
>> >>         bbnote "Using csi_enlace_imx6_defconfig"
>> >>         cp -v ${S}/arch/arm/configs/csi_enlace_imx6_defconfig
>> >>         ${S}/defconfig
>> >>
>> >> ;;
>> >>
>> >>     pharosserver-imx6)
>> >>
>> >>             bbnote "Using csi_pharosserver_imx6_defconfig"
>> >>
>> >>         cp -v ${S}/arch/arm/configs/csi_pharosserver_imx6_defconfig
>> >>
>> >> ${S}/defconfig
>> >>
>> >>         ;;
>> >>
>> >>     esac
>> >>
>> >> }
>> >
>> > We do already have functionality that avoids the need for custom scripting
>> > like this.
>> >
>> > Unless you really need the defconfigs in-tree, the typical way to achieve
>> > this is to add "file://defconfig" to SRC_URI, then have defconfig files
>> > for each of the machines under subdirectories named the same as the
>> > machine. So your directory structure would look like this:
>> >
>> > .../recipes-linux/linux-something/linux-something_versionnumber.bb
>> > .../recipes-linux/linux-something/linux-something/enlace-imx6/defconfig
>> > .../recipes-linux/linux-something/linux-something/pharosserver-imx6/defcon
>> > fig
>> >
>> > Cheers,
>> > Paul
>> >
>> > --
>> >
>> > Paul Eggleton
>> > Intel Open Source Technology Centre
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre



-- 
"Do or do not. There is no try"
  Yoda Master

