Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30B40C433F5
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 10:26:56 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.9169.1651746409064918474
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 May 2022 03:26:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ob2s1F+/;
 spf=pass (domain: gmail.com, ip: 209.85.208.173,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id c15so4991591ljr.9;
        Thu, 05 May 2022 03:26:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=+GoCa1fzUBEFFM3sFbQY3KAldhI5lG1CLMIxMXMMk5I=;
        b=Ob2s1F+/hQEsqJYVwsaSdVBjeNHDcuQKLc2oCum1JxH3PSuU/OVlBqsNcwuhRmuDsJ
         CPhvaAaJ+wwKQ4CshMouk75HcAlbgNFQq1EgbGbfsuqEOtq12OGVllpFywax2vRcIU/W
         n1+KBsWhOKmT+REurO98lINzooZZ5CuFfaA9CHCUGrxna2JEZWyq2yBvY9CoZ3Oh7hZN
         AEzRuf2NbhWF2Ci6ylx2FQz0Y1eVRiiYTLP8TWaxkXbeWSOyB0aCzr+HZNyBb5wdqvId
         nmqLxz4JHFyeTZC539sEqaD2gNhWltgXCoxwypAzfCbCPyepUNkqsPZolUWOEpzMpqVA
         i07g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=+GoCa1fzUBEFFM3sFbQY3KAldhI5lG1CLMIxMXMMk5I=;
        b=T3xXlF22pDsBSp3c5CaFG4n3dTxmwocaggdBtIxh40469HdlXuCQOS0spkS904fnNM
         fWPBH/pAcQ8wobjlwloAUSD7bKY3YkqhMTjBtiJixQNHP2O65cgfpyyNDcnFYOHzSayg
         fNcZeU/kIQLVIHmuGA1Z2e3x5a/jj4q7PLGk72mypOXYbn+tszaC8bzi9HRWbEMI/+hF
         DEIkWt+qaXrW38/jUpNNZXofg1IDAHLPIzd1r7lffxmYrKK+i37AGo7Sa5mM5LVGz79E
         pX94BLee33Ir1/y4iqA6qgIIZL0lz3mDQucRQV5hXnMX7jgD7nJXWmbYkWRgN2/tY6Ya
         75vA==
X-Gm-Message-State: AOAM5339FlL+iAhjNTIhLxM1Nz5gBXqKjqfgQxW7MjknGoaxKWH9jxwj
	q0CEzX9gVU9f1cyFc0zVbAywxmB5uuXia3t793o=
X-Google-Smtp-Source: 
 ABdhPJwFWOqUzRofpj1OiVMtTEtHlRFUZgtOAjYOVTuEwuybiYw3kaqV8ftP4WVIVArOoSfXYEHSWebY50hB/6lu3YA=
X-Received: by 2002:a2e:8753:0:b0:24f:d10:4277 with SMTP id
 q19-20020a2e8753000000b0024f0d104277mr16047919ljj.513.1651746407120; Thu, 05
 May 2022 03:26:47 -0700 (PDT)
MIME-Version: 1.0
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
 <CAGAf8LwAdtJAyoBTtX40s4iyCcuuA4xrYw9VRTU9VYNk0Yh+hQ@mail.gmail.com>
 <7b2fce371a4d490f7691a803823c7c6f@vivaldi.net>
 <0f7fd537-cb79-29ab-d3fe-99bcc0d5811f@bootlin.com>
 <0f4b601e521de98b00927cec77512354@vivaldi.net>
 <CAEt6Nwq8BbS2jTzm0vyghttXB9u0FKvVGto20u-ko8HE2Kx1iw@mail.gmail.com>
 <4af379afe365bfeb36bd65a481008390@vivaldi.net>
 <2CBD3A38-60D4-4329-84EC-59E77889C109@2net.co.uk>
In-Reply-To: <2CBD3A38-60D4-4329-84EC-59E77889C109@2net.co.uk>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 5 May 2022 12:26:35 +0200
Message-ID: 
 <CANNYZj8_6xSDJKnPkWvJHiHY8MrCu6G-TAi24GsAsyWX3-3Z9A@mail.gmail.com>
Subject: Re: [yocto] OE Linux & board-support-package
To: csimmonds <chris@2net.co.uk>
Cc: jchludzinski@vivaldi.net,
	"jchludzinski via lists.yoctoproject.org"
 <jchludzinski=vivaldi.net@lists.yoctoproject.org>,
	Josef Holzmayr <jester@theyoctojester.info>,
	Michael Opdenacker <michael.opdenacker@bootlin.com>,
	Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 10:26:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57005

Demo apps is the least of the worst. They also add benchmarks, make
tweaks to components that are in distribution (rather than hardware
support) scope, and even go ahead and define their own distributions,
and then make it impossible or very difficult to separate the distro
from the BSP. Oh, and all of this on top of yocto from 2014.

That's where the 'vendor from hell' moniker comes from.

Alex

On Thu, 5 May 2022 at 12:22, csimmonds <chris@2net.co.uk> wrote:
>
> BSP is not a well defined term in embedded Linux. Back in the day, Montav=
ista tried to popularise the term LSP, meaning Linux Support Package but it=
 never caught on. These days, BSP generally means all the things you need t=
o run a basic system. So that's bootloader, device tree, kernel config, ker=
nel patches (if any), and firmware blobs. It can also include user space co=
nfig such as video codecs, opengl libraries, and systemd units to start the=
 respective daemons.
>
> SoC and SoM vendors often overload their OE BSPs with irrelevant demo app=
s as well. Constant bugbear of system integrators.
>
> HTH,
> Chris
>
> On 5 May 2022 10:51:39 BST, "jchludzinski via lists.yoctoproject.org" <jc=
hludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
>>
>> OK, let me try this:
>>
>> With other embedded OS's, the hardware specifics that are in the BSP are=
 in the device trees in Linux. I assume the BSP's for OE Linux are rather s=
imple?
>>
>>
>>
>> On 2022-05-05 04:47, Josef Holzmayr wrote:
>>>
>>> Howdy!
>>>
>>> Am Do., 5. Mai 2022 um 10:43 Uhr schrieb jchludzinski via
>>> lists.yoctoproject.org
>>> <jchludzinski=3Dvivaldi.net@lists.yoctoproject.org>:
>>>>
>>>>
>>>> OK, let's go with that.
>>>>
>>>> I've watched the "Live Coding with Yocto Project #1: download and firs=
t
>>>> build" youtube video. Where is the BSP built in this procedure?
>>>
>>>
>>> The BSP that is implicitly used in that video is the generic QEMU one,
>>> which comes included with poky. Technically speaking, it lives in
>>> https://git.yoctoproject.org/poky/tree/meta/conf/machine and
>>> https://git.yoctoproject.org/poky/tree/meta/recipes-kernel/linux/linux-=
yocto_5.15.bb
>>>
>>> A BSP can be many things, and this one is a rather small one, as
>>> booting into and running linux on QEMU doesn't need patching and all
>>> that, so in that case it comes pretty close to the perfect world that
>>> Michael mentioned.
>>>
>>> Greetz,
>>> Josef (who did that video, actually)
>>>
>>>>
>>>>
>>>>
>>>> On 2022-05-05 03:16, Michael Opdenacker via lists.yoctoproject.org
>>>> wrote:
>>>>>
>>>>> On 5/5/22 08:39, jchludzinski via lists.yoctoproject.org wrote:
>>>>>>
>>>>>>  A board-support-package (BSP) is software that provides a layer of
>>>>>>  abstraction from the physical board specifics for the host embedded=
 OS
>>>>>>  (e.g., VXworks).
>>>>>>
>>>>>>  I believe the device tree files (*.dts, *dtsi) in OE Linux provide =
the
>>>>>>  same function. It allows to OE kernel code to be independent of dev=
ice
>>>>>>  specifics.
>>>>>
>>>>>
>>>>>
>>>>>  The Device Tree files are just descriptions of the hardware. In a
>>>>>  perfect world, you could indeed use the same mainline kernel to supp=
ort
>>>>>  all possible devices. However, that kernel would be unnecessarily bi=
g
>>>>>  for your custom system. You most probably want to customize its
>>>>>  configuration, and may also need custom kernel drivers and patches.
>>>>>  There's also the need for a bootloader compiled for your platform.
>>>>>
>>>>>  That's why we need BSPs :-)
>>>>>
>>>>>  Cheers,
>>>>>  Michael.
>>>>>
>>>>>
>>>>>
>>>>
>>>>
>>>>
>>>
>>>
>>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57004): https://lists.yoctoproject.org/g/yocto/messag=
e/57004
> Mute This Topic: https://lists.yoctoproject.org/mt/90904726/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

