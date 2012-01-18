Return-Path: <josefahmad1@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D79B8E004D2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 04:36:41 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eeke49 with SMTP id e49so1844734eek.35
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2012 04:36:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=+4t92/kWfAnAp87hOVGEbhE77MY6WAGe7CCr/2n/JKc=;
	b=tB2isRzkt9yA072hyq+IvhW7BTfTCUlKmdgYmLY5bK8WqjPHoFsgth/G2yVYjg9sqF
	YiHKXcokwu181q77tzJdwCdznsi21wr5IiTHHSdU+mbtQChaTzpZg9iYc5WBJEgDJTC/
	cimr5e8btOhnQrbDhvLFzBv3WOGEJZI02b9hQ=
MIME-Version: 1.0
Received: by 10.14.48.66 with SMTP id u42mr119303eeb.59.1326890200409; Wed, 18
	Jan 2012 04:36:40 -0800 (PST)
Sender: josefahmad1@gmail.com
Received: by 10.213.108.139 with HTTP; Wed, 18 Jan 2012 04:36:40 -0800 (PST)
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C02406C@ORSMSX106.amr.corp.intel.com>
References: <CACJvPv3H8QaGffS3kdS1qLogcwn9L1ZsYpzqo6eei6LMK_7=WQ@mail.gmail.com>
	<4F0F2627.3010004@linux.intel.com> <4F0F4E7C.9030506@intel.com>
	<D956029D25CF204F948EA0FB515E1EE202325B@ORSMSX105.amr.corp.intel.com>
	<4F0F52FF.3060601@intel.com>
	<ADD6A3980E8C39419A432FF422031B4C024050@ORSMSX106.amr.corp.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C02406C@ORSMSX106.amr.corp.intel.com>
Date: Wed, 18 Jan 2012 12:36:40 +0000
X-Google-Sender-Auth: XysRwyO-9qyTO52wADZRnmdD0rc
Message-ID: <CACJvPv3weCtuwJOSOdBQVo50ys7qCJ2UkBvk7NyDgWTWijM+=Q@mail.gmail.com>
From: Josef Ahmad <josef.ahmad@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
Cc: "Hart, Darren" <darren.hart@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemu EFI build failure
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
X-List-Received-Date: Wed, 18 Jan 2012 12:36:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Nitin,

That fixed my automake errors.

- Josef

On 12 January 2012 22:33, Kamble, Nitin A <nitin.a.kamble@intel.com> wrote:
> Here is the commit: http://git.yoctoproject.org/cgit.cgi/poky-contrib/log=
/?h=3Dnitin/misc
>
> Nitin
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Kamble, Nitin A
>> Sent: Thursday, January 12, 2012 2:32 PM
>> To: Hart, Darren; Bodke, Kishore K
>> Cc: Ahmad, Josef; yocto@yoctoproject.org
>> Subject: Re: [yocto] qemu EFI build failure
>>
>>
>> I just sent a patch to oecore mailing list to fix the grub issue with
>> automake 1.11.2.
>>
>> Thanks,
>> Nitin
>>
>>
>> > -----Original Message-----
>> > From: Hart, Darren
>> > Sent: Thursday, January 12, 2012 1:39 PM
>> > To: Bodke, Kishore K
>> > Cc: Ahmad, Josef; yocto@yoctoproject.org; Kamble, Nitin A
>> > Subject: Re: [yocto] qemu EFI build failure
>> >
>> > On 01/12/2012 01:28 PM, Bodke, Kishore K wrote:
>> > > I have only
>> > > MACHINE_FEATURES +=3D "efi"
>> > > KERNEL_FEATURES_append_cedartrail +=3D "cfg/efi-ext.scc".
>> > >
>> > > I am not having IMAGE_FSTYPES +=3D "live".
>> >
>> > The "live" change is just to trigger the live image type which builds
>> > grub-efi-native for efi systems. qemux86 needs this added explicitly.
>> >
>> > --
>> > Darren
>> >
>> > >
>> > > Thanks
>> > > Kishore.
>> > > -----Original Message-----
>> > > From: Hart, Darren
>> > > Sent: Thursday, January 12, 2012 1:20 PM
>> > > To: Ahmad, Josef
>> > > Cc: yocto@yoctoproject.org; Bodke, Kishore K; Kamble, Nitin A
>> > > Subject: Re: [yocto] qemu EFI build failure
>> > >
>> > > On 01/12/2012 10:27 AM, Darren Hart wrote:
>> > >>
>> > >>
>> > >> On 01/12/2012 08:19 AM, Josef Ahmad wrote:
>> > >>> I tried to build a qemux86 EFI image, by setting:
>> > >>> - in my local.conf: IMAGE_FSTYPES +=3D "live"
>> > >>> - in poly/meta/conf/machine/qemux86.conf: MACHINE_FEATURES +=3D
>> "efi"
>> > >>>
>> > >>
>> > >> I haven't tried live images with QEMU. For one thing, they aren't
>> > really
>> > >> necessary as you can specify all the boot parameters on the qemu
>> > command
>> > >> line. Is there are reason you want to use the live image
>> > specifically?
>> > >>
>> > >> Also, in order to properly test EFI in QEMU, you will need to use
>> an
>> > EFI
>> > >> BIOS - I believe you're aware of this already - but this isn't
>> > currently
>> > >> supported by the runqemu scripts that ship with yocto.
>> > >>
>> > >>> The build gave me the following error:
>> > >>
>> > >>
>> > >> I'll do some test builds - it isn't clear to me what is going on
>> > here.
>> > >>
>> > >> <snip>
>> > >>
>> > >>>
>> > >>>
>> > >>> Has anyone encountered the same error? =A0I'm not sure I set up th=
e
>> > >>> correct configuration. Also, is there another way to append "efi"
>> > to
>> > >>> MACHINE_FEATURES rather than by modifying qemux86.conf?
>> > >>
>> > >> You should be able to do something like:
>> > >> MACHINE_FEATURES_append_qemux86 =3D "efi"
>> > >>
>> > >> Note that you will also need to enable the efi support in the
>> > kernel,
>> > >> which is done with the KERNEL_FEATURES variable, something like:
>> > >> KERNEL_FEATURES_append_qemux86 =3D "conf/efi-ext.scc"
>> > >>
>> > >> Either of these can be set in your local.conf.
>> > >>
>> > >
>> > > More accurately:
>> > >
>> > > MACHINE_FEATURES_append_qemux86=3D" efi pcbios"
>> > > KERNEL_FEATURES_append_qemux86=3D" cfg/efi-ext.scc"
>> > > IMAGE_FSTYPES +=3D "live"
>> > >
>> > > With these added to local.conf and building for qemux86 I see the
>> > same
>> > > configure failures reported by Kishore and Josef:
>> > >
>> > > | ../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded
>> > from...
>> > > | acinclude.m4:363: grub_CHECK_STACK_ARG_PROBE is expanded from...
>> > >
>> > > I've discussed in IRC with Nitin and he thinks this may be related
>> to
>> > > the automake update and is looking into it.
>> > >
>> >
>> >
>> > --
>> > Darren Hart
>> > Intel Open Source Technology Center
>> > Yocto Project - Linux Kernel
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

