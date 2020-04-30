Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.2343.1588228501493998204
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Apr 2020 23:35:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dWSe+ksQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: jupiter.hce@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id pg17so3731070ejb.9
        for <yocto@lists.yoctoproject.org>; Wed, 29 Apr 2020 23:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VQt+gXVCdrAWvyUdgyr9Uk9i32bFKlUG+0TjvegROcc=;
        b=dWSe+ksQsJEGJyFDR7WslR0aHR9NfCamOqPMbzoKGvfDmLS6c3TVng8hDwA1BkgpwW
         aY4iPCuNzyzIded+gia2GFE9PKxy8aVT7ZutG8jp913AXLKIC2u+sJYKnywMErUiA8X0
         xMe/tDe/dYyM+b8O3OpKlD1ocFPsKHlHZLRw+v3m23OITDOZa8wz1qjmn4WajaVoUAwQ
         BMwTofwCd4kD7QXauXJAjnbgXew8P4zELLr2IzXd3h4wEB/YB/E0Ff0wYlgXkKRfEOYi
         vw/IYQ246fQP9Cu9Ic/jghHnj1dMpCCvpzk9i6l+whsn8lBr/p+iT+htT3jNsV4hT7/3
         8zLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VQt+gXVCdrAWvyUdgyr9Uk9i32bFKlUG+0TjvegROcc=;
        b=inguMclkRcKTfsqsHJNGgLbShyTn242cbb39pgKLz28D9r5YI4kVydzDmDSpURDmXZ
         xKeeCzJU2mj/H/z1zISubPoxBMfjfxrB6oAuED5fdl4ErGTRXiiCO+bGaURe2n3oz8S9
         MdUIHO7ZMRfM/KtSotevgXzLy8iiuUA0FGGqcvyB6ECQoCnqjmKOQw8P+47XKnjiL7BS
         y19PEg2bz0bezYypNa/3odr89vATqmoCropLZ0KR2UWP/uu3FiBft+qnaLhTB73TIL4n
         iznhC3FTrl08dBpFIjl99UYpA2KgGX26vnZsBjmYBjJXCjADB7XWwpIKrAyGvvr9/lzQ
         CZLA==
X-Gm-Message-State: AGi0PubwOr/XdnuBeB6J4egGxKtWRIaJKPe2ihZG/Mx4qFvbvXE2zhOM
	VhWqRxu8cHi/gyr1IWToztZy+mkjjn6Sc72spbOfDdEc
X-Google-Smtp-Source: APiQypLfbCn5uCpFN10g/DvBNrK8tNbUKFYWS5mnumDL+IMC44QTo2B+rRFjlWEwKY0tDDGYHho3MYYwBbtsQKEjBw8=
X-Received: by 2002:a17:906:31da:: with SMTP id f26mr1254480ejf.308.1588228499509;
 Wed, 29 Apr 2020 23:34:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab4:a881:0:0:0:0:0 with HTTP; Wed, 29 Apr 2020 23:34:58
 -0700 (PDT)
In-Reply-To: <CAA=hcWSFY+hWiHQxx9q8eqcaaFZYJaQ1ZfzZx9cTfFjW2XO5fA@mail.gmail.com>
References: <CAA=hcWSKre4hC8m=tdiavFSO1GbetceQy-jbWg0kzrMFK7QBSg@mail.gmail.com>
 <CA+4=imaKgPkYgm-ks8jh0LnTmqovRrMuesXV0RsEmtWs4fmPHQ@mail.gmail.com> <CAA=hcWSFY+hWiHQxx9q8eqcaaFZYJaQ1ZfzZx9cTfFjW2XO5fA@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Thu, 30 Apr 2020 16:34:58 +1000
Message-ID: <CAA=hcWSXzf7SOc4d3tg97O3aORLdFrrD3q1D4y=z2WtqPvfdCQ@mail.gmail.com>
Subject: Re: [yocto] Which recipe for Linux tools to run u-boot command inside Linux?
To: yocto@lists.yoctoproject.org
Cc: Yann Dirson <yann.dirson@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yann,

Thanks for the tips, I have run to add libubootenv, but got so many
errors, I can build a good Yocto image before adding libubootenv, what
was it going on? Does that mean I need to add all kernel modules and
to rebuild kernel configure?

kernel-image
kernel-base
kernel-image-zimage
kernel-module-rtc-dev
packagegroup-base-extended
packagegroup-base-usbhost
packagegroup-base-wifi
packagegroup-distro-base
packagegroup-base
packagegroup-machine-base
packagegroup-base-3g
kernel-module-rtc-proc
kernel-module-ieee80211-crypt
kernel-module-rtc-sysfs
kernel-modules
kernel-module-input
kernel-module-ehci-hcd
kernel-module-usbmouse
kernel-module-crypto_algapi
kernel-module-aes-generic
kernel-module-g-ether
kernel-module-uhci-hcd
kernel-module-nls-cp437
kernel-module-uinput
kernel-module-snd-pcm-oss
kernel-module-michael-mic
kernel-module-zd1211rw
kernel-module-arc4
kernel-module-ieee80211-crypt-wep
kernel-module-pxa27x_udc
kernel-module-cryptomgr
kernel-module-usb-storage
kernel-module-ecb
kernel-module-usbhid
kernel-module-gadgetfs
kernel-module-unixlibubootenv
udev
packagegroup-core-boot
systemd
kernel-module-aes
kernel-module-vfat
kernel-module-msdos
kernel-module-nls-utf8
kernel-module-g-serial
kernel-module-usbnet
kernel-module-usbcore
kernel-module-mousedev
kernel-module-usbserial
kernel-module-sd-modlibubootenv
kernel-module-cdc-wdm
kernel-module-nls-iso8859-1
kernel-module-ieee80211-crypt-ccmp
kernel-module-snd-mixer-os
kernel-module-g-file-storage
kernel-module-cdc-acm
kernel-module-ieee80211-crypt-tkip
kernel-module-scsi-mod

NOTE: Runtime target 'libubootenv' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libubootenv']
NOTE: Runtime target 'packagegroup-solar' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-image' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-image',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-base' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-base',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-image-zimage' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-image-zimage',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-rtc-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-rtc-dev',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'packagegroup-base-extended' is unbuildable, removing.=
..
Missing or unbuildable dependency chain was:
['packagegroup-base-extended', 'kernel-module-rtc-dev', 'solar-image',
'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'packagegroup-base-usbhost' is unbuildable, removing..=
.
Missing or unbuildable dependency chain was:
['packagegroup-base-usbhost', 'kernel-module-rtc-dev', 'solar-image',
'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'packagegroup-base-wifi' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['packagegroup-base-wifi', 'kernel-module-rtc-dev', 'solar-image',
'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'packagegroup-distro-base' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['packagegroup-distro-base', 'kernel-module-rtc-dev', 'solar-image',
'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'packagegroup-base' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-base',
'kernel-module-rtc-dev', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'packagegroup-machine-base' is unbuildable, removing..=
.
Missing or unbuildable dependency chain was:
['packagegroup-machine-base', 'kernel-module-rtc-dev', 'solar-image',
'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'packagegroup-base-3g' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-base-3g',
'kernel-module-rtc-dev', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-rtc-proc' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-rtc-proc', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-ieee80211-crypt' is unbuildable, removi=
ng...
Missing or unbuildable dependency chain was:
['kernel-module-ieee80211-crypt', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-rtc-sysfs' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-rtc-sysfs', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-modules' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-modules',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-input' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-input',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-ehci-hcd' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-ehci-hcd', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-usbmouse' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-usbmouse', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-crypto_algapi' is unbuildable, removing=
...
Missing or unbuildable dependency chain was:
['kernel-module-crypto_algapi', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-aes-generic' is unbuildable, removing..=
.
Missing or unbuildable dependency chain was:
['kernel-module-aes-generic', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-g-ether' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-g-ether',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-uhci-hcd' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-uhci-hcd', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-nls-cp437' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-nls-cp437', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-uinput' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-uinput',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-snd-pcm-oss' is unbuildable, removing..=
.
Missing or unbuildable dependency chain was:
['kernel-module-snd-pcm-oss', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-michael-mic' is unbuildable, removing..=
.
Missing or unbuildable dependency chain was:
['kernel-module-michael-mic', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-zd1211rw' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-zd1211rw', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-arc4' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-arc4',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-ieee80211-crypt-wep' is
unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-ieee80211-crypt-wep', 'solar-image',
'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-pxa27x_udc' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-pxa27x_udc', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-ohci-hcd' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-ohci-hcd', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-cryptomgr' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-cryptomgr', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-usb-storage' is unbuildable, removing..=
.
Missing or unbuildable dependency chain was:
['kernel-module-usb-storage', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-ecb' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-ecb',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-usbhid' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-usbhid',
'solar-image', 'packagegroup-solar', 'libubootenv']libubootenv
NOTE: Runtime target 'kernel-module-gadgetfs' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-gadgetfs', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-unix' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-unix',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'udev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['udev',
'kernel-module-unix', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'packagegroup-core-boot' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['packagegroup-core-boot', 'udev', 'kernel-module-unix',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'systemd' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['systemd',
'kernel-module-unix', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-aes' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-aes',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-vfat' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-vfat',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-msdos' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-msdos',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-nls-utf8' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-nls-utf8', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-g-serial' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-g-serial', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-usbnet' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-usbnet',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-usbcore' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-usbcore',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-mousedev' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-mousedev', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-usbserial' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-usbserial', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-sd-mod' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-sd-mod',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-cdc-wdm' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-cdc-wdm',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-nls-iso8859-1' is unbuildable, removing=
...
Missing or unbuildable dependency chain was:
['kernel-module-nls-iso8859-1', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-ieee80211-crypt-ccmp' is
unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-ieee80211-crypt-ccmp', 'solar-image',
'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-snd-mixer-oss' is unbuildable, removing=
...
Missing or unbuildable dependency chain was:
['kernel-module-snd-mixer-oss', 'solar-image', 'packagegroup-solar',
'libubootenv']
NOTE: Runtime target 'kernel-module-g-file-storage' is unbuildable, removin=
g...
Missing or unbuildable dependency chain Yann Dirson
<yann.dirson@blade-group.com>was: ['kernel-module-g-file-storage',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-cdc-acm' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['kernel-module-cdc-acm',
'solar-image', 'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-ieee80211-crypt-tkip' is
unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-ieee80211-crypt-tkip', 'solar-image',
'packagegroup-solar', 'libubootenv']
NOTE: Runtime target 'kernel-module-scsi-mod' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['kernel-module-scsi-mod', 'solar-image', 'packagegroup-solar',
'libubootenv']

Thank you.

Kind regards,

- jh
>> On 4/28/20, Yann Dirson <yann.dirson@blade-group.com> wrote:
>> Hello,
>>
>> It depends on the yocto version.  Since dunfell they are in
>> libubootenv-bin, before that they were in u-boot-fw-utils.
>>
>> Le mar. 28 avr. 2020 =C3=A0 10:04, JH <jupiter.hce@gmail.com> a =C3=A9cr=
it :
>>
>>> Hi,
>>>
>>> I was told you can run u-boot command inside of Linux, which recipe
>>> can be used in Yocto for install that package?
>>>
>>> Thank you.
>>>
>>> Kind regards,
>>>
>>> - jh
>>>
>>>
>>> --
>>> "A man can fail many times, but he isn't a failure until he begins to
>>> blame somebody else."
>>> -- John Burroughs
>>>
>>>
>>
>>
>> --
>> Yann Dirson <yann@blade-group.com>
>> Blade / Shadow -- http://shadow.tech
>>
>
>
> --
> "A man can fail many times, but he isn't a failure until he begins to
> blame somebody else."
> -- John Burroughs
>


--=20
"A man can fail many times, but he isn't a failure until he begins to
blame somebody else."
-- John Burroughs
