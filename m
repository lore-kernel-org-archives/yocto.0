Return-Path: <sartre.leo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BEECC43219
	for <webhook@archiver.kernel.org>; Mon, 11 Apr 2022 17:18:02 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com
 [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.11388.1649542709664872826
 for <yocto@lists.yoctoproject.org>;
 Sat, 09 Apr 2022 15:18:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qyraNdEd;
 spf=pass (domain: gmail.com, ip: 209.85.218.46,
 mailfrom: sartre.leo@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id s18so1365181ejr.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 09 Apr 2022 15:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UURhX6CJ0iJ4rUeF6s2O3wfAkMXb84u7y3J5Ivj6vrA=;
        b=qyraNdEdwfb6KVVWIuTcidoP3Lh0IB/q1QhSIxG3RSAC02ukioYZSFxiUhfwm8atAw
         ePSSGPBpWRDnDtR8txm3c0u4T/Kp/aJxSOViuhAynWIUKdF0zZ3cLeBKGjdrnW+gMwYL
         2RwHWvsRmntfA2Vb/VYRoDmToi6iIz5U10ZiJ6SBhVbk8/fQESI/ecmC6H1pQUzk+f/7
         QD8uYh3M/+MhNoDgUvABRsb0MDqmBEzvk3Jr0CRTqFCbDqc56yAT/bADhv3fHf7v57LA
         YsXRrAfdoiR5smptJ7U6Q1h604EIK3mOjCyAyEntsmmlRMTPpnc67ZVEKnbGeUKGiD6S
         jDvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UURhX6CJ0iJ4rUeF6s2O3wfAkMXb84u7y3J5Ivj6vrA=;
        b=DasutA7GuaBKTpVXA06t+Vey3SaIwk70sW+Ngz0KwIZ8RzIxbB0QAb0hAVNpVH0IBk
         Oils9P5Ghd91TogzLs4dx9c/12DoxJOBy84OzaJeohvjYjZfjFdLVZJma8zJMoZGfre3
         +6iFO/XrGsXUIlH69ZVHXyunK0W6gt9niyVb1zvzYLBeBK+G4G0eFDYOQRDGud87NTb6
         jtdBXPDTycz1I/Sw89woJkWQzYCBRkcvPvRDXbBn5fUOdlrSXUbxMo41GhFiFcDjC87t
         vZoOxekkBtELsLI5uJKoTeX0g8E1xuJY0foKo/1TYTfcl0ruWQ9MyBxFYa8fEsR97GWN
         Vzig==
X-Gm-Message-State: AOAM531UrcAtWfD32N1Vb5LJXUepM+uyDn7cKOjxavU+/TUMIXhxG0mQ
	8RXqVlTMF9w716zzLWgncar5aCXvbggShV/p5c0=
X-Google-Smtp-Source: 
 ABdhPJzCqhfyuXR2SqYAQrbQ9D4Du/BRh351Z34gWp8E96xec/gL3GypFev8FZ+kWMWUhknS0t/mkeBmnGQwmntff4Q=
X-Received: by 2002:a17:907:d06:b0:6e0:e2f5:4f55 with SMTP id
 gn6-20020a1709070d0600b006e0e2f54f55mr24980313ejc.618.1649542707983; Sat, 09
 Apr 2022 15:18:27 -0700 (PDT)
MIME-Version: 1.0
References: <sJ7r.1649515105213484766.tB27@lists.yoctoproject.org>
In-Reply-To: <sJ7r.1649515105213484766.tB27@lists.yoctoproject.org>
From: =?UTF-8?Q?l=C3=A9o_sartre?= <sartre.leo@gmail.com>
Date: Sun, 10 Apr 2022 00:17:55 +0200
Message-ID: 
 <CA+Uj8Ux3T3fNkbpeT_FLHNbuqF0aBYTTUBZe4V8gi-=GzR+CBw@mail.gmail.com>
Subject: Re: [yocto] secure boot w/ Mender bzImage fails validation #dunfell
To: casey.ballentine@essvote.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000026b88305dc4017f3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Apr 2022 17:18:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56702

--00000000000026b88305dc4017f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Casey,

I've recently had to activate secureboot on some uefi target.
I was trying to use meta-secure-core/meta-efi-secure-boot aft first, but
after digging a bit more into meta-intel, I've discovered that the
implementation of meta-intel is cleaner and simpler than in
meta-secure-core.
If you are not interested about using microsoft certificates and the
complicated shim + grub combo and that would plan to provision your own
certificate in the firmware (which was what I wanted), I think meta-intel
is a beter approach.
Meta-intel leverate what they call "comboapp":
https://git.yoctoproject.org/meta-intel/tree/classes/uefi-comboapp.bbclass
It is a bundle of systemd-boot (a minimal uefi osloader implementation from
systemd, previously gummiboot) with the kernel, cmdline and optionally a
initramfs, furthermore it provide some clean and simple class to only sign
an uefi binary:
https://git.yoctoproject.org/meta-intel/tree/classes/uefi-sign.bbclass, if
the uefi kernel stub is enough for your use case (which was my case)
I do not know if you really need to keep grub, but if you can replace it
with systemd boot and this uefi combo app from meta-intel layer (or more
simply only use uefi kernel stub with a bundled initramfs), I think it
could simplify a lot your boot process thus it will be simpler to implement
an OTA solution with Mender.
This is something that I will eventually try to achieve in the near future,
so I will keep you posted about my progress if you are interested.

Hope this will help you.
Regards,
--
L=C3=A9o

Le sam. 9 avr. 2022 =C3=A0 16:38, Ballentine, Casey via lists.yoctoproject.=
org
<casey.ballentine=3Dessvote.com@lists.yoctoproject.org> a =C3=A9crit :

> Hello,
>
> We have an Intel Elkhart Lake device that we are trying to get Secure Boo=
t
> (via meta-secure-core/meta-efi-secure-boot SELoader) working on using the
> Dunfell release. This device uses Mender for updates via USB. We have
> Secure Boot working successfully on a similar device, but that device doe=
s
> not employ Mender.
>
> On the HDD image, /boot/bzImage and /boot/bzImage.p7b (the detached
> digital signature) are present, as are the set of GRUB artifacts in
> /boot/efi/BOOT/EFI. As a side note, we do not use an initramfs.
>
> Grub and grub.cfg validate on boot, but /boot/bzImage does not.
>
> I've read that SELoader can't access anything outside of the /efi
> partition. If that's correct, how do we work around this issue?
>
> Thanks for any help, and let me know if you need further information.
>
> Best,
> Casey
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56701):
> https://lists.yoctoproject.org/g/yocto/message/56701
> Mute This Topic: https://lists.yoctoproject.org/mt/90356869/3617608
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> sartre.leo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
L=C3=A9o

--00000000000026b88305dc4017f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Casey,</div><div><br></div><div>I&#39;ve recently =
had to activate secureboot on some uefi target.</div><div>I was trying to u=
se meta-secure-core/meta-efi-secure-boot aft first, but after digging a bit=
 more into meta-intel, I&#39;ve discovered that the implementation of meta-=
intel is cleaner and simpler than in meta-secure-core.</div><div>If you are=
 not interested about using microsoft certificates and the complicated shim=
 + grub combo and that would plan to provision your own certificate in the =
firmware (which was what I wanted), I think meta-intel is a beter approach.=
</div><div>Meta-intel leverate what they call &quot;comboapp&quot;: <a href=
=3D"https://git.yoctoproject.org/meta-intel/tree/classes/uefi-comboapp.bbcl=
ass">https://git.yoctoproject.org/meta-intel/tree/classes/uefi-comboapp.bbc=
lass</a></div><div>It is a bundle of systemd-boot (a minimal uefi osloader =
implementation from systemd, previously gummiboot) with the kernel, cmdline=
 and optionally a initramfs, furthermore it provide some clean and simple c=
lass to only sign an uefi binary: <a href=3D"https://git.yoctoproject.org/m=
eta-intel/tree/classes/uefi-sign.bbclass">https://git.yoctoproject.org/meta=
-intel/tree/classes/uefi-sign.bbclass</a>, if the uefi kernel stub is enoug=
h for your use case (which was my case)<br></div><div>I do not know if you =
really need to keep grub, but if you can replace it with systemd boot and t=
his uefi combo app from meta-intel layer (or more simply only use uefi kern=
el stub with a bundled initramfs), I think it could simplify a lot your boo=
t process thus it will be simpler to implement an OTA solution with Mender.=
</div><div>This is something that I will eventually try to achieve in the n=
ear future, so I will keep you posted about my progress if you are interest=
ed.</div><div><br></div><div>Hope this will help you.</div><div>Regards,</d=
iv><div>--</div><div>L=C3=A9o<br></div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0sam. 9 avr. 2022 =C3=A0=C2=
=A016:38, Ballentine, Casey via <a href=3D"http://lists.yoctoproject.org">l=
ists.yoctoproject.org</a> &lt;casey.ballentine=3D<a href=3D"mailto:essvote.=
com@lists.yoctoproject.org">essvote.com@lists.yoctoproject.org</a>&gt; a =
=C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Hello,<br><br>We have an Intel Elkhart Lake device that we are trying to =
get Secure Boot (via meta-secure-core/meta-efi-secure-boot SELoader) workin=
g on using the Dunfell release. This device uses Mender for updates via USB=
. We have Secure Boot working successfully on a similar device, but that de=
vice does not employ Mender.<br><br>On the HDD image, /boot/bzImage and /bo=
ot/bzImage.p7b (the detached digital signature) are present, as are the set=
 of GRUB artifacts in /boot/efi/BOOT/EFI. As a side note, we do not use an =
initramfs.<br><br>Grub and grub.cfg validate on boot, but /boot/bzImage doe=
s not.<br><br>I&#39;ve read that SELoader can&#39;t access anything outside=
 of the /efi partition. If that&#39;s correct, how do we work around this i=
ssue?<br><br>Thanks for any help, and let me know if you need further infor=
mation.<br><br>Best,<br>Casey
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56701): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56701" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56701</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90356869/3617=
608" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90356869/3617608</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/dunfell</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:sartre.leo@gmail.com" target=3D"_blank">sartre.l=
eo@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature">L=C3=A9o</div>

--00000000000026b88305dc4017f3--

