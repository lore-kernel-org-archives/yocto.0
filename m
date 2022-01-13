Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0CA8C433F5
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 17:49:34 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web09.406.1642096173833718182
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 09:49:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BcrMNmZR;
 spf=pass (domain: gmail.com, ip: 209.85.221.45,
 mailfrom: jpewhacker@gmail.com)
Received: by mail-wr1-f45.google.com with SMTP id h10so11570344wrb.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 09:49:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=PoGvbxKsAnRI3jD/PMyqMGBnarsViA106VmpEtYyx2U=;
        b=BcrMNmZR2dVrqil6eLULcfk5Eu2rAPoqvqeT+R7qDsXh7TKnjTuHXhBJ43voW9klfF
         xDABBruKlgAsCjAwX2CmgxKN8AUJjRrItEE/20ZFdJv2STUABkOq6x4xXYQvr6zFCHBz
         JxDAAYBXqlbz93jGSDDrIiqXx0NOq58tmy0z2iwJL3pw6uI3iOIuu4ntPHo9c+E6AQGg
         IN2sPIcs6akDHVlCGA4urCKWVtSwUi/3QAXMkW6UosS1hyGm+lzMQHlH7G/c6Pamo5Kq
         zhvHq46uudukCM3MCnUVR/AuymDnRpk86TGMlTiEgZp5jfe6AUbWa05VDIzmRpqP/Chl
         +xiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=PoGvbxKsAnRI3jD/PMyqMGBnarsViA106VmpEtYyx2U=;
        b=Bd9PpN7lL1ZTJvSd9PUeHonNAgG4ApSpb3SSzbwucLB0f/yrHKD9Vov7lFxqZ7n3xN
         ZPb4KkEyRT2E3dPTbetutXlxanyaWpbl4J6ix4SaeCLeaj4f1fHgKEXBiy+wA3VLKfXs
         qy/PLYs1L7P5Snzc6Dh8XpzpAGrNxidyokwWeeEx8VAm+J5fy//z+aqHhECsgEJUtnCT
         xc9tjZz3KqMuaAUE5TRB3SBQCcidWgl/hb6+KIHxpRdrQaBn/C8eCZ4T9WpgrOAtMqxC
         F9yQRCbxrB9YU8wmhV6ZghuNBK8gNRPq2Xeh5g1+OnPpnwOzLdsZFac7wiyAP4mz9LTh
         dlEA==
X-Gm-Message-State: AOAM530B48No1jmBunTlzi6tZjyCFZ5VAvD+j/xroPN4I8NrgHVoumcg
	OVEVRs3/gFbnKieg5cMuSpiW8DCNDWh0CGBFNng=
X-Google-Smtp-Source: 
 ABdhPJwKJ95SQNyMoXycIteJHRda3T1XHxo2KIkkqW+VTYkPYCs9Q1tCXXox3ieyl6xZnyLsasY83s78wc5ZlEbQErA=
X-Received: by 2002:a5d:4145:: with SMTP id c5mr5033211wrq.188.1642096172295;
 Thu, 13 Jan 2022 09:49:32 -0800 (PST)
MIME-Version: 1.0
References: <b4336117-2693-c1f4-30fb-08b92a5e5e1a@bootlin.com>
In-Reply-To: <b4336117-2693-c1f4-30fb-08b92a5e5e1a@bootlin.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 13 Jan 2022 11:49:20 -0600
Message-ID: 
 <CAJdd5GaD-P8CR3JGVWtE=U4MVYkB8EUk3NC-HkWAfgT-TUBkiQ@mail.gmail.com>
Subject: Re: [yocto] Red alert but apparently harmless setscene errors
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 17:49:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55840

On Thu, Jan 13, 2022 at 11:23 AM Michael Opdenacker
<michael.opdenacker@bootlin.com> wrote:
>
> Hi,
>
> Sharing this before opening a bug if needed...
>
> I'm building the latest Poky ("core-image-minimal" plus a few extra
> packages).
>
> I'm always getting the below setscene errors after upgrading my Poky
> sources:
>
> ... <more similar errors before>
> WARNING: libffi-native-3.4.2-r0 do_populate_sysroot_setscene: Failed to
> fetch URL
> file://universal/c8/be/sstate:libffi-native:x86_64-linux:3.4.2:r0:x86_64:=
7:c8be7b784ce8ebbf6d897367bc8e96f6718040858d61f9a4f6aa5325821b0ce5_populate=
_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/c8/be/sstate:libffi-n=
ative:x86_64-linux:3.4.2:r0:x86_64:7:c8be7b784ce8ebbf6d897367bc8e96f6718040=
858d61f9a4f6aa5325821b0ce5_populate_sysroot.tar.zst.siginfo,
> attempting MIRRORS if available
> ERROR: libffi-native-3.4.2-r0 do_populate_sysroot_setscene: Fetcher
> failure: Unable to find file
> file://universal/c8/be/sstate:libffi-native:x86_64-linux:3.4.2:r0:x86_64:=
7:c8be7b784ce8ebbf6d897367bc8e96f6718040858d61f9a4f6aa5325821b0ce5_populate=
_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/c8/be/sstate:libffi-n=
ative:x86_64-linux:3.4.2:r0:x86_64:7:c8be7b784ce8ebbf6d897367bc8e96f6718040=
858d61f9a4f6aa5325821b0ce5_populate_sysroot.tar.zst.siginfo
> anywhere. The paths that were searched were:
>     /media/mike/ssd/yocto/poky/build/sstate-cache
>     /media/mike/ssd/yocto/poky/build/sstate-cache
> WARNING: libpcre2-native-10.39-r0 do_populate_sysroot_setscene: Failed
> to fetch URL
> file://universal/bf/03/sstate:libpcre2-native:x86_64-linux:10.39:r0:x86_6=
4:7:bf035286ff06470377fe9c9298ba116222c9d557f2fa44d418beb919aa185db9_popula=
te_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/bf/03/sstate:libpcr=
e2-native:x86_64-linux:10.39:r0:x86_64:7:bf035286ff06470377fe9c9298ba116222=
c9d557f2fa44d418beb919aa185db9_populate_sysroot.tar.zst.siginfo,
> attempting MIRRORS if available
> ERROR: libpcre2-native-10.39-r0 do_populate_sysroot_setscene: Fetcher
> failure: Unable to find file
> file://universal/bf/03/sstate:libpcre2-native:x86_64-linux:10.39:r0:x86_6=
4:7:bf035286ff06470377fe9c9298ba116222c9d557f2fa44d418beb919aa185db9_popula=
te_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/bf/03/sstate:libpcr=
e2-native:x86_64-linux:10.39:r0:x86_64:7:bf035286ff06470377fe9c9298ba116222=
c9d557f2fa44d418beb919aa185db9_populate_sysroot.tar.zst.siginfo
> anywhere. The paths that were searched were:
>     /media/mike/ssd/yocto/poky/build/sstate-cache
>     /media/mike/ssd/yocto/poky/build/sstate-cache
> ERROR: libpcre2-native-10.39-r0 do_populate_sysroot_setscene: No
> suitable staging package found
> ERROR: Logfile of failure stored in:
> /media/mike/ssd/yocto/poky/build/tmp/work/x86_64-linux/libpcre2-native/10=
.39-r0/temp/log.do_populate_sysroot_setscene.315121
> WARNING: Setscene task
> (virtual:native:/media/mike/ssd/yocto/poky/meta/recipes-support/libpcre/l=
ibpcre2_10.39.bb:do_populate_sysroot_setscene)
> failed with exit code '1' - real task will be run instead
> Currently  4 running tasks (1838 of 1838/467 of 4630)  10%
> |################
>
> As expected, the error messages are highlighted in red, but they are not
> critical as BitBake can always build the corresponding recipes from sourc=
es.
>
> Two questions:
>
>   * Anything wrong with my local sstate cache? Should I erase it?

This usually happens when there is a sstate archive (.tar.zst), but no
corresponding siginfo file (.tar.zst.siginfo). The sstate code assumes
the siginfo file is present if archive is present, and "errors" if
not. In my experience, this usually happens when you try to clean out
the sstate cache using a mechanism that is unaware of the relationship
and deletes the siginfo and not the archive (e.g. some form of "find
-delete ...")

>   * Should these issues really be treated as errors, scaring users that
>     something could be wrong while the resulting build looks correct anyw=
ay?

As noted by the build, it will actually just execute the missing
tasks; one annoyance (depending on context) is that bitbake will
return a non-zero exit code if any ERROR occurs in the build, even
though in this case it was recovered.

This has been discussed at length before (I can't find a citation
ATM), and I believe it was left this way because this particular case
is considered an actual error that should never happen and needs
investigation on the YP Autobuilder.

>
> Thanks in advance
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55838): https://lists.yoctoproject.org/g/yocto/messag=
e/55838
> Mute This Topic: https://lists.yoctoproject.org/mt/88401713/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gma=
il.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

