Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CB1CC433F5
	for <webhook@archiver.kernel.org>; Sun, 17 Oct 2021 11:32:36 +0000 (UTC)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web08.21991.1634470354910641574
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Oct 2021 04:32:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JPuMHmni;
 spf=pass (domain: gmail.com, ip: 209.85.222.47,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id h4so325491uaw.1
        for <yocto@lists.yoctoproject.org>;
 Sun, 17 Oct 2021 04:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Eq6dFOAHnQbHbHa1f+jmOwZHbMVc0BpFOBwYRQAaxTk=;
        b=JPuMHmnijr6hFjMZlhLVOXbG7p3tt52LAG22f3AbPlaNogqwZlN6A7FYm+PPMf+M/G
         +tgBGVWBLxusrL6gwuPrN1LT+m2S92XtxebcdwwKBPPc2Aefy6jjDt0SwxMOLJ9ui8BD
         t+4otRDJ6Xwtz2yyhmeH7B8Qey6JmSdu1gX+fe7Fe50eLaFMSkOYtfV/kAJPMOnIKRqW
         C+j5OujbUnxzSQD02g4VIDjXP8uwD0wF/baILNcKRP5XcBxfZXMImURCsdcwpevvt3fb
         NSL2PKV1rsvyFBFUxqOs136ljCLfFoAifp8JZiwJVnHmdQmghM7QNIX/HeHIK6ReapiV
         qLcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Eq6dFOAHnQbHbHa1f+jmOwZHbMVc0BpFOBwYRQAaxTk=;
        b=AEMbopgs/rth3m12usGas8IcHh/5hJA+9iFWRhy22VdtLkRA5mnSJQdcOWMXI6Bjpg
         cQUSWVeAtkuGNTMIlg6IGR/jDjcb0LjjRLfwamCFF4h6vCykMHqrestQMPlrmHEWngQZ
         rnSbJ/2JAVjfb9W4cMT8nv1dS50WylXQBYRPF+1OcmtleXIKLSXZBjrDS1BgZ8TETv9w
         TnHxpNIQVTeKBKikOoP5PbdiMCNUQAa2q6aO/7+CwO9p/rqYtKLA7OsjUpwo0SWIr/L7
         yHy3UrPpBSXE9Z25fystyzTF+juNidLaoW6dZK+YgIcEq8msjQ1eyMu9zEGh6qTprEWr
         Bp/g==
X-Gm-Message-State: AOAM531gG7Ys53Y7R+apLHhpC1FGmqNxh9d6EtJYKeoaccq/9qrK40j1
	t4rktvLVWTQZFdUjx2jpwZNwKd5sBqritcqe1xE=
X-Google-Smtp-Source: 
 ABdhPJzGaBgg8Mh7kyaT7UrIWIy2TSDB5f5yKpfdTeiEPsBitMRPLK3Aix7cOgY3FvyocO9+uWR0NeDK1ei/DW9GOfQ=
X-Received: by 2002:ab0:1623:: with SMTP id k32mr21030942uae.71.1634470354078;
 Sun, 17 Oct 2021 04:32:34 -0700 (PDT)
MIME-Version: 1.0
References: <31cf8b88-5441-4779-a26d-4b6b3c310b77@www.fastmail.com>
 <CANNYZj_OpPwNOb+jADgG5Escpwj+WLcr_nhihfLd-NUhyHFTNQ@mail.gmail.com>
 <af53ff0e-5abc-40fb-b4c5-3f36a3c1d8c4@www.fastmail.com>
 <CANNYZj-_znrzjOb_cjtDEg4=ZxMCGEaVzCJ+txkJEMoqzBf_Zw@mail.gmail.com>
 <c39ba639-c4a6-4260-83b0-37a88d247a3a@www.fastmail.com>
 <CANNYZj9kPTThuVcbCtNZi8C5NwMMRgeRduO9r0n6TNcewy9OwQ@mail.gmail.com>
 <0a94aca2-2539-4ff1-b892-94a3a42e8aff@www.fastmail.com>
In-Reply-To: <0a94aca2-2539-4ff1-b892-94a3a42e8aff@www.fastmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 17 Oct 2021 13:32:22 +0200
Message-ID: 
 <CANNYZj-hpvwOZXA3YBUX5QxB2etofT+z5ef-McukLeLuRc=Y_g@mail.gmail.com>
Subject: Re: [yocto] How to enable graphics acceleration on qemux86-64?
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: "yocto@lists.yoctoproject.org," <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d9cec705ce8ac874"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Oct 2021 11:32:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55088

--000000000000d9cec705ce8ac874
Content-Type: text/plain; charset="UTF-8"

On Sat, 16 Oct 2021 at 14:08, Manuel Wagesreither <ManWag@fastmail.fm>
wrote:

> Here are some updates:
>
> Building core-image-weston on hardknott succeeded. Couldn't `runqmu kvm
> slirp sdl core-image-weston` first because I got an error message about
> 'dri.pc' being missing. Debian package search told me it's part of
> 'mesa-commond-dev', so I installed it on my host machine and indeed, that
> runqemu command above got working again. Not just that, now even OpenGL
> acceleration with `runqmu kvm slirp sdl gl core-image-weston` worked,
> altough I didn't change anything OpenGL-wise. core-image-weston feels
> really snappy now. Great!
>
> I got curious and reverted back to dunfell to check if the now-installed
> dri.pc made a difference, but no, it didn't. `runqemu` with `sdl` started
> (like it did before), and with `sdl gl` it still said "OpenGL support is
> disabled".
>

You need to replicate the settings from oe-selftest (link provided
previously). I think on dunfell it's not enabled out of the box, and needs
to be configured explicitly.
http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=dunfell#n167


> Ok, so then I moved on to get my own image which is on hardknott now
> working.
>
> I `runqemu`d my image with 'sdl' and 'gl' and it started up fine. Weston
> did no longer start automatically so I did manually. Ran `DISPLAY=:0
> glxgears` but it told me "couldn't open display :0". Installed
> 'weston-xwayland' so I'd get "/usr/lib/libweston-9/xwayland.so" but that
> didn't change anything.
>
> Can't yet say if `DISPLAY=:0 glxgears` works on core-image-weston as it's
> still building.
>

DISPLAY is a setting for the host, so qemu can display the sdl or gtk
window. On the qemu guest you need to get weston to start first.

Alex

--000000000000d9cec705ce8ac874
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Sat, 16 Oct 2021 at 14:08, Manuel Wagesreither &lt;<a href=3D"mai=
lto:ManWag@fastmail.fm">ManWag@fastmail.fm</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><u></u><div>Here are some updates=
:<br><div><br></div><div>Building core-image-weston on hardknott succeeded.=
 Couldn&#39;t=C2=A0`runqmu kvm slirp sdl core-image-weston` first because I=
 got an error message about &#39;dri.pc&#39; being missing. Debian package =
search told me it&#39;s part of &#39;mesa-commond-dev&#39;, so I installed =
it on my host machine and indeed, that runqemu command above got working ag=
ain. Not just that, now even OpenGL acceleration with `runqmu kvm slirp sdl=
 gl core-image-weston` worked, altough I didn&#39;t change anything OpenGL-=
wise. core-image-weston feels really snappy now. Great!<br></div><div><br><=
/div><div>I got curious and reverted back to dunfell to check if the now-in=
stalled dri.pc made a difference, but no, it didn&#39;t. `runqemu` with `sd=
l` started (like it did before), and with `sdl gl` it still said &quot;Open=
GL support is disabled&quot;.<br></div></div></blockquote><div><br></div><d=
iv>You need to replicate the settings from oe-selftest (link provided previ=
ously). I think on dunfell it&#39;s not enabled out of the box, and needs t=
o be configured explicitly.</div><div><a href=3D"http://git.yoctoproject.or=
g/cgit.cgi/poky/tree/meta/lib/oeqa/selftest/cases/runtime_test.py?h=3Ddunfe=
ll#n167">http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/lib/oeqa/selft=
est/cases/runtime_test.py?h=3Ddunfell#n167</a></div><div>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div><div></div>Ok, so then I m=
oved on to get my own image which is on hardknott now working.<br><div><br>=
</div><div>I `runqemu`d my image with &#39;sdl&#39; and &#39;gl&#39; and it=
 started up fine. Weston did no longer start automatically so I did manuall=
y. Ran `DISPLAY=3D:0 glxgears` but it told me &quot;couldn&#39;t open displ=
ay :0&quot;. Installed &#39;weston-xwayland&#39; so I&#39;d get &quot;/usr/=
lib/libweston-9/xwayland.so&quot; but that didn&#39;t change anything.<br><=
/div><div><br></div><div>Can&#39;t yet say if `DISPLAY=3D:0 glxgears` works=
 on core-image-weston as it&#39;s still building.<br></div></div></blockquo=
te><div><br></div><div>DISPLAY is a setting for the host, so qemu can displ=
ay the sdl or gtk window. On the qemu guest you need to get weston to start=
 first.</div><div><br></div><div>Alex<br></div></div></div>

--000000000000d9cec705ce8ac874--

