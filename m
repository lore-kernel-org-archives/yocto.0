Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6468AE01304
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 08:13:25 -0700 (PDT)
Received: by weyr3 with SMTP id r3so5756127wey.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 08:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=UAmsfrXT2VkOfLxw+PiJQybKIVhFedHpnroltc1U5eQ=;
	b=Ako2OkxXk2ddy3Spwymx4hTBKhKh/tNuQGl1Jbi3v4JXx0RIjD7OIlc0tVbUPzExzZ
	K+EUmWXPv97/eS6OSU18BtBvU6Mr9V4xm2pPNCyE05ut2xDE118a91iTa+WUHmNiUwSj
	pJ8YtnH/pn5IigqkjaW8/H/lo0toOjnaYMsa9U12WPHItvrehPTQJDOqE29bbfkjr+2a
	R63BH6ZSOlGGKiH/D5Axsj8vtekbD3cKTJLyLjH3j2y9f38ZgIphRHVizkn0p8VPLEmc
	Cb+R+caYxquaufzdTyUBhPwKgqk6Uq69KNagiWYStt8PDbJMEeLfSrvnApYTu+4CrItS
	8Bcw==
MIME-Version: 1.0
Received: by 10.216.212.217 with SMTP id y67mr10965170weo.173.1340118804008;
	Tue, 19 Jun 2012 08:13:24 -0700 (PDT)
Received: by 10.180.14.193 with HTTP; Tue, 19 Jun 2012 08:13:23 -0700 (PDT)
In-Reply-To: <1340118223.1618.5.camel@trz-ThinkPad-T420>
References: <CAE9DZUTAMXWnc2hJPvVyzwWaRPR3jWvKvxKez5cw8UHktNF9Mg@mail.gmail.com>
	<CAE9DZUS1iRhOfFygpPnCCdr+NJsyjLg6_fU0xKSnpPs0JGERLg@mail.gmail.com>
	<1340118223.1618.5.camel@trz-ThinkPad-T420>
Date: Tue, 19 Jun 2012 10:13:23 -0500
Message-ID: <CAE9DZURnk3b+fXKiXBh+PvfCzYQAhism5WWvf=kV61-TmDXntg@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: trouble building bsp for arm
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
X-List-Received-Date: Tue, 19 Jun 2012 15:13:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Tom,

The first thing I tried is building a minimal distro with "bitbake
core-image-minimal".  That completed successfully and I was able to
execute it with qemu.

Then I tried to build a bsp for ARM, which failed with errors shown
earlier.  I just tried now for x86_64.  It failed too with the same
errors.

I am using the latest poky tarball - poky-denzil-7.0.tar.bz2

Thanks,

Dallas

On Tue, Jun 19, 2012 at 10:03 AM, Tom Zanussi <tom.zanussi@intel.com> wrote=
:
> On Tue, 2012-06-19 at 09:37 -0500, Dallas Clement wrote:
>> Hi all, =A0Please bear with me as I am a newb to both yocto and building
>> bsp's. =A0 I was able to run bitbake core-image-minimal for x86-64, just=
 fine and
>> run it in qemu.
>>
>> Then I got gutsy and tried to build a bsp for ARM. =A0Didn't go so well.
>> =A0I must be missing something.
>>
>
> Hi,
>
> So if I read the above correctly, you were able to create a new x86-64
> bsp using yocto-bsp and build and boot the minimal image?
>
> If so, then the below should also work - at the point you are in the
> creation script, there's nothing arm-specific yet.
>
> If not, did you source oe-init-build-env first? =A0Or do you have some
> kind of network problem?
>
> I can't think of anything else - I just tried the same thing here and it
> worked fine. =A0Let me also try the same thing but using the denzil
> tarball (using git denzil branch), which is what I assume your using?
>
> Thanks,
>
> Tom
>
>> dallasc ~/development/yocto/poky-denzil-7.0] scripts/yocto-bsp create
>> marvell-armada-xp-mv78260 qemu
>> Which qemu architecture would you like to use? [default: i386]
>> =A0 =A0 =A0 =A01) i386 =A0 =A0(32-bit)
>> =A0 =A0 =A0 =A02) x86_64 =A0(64-bit)
>> =A0 =A0 =A0 =A03) ARM =A0 =A0 (32-bit)
>> =A0 =A0 =A0 =A04) PowerPC (32-bit)
>> =A0 =A0 =A0 =A05) MIPS =A0 =A0(32-bit)
>> 3
>> Would you like to use the default (3.2) kernel? (y/n) [default: y]
>> Do you need a new machine branch for this BSP (the alternative is to
>> re-use an existing branch)? [y/n] [default: y]
>> Getting branches from remote repo None...
>> Traceback (most recent call last):
>> =A0File "scripts/yocto-bsp", line 137, in <module>
>> =A0 =A0ret =3D main()
>> =A0File "scripts/yocto-bsp", line 132, in main
>> =A0 =A0invoke_subcommand(args, parser, yocto_bsp_help_usage, subcommands=
)
>> =A0File "/development/dallasc/yocto/poky-denzil-7.0/scripts/lib/bsp/help=
.py",
>> line 73, in invoke_subcommand
>> =A0 =A0subcommands.get(args[0], subcommand_error)[0](args[1:], usage)
>> =A0File "scripts/yocto-bsp", line 76, in yocto_bsp_create_subcommand
>> =A0 =A0yocto_bsp_create(machine, karch, scripts_path, bsp_output_dir,
>> options.codedump, options.properties_file)
>> =A0File "/development/dallasc/yocto/poky-denzil-7.0/scripts/lib/bsp/engi=
ne.py",
>> line 1243, in yocto_bsp_create
>> =A0 =A0run_program_lines(program_lines, codedump)
>> SyntaxError: function specified for 'gen' property returned nothing :
>> input type:"choicelist" name:"new_kbranch"
>> gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine
>> branch to base this BSP on:" default:"standard/default"
>>
>> Can anyone recommend what I should do to get past this?
>>
>> Thanks,
>>
>> Dallas
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

