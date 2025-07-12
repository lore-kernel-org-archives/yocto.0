Return-Path: <daniel@d-f-d.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 805B3C83F1D
	for <webhook@archiver.kernel.org>; Sat, 12 Jul 2025 20:41:28 +0000 (UTC)
Received: from dfd-cracked-rearview.d-f-d.ca (dfd-cracked-rearview.d-f-d.ca [51.161.82.14])
 by mx.groups.io with SMTP id smtpd.web10.44396.1752352885533841148
 for <yocto@lists.yoctoproject.org>;
 Sat, 12 Jul 2025 13:41:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@d-f-d.ca header.s=modoboa header.b=aitmTrmP;
 spf=pass (domain: d-f-d.ca, ip: 51.161.82.14, mailfrom: daniel@d-f-d.ca)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=d-f-d.ca; s=modoboa;
	t=1752352883; bh=YLAu/N5hkZonPSwzJGOXIxhtd9wlSEifdkXLnzgL8t0=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=aitmTrmPoggoqQyXwdkj0pNBed2b5kCFLfa3d4X3VVneBUYyZaFMW7Lpq/yc5yq7Y
	 uVOQwCaTFVRp449h0IL1+8IOHJp9M9Fu5im6YrgAp9DhQhMcHmAiBYOAq/VxzlSUQQ
	 ir7UQdgiv0/t+ksyVvEiP0zDqLvRPF3wfxyuPJ/nfGHNTT2ske27WNcF3unRhvs9Y7
	 YpFmXtaOFvrQHy9dNl0Zr98++ENfdMMIqlEPaVasket7OHEg3DFTXnvkXmLOcF1cL3
	 1gPkJ1rhOH+wPEGhVEUHVdyYXmDxmSNN3IQ6rQxPqhtsJWaV2TEIe1o0OHLea2EyPX
	 N4nGdpn+l9udg==
Received: from localhost (localhost [127.0.0.1])
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTP id 751FF68DA1;
	Sat, 12 Jul 2025 20:41:23 +0000 (UTC)
X-Virus-Scanned: Debian amavis at dfd-cracked-rearview.d-f-d.ca
Received: from dfd-cracked-rearview.d-f-d.ca ([127.0.0.1])
 by localhost (dfd-cracked-rearview.d-f-d.ca [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 66qcJs3zlBNS; Sat, 12 Jul 2025 20:41:17 +0000 (UTC)
Received: from [IPV6:2607:f2c0:d009:ff20::4d7] (unknown [IPv6:2607:f2c0:d009:ff20::4d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTPSA;
	Sat, 12 Jul 2025 20:41:17 +0000 (UTC)
Message-ID: <fcd28936-5e4e-4676-a0ef-3f6b0b5a1d6e@d-f-d.ca>
Date: Sat, 12 Jul 2025 16:41:15 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] base-files: invalid 'strictatime' on /run
To: yocto@lists.yoctoproject.org, skandigraun@gmail.com
References: <14b926fd-9e17-4f0d-a267-cdfb255532ec@d-f-d.ca>
 <4ad8c93f-4bca-45ca-85cf-baa269dbb63d@gmail.com>
Content-Language: en-US, en-CA, fr
From: "Daniel F. Dickinson" <daniel@d-f-d.ca>
In-Reply-To: <4ad8c93f-4bca-45ca-85cf-baa269dbb63d@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 12 Jul 2025 20:41:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65652


On 2025-07-08 13:00, Gyorgy Sarvari via lists.yoctoproject.org wrote:
>
> On 7/8/25 06:31, Daniel F. Dickinson via lists.yoctoproject.org wrote:
>> Currently in OE-Core meta/recipes-core/base-files/base-files/fstab
>>
>> (which becomes /etc/fstab on-device) has
>>
>>
>> tmpfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 /run=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tmpfs
>> mode=3D0755,nodev,nosuid,strictatime 0=C2=A0 0
>>
>> which for qemuarm64 (from OE-core) and raspberrypi5 (from
>> meta-raspberrypi) both
>>
>> emit an error in dmesg during boot "invalid mount option 'strictatime'=
".
>>
>> With busybox this seems to be cosmetic (strictatime simply ignored), b=
ut
>> with using
>>
>> toybox the mount error results in /run not being mounted, which causes
>> problems
>>
>> for other packages (like udev) when using sysvinit.
>>
>>
>> Before I create a patch, I'd like to understand why this is occurring,
>> and the preferred fix.
>>
>>
>> 1. Is this arm/arm64 specific due to defconfig not being aligned with
>> e.g. x64, or
>>
>> 2. Is this a result of a change in default kernel config across the bo=
ard?
>>
>> 3. Or, am I missing something about this?
>>
>>
>> In the case of 1, is the preferred resolution to add strictatime to
>> arm/arm64 defconfig?
>>
>> In the case of 2, should the 'strictatime' be dropped entirely or
>> replace with a different
>>
>> 'atime' option?
>>
>>
>> Oh, and should busybox config be changed so that an invalid mount opti=
on
>> is not
>>
>> silently ignored?
> I did some quick tests with qemuarm64, with largely default config. I
> did not see busybox ignoring this flag, it seems to be handled and
> converted to a flag in the call. (Did you use some custom config with i=
t
> maybe? Or did I do something incorrectly?). The issue doesn't look arch
> nor kernel specific to me.

I looked again and I guess I previously missed seeing=C2=A0 the 'strictat=
ime'

on the mounted=C2=A0 filesystem, when using busybox. Sorry for the noise.

I guess I am a bit over exuberant with getting back into firmware

and having a tonne of stuff to relearn and catch up on.


> Looking at the syscalls, the following shows up when running "mkdir aaa
> && mount -t tmpfs -o mode=3D0755,nodev,nosuid,strictatime tmpfs ./aaa":
>
> toybox:
> mount("tmpfs", "./aaa", "tmpfs", MS_NOSUID|MS_NODEV|MS_SILENT,
> "mode=3D0755,strictatime") =3D -1 EINVAL (Invalid argument)
>
> busybox:
> mount("tmpfs", "./aaa", "tmpfs",
> MS_NOSUID|MS_NODEV|MS_SILENT|MS_STRICTATIME, "mode=3D0755") =3D 0
>
> The error[1] itself seems to originate from the kernel because of this
> unrecognized option[2].
>
> Looking at toybox source, it seems that it doesn't know about this
> flag/option, it is mentioned in a comment also[3], so it just passes to
> the kernel as it is, as opposed to busybox[4], which does recognize it.
>
> Personally I would just use a custom a fstab without strictatime option
> - the one in oe-core is meant to be a sample. Patches are always great
> of course, especially if it can be made toybox-friendly without removin=
g
> busybox features.

Custom fstab is what I have done, for now (and would have needed to

at some point anyway).

> If you would like to use this option along with toybox, instead of
> changing the options in Yocto, I would check in toybox if adding this
> flag to the options list works out of the box. If it works, why not ope=
n
> a PR with them.

This seems to me to be the preferable option. It is now on my to do

list...for what that's worth.

> [1]: option parser, that returns EINVAL in case of unrecognized option,
> based on the function's docs:
> https://github.com/torvalds/linux/blob/master/fs/fs_parser.c#L101
> [2]: recognized options for tmpfs:
> https://github.com/torvalds/linux/blob/master/mm/shmem.c#L4512
> [3]: https://github.com/landley/toybox/blob/master/toys/lsb/mount.c#L11=
6
> [4]: https://github.com/mirror/busybox/blob/master/util-linux/mount.c#L=
431
>
Thank you again for your help.


As an aside, I know there is a link 'somewhere' in the Yocto universe tha=
t

points to a really great guide to configuring a plethora of email clients

for development lists, but the life of me I cannot find it (and we'll not=
 go

into the decline of search engine effectiveness). Do you happen to know

where it is? I use Thunderbird, and I can't seem to get the width limits =
to

cooperate, even with defaulting to plaintext for emails and setting what

are supposedly parameters which control that.

--=20
Daniel F. Dickinson, B. Computing, A+ =C2=B7 ce

https://www.wildtechgarden.ca - Technical documentation, website, and blo=
g
https://www.danielfdickinson.ca - Personal professional blog, website, an=
d resume


