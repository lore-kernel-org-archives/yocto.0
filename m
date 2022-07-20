Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10366C43334
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 10:34:36 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com
 [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web12.52276.1658313267134136692
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 03:34:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BU3F0COl;
 spf=pass (domain: gmail.com, ip: 209.85.167.45,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id u13so29527829lfn.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 03:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=FvQ9IEWRk93iQxsra5H7sCUQ+LohLxe2kDSyJ7yzq2g=;
        b=BU3F0COlyDwACbH6MqJmTRKWkHsY5Yg8ADfpXmSiDIdLkm0THr04uCxWI41GR/GgmL
         f1FXnAJrip1Y5sHSkBP9ja6p+ZyqtujubkiBsXCvOOxUTDjEZ21KDO15fgs4m0QrIZvi
         dAI35V40fROGnbhnRiCUbVn1ihaLnME+LzGkpcY2r6OTwmTVgcGZyd8Bg9ujYc1dLgNI
         7hjk1/fErJfqjKC9iQEjS3egNa9ZLKI4Kf3py8d2Z72OFWMC0Y1RwSW5m2Raz1zSJC/w
         xW0nvVAoc88OSa8x0WfnQLrqXTMr5TeuxwRtYGgxXgpcDmwi0oKklv0qKorJX0ACuosB
         dN1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=FvQ9IEWRk93iQxsra5H7sCUQ+LohLxe2kDSyJ7yzq2g=;
        b=62Ypbyzl7xR6rD7PvQFia0vmL35qFEpzp/PxVaAfDjeELAH5q/AlMM8qNlJms8bmAa
         43Ha3QXdKVWtkwDE9RtNGyS0MQmLIRbbhOqzSPtmgzSqannN9NqDdrGXN2L0KQnO4uiB
         6PhnoesKfwY5VAU2HlRkEca9MlBEr/kUyRgzetSidMLk2mP4Mys4MDleMIRBJ6aUSSwh
         4Rpo6uJe0fis+A/H5W5dGEA3nNVqzCDTLdkCd95dXyjtq2NIRKDnvDa1658tBj+VS6n/
         ArFkWjtbHBDKQRp0NHbbBxa/kczNRiSrcJbsDlUZDRK+tAxPohWsIvk9KDOmauNKgPVw
         rGNg==
X-Gm-Message-State: AJIora+Gt5K4nl/Vyaiy9c9xqB1Sx8fj7apfyZw8BWzaBYiZgovYx/tC
	CGm5yFEqI5kiSQMkcBciRt4f/uYxGIq/7Fc+kbw=
X-Google-Smtp-Source: 
 AGRyM1usZbI23oPk/acsUNZzonxKNPhozF+lCOwjbcrt0WY76iQ8uTfwWjaaXkqzL39LGASyER5bZk895y9xUd8H/Ck=
X-Received: by 2002:a05:6512:13a4:b0:479:3b9f:f13c with SMTP id
 p36-20020a05651213a400b004793b9ff13cmr19369621lfa.380.1658313265251; Wed, 20
 Jul 2022 03:34:25 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAGQ3h17vUMB5O1oUzVOcLPg1Pct=ySJhDUXvjAuHcSLSQ=KdAg@mail.gmail.com>
 <22536.1658312708486447759@lists.yoctoproject.org>
In-Reply-To: <22536.1658312708486447759@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Jul 2022 12:34:13 +0200
Message-ID: 
 <CANNYZj9opnkgggoJrne3CtkSzhj2Eog4A62QJQG+Dx7Nv8zu9Q@mail.gmail.com>
Subject: Re: [yocto] Error while testing "core-image-minimal" through "bitbake
 core-image-minimal -c testimage -v" #linux #warning #toolchain #dunfell
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 10:34:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57596

Can I also see the output of 'runqemu nographic' please?

Alex

On Wed, 20 Jul 2022 at 12:25, Nikita Gupta <nikitagupta2509@gmail.com> wrot=
e:
>
> Hello Alexander
>
> Please find the output of 'env' below .
>
> SHELL=3D/bin/bash
> SESSION_MANAGER=3Dlocal/Linux:@/tmp/.ICE-unix/1288,unix/Linux:/tmp/.ICE-u=
nix/1288
> QT_ACCESSIBILITY=3D1
> COLORTERM=3Dtruecolor
> XDG_CONFIG_DIRS=3D/etc/xdg/xdg-ubuntu:/etc/xdg
> SSH_AGENT_LAUNCHER=3Dgnome-keyring
> XDG_MENU_PREFIX=3Dgnome-
> GNOME_DESKTOP_SESSION_ID=3Dthis-is-deprecated
> LANGUAGE=3Den_IN:en
> GNOME_SHELL_SESSION_MODE=3Dubuntu
> SSH_AUTH_SOCK=3D/run/user/1000/keyring/ssh
> XMODIFIERS=3D@im=3Dibus
> DESKTOP_SESSION=3Dubuntu
> GTK_MODULES=3Dgail:atk-bridge
> PWD=3D/home/nikita/yoctoproject/poky/build
> LOGNAME=3Dnikita
> XDG_SESSION_DESKTOP=3Dubuntu
> XDG_SESSION_TYPE=3Dx11
> GPG_AGENT_INFO=3D/run/user/1000/gnupg/S.gpg-agent:0:1
> SYSTEMD_EXEC_PID=3D1439
> XAUTHORITY=3D/run/user/1000/gdm/Xauthority
> WINDOWPATH=3D2
> HOME=3D/home/nikita
> USERNAME=3Dnikita
> IM_CONFIG_PHASE=3D1
> LANG=3Den_IN
> LS_COLORS=3Drs=3D0:di=3D01;34:ln=3D01;36:mh=3D00:pi=3D40;33:so=3D01;35:do=
=3D01;35:bd=3D40;33;01:cd=3D40;33;01:or=3D40;31;01:mi=3D00:su=3D37;41:sg=3D=
30;43:ca=3D30;41:tw=3D30;42:ow=3D34;42:st=3D37;44:ex=3D01;32:*.tar=3D01;31:=
*.tgz=3D01;31:*.arc=3D01;31:*.arj=3D01;31:*.taz=3D01;31:*.lha=3D01;31:*.lz4=
=3D01;31:*.lzh=3D01;31:*.lzma=3D01;31:*.tlz=3D01;31:*.txz=3D01;31:*.tzo=3D0=
1;31:*.t7z=3D01;31:*.zip=3D01;31:*.z=3D01;31:*.dz=3D01;31:*.gz=3D01;31:*.lr=
z=3D01;31:*.lz=3D01;31:*.lzo=3D01;31:*.xz=3D01;31:*.zst=3D01;31:*.tzst=3D01=
;31:*.bz2=3D01;31:*.bz=3D01;31:*.tbz=3D01;31:*.tbz2=3D01;31:*.tz=3D01;31:*.=
deb=3D01;31:*.rpm=3D01;31:*.jar=3D01;31:*.war=3D01;31:*.ear=3D01;31:*.sar=
=3D01;31:*.rar=3D01;31:*.alz=3D01;31:*.ace=3D01;31:*.zoo=3D01;31:*.cpio=3D0=
1;31:*.7z=3D01;31:*.rz=3D01;31:*.cab=3D01;31:*.wim=3D01;31:*.swm=3D01;31:*.=
dwm=3D01;31:*.esd=3D01;31:*.jpg=3D01;35:*.jpeg=3D01;35:*.mjpg=3D01;35:*.mjp=
eg=3D01;35:*.gif=3D01;35:*.bmp=3D01;35:*.pbm=3D01;35:*.pgm=3D01;35:*.ppm=3D=
01;35:*.tga=3D01;35:*.xbm=3D01;35:*.xpm=3D01;35:*.tif=3D01;35:*.tiff=3D01;3=
5:*.png=3D01;35:*.svg=3D01;35:*.svgz=3D01;35:*.mng=3D01;35:*.pcx=3D01;35:*.=
mov=3D01;35:*.mpg=3D01;35:*.mpeg=3D01;35:*.m2v=3D01;35:*.mkv=3D01;35:*.webm=
=3D01;35:*.webp=3D01;35:*.ogm=3D01;35:*.mp4=3D01;35:*.m4v=3D01;35:*.mp4v=3D=
01;35:*.vob=3D01;35:*.qt=3D01;35:*.nuv=3D01;35:*.wmv=3D01;35:*.asf=3D01;35:=
*.rm=3D01;35:*.rmvb=3D01;35:*.flc=3D01;35:*.avi=3D01;35:*.fli=3D01;35:*.flv=
=3D01;35:*.gl=3D01;35:*.dl=3D01;35:*.xcf=3D01;35:*.xwd=3D01;35:*.yuv=3D01;3=
5:*.cgm=3D01;35:*.emf=3D01;35:*.ogv=3D01;35:*.ogx=3D01;35:*.aac=3D00;36:*.a=
u=3D00;36:*.flac=3D00;36:*.m4a=3D00;36:*.mid=3D00;36:*.midi=3D00;36:*.mka=
=3D00;36:*.mp3=3D00;36:*.mpc=3D00;36:*.ogg=3D00;36:*.ra=3D00;36:*.wav=3D00;=
36:*.oga=3D00;36:*.opus=3D00;36:*.spx=3D00;36:*.xspf=3D00;36:
> XDG_CURRENT_DESKTOP=3Dubuntu:GNOME
> VTE_VERSION=3D6402
> GNOME_TERMINAL_SCREEN=3D/org/gnome/Terminal/screen/7cf77da7_bb58_4735_9e5=
a_bfd6073b4d65
> BBPATH=3D/home/nikita/yoctoproject/poky/build
> BB_ENV_EXTRAWHITE=3DALL_PROXY BBPATH_EXTRA BB_LOGCONFIG BB_NO_NETWORK BB_=
NUMBER_THREADS BB_SETSCENE_ENFORCE BB_SRCREV_POLICY DISTRO FTPS_PROXY FTP_P=
ROXY GIT_PROXY_COMMAND HTTPS_PROXY HTTP_PROXY MACHINE NO_PROXY PARALLEL_MAK=
E SCREENDIR SDKMACHINE SOCKS5_PASSWD SOCKS5_USER SSH_AGENT_PID SSH_AUTH_SOC=
K STAMPS_DIR TCLIBC TCMODE all_proxy ftp_proxy ftps_proxy http_proxy https_=
proxy no_proxy
> LESSCLOSE=3D/usr/bin/lesspipe %s %s
> XDG_SESSION_CLASS=3Duser
> TERM=3Dxterm-256color
> LESSOPEN=3D| /usr/bin/lesspipe %s
> USER=3Dnikita
> GNOME_TERMINAL_SERVICE=3D:1.73
> DISPLAY=3D:1
> SHLVL=3D1
> QT_IM_MODULE=3Dibus
> XDG_RUNTIME_DIR=3D/run/user/1000
> XDG_DATA_DIRS=3D/usr/share/ubuntu:/usr/local/share/:/usr/share/:/var/lib/=
snapd/desktop
> PATH=3D/home/nikita/yoctoproject/poky/scripts:/home/nikita/yoctoproject/p=
oky/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bi=
n:/usr/games:/usr/local/games:/snap/bin:/snap/bin
> GDMSESSION=3Dubuntu
> DBUS_SESSION_BUS_ADDRESS=3Dunix:path=3D/run/user/1000/bus
> BUILDDIR=3D/home/nikita/yoctoproject/poky/build
> OLDPWD=3D/home/nikita/yoctoproject/poky
> _=3D/usr/bin/env
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57593): https://lists.yoctoproject.org/g/yocto/messag=
e/57593
> Mute This Topic: https://lists.yoctoproject.org/mt/92435401/1686489
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #warning:https://lists.yoctoproject.org/g/yocto/mutehashtag/warning
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolch=
ain
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

