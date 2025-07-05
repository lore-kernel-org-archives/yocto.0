Return-Path: <daniel@d-f-d.ca>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A41FC8303C
	for <webhook@archiver.kernel.org>; Sat,  5 Jul 2025 09:31:03 +0000 (UTC)
Received: from dfd-cracked-rearview.d-f-d.ca (dfd-cracked-rearview.d-f-d.ca [51.161.82.14])
 by mx.groups.io with SMTP id smtpd.web11.14704.1751707852577767975
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jul 2025 02:30:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@d-f-d.ca header.s=modoboa header.b=nIPmMHhO;
 spf=pass (domain: d-f-d.ca, ip: 51.161.82.14, mailfrom: daniel@d-f-d.ca)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=d-f-d.ca; s=modoboa;
	t=1751707851; bh=fAeDxhL9Rr1zRHYoIABFY9MMkd+cbPBfBcoxe02XhNc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=nIPmMHhOvM3/9dcmW9Eaz2LKT3dsUFwH+zl3o/w/wHg+TvZHribgcldq3UGRLi32/
	 RMWbap2WSvQM6/Puy7FortbsAwg4fVNznAct4oJDcLgxO6WBaG7w/cTPThqvxy4imn
	 rvqnxQ9NjmiCGqHkLXgsRlNu7x6a0+x9NOjfmBDSArt7iucRUMXyXmHQw2T+S2z4Hz
	 p/Sm77d2dAZJ43YHGZUC6dDiEwUF9G99o1KbxkrlcYX6X0RKqVPrfDaR15I3I4CxC+
	 3re3JoyVT9cDhXDS3MGHIVVscOzFAAd8ekccXbJW/yOsWWxeQjcOhKtpz/+a6Vv+4t
	 i+IpyBKTojiTg==
Received: from localhost (localhost [127.0.0.1])
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTP id 3CB8368237
	for <yocto@lists.yoctoproject.org>; Sat,  5 Jul 2025 09:30:51 +0000 (UTC)
X-Virus-Scanned: Debian amavis at dfd-cracked-rearview.d-f-d.ca
Received: from dfd-cracked-rearview.d-f-d.ca ([127.0.0.1])
 by localhost (dfd-cracked-rearview.d-f-d.ca [127.0.0.1]) (amavis, port 10026)
 with ESMTP id M5bB7zCiZHOU for <yocto@lists.yoctoproject.org>;
 Sat,  5 Jul 2025 09:30:45 +0000 (UTC)
Received: from [IPV6:2607:f2c0:d009:ff20::4d7] (unknown [IPv6:2607:f2c0:d009:ff20::4d7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by dfd-cracked-rearview.d-f-d.ca (Postfix) with ESMTPSA
	for <yocto@lists.yoctoproject.org>; Sat,  5 Jul 2025 09:30:45 +0000 (UTC)
Message-ID: <a0284ef3-ac95-47a8-aa65-40ad8ae7a615@d-f-d.ca>
Date: Sat, 5 Jul 2025 05:30:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] BSP: X and customized raspberrypi5.conf machine
To: yocto@lists.yoctoproject.org
References: <918368ba-ed9f-49a8-a41f-a99f05c3aba4@d-f-d.ca>
 <f2e25afb-1cdb-49eb-a168-ccd900b58d22@gmail.com>
 <184E57487FD1230F.30429@lists.yoctoproject.org>
Content-Language: en-US, en-CA, fr
From: "Daniel F. Dickinson" <daniel@d-f-d.ca>
In-Reply-To: <184E57487FD1230F.30429@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Jul 2025 09:31:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65610

In the event someone else runs into similar issues:

On 2025-07-02 01:14, Daniel F. Dickinson via lists.yoctoproject.org wrote=
:
> On 2025-06-30 07:19, Gyorgy Sarvari via lists.yoctoproject.org wrote:
>> On 6/30/25 09:43, Daniel F. Dickinson via lists.yoctoproject.org wrote=
:
>>> This is a multipart question/problem.
>>>
>>> Summary:
>>>
>>> 1. I want to be sure I am using the correct means to create a=20
>>> customized machine configuration for what in the meta-raspberrypi=20
>>> layer is raspberrypi5.conf.
>>>
>>> 2. With my current attempt I get a working X11 image for the=20
>>> Raspberry Pi 5 but not the Compute Module 5 with CM5 IO board; I am=20
>>> unclear at present on whether
>>> this is due to the customized configuration or an issue with current=20
>>> walnascar branch of meta-raspberrypi; if the latter I'd like to=20
>>> resolve that too.
>>> In my case it turns out to be a case of trying to be too clever.=20
>
> I have not needed to upgrade mesa, there are two other things I needed=20
> to do:
>
> 1. Remove the |ROOTLESS_X =3D "1"| I had added; this causes permissions
> =C2=A0=C2=A0 issues all over the place (I guess that
> =C2=A0=C2=A0 feature of xserver-nodm only works with 'plain' X - no Way=
land, no
> =C2=A0=C2=A0 acceleration / mesa.
> 2. Ensure mesa (but not upgraded) is included in the image.
>
> which I have noted on the GitHub issue:=20
> https://github.com/agherzan/meta-raspberrypi/issues/1426 .
>
> Thank you again for pointing me in a more relevant direction.
>
This turns out to have been a multi-bug issue. To find solutions, the imp=
ortant thing was to go back to a stock build
and address the issues one at a time.

The issues:

1. When using accelerated (vc4graphics) on raspberrypi5-cm5 an updated me=
sa is required
    even if Wayland is not in use[1].
   =20
    * This is the main issue that resulted in X not rendering

2. There are fixes required for xserver-nodm with ROOTLESS_X.

     * I hope to submit patches at some point, but for now you can find t=
he fixes here:
       * https://gitlab.com/yocto-doky/doky/-/tree/main/meta-doky/recipes=
-graphics/x11-common?ref_type=3Dheads
       The most important parts being (for rootless X)
         1. XDG_BASE_DIRS needs the right permissions; currently /run/use=
r/$(id -u) tries be created
            and ownership changed after root is dropped. This obviously d=
oesn't work.
         2. As a bonus, when using toybox mkdir --mode XXXX --parent pare=
nt_dir doesn't work, this
            needs to be -m XXXX -p parent_dir
         3. User/group ownership and permissions on /dev/tty[0-3] /dev/hi=
draw* /dev/dri/cardX were
            not being sufficiently updated (group read was being set, but=
 the default group was still
            root for /dev/tty[0-3] and /dev/hidraw*, and /dev/dri/cardX w=
as no even touched.
      =20
3. With toybox, `mount` fails on invalid mount options; with busybox the =
mount continues without the option.
    At least with meta-raspberrypi `strictatime` is not supported, so the=
 default `fstab` in `base-files`
    fails to mount `/run` as that entry has `strictatime`. This causes `/=
etc/init.d/udev` (/etc/rcS.d/...)
    to fail to complete and drivers end up missing.

4. Wayland without Weston does not appear to work with accelerated graphi=
cs on meta-raspberrypi at the
    moment, on the CM5-IO board.

5. Weston is currently not working on meta-raspberrypi for cm5-IO situati=
on (needs an update).

6. Bonus: toybox 'echo' doesn't support `-n` GNU addon. Quick fix is to u=
pdate alternatives
    priority so busybox `echo` is used.

With the mesa update (and ensuring mesa is on the image), updating kernel=
 to 6.12.x, and the rpi-bootfiles etc,
and avoiding Wayland, one can have accelerated graphics on X with meta-ra=
spberrypi

And of course, I have other non-standard experiments on the go that I had=
 to temporarily shelve in order to
resolve the above. They are now working too, but that is another discussi=
on entirely.

I hope this can help others.

Regards,
Daniel

[1] I had thought that I had resolved the cm5-io issue without mesa updat=
e, but really udev was failing
to execute, so the accelerated drivers were not being loaded, so the bug =
did not appear until udev
was rerun and v3d driver was loaded.

--=20
Daniel F. Dickinson, B. Computing, A+ =C2=B7 ce

https://www.wildtechgarden.ca - Technical documentation, website, and blo=
g
https://www.danielfdickinson.ca - Personal professional blog, website, an=
d resume


