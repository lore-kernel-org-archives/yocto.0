Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 414A0E0070B
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 08:29:09 -0700 (PDT)
Received: by weyr3 with SMTP id r3so5772405wey.35
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 08:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=GBEuQPD2qQUKTpVf/Up9zOtfssyEwdDR8cp+Ou0C9Es=;
	b=HMw770b8SHwpDl5b7GadyaWoj/8HmeDF6GINredPWV1fesm+yJVOReZR3qnuOde20e
	rkYh1naF5Fvy+47lCJW/h5QhkrknMR0opnhQFIYkNNSnoHIWZgfmXe6iaYFFcgiQE7G9
	rIxIHem6blItUuR4RGQm/i6ezSoei+MoMvxN0AD7XL8NZMSZB2fOwAd5zzdAwXxUZ5XD
	hI4NXaQc9Bq3NJ/qCqRPx/WgPrQJ3+/DXd8nnciscPk8AhB4TNELbwOyWRCaKLHmlzdI
	QGzZD8q8AgOEijSBpaPh21wgqVJvZvb7VjOCXKJ+9ZvRJ8aLRcgnfGGpk05mRA5BWlP5
	Tq/Q==
MIME-Version: 1.0
Received: by 10.180.82.198 with SMTP id k6mr4308452wiy.20.1340119748292; Tue,
	19 Jun 2012 08:29:08 -0700 (PDT)
Received: by 10.180.14.193 with HTTP; Tue, 19 Jun 2012 08:29:08 -0700 (PDT)
In-Reply-To: <CAE9DZUS3Mxt5dvE1j1OKRsQwjUtMo2j8n05QCMLL6Ty_0x489Q@mail.gmail.com>
References: <CAE9DZUTAMXWnc2hJPvVyzwWaRPR3jWvKvxKez5cw8UHktNF9Mg@mail.gmail.com>
	<CAE9DZUS1iRhOfFygpPnCCdr+NJsyjLg6_fU0xKSnpPs0JGERLg@mail.gmail.com>
	<1340118223.1618.5.camel@trz-ThinkPad-T420>
	<CAE9DZURnk3b+fXKiXBh+PvfCzYQAhism5WWvf=kV61-TmDXntg@mail.gmail.com>
	<1340119149.1618.10.camel@trz-ThinkPad-T420>
	<CAE9DZUS3Mxt5dvE1j1OKRsQwjUtMo2j8n05QCMLL6Ty_0x489Q@mail.gmail.com>
Date: Tue, 19 Jun 2012 10:29:08 -0500
Message-ID: <CAE9DZUQfaJMmdo9TVMNR3XjyW+UrzoQnfKcFky_HwrTZCBJKiA@mail.gmail.com>
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
X-List-Received-Date: Tue, 19 Jun 2012 15:29:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Okay, using the git poky, I was able to build the bsp.  It seems that
the tarball version is not able to complete this step:

Getting branches from remote repo git://git.yoctoproject.org/linux-yocto-3.=
2...

On Tue, Jun 19, 2012 at 10:23 AM, Dallas Clement
<dallas.a.clement@gmail.com> wrote:
> That's correct. =A0I have not been successful with "yocto-bsp create"
> yet. =A0I'm trying with the git version of poky now.
>
> On Tue, Jun 19, 2012 at 10:19 AM, Tom Zanussi <tom.zanussi@intel.com> wro=
te:
>> On Tue, 2012-06-19 at 10:13 -0500, Dallas Clement wrote:
>>> Hi Tom,
>>>
>>> The first thing I tried is building a minimal distro with "bitbake
>>> core-image-minimal". =A0That completed successfully and I was able to
>>> execute it with qemu.
>>>
>>> Then I tried to build a bsp for ARM, which failed with errors shown
>>> earlier. =A0I just tried now for x86_64. =A0It failed too with the same
>>> errors.
>>>
>>> I am using the latest poky tarball - poky-denzil-7.0.tar.bz2
>>>
>>
>> OK, so what you did was successfully build a minimal image from the BSP
>> tarball for x86-64, but that wasn't using a BSP generated from
>> yocto-bsp, since you haven't been able to successfully generate a BSP
>> using yocto-bsp yet. =A0If that's not the case please clarify, otherwise
>> I'll try what you're doing using the denzil tarball...
>>
>> Tom
>>
>>> Thanks,
>>>
>>> Dallas
>>>
>>> On Tue, Jun 19, 2012 at 10:03 AM, Tom Zanussi <tom.zanussi@intel.com> w=
rote:
>>> > On Tue, 2012-06-19 at 09:37 -0500, Dallas Clement wrote:
>>> >> Hi all, =A0Please bear with me as I am a newb to both yocto and buil=
ding
>>> >> bsp's. =A0 I was able to run bitbake core-image-minimal for x86-64, =
just fine and
>>> >> run it in qemu.
>>> >>
>>> >> Then I got gutsy and tried to build a bsp for ARM. =A0Didn't go so w=
ell.
>>> >> =A0I must be missing something.
>>> >>
>>> >
>>> > Hi,
>>> >
>>> > So if I read the above correctly, you were able to create a new x86-6=
4
>>> > bsp using yocto-bsp and build and boot the minimal image?
>>> >
>>> > If so, then the below should also work - at the point you are in the
>>> > creation script, there's nothing arm-specific yet.
>>> >
>>> > If not, did you source oe-init-build-env first? =A0Or do you have som=
e
>>> > kind of network problem?
>>> >
>>> > I can't think of anything else - I just tried the same thing here and=
 it
>>> > worked fine. =A0Let me also try the same thing but using the denzil
>>> > tarball (using git denzil branch), which is what I assume your using?
>>> >
>>> > Thanks,
>>> >
>>> > Tom
>>> >
>>> >> dallasc ~/development/yocto/poky-denzil-7.0] scripts/yocto-bsp creat=
e
>>> >> marvell-armada-xp-mv78260 qemu
>>> >> Which qemu architecture would you like to use? [default: i386]
>>> >> =A0 =A0 =A0 =A01) i386 =A0 =A0(32-bit)
>>> >> =A0 =A0 =A0 =A02) x86_64 =A0(64-bit)
>>> >> =A0 =A0 =A0 =A03) ARM =A0 =A0 (32-bit)
>>> >> =A0 =A0 =A0 =A04) PowerPC (32-bit)
>>> >> =A0 =A0 =A0 =A05) MIPS =A0 =A0(32-bit)
>>> >> 3
>>> >> Would you like to use the default (3.2) kernel? (y/n) [default: y]
>>> >> Do you need a new machine branch for this BSP (the alternative is to
>>> >> re-use an existing branch)? [y/n] [default: y]
>>> >> Getting branches from remote repo None...
>>> >> Traceback (most recent call last):
>>> >> =A0File "scripts/yocto-bsp", line 137, in <module>
>>> >> =A0 =A0ret =3D main()
>>> >> =A0File "scripts/yocto-bsp", line 132, in main
>>> >> =A0 =A0invoke_subcommand(args, parser, yocto_bsp_help_usage, subcomm=
ands)
>>> >> =A0File "/development/dallasc/yocto/poky-denzil-7.0/scripts/lib/bsp/=
help.py",
>>> >> line 73, in invoke_subcommand
>>> >> =A0 =A0subcommands.get(args[0], subcommand_error)[0](args[1:], usage=
)
>>> >> =A0File "scripts/yocto-bsp", line 76, in yocto_bsp_create_subcommand
>>> >> =A0 =A0yocto_bsp_create(machine, karch, scripts_path, bsp_output_dir=
,
>>> >> options.codedump, options.properties_file)
>>> >> =A0File "/development/dallasc/yocto/poky-denzil-7.0/scripts/lib/bsp/=
engine.py",
>>> >> line 1243, in yocto_bsp_create
>>> >> =A0 =A0run_program_lines(program_lines, codedump)
>>> >> SyntaxError: function specified for 'gen' property returned nothing =
:
>>> >> input type:"choicelist" name:"new_kbranch"
>>> >> gen:"bsp.kernel.all_branches" prio:"20" msg:"Please choose a machine
>>> >> branch to base this BSP on:" default:"standard/default"
>>> >>
>>> >> Can anyone recommend what I should do to get past this?
>>> >>
>>> >> Thanks,
>>> >>
>>> >> Dallas
>>> >> _______________________________________________
>>> >> yocto mailing list
>>> >> yocto@yoctoproject.org
>>> >> https://lists.yoctoproject.org/listinfo/yocto
>>> >
>>> >
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>

